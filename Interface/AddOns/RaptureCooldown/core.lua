local cooldownpoint = {"CENTER", -25 , -158}
local warningpoint = {"CENTER", 0, 0}
local font, fontsize, fontsize2, fontflag = "Fonts\\bHEI01B.TTF", 14, 20, "OUTLINE"

local timer = CreateFrame("Frame")
timer:SetPoint("CENTER", 0, 0)
timer:SetSize(200,50)
timer.text = timer:CreateFontString(nil, "ARTWORK")
timer.text:SetPoint("CENTER", 0, 0)
timer.text:SetShadowOffset(1, -1)
timer.duration = timer:CreateFontString(nil, "ARTWORK")
timer.duration:SetFont(font, fontsize, fontflag)
timer.duration:SetShadowOffset(1, -1)
timer.duration:SetPoint("LEFT", timer.text, "RIGHT", 2, 0)
timer.duration:SetJustifyH("LEFT")
timer:Hide()

local function StartTimer()
	timer:Show()
	timer.text:SetFont(font, fontsize, fontflag)
	timer:ClearAllPoints()
	timer:SetPoint(unpack(cooldownpoint))
	timer.time = 12
	timer:SetScript("OnUpdate", function(self, elasped)
		timer.time = timer.time - elasped
		if (timer.time>0) then
			timer.text:SetText("Rapture Cooldown")
			timer.duration:SetFormattedText("%.1f", timer.time)
		elseif (timer.time>-3) then
			timer.text:SetFont(font, fontsize2, fontflag)
			timer.text:SetText("|cff8CDCFFRapture Ready!|r")
			timer.duration:SetText(nil)
			timer:ClearAllPoints()
			timer:SetPoint(unpack(warningpoint))
		else
			timer:Hide()
		end
	end)
end
	
local Rapture = CreateFrame("Frame")
Rapture:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
Rapture:SetScript("OnEvent", function(self, event, timestamp, eventType, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, dstFlags2, spellID, ...)
	if eventType == "SPELL_ENERGIZE" then
		local player_name = UnitName("player")
		if bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) == COMBATLOG_OBJECT_AFFILIATION_MINE 
			and bit.band(destFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) == COMBATLOG_OBJECT_AFFILIATION_MINE 
			and spellID==47755 then
			StartTimer()
		end
	end
end)