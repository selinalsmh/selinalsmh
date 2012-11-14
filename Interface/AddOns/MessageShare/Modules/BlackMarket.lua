local MS = LibStub('AceAddon-3.0'):GetAddon('MessageShare')
local mod = MS:Module("BlackMarket","AceEvent-3.0")
local KEYWROD = "BlackMarket"
local module = mod.func--继承主模块的方法
local oGetHotItem = C_BlackMarket.GetHotItem
local oGetNumItems = C_BlackMarket.GetNumItems
local oGetItemInfoByIndex = C_BlackMarket.GetItemInfoByIndex
local isBankOffLine
function mod:OnInitialize()
	module:RegisterChatType(KEYWROD)
	self:RegisterEvent("BLACK_MARKET_ITEM_UPDATE","UpdateBankData");
	self:RegisterEvent("BLACK_MARKET_BID_RESULT","UpdateBankData");
	self:RegisterEvent("BLACK_MARKET_OUTBID","UpdateBankData");
	self:RegisterEvent("ADDON_LOADED");
	--self:RegisterEvent("PLAYER_LOGIN");
end
function mod:OnReceiveMessage(key,sender,msg)
--print("OnReceiveMessage",sender,msg)
	if type(msg)=="table" then
		if (not mod.db.time or (msg.time>mod.db.time)) and not(BlackMarketFrame and BlackMarketFrame:IsShown() and not isBankOffLine) then
			MS:CopyTable(mod.db,msg)
			if isBankOffLine then
				self:UpdateBankDisplay()
			end
		end
	elseif (msg=="CallBankDate") and (MS:GetChannelMaster()==UnitName("Player")) then
		self:SendBankDate(sender)
	end
end
function mod:OnReceiveWhisper(key,sender,msg)
--print("OnReceiveWhisper",sender,msg)
	if type(msg)=="table" then
		if (not mod.db.time or (msg.time and msg.time>mod.db.time)) and not(BlackMarketFrame and BlackMarketFrame:IsShown() and not isBankOffLine) then
			MS:CopyTable(mod.db,msg)
			if isBankOffLine then
				self:UpdateBankDisplay()
			end
		end
	elseif (msg=="CallBankDate") and (MS:GetChannelMaster()==UnitName("Player")) then
		self:SendBankDate(sender)
	end
end
function mod:SendBankDate(sender)
	if mod.db.time then
		if sender then
			MS:SendWisper(KEYWROD,mod.db,sender)
		else
			MS:SendMessage(KEYWROD,mod.db)
		end
	end
end
function mod:CallBankDate()
--print("call")
	local name = MS:GetChannelMaster()
	if name then
		MS:SendWisper(KEYWROD,"CallBankDate",name)
	else
		MS:SendMessage(KEYWROD,"CallBankDate")
	end
end
function mod:UpdateBankData()
	if not isBankOffLine then
		mod.db.GetHotItem = {C_BlackMarket.GetHotItem()}
		mod.db.GetNumItems = C_BlackMarket.GetNumItems()
		mod.db.GetItemInfoByIndex = {}
		mod.db.time = time()
		for index=1,mod.db.GetNumItems do
			mod.db.GetItemInfoByIndex[index] = {C_BlackMarket.GetItemInfoByIndex(index)}
		end
		self:SendBankDate()
	end
end
function mod:ADDON_LOADED(event,addon)
	if addon == "Blizzard_BlackMarketUI" then
		BlackMarketFrame:HookScript("OnHide",function()
			C_BlackMarket.GetHotItem = oGetHotItem
			C_BlackMarket.GetNumItems = oGetNumItems
			C_BlackMarket.GetItemInfoByIndex = oGetItemInfoByIndex
			BlackMarketFrame.time:SetText("")
			BlackMarketFrame.BidButton:Show()
			BlackMarketFrame.HotDeal.BidButton:Show()
			isBankOffLine = false
		end)
		BlackMarketFrame.time = BlackMarketFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
		BlackMarketFrame.time:SetPoint("TOPLEFT",BlackMarketFrame,"TOPRIGHT",-240,-4)
		BlackMarketFrame.timesystem = BlackMarketFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
		BlackMarketFrame.timesystem:SetPoint("TOPLEFT",BlackMarketFrame,"TOPRIGHT",-240,-25)
		local elapsedadd = 0
		BlackMarketFrame:HookScript("OnUpdate",function(self,elapsed)
			if BlackMarketFrame.time:GetText()~="" then
				elapsedadd = elapsedadd + elapsed
				if elapsedadd>1 then
					elapsedadd = 0
					local time = date(MESSAGESHARE_DATA,time())
					BlackMarketFrame.timesystem:SetText(MESSAGESHARE_BLACKMARKET_NOWTIME..time)
				end
			end
		end)
		self:UnregisterEvent("ADDON_LOADED")
	end
end
function mod:OnModuleReady()
	self:CallBankDate()
end
function mod:UpdateBankDisplay()
	BlackMarketFrame.BidButton:Hide()
	BlackMarketFrame.HotDeal.BidButton:Hide()
	if mod.db.time then
		local time = date(MESSAGESHARE_DATA,mod.db.time)
		BlackMarketFrame.time:SetText(MESSAGESHARE_BLACKMARKET_UPDATETIME..time)
	else
		BlackMarketFrame.time:SetText(MESSAGESHARE_BLACKMARKET_NODATE)
	end
	MS:ScheduleTimer(function() 
		BlackMarketFrame_UpdateHotItem(BlackMarketFrame)
		HybridScrollFrame_CreateButtons(BlackMarketScrollFrame, "BlackMarketItemTemplate", 5, -5);
		BlackMarketScrollFrame_Update();
	end,
	.5)
end
function ShowOffLineBank()
	if not mod.db.time then--奇怪,重载可以通过OnModuleReady来获取到数据,上线却不行
		mod:CallBankDate()
	end
	if not IsAddOnLoaded("Blizzard_BlackMarketUI") then
		LoadAddOn("Blizzard_BlackMarketUI")
	end
	isBankOffLine = true
	C_BlackMarket.GetHotItem = function()
		if mod.db.GetHotItem then
			return unpack(mod.db.GetHotItem)
		end
	end
	C_BlackMarket.GetNumItems = function() return mod.db.GetNumItems or 0 end
	C_BlackMarket.GetItemInfoByIndex = function(index) 
		if mod.db.GetItemInfoByIndex[index] then 
			return unpack(mod.db.GetItemInfoByIndex[index]) 
		end
	end
	BlackMarketFrame_Show()
	mod:UpdateBankDisplay()
end


