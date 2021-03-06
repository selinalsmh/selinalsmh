local addon = select(2, ...)
local l = addon.locale
local window = CreateFrame("Frame", "NumerationFrame", UIParent)
addon.window = window

local lines = {}

local noop = function() end
local backAction = noop
local reportAction = noop
local backdrop = {
	bgFile = [[Interface\ChatFrame\ChatFrameBackground]],
	edgeFile = "", tile = true, tileSize = 16, edgeSize = 0,
	insets = {left = 0, right = 0, top = 0, bottom = 0}
}
local clickFunction = function(self, btn)
	if btn == "LeftButton" then
		self.detailAction(self)
	elseif btn == "RightButton" then
		backAction(self)
	elseif btn == "MiddleButton" then
		reportAction(self.num)
	end
end

local optionFunction = function(f, id, _, checked)
	addon:SetOption(id, checked)
end
local numReports = 9
local reportFunction = function(f, chatType, channel)
	addon:Report(numReports, chatType, channel)
	CloseDropDownMenus()
end
local dropdown = CreateFrame("Frame", "NumerationMenuFrame", nil, "UIDropDownMenuTemplate")
local menuTable = {
	{text = "Numeration", isTitle = true, notCheckable = true, notClickable = true},
	{text = CHAT_ANNOUNCE, notCheckable = true, hasArrow = true,
		menuList = {
			{text = CHAT_MSG_SAY, arg1 = "SAY", func = reportFunction, notCheckable = 1},
			{text = PARTY, arg1 = "PARTY", func = reportFunction, notCheckable = 1},
			{text = RAID, arg1 = "RAID", func = reportFunction, notCheckable = 1},
			{text = GUILD, arg1 = "GUILD", func = reportFunction, notCheckable = 1},
			{text = OFFICER, arg1 = "OFFICER", func = reportFunction, notCheckable = 1},
			{text = TARGET, func = function() reportFunction(self, "WHISPER", UnitName("target")) end, notCheckable = 1},
			{text = WHISPER, func = function()
				StaticPopupDialogs.REPORT_DIALOG.OnAccept = function(self)
					reportFunction(self, "WHISPER", _G[self:GetName().."EditBox"]:GetText())
				end
				StaticPopup_Show("REPORT_DIALOG")
			end, notCheckable = 1},
			{text = CHANNEL, notCheckable = 1, keepShownOnClick = true, hasArrow = true, menuList = {}}
		},
	},
	{text = GAMEOPTIONS_MENU, notCheckable = true, hasArrow = true,
		menuList = {
			{text = l.pet_merge, arg1 = "petsmerged", func = optionFunction, checked = function() return addon:GetOption("petsmerged") end, keepShownOnClick = true},
			{text = l.only_boss, arg1 = "keeponlybosses", func = optionFunction, checked = function() return addon:GetOption("keeponlybosses") end, keepShownOnClick = true},
			{text = l.only_instance, arg1 = "onlyinstance", func = optionFunction, checked = function() return addon:GetOption("onlyinstance") end, keepShownOnClick = true},
			{text = l.show_icon, func = function(f, a1, a2, checked) addon:MinimapIconShow(checked) end, checked = function() return not NumerationCharOptions.minimap.hide end, keepShownOnClick = true},
		},
	},
	{text = "", notCheckable = true, notClickable = true},
	{text = RESET, func = function() StaticPopup_Show("RESET_DATA") end, notCheckable = true},
}

local updateReportChannels = function()
	menuTable[2].menuList[8].menuList = table.wipe(menuTable[2].menuList[8].menuList)
	for i = 1, GetNumDisplayChannels() do
		local name, _, _, channelNumber, _, active, category = GetChannelDisplayInfo(i)
		if category == "CHANNEL_CATEGORY_CUSTOM" then
			tinsert(menuTable[2].menuList[8].menuList, {text = name, arg1 = "CHANNEL", arg2 = channelNumber, func = reportFunction, notCheckable = 1})
		end
	end
end

local reportActionFunction = function(num)
	updateReportChannels()
	numReports = num
	EasyMenu(menuTable[2].menuList, dropdown, "cursor", 0 , 0, "MENU")
end

local s
function window:OnInitialize()
	s = addon.windowsettings
	self.maxlines = s.maxlines
	self:SetWidth(s.width)
	self:SetHeight(3+s.titleheight+s.maxlines*(s.lineheight+s.linegap))

	self:SetClampedToScreen(true)
	self:EnableMouse(true)
	self:EnableMouseWheel(true)
	self:SetMovable(true)
	self:RegisterForDrag("LeftButton")
	self:SetScript("OnDragStart", function() if IsAltKeyDown() then self:StartMoving() end end)
	self:SetScript("OnDragStop", function()
		self:StopMovingOrSizing()

		-- positioning code taken from recount
		local xOfs, yOfs = self:GetCenter()
		local s = self:GetEffectiveScale()
		local uis = UIParent:GetScale()
		xOfs = xOfs*s - GetScreenWidth()*uis/2
		yOfs = yOfs*s - GetScreenHeight()*uis/2

		addon:SetOption("x", xOfs/uis)
		addon:SetOption("y", yOfs/uis)
	end)

	self:SetBackdrop(backdrop)
	self:SetBackdropColor(0, 0, 0, s.backgroundalpha)

	local x, y = addon:GetOption("x"), addon:GetOption("y")
	if not x or not y then
		self:SetPoint(unpack(s.pos))
	else
		-- positioning code taken from recount
		local s = self:GetEffectiveScale()
		local uis = UIParent:GetScale()
		self:SetPoint("CENTER", UIParent, "CENTER", x*uis/s, y*uis/s)
	end

	local scroll = self:CreateTexture(nil, "ARTWORK")
	self.scroll = scroll
	scroll:SetTexture([[Interface\Buttons\WHITE8X8]])
	scroll:SetTexCoord(.8, 1, .8, 1)
	scroll:SetVertexColor(0, 0, 0, .8)
	scroll:SetWidth(4)
	scroll:SetHeight(4)
	scroll:Hide()

	local reset = CreateFrame("Button", nil, self)
	self.reset = reset
	reset:SetBackdrop(backdrop)
	reset:SetBackdropColor(0, 0, 0, s.titlealpha)
	reset:SetWidth(s.titleheight)
	reset:SetHeight(s.titleheight)
	reset:SetPoint("TOPRIGHT", -1, -1)
	reset:SetScript("OnMouseUp", function()
		updateReportChannels()
		numReports = 9
		EasyMenu(menuTable, dropdown, "cursor", 0 , 0, "MENU")
	end)
	reset:SetScript("OnEnter", function() reset:SetBackdropColor(s.buttonhighlightcolor[1], s.buttonhighlightcolor[2], s.buttonhighlightcolor[3], .3) end)
	reset:SetScript("OnLeave", function() reset:SetBackdropColor(0, 0, 0, s.titlealpha) end)

	reset.text = reset:CreateFontString(nil, "ARTWORK")
	reset.text:SetFont(s.linefont, s.linefontsize, s.linefontstyle)
	reset.text:SetShadowOffset(s.fontshadow and 1 or 0, s.fontshadow and -1 or 0)
	reset.text:SetPoint("CENTER", 1, 0)
	reset.text:SetText(">")

	local segment = CreateFrame("Button", nil, self)
	self.segment = segment
	segment:SetBackdrop(backdrop)
	segment:SetBackdropColor(0, 0, 0, s.titlealpha/2)
	segment:SetWidth(s.titleheight-2)
	segment:SetHeight(s.titleheight-2)
	segment:SetPoint("RIGHT", reset, "LEFT", -2, 0)
	segment:SetScript("OnMouseUp", function() addon.nav.view = "Sets" addon.nav.set = nil addon:RefreshDisplay() dropdown:Show() end)
	segment:SetScript("OnEnter", function()
		segment:SetBackdropColor(s.buttonhighlightcolor[1], s.buttonhighlightcolor[2], s.buttonhighlightcolor[3], .3)
		GameTooltip:SetOwner(segment, "ANCHOR_BOTTOMRIGHT")
		local name = ""
		if addon.nav.set == "current" then
			name = l.current
		else
			local set = addon:GetSet(addon.nav.set)
			if set then
				name = set.name
			end
		end
		GameTooltip:AddLine(name)
		GameTooltip:Show()
	end)
	segment:SetScript("OnLeave", function() segment:SetBackdropColor(0, 0, 0, s.titlealpha/2) GameTooltip:Hide() end)

	segment.text = segment:CreateFontString(nil, "ARTWORK")
	segment.text:SetFont(s.linefont, s.linefontsize, s.linefontstyle)
	segment.text:SetShadowOffset(s.fontshadow and 1 or 0, s.fontshadow and -1 or 0)
	segment.text:SetPoint("CENTER", 0, 0)
	segment.text:SetText("")

	local title = self:CreateTexture(nil, "ARTWORK")
	self.title = title
	title:SetTexture(s.linetexture)
	title:SetVertexColor(.25, .66, .35, s.titlealpha)
	title:SetPoint("TOPLEFT", 1, -1)
	title:SetPoint("BOTTOMRIGHT", reset, "BOTTOMLEFT", -1, 0)

	local font = self:CreateFontString(nil, "ARTWORK")
	self.titletext = font
	font:SetJustifyH("LEFT")
	font:SetFont(s.titlefont, s.titlefontsize, s.titlefontstyle)
	font:SetShadowOffset(s.fontshadow and 1 or 0, s.fontshadow and -1 or 0)
	font:SetTextColor(s.titlefontcolor[1], s.titlefontcolor[2], s.titlefontcolor[3], 1)
	font:SetHeight(s.titlefontsize)
	font:SetPoint("LEFT", title, "LEFT", 4, 0)
	font:SetPoint("RIGHT", segment, "LEFT", -1, 0)

	self.detailAction = noop
	self:SetScript("OnMouseDown", clickFunction)
	self:SetScript("OnMouseWheel", function(self, num)
		addon:Scroll(num)
	end)
end

function window:Clear()
--	self:SetBackAction()
	self.scroll:Hide()
	self:SetDetailAction()
	for id,line in pairs(lines) do
		line:SetIcon()
		line.spellId = nil
		line:Hide()
	end
end

function window:UpdateSegment(segment)
	if not segment then
		self.segment:Hide()
	else
		self.segment.text:SetText(segment)
		self.segment:Show()
	end
end

function window:SetTitle(name, r, g, b)
	self.title:SetVertexColor(r, g, b, s.titlealpha)
	self.titletext:SetText(name)
end

function window:GetTitle()
	return self.titletext:GetText()
end

function window:SetScrollPosition(curPos, maxPos)
	if not s.scrollbar then return end
	if maxPos <= s.maxlines then return end
	local total = s.maxlines*(s.lineheight+s.linegap)
	self.scroll:SetHeight(s.maxlines/maxPos*total)
	self.scroll:SetPoint("TOPLEFT", self.reset, "BOTTOMRIGHT", 2, -1-(curPos-1)/maxPos*total)
	self.scroll:Show()
end

function window:SetBackAction(f)
	backAction = f or noop
	reportAction = noop
end

local SetValues = function(f, c, m)
	f:SetMinMaxValues(0, m)
	f:SetValue(c)
end

local SetIcon = function(f, icon)
	if icon then
		f:SetWidth(s.width-s.lineheight-4)
		f.icon:SetTexture(icon)
		f.icon:Show()
	else
		f:SetWidth(s.width-4)
		f.icon:Hide()
	end
end

local SetLeftText = function(f, ...)
	f.name:SetFormattedText(...)
end

local SetRightText = function(f, ...)
	f.value:SetFormattedText(...)
end

local SetColor = function(f, r, g, b, a)
	f:SetStatusBarColor(r, g, b, a or s.linealpha)
end

local SetDetailAction = function(f, func)
	f.detailAction = func or noop
end

local SetReportNumber = function(f, num)
	reportAction = reportActionFunction
	f.num = num
end
window.SetDetailAction = SetDetailAction

local onEnter = function(self)
	if not self.spellId then return end
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", 4, s.lineheight)
	GameTooltip:SetHyperlink("spell:"..self.spellId)
end
local onLeave = function(self)
	GameTooltip:Hide()
end
function window:GetLine(id)
	if lines[id] then return lines[id] end

	local f = CreateFrame("StatusBar", nil, self)
	lines[id] = f
	f:EnableMouse(true)
	f.detailAction = noop
	f:SetScript("OnMouseDown", clickFunction)
	f:SetScript("OnEnter", onEnter)
	f:SetScript("OnLeave", onLeave)
	f:SetStatusBarTexture(s.linetexture)
	f:SetStatusBarColor(.6, .6, .6, 1)
	f:SetWidth(s.width-4)
	f:SetHeight(s.lineheight)
	if id == 0 then
		f:SetPoint("TOPRIGHT", self.reset, "BOTTOMRIGHT", -1, -1)
	else
		f:SetPoint("TOPRIGHT", lines[id-1], "BOTTOMRIGHT", 0, -s.linegap)
	end

	local icon = f:CreateTexture(nil, "OVERLAY")
	f.icon = icon
	icon:SetWidth(s.lineheight)
	icon:SetHeight(s.lineheight)
	icon:SetPoint("RIGHT", f, "LEFT")
	icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
	icon:Hide()

	local value = f:CreateFontString(nil, "ARTWORK")
	f.value = value
	value:SetHeight(s.lineheight)
	value:SetJustifyH("RIGHT")
	value:SetFont(s.linefont, s.linefontsize, s.linefontstyle)
	value:SetShadowOffset(s.fontshadow and 1 or 0, s.fontshadow and -1 or 0)
	value:SetTextColor(s.linefontcolor[1], s.linefontcolor[2], s.linefontcolor[3], 1)
	value:SetPoint("RIGHT", -1, 0)

	local name = f:CreateFontString(nil, "ARTWORK")
	f.name = name
	name:SetHeight(s.lineheight)
	name:SetNonSpaceWrap(false)
	name:SetJustifyH("LEFT")
	name:SetFont(s.linefont, s.linefontsize, s.linefontstyle)
	name:SetShadowOffset(s.fontshadow and 1 or 0, s.fontshadow and -1 or 0)
	name:SetTextColor(s.linefontcolor[1], s.linefontcolor[2], s.linefontcolor[3], 1)
	name:SetPoint("LEFT", icon, "RIGHT", 1, 0)
	name:SetPoint("RIGHT", value, "LEFT", -1, 0)

	f.SetValues = SetValues
	f.SetIcon = SetIcon
	f.SetLeftText = SetLeftText
	f.SetRightText = SetRightText
	f.SetColor = SetColor
	f.SetDetailAction = SetDetailAction
	f.SetReportNumber = SetReportNumber

	return f
end

StaticPopupDialogs.RESET_DATA = {
	text = "Numeration: "..l.reset_data,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function() addon:Reset() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = true,
	preferredIndex = 5,
}

StaticPopupDialogs.REPORT_DIALOG = {
	text = "Numeration: "..l.whisp_target,
	button1 = WHISPER,
	timeout = 0,
	hasEditBox = 1,
	whileDead = 1,
	EditBoxOnEnterPressed = function(self) reportFunction(self, "WHISPER", StaticPopup1EditBox:GetText()) self:GetParent():Hide() end,
	EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
	preferredIndex = 5,
}