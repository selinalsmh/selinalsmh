local R, L, P = unpack(select(2, ...)) --Inport: Engine, Locales, ProfileDB
local TT = R:NewModule("Tooltip", "AceEvent-3.0", "AceHook-3.0")
local TalentFrame = CreateFrame("Frame", nil)
TalentFrame:Hide()

TT.modName = L["鼠标提示"]

local TALENTS_PREFIX = TALENTS
local NO_TALENTS = NONE..TALENTS
local CACHE_SIZE = 25
local INSPECT_DELAY = 0.2
local INSPECT_FREQ = 2

local talentcache = {}
local ilvcache = {}
local talentcurrent = {}
local ilvcurrent = {}

local lastInspectRequest = 0

local gcol = {112/255, 192/255, 245/255}--{.35, 1, .6}										-- Guild Color
local pgcol = {112/255, 192/255, 245/255}--{1, .12, .8} 									-- Player's Guild Color

local types = {
    rare = " R ",
    elite = " + ",
    worldboss = " B ",
    rareelite = " R+ ",
}

local function IsInspectFrameOpen()
	return (InspectFrame and InspectFrame:IsShown()) or (Examiner and Examiner:IsShown())
end

function TT:GetOptions()
	local options = {
		cursor = {
			order = 5,
			name = L["跟随鼠标"],
			type = "toggle",
		},
		hideincombat = {
			order = 6,
			name = L["战斗中隐藏"],
			type = "toggle",
		},
	}
	return options
end

local function GatherTalents(isInspect)
	local spec = isInspect and GetInspectSpecialization(talentcurrent.unit) or GetSpecialization()
	if (spec) and (spec > 0) then
		if isInspect then
			local _, specName, _, icon = GetSpecializationInfoByID(spec)
            icon = icon and "|T"..icon..":12:12:0:0:64:64:5:59:5:59|t " or ""
			talentcurrent.format = specName and icon..specName or "n/a"
		else
			local _, specName, _, icon = GetSpecializationInfo(spec)
            icon = icon and "|T"..icon..":12:12:0:0:64:64:5:59:5:59|t " or ""
			talentcurrent.format = specName and icon..specName or "n/a"
		end
	else
		talentcurrent.format = NO_TALENTS
	end

	if (not isInspect) then
		GameTooltip:AddDoubleLine(TALENTS_PREFIX, talentcurrent.format, nil, nil, nil, 1, 1, 1)
	elseif (GameTooltip:GetUnit()) then
		for i = 2, GameTooltip:NumLines() do
			if ((_G["GameTooltipTextLeft"..i]:GetText() or ""):match("^"..TALENTS_PREFIX)) then
				_G["GameTooltipTextRight"..i]:SetText(talentcurrent.format)
				if (not GameTooltip.fadeOut) then
					GameTooltip:Show()
				end
				break
			end
		end
	end

	for i = #talentcache, 1, -1 do
		if (talentcurrent.name == talentcache[i].name) then
			tremove(talentcache,i)
			break
		end
	end
	if (#talentcache > CACHE_SIZE) then
		tremove(talentcache,1)
	end

	if (CACHE_SIZE > 0) then
		talentcache[#talentcache + 1] = CopyTable(talentcurrent)
	end
end

function TT:TalentSetUnit()
	TalentFrame:Hide()
    local GMF = GetMouseFocus()
    local unit = (select(2, GameTooltip:GetUnit())) or (GMF and GMF:GetAttribute("unit"))

    if (not unit) and (UnitExists("mouseover")) then
        unit = "mouseover"
    end
	if (not unit) or (not UnitIsPlayer(unit)) then
		return
	end
	local level = UnitLevel(unit)
	if (level > 9 or level == -1) then
		wipe(talentcurrent)
		talentcurrent.unit = unit
		talentcurrent.name = UnitName(unit)
		talentcurrent.guid = UnitGUID(unit)
		if (UnitIsUnit(unit,"player")) then
			GatherTalents()
			return
		end

		local cacheLoaded = false
		for _, entry in ipairs(talentcache) do
			if (talentcurrent.name == entry.name) then
				GameTooltip:AddDoubleLine(TALENTS_PREFIX, entry.format, nil, nil, nil, 1, 1, 1)
				talentcurrent.format = entry.format
				cacheLoaded = true
				break
			end
		end

		if (CanInspect(unit)) and (not IsInspectFrameOpen()) then
			local lastInspectTime = (GetTime() - lastInspectRequest)
			TalentFrame.nextUpdate = (lastInspectTime > INSPECT_FREQ) and INSPECT_DELAY or (INSPECT_FREQ - lastInspectTime + INSPECT_DELAY)
			TalentFrame:Show()
			if (not cacheLoaded) then
				GameTooltip:AddDoubleLine(TALENTS_PREFIX, "...", nil, nil, nil, 1, 1, 1)
			end
		end
	end
end

TalentFrame:SetScript("OnUpdate", function(self, elapsed)
	self.nextUpdate = (self.nextUpdate or 0 ) - elapsed
	if (self.nextUpdate <= 0) then
		self:Hide()
		if (UnitGUID("mouseover") == talentcurrent.guid) then
			lastInspectRequest = GetTime()
			TT:RegisterEvent("INSPECT_READY")
			if (InspectFrame) then
				InspectFrame.unit = "player"
			end
			NotifyInspect(talentcurrent.unit)
		end
	end
end)

function TT:GameTooltip_SetDefaultAnchor(tooltip, parent)
	if self.db.cursor then
		if parent then
			tooltip:SetOwner(parent, "ANCHOR_CURSOR")
		end
	else
		local owner
		if tooltip:GetOwner() then
			owner = tooltip:GetOwner():GetName()
		end
		if owner and owner:find("RayUITopInfoBar") then
			return
		end

		tooltip:ClearAllPoints()
		if owner and owner:match("RayUFRaid") then
			local parent = _G[owner:match("RayUFRaid%d%d_%d")]
			tooltip:Point("BOTTOMRIGHT", parent, "TOPRIGHT", 0, 23)
		elseif RayUFRaid40_6UnitButton1 and RayUFRaid40_6UnitButton1:IsVisible() and (GetScreenWidth() - RayUFRaid40_8:GetRight()) < 250 then
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, RayUFRaid40_8:GetBottom() + RayUFRaid40_8:GetHeight() + 30)
		elseif RayUI_ContainerFrame and RayUI_ContainerFrame:IsVisible() and (GetScreenWidth() - RayUI_ContainerFrame:GetRight()) < 250 then
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, RayUI_ContainerFrame:GetBottom() + RayUI_ContainerFrame:GetHeight() + 30)
		elseif RayUFRaid15_1UnitButton1 and RayUFRaid15_1UnitButton1:IsVisible() and (GetScreenWidth() - RayUFRaid15_3:GetRight()) < 250 then
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, RayUFRaid15_3:GetBottom() + RayUFRaid15_3:GetHeight() + 30)
		elseif RayUFRaid25_1UnitButton1 and RayUFRaid25_1UnitButton1:IsVisible() and (GetScreenWidth() - RayUFRaid25_5:GetRight()) < 250 then
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, RayUFRaid25_5:GetBottom() + RayUFRaid25_5:GetHeight() + 30)
		elseif NumerationFrame and NumerationFrame:IsVisible() and (GetScreenWidth() - NumerationFrame:GetRight()) < 250 then
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, NumerationFrame:GetBottom() + NumerationFrame:GetHeight() + 30)
		else
			tooltip:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -50, 160)
		end
	end
	tooltip.default = 1
end

function TT:GameTooltip_UnitColor(unit)
	local r, g, b = 1, 1, 1
	if UnitPlayerControlled(unit) then
		if UnitCanAttack(unit, "player") then
			if UnitCanAttack("player", unit) then
				r = FACTION_BAR_COLORS[2].r
				g = FACTION_BAR_COLORS[2].g
				b = FACTION_BAR_COLORS[2].b
			end
		elseif UnitCanAttack("player", unit) then
			r = FACTION_BAR_COLORS[4].r
			g = FACTION_BAR_COLORS[4].g
			b = FACTION_BAR_COLORS[4].b
		elseif UnitIsPVP(unit) then
			r = FACTION_BAR_COLORS[6].r
			g = FACTION_BAR_COLORS[6].g
			b = FACTION_BAR_COLORS[6].b
		end
	else
		local reaction = UnitReaction(unit, "player")
		if reaction then
			r = FACTION_BAR_COLORS[reaction].r
			g = FACTION_BAR_COLORS[reaction].g
			b = FACTION_BAR_COLORS[reaction].b
		end
	end
	if UnitIsPlayer(unit) then
		local class = select(2, UnitClass(unit))
		if class then
			r = RAID_CLASS_COLORS[class].r
			g = RAID_CLASS_COLORS[class].g
			b = RAID_CLASS_COLORS[class].b
		end
	end
	return r, g, b
end

function TT:GameTooltip_OnUpdate(tooltip)
	if (tooltip.needRefresh and tooltip:GetAnchorType() == "ANCHOR_CURSOR" and not self.db.cursor) then
		tooltip:SetBackdropColor(0, 0, 0, 0.65)
		tooltip:SetBackdropBorderColor(0, 0, 0)
		tooltip.needRefresh = nil
	end
end

local function GetPlayerScore(unit)
	local unitilvl = 0
	local ilvl, ilvlAdd, equipped = 0, 0, 0
	if (UnitIsPlayer(unit)) then
		for i = 1, 18 do
			if (i ~= 4) then
				local iLink = GetInventoryItemLink(unit, i)
				if (iLink) then
					ilvlAdd = TT:GetItemScore(iLink)
					if ilvlAdd then
						ilvl = ilvl + ilvlAdd
					end
					equipped = equipped + 1
				end
			end
		end
	end
	-- ClearInspectPlayer()
	return floor(ilvl / equipped)
end

function TT:SetiLV()
	local _, unit = GameTooltip:GetUnit()
	if not (unit) or not (UnitIsPlayer(unit)) or not (CanInspect(unit)) then
		return
	end

	local unitilvl = GetPlayerScore(unit)
	if (unitilvl > 1) then
		local r, g, b  = TT:GetQuality(unitilvl)
		ilvcurrent.format = R:RGBToHex(r, g, b)..unitilvl
		for i = 2, GameTooltip:NumLines() do
			if ((_G["GameTooltipTextLeft"..i]:GetText() or ""):match("^"..STAT_AVERAGE_ITEM_LEVEL)) then
				_G["GameTooltipTextRight"..i]:SetText(R:RGBToHex(r, g, b)..unitilvl)
				break
			end
		end
	end
	
	for i = #ilvcache, 1, -1 do
		if (ilvcurrent.name == ilvcache[i].name) then
			tremove(ilvcache,i)
			break
		end
	end
	if (#ilvcache > CACHE_SIZE) then
		tremove(ilvcache,1)
	end

	if (CACHE_SIZE > 0) then
		ilvcache[#ilvcache + 1] = CopyTable(ilvcurrent)
	end
end

function TT:GetQuality(ItemScore)
    if ItemScore < 440 then
        return 1, 1, 0.1
    else
        return R:ColorGradient((ItemScore - 440)/100, 1, 1, 0.1, 1, 0.1, 0.1)
    end
end

function TT:iLVSetUnit()
    local GMF = GetMouseFocus()
    local unit = (select(2, GameTooltip:GetUnit())) or (GMF and GMF:GetAttribute("unit"))

    if (not unit) and (UnitExists("mouseover")) then
        unit = "mouseover"
    end
	if not (unit) or not (UnitIsPlayer(unit)) or not (CanInspect(unit)) then
		return
	end

	local cacheLoaded = false
	wipe(ilvcurrent)
	ilvcurrent.unit = unit
	ilvcurrent.name = UnitName(unit)
	ilvcurrent.guid = UnitGUID(unit)

	for _, entry in ipairs(ilvcache) do
		if (ilvcurrent.name == entry.name and entry.format) then
			GameTooltip:AddDoubleLine(STAT_AVERAGE_ITEM_LEVEL, entry.format, nil, nil, nil, 1, 1, 1)
			ilvcurrent.format = entry.format
			cacheLoaded = true
			break
		end
	end
	if UnitIsUnit(unit, "player") then
		local unitilvl = GetPlayerScore("player")
		local r, g, b = TT:GetQuality(unitilvl)
		GameTooltip:AddDoubleLine(STAT_AVERAGE_ITEM_LEVEL, R:RGBToHex(r, g, b)..unitilvl, nil, nil, nil, 1, 1, 1)
	elseif not cacheLoaded then
		GameTooltip:AddDoubleLine(STAT_AVERAGE_ITEM_LEVEL, "...", nil, nil, nil, 1, 1, 1)
	end
end

function TT:INSPECT_READY(event, guid)
	self:UnregisterEvent(event)
	if (guid == talentcurrent.guid) then
		GatherTalents(1)
		self:SetiLV()
	end
end

function TT:MODIFIER_STATE_CHANGED()
    if arg1 == "LCTRL" or arg1 == "RCTRL" then
        if self.line and UnitName("mouseover") == self.unit then
            self:UPDATE_MOUSEOVER_UNIT(true)
        end
    end
end

function TT:PLAYER_ENTERING_WORLD(event)
	local tooltips = {
		GameTooltip,
		FriendsTooltip,
		ItemRefTooltip,
		ItemRefShoppingTooltip1,
		ItemRefShoppingTooltip2,
		ItemRefShoppingTooltip3,
		ShoppingTooltip1,
		ShoppingTooltip2,
		ShoppingTooltip3,
		WorldMapTooltip,
		WorldMapCompareTooltip1,
		WorldMapCompareTooltip2,
		WorldMapCompareTooltip3,
	}

	for _, tt in pairs(tooltips) do
		self:SetStyle(tt)
		self:HookScript(tt, "OnShow", "SetStyle")
	end

	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

function TT:GetItemScore(iLink)
   local _, _, itemRarity, itemLevel, _, _, _, _, itemEquip = GetItemInfo(iLink)
   if (IsEquippableItem(iLink)) then
      if not   (itemLevel > 1) and (itemRarity > 1) then
      return 0
      end
   end
   return itemLevel
end

function TT:SetStyle(tooltip)
    if self.db.hideincombat and InCombatLockdown() then
        return tooltip:Hide()
    end
	if not tooltip.styled then
		--[[tooltip:SetBackdrop({
			edgeFile = R["media"].glow,
			bgFile = R["media"].blank,
			edgeSize = R:Scale(4),
			insets = {left = R:Scale(4), right = R:Scale(4), top = R:Scale(4), bottom = R:Scale(4)},
		})]]
        tooltip:SetBackdrop(nil)
        tooltip:CreateShadow("Background")
        tooltip.border:SetInside(tooltip)
		tooltip.styled=true
	end
	tooltip:SetBackdropColor(unpack(R["media"].backdropfadecolor))
	local item
	if tooltip.GetItem then
		item = select(2, tooltip:GetItem())
	end
	if item then
		local quality = select(3, GetItemInfo(item))
		if quality and quality > 1 then
			local r, g, b = GetItemQualityColor(quality)
			tooltip.border:SetBackdropBorderColor(r, g, b)
			tooltip.shadow:SetBackdropBorderColor(r, g, b)
		else
			tooltip.border:SetBackdropBorderColor(0, 0, 0)
			tooltip.shadow:SetBackdropBorderColor(0, 0, 0)
		end
	else
		tooltip.border:SetBackdropBorderColor(unpack(R["media"].bordercolor))
		tooltip.shadow:SetBackdropBorderColor(unpack(R["media"].bordercolor))
	end
	if tooltip.NumLines then
		for index=1, tooltip:NumLines() do
			_G[tooltip:GetName().."TextLeft"..index]:SetFont(R["media"].font, 13, "OUTLINE")--SetShadowOffset(R.mult, -R.mult)
		end
	end
	tooltip.needRefresh = true
end

function TT:OnTooltipSetUnit(tooltip)
    local GMF = GetMouseFocus()
    local unit = (select(2, tooltip:GetUnit())) or (GMF and GMF:GetAttribute("unit"))

    if (not unit) and (UnitExists("mouseover")) then
        unit = "mouseover"
    end

    if not unit then tooltip:Hide() return end

    if self.db.hideincombat and InCombatLockdown() then
        return tooltip:Hide()
    end
    local unitClassification = types[UnitClassification(unit)] or " "
    local creatureType = UnitCreatureType(unit) or ""
    local unitName = UnitName(unit)
    local unitLevel = UnitLevel(unit)
    local diffColor = unitLevel > 0 and GetQuestDifficultyColor(UnitLevel(unit)) or QuestDifficultyColors["impossible"]
    if unitLevel < 0 then unitLevel = "??" end
    if UnitIsPlayer(unit) then
        local unitRace = UnitRace(unit)
        local unitClass = UnitClass(unit)
        local guild, rank = GetGuildInfo(unit)
        local playerGuild = GetGuildInfo("player")
        GameTooltipStatusBar:SetStatusBarColor(unpack({GameTooltip_UnitColor(unit)}))
        if guild then
            GameTooltipTextLeft2:SetFormattedText("<%s>"..R:RGBToHex(1, 1, 1).." %s|r", guild, rank)
            if IsInGuild() and guild == playerGuild then
                GameTooltipTextLeft2:SetTextColor(pgcol[1], pgcol[2], pgcol[3])
            else
                GameTooltipTextLeft2:SetTextColor(gcol[1], gcol[2], gcol[3])
            end
        end
        if UnitExists(unit.."target") then
            local r, g, b = GameTooltip_UnitColor(unit.."target")
            if UnitName(unit.."target") == UnitName("player") then
                text = R:RGBToHex(1, 0, 0)..">>"..YOU.."<<|r"
            else
                text = R:RGBToHex(r, g, b)..UnitName(unit.."target").."|r"
            end
            tooltip:AddDoubleLine(TARGET, text)
        end
        for i=2, GameTooltip:NumLines() do
            if _G["GameTooltipTextLeft" .. i]:GetText():find(PLAYER) then
                _G["GameTooltipTextLeft" .. i]:SetText(string.format(R:RGBToHex(diffColor.r, diffColor.g, diffColor.b).."%s|r ", unitLevel) .. unitRace .. " ".. unitClass)
                break
            end
        end
        if UnitFactionGroup(unit) and UnitFactionGroup(unit) ~= "Neutral" then
            GameTooltipTextLeft1:SetText("|TInterface\\Addons\\RayUI\\media\\UI-PVP-"..select(1, UnitFactionGroup(unit))..".blp:16:16:0:0:64:64:5:40:0:35|t"..GameTooltipTextLeft1:GetText())
        end
    else
        for i=2, GameTooltip:NumLines() do
            if _G["GameTooltipTextLeft" .. i]:GetText():find(LEVEL) or _G["GameTooltipTextLeft" .. i]:GetText():find(creatureType) then
                _G["GameTooltipTextLeft" .. i]:SetText(string.format(R:RGBToHex(diffColor.r, diffColor.g, diffColor.b).."%s|r", unitLevel) .. unitClassification .. creatureType)
                break
            end
        end
    end
    for i = 1, GameTooltip:NumLines() do
        local line = _G["GameTooltipTextLeft"..i]
        while line and line:GetText() and (line:GetText() == PVP_ENABLED or line:GetText() == FACTION_HORDE or line:GetText() == FACTION_ALLIANCE) do
            line:SetText()
            break
        end
    end

    self:iLVSetUnit()
    self:TalentSetUnit()
end

function TT:Initialize()
	local truncate = function(value)
		if value >= 1e6 then
			return string.format("%.2fm", value / 1e6)
		elseif value >= 1e4 then
			return string.format("%.1fk", value / 1e3)
		else
			return string.format("%.0f", value)
		end
	end

	self:RawHook("GameTooltip_UnitColor", true)

    self:HookScript(GameTooltip, "OnTooltipSetUnit")

	--GameTooltipStatusBar.bg = CreateFrame("Frame", nil, GameTooltipStatusBar)
	--GameTooltipStatusBar.bg:Point("TOPLEFT", GameTooltipStatusBar, "TOPLEFT", -4, 4)
	--GameTooltipStatusBar.bg:Point("BOTTOMRIGHT", GameTooltipStatusBar, "BOTTOMRIGHT", 4, -4)
	--GameTooltipStatusBar.bg:SetFrameStrata(GameTooltipStatusBar:GetFrameStrata())
	--GameTooltipStatusBar.bg:SetFrameLevel(GameTooltipStatusBar:GetFrameLevel() - 1)
	--GameTooltipStatusBar.bg:SetBackdrop( { 
		--edgeFile = R["media"].glow,
		--bgFile = R["media"].blank,
		--edgeSize = R:Scale(4),
		--insets = {left = R:Scale(4), right = R:Scale(4), top = R:Scale(4), bottom = R:Scale(4)},
	--})
	--GameTooltipStatusBar.bg:SetBackdropColor(0, 0, 0, 0.5)
	--GameTooltipStatusBar.bg:SetBackdropBorderColor(0, 0, 0, 0.8)
    GameTooltipStatusBar:CreateShadow("Background")
	GameTooltipStatusBar:SetHeight(8)
	GameTooltipStatusBar:SetStatusBarTexture(R["media"].normal)
	GameTooltipStatusBar:ClearAllPoints()
	GameTooltipStatusBar:SetPoint("TOPLEFT", GameTooltip, "BOTTOMLEFT", 3, -2)
	GameTooltipStatusBar:SetPoint("TOPRIGHT", GameTooltip, "BOTTOMRIGHT", -3, -2)
	GameTooltipStatusBar:HookScript("OnValueChanged", function(self, value)
		if not value then
			return
		end
		local min, max = self:GetMinMaxValues()
		if value < min or value > max then
			return
		end
		local unit  = select(2, GameTooltip:GetUnit())
		if unit then
			if UnitIsPlayer(unit) then
				GameTooltipStatusBar:SetStatusBarColor(unpack({GameTooltip_UnitColor(unit)}))
			end
			min, max = UnitHealth(unit), UnitHealthMax(unit)
			if not self.text then
				self.text = self:CreateFontString(nil, "OVERLAY")
				self.text:SetPoint("CENTER", GameTooltipStatusBar, 0, -4)
				self.text:SetFont(R["media"].font, 12, "THINOUTLINE")
				-- self.text:SetShadowOffset(R.mult, -R.mult)
			end
			self.text:Show()
			local hp = truncate(min).." / "..truncate(max)
			self.text:SetText(hp)
		else
			if self.text then
				self.text:Hide()
			end
		end
	end)

	self:SecureHook("GameTooltip_SetDefaultAnchor")
	self:HookScript(GameTooltip, "OnUpdate", "GameTooltip_OnUpdate")

	GameTooltip:HookScript("OnUpdate", function(self, elapsed)
		if self:GetAnchorType() == "ANCHOR_CURSOR" then
			local x, y = GetCursorPosition()
			local effScale = self:GetEffectiveScale()
			local width = self:GetWidth() or 0
			self:ClearAllPoints()
			self:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", x / effScale - width / 2, y / effScale + 15)
		end
	end)

	self:RegisterEvent("MODIFIER_STATE_CHANGED")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")

	SetCVar("alwaysCompareItems", 1)
end

function TT:Info()
	return L["|cff7aa6d6Ray|r|cffff0000U|r|cff7aa6d6I|r鼠标提示模块."]
end

R:RegisterModule(TT:GetName())
