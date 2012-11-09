local SetCVar, BNGetMatureLanguageFilter, BNSetMatureLanguageFilter = 
	  SetCVar, BNGetMatureLanguageFilter, BNSetMatureLanguageFilter
local eventFr=CreateFrame("Frame")
local function set() SetCVar("profanityFilter","0") if BNGetMatureLanguageFilter() then BNSetMatureLanguageFilter(false) end end
eventFr:SetScript("OnEvent",set)
eventFr:RegisterEvent("CVAR_UPDATE")
eventFr:RegisterEvent("VARIABLES_LOADED")
eventFr:RegisterEvent("BN_MATURE_LANGUAGE_FILTER")
set()
----------------------------------------------------------------------------------------
--	Item reforge info(module from bTooltip by Fernir)
----------------------------------------------------------------------------------------
local StatNames = {
	ITEM_MOD_SPIRIT_SHORT, ITEM_MOD_DODGE_RATING_SHORT, ITEM_MOD_PARRY_RATING_SHORT, ITEM_MOD_HIT_RATING_SHORT,
	ITEM_MOD_CRIT_RATING_SHORT, ITEM_MOD_HASTE_RATING_SHORT, ITEM_MOD_EXPERTISE_RATING_SHORT, ITEM_MOD_MASTERY_RATING_SHORT
}
local ReforgeIDs = {
	{1, 2}, {1, 3}, {1, 4}, {1, 5}, {1, 6}, {1, 7}, {1, 8},
	{2, 1}, {2, 3}, {2, 4}, {2, 5}, {2, 6}, {2, 7}, {2, 8},
	{3, 1}, {3, 2}, {3, 4}, {3, 5}, {3, 6}, {3, 7}, {3, 8},
	{4, 1}, {4, 2}, {4, 3}, {4, 5}, {4, 6}, {4, 7}, {4, 8},
	{5, 1}, {5, 2}, {5, 3}, {5, 4}, {5, 6}, {5, 7}, {5, 8},
	{6, 1}, {6, 2}, {6, 3}, {6, 4}, {6, 5}, {6, 7}, {6, 8},
	{7, 1}, {7, 2}, {7, 3}, {7, 4}, {7, 5}, {7, 6}, {7, 8},
	{8, 1}, {8, 2}, {8, 3}, {8, 4}, {8, 5}, {8, 6}, {8, 7},
}
local function ReforgeInfo(self)
	local name, item = self:GetItem()
	if item then
		local regions = {self:GetRegions()}
		local itemLink = select(2, GetItemInfo(item))
		for i = 1, #regions do
			local region = regions[i]
			if region and region:GetObjectType() == "FontString" then
				local text = region:GetText()
				if text and text == REFORGED then
					local rid = tonumber(itemLink:match("item:%d+:%d+:%d+:%d+:%d+:%d+:%-?%d+:%-?%d+:%d+:(%d+)"))
					local info = ReforgeIDs[rid - 113 + 1]
					if info[1] and info[2] then
						region:SetText(text.." ("..StatNames[info[1]].." -> "..StatNames[info[2]]..")")
					end
				end
			end
		end
	end
end

GameTooltip:HookScript("OnTooltipSetItem", ReforgeInfo)
ItemRefTooltip:HookScript("OnTooltipSetItem", ReforgeInfo)
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", ReforgeInfo)
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", ReforgeInfo)
ItemRefShoppingTooltip3:HookScript("OnTooltipSetItem", ReforgeInfo)
ShoppingTooltip1:HookScript("OnTooltipSetItem", ReforgeInfo)
ShoppingTooltip2:HookScript("OnTooltipSetItem", ReforgeInfo)
ShoppingTooltip3:HookScript("OnTooltipSetItem", ReforgeInfo)

--分解不必再点确定
local aotuClick = CreateFrame("Frame")
aotuClick:RegisterEvent("CONFIRM_DISENCHANT_ROLL")
aotuClick:RegisterEvent("CONFIRM_LOOT_ROLL")
aotuClick:RegisterEvent("LOOT_BIND_CONFIRM")      
aotuClick:SetScript("OnEvent", function(self, event, ...)
   for i = 1, STATICPOPUP_NUMDIALOGS do
      local frame = _G["StaticPopup"..i]
      if (frame.which == "CONFIRM_LOOT_ROLL" or frame.which == "LOOT_BIND" or frame.which == "LOOT_BIND_CONFIRM") and frame:IsVisible() then 
      StaticPopup_OnClick(frame, 1) 
      end
   end
end)

SetCVar("guildShowOffline", 0)
SetCVar("deselectOnClick", 1)
SetCVar("interactOnLeftClick", 0)
SetCVar("showTargetOfTarget", 1)
SetCVar("spamFilter", 0)
SetCVar("UnitNameNPC", 1)
SetCVar("UnitNameEnemyGuardianName", 1)
SetCVar("UnitNameEnemyTotemName", 1)
SetCVar("UnitNameFriendlyGuardianName", 1)
SetCVar("UnitNameFriendlyTotemName", 1)
SetCVar("UnitNameNonCombatCreatureName", 0)
SetCVar("UnitNameFriendlySpecialNPCName", 0)
SetCVar("CombatDamage", 1)
SetCVar("CombatHealing", 1)
SetCVar("fctDodgeParryMiss", 1)
SetCVar("fctDamageReduction", 1)
SetCVar("fctRepChanges", 1)
SetCVar("fctFriendlyHealers", 1)
SetCVar("fctEnergyGains", 1)
SetCVar("fctPeriodicEnergyGains", 1)
SetCVar("fctHonorGains", 1)
SetCVar("fctAuras", 1)
SetCVar("threatShowNumeric", 1)
SetCVar("showTutorials", 0)
SetCVar("profanityFilter", 0)
SetCVar("scriptErrors", 1)
SetCVar("buffDurations", 1)
SetCVar("consolidateBuffs",0)
--SetCVar("autoLootDefault", 1)
SetCVar("lootUnderMouse", 1)
SetCVar("autoSelfCast", 1)
SetCVar("ShowClassColorInNameplate", 1)
SetCVar("cameraDistanceMax", 50)
SetCVar("cameraDistanceMaxFactor", 3.4)
SetCVar("screenshotQuality", SCREENSHOT_QUALITY)
SetCVar("cameraSmoothStyle", 0)
SetCVar("chatStyle", "classic")
---------------- >显示颜色
   ToggleChatColorNamesByClassGroup(true, "SAY")
   ToggleChatColorNamesByClassGroup(true, "EMOTE")
   ToggleChatColorNamesByClassGroup(true, "YELL")
   ToggleChatColorNamesByClassGroup(true, "GUILD")
   ToggleChatColorNamesByClassGroup(true, "GUILD_OFFICER")
   ToggleChatColorNamesByClassGroup(true, "OFFICER")
   ToggleChatColorNamesByClassGroup(true, "GUILD_ACHIEVEMENT")
   ToggleChatColorNamesByClassGroup(true, "ACHIEVEMENT")
   ToggleChatColorNamesByClassGroup(true, "WHISPER")
   ToggleChatColorNamesByClassGroup(true, "PARTY")
   ToggleChatColorNamesByClassGroup(true, "PARTY_LEADER")
   ToggleChatColorNamesByClassGroup(true, "RAID")
   ToggleChatColorNamesByClassGroup(true, "RAID_LEADER")
   ToggleChatColorNamesByClassGroup(true, "RAID_WARNING")
   ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND")
   ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND_LEADER")   
   ToggleChatColorNamesByClassGroup(true, "CHANNEL1")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL2")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL3")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL4")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL5")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL6")
   ToggleChatColorNamesByClassGroup(true, "CHANNEL7")
   
   --每一个button的長、寬，空隙，綜合/交易/本地防務/組隊 頻道的顏色
local buttontex = "Interface\\AddOns\\m_chat\\textures\\bartexture"
local buttonwidth, buttonheight, buttonspacing = 25, 12, 2.5
local c1r, c1g, c1b = 255/255, 192/255 ,192/255  --綜合
local c2r, c2g, c2b = 255/255, 130/255, 130/255  --交易
local c3r, c3g, c3b = 255/255, 255/255, 150/255  --防務
local c4r, c4g, c4b = 150/255, 255/255, 185/255  --組隊


local chat = CreateFrame("Frame","chat",UIParent)
chat:RegisterEvent("PLAYER_ENTERING_WORLD")
chat:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
	    ChangeChatColor("CHANNEL1", c1r, c1g, c1b)
		ChangeChatColor("CHANNEL2", c2r, c2g, c2b)
		ChangeChatColor("CHANNEL3", c3r, c3g, c3b)
		ChangeChatColor("CHANNEL4", c4r, c4g, c4b)
		ChangeChatColor("CHANNEL5", c2r, c2g, c2b)
		ChangeChatColor("CHANNEL6", 1/255, 234/255, 255/255)
	end
end)