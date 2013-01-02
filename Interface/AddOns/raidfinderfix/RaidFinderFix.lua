local build
local function checkversion(build)
	if type(build) == "nil" then
		build = (select(2, GetBuildInfo()))
	end
end

local f = CreateFrame("Frame")
f:SetScript("OnEvent", function()
	if not build then
		checkversion(build)
	end
	if build and build ~= 16309 then
		f:UnregisterEvent("LFG_PROPOSAL_SHOW")
		f:UnregisterEvent("LFG_PROPOSAL_UPDATE")
		return
	end

	local proposalExists, id, typeID, subtypeID, name, texture, role, hasResponded, bogus, completedEncounters, numMembers, isLeader, extra, totalEncounters = GetLFGProposal(); 
	if totalEncounters and totalEncounters > 0 then
		LFGDungeonReadyDialogInstanceInfoFrame.statusText:SetFormattedText(BOSSES_KILLED, completedEncounters, totalEncounters)
	end
end)
f:RegisterEvent("LFG_PROPOSAL_SHOW")
f:RegisterEvent("LFG_PROPOSAL_UPDATE")

