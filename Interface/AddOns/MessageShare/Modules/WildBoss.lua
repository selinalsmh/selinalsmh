local MS = LibStub('AceAddon-3.0'):GetAddon('MessageShare')
local mod = MS:Module("WildBoss","AceEvent-3.0")
local KEYWROD = "WildBoss"
local module = mod.func
local BossID = {
	[62346] = true,--炮艇
	[60491] = false,--煞,
	--[60242] = true,--debug 野山羊
}

function mod:OnInitialize()
	module:RegisterChatType(KEYWROD)
	self:RegisterEvent("PLAYER_TARGET_CHANGED");
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
	--self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");--打死的為啥不更新
end
local function Warning()
	local t,text
	for name,date in pairs(mod.db) do
		if type(date)=="table" then
			t = date[#date]
			if t and not t.IsDead and t.sender then
				text = name..MESSAGESHARE_WIDEBOSS_APPEAR..t.sender
				RaidNotice_AddMessage(RaidBossEmoteFrame,text, ChatTypeInfo["RAID_WARNING"])
				WildBossShowLog()
				print("|cffff0000"..text)
			end
		end
	end
end
function mod:GetLastBossDate(name)
	while self.db and self.db[name] and #(self.db[name])>10 do
		table.remove(self.db[name],1)
	end
	self.db[name] = self.db[name] or {}
	local t = self.db[name][#(self.db[name])]
	return t
end
function mod:SendBossDate(sender)
	if mod.db.time then
		if sender then
			MS:SendWisper(KEYWROD,mod.db,sender)
		else
			MS:SendMessage(KEYWROD,mod.db)
		end
	end
end
function mod:OnReceiveMessage(key,sender,msg)
	if type(msg)=="table" then
		if (not mod.db.time or (msg.time>mod.db.time)) then
			MS:CopyTable(mod.db,msg)
			Warning()
		end
	elseif (msg=="CallBossDate") and (MS:GetChannelMaster()==UnitName("Player")) then
		self:SendBossDate(sender)
	end
end
function mod:OnReceiveWhisper(key,sender,msg)
	if type(msg)=="table" then
		if (not mod.db.time or (msg.time and msg.time>mod.db.time)) then
			MS:CopyTable(mod.db,msg)
		end
	elseif (msg=="CallBossDate") and (MS:GetChannelMaster()==UnitName("Player")) then
		self:SendBossDate(sender)
	end
end
function mod:FoundBoss(name,dead)
	local time = time()
	local t = self:GetLastBossDate(name)
	if not dead then
		if not t or (t.IsDead and t.time and (time - t.time > 600)) then--考虑到有人可能会延迟几分钟才看到BOSS死掉,所以10分钟以后才开始计刷新
			self.db.time = time
			table.insert(self.db[name],{time = time,sender = UnitName("Player"),})
			self:SendBossDate()
		end
	else
		if not t.IsDead then
			self.db.time = time
			t.time = time
			t.IsDead = true
			self:SendBossDate()
		end
	end
end
function mod:CallBossDate()
	local name = MS:GetChannelMaster()
	if name then
		MS:SendWisper(KEYWROD,"CallBossDate",name)
	else
		MS:SendMessage(KEYWROD,"CallBossDate")
	end
end
function mod:OnModuleReady()
	self:CallBossDate()
end
function mod:CheckUnit(unit)
	if IsInInstance() then return end
	local guid = UnitGUID(unit)
	if guid and (bit.band(guid:sub(1, 5), 0x00F) == 3 or bit.band(guid:sub(1, 5), 0x00F) == 5) then
		local cId = tonumber(guid:sub(7, 10), 16)
		if BossID[cId] then 
			mod:FoundBoss(UnitName(unit),UnitIsDead(unit))
		end
	end
end
function mod:PLAYER_TARGET_CHANGED()
	self:CheckUnit("target")
end
function mod:UPDATE_MOUSEOVER_UNIT()
	self:CheckUnit("mouseover")
end
--[[ function mod:COMBAT_LOG_EVENT_UNFILTERED(timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, ...)
	if event == "UNIT_DIED" or event == "UNIT_DESTROYED" and destGUID then
		local cId = tonumber(destGUID:sub(7, 10), 16)
		if cId and BossID[cId] then
			self:FoundBoss(destName,true)
		end
	end
end ]]
function WildBossShowLog()
	local f = WileBossOptionframe
	if not f then
		f = CreateFrame("Frame","WileBossOptionframe",UIParnet,"FloatingBorderedFrame")
		f.close = CreateFrame("Button",nil,f,"UIPanelCloseButton")
		f.title = f:CreateFontString(nil,"OVERLAY","GameFontNormal")
		f:SetSize(300,100)
		f.close:SetSize(30,30)
		f.title:SetPoint("TOP")
		f.title:SetText(MESSAGESHARE_WIDEBOSS_TITEL)
		f.close:SetPoint("TOPRIGHT",f,"TOPRIGHT")
		_G["WileBossOptionframe".."Background"]:SetVertexColor(0,0,0,0.5)
		f:SetFrameStrata("TOOLTIP")
		f:SetMovable(1)
		f:SetScript("OnMouseDown",function(self) self:StartMoving() end)
		f:SetScript("OnMouseUp",function(self) self:StopMovingOrSizing() end)
		f:SetScript("OnEnter",function(self)
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:AddLine(MESSAGESHARE_WIDEBOSS_NOTE)
			GameTooltip:Show()
		end)
		f:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		f:SetPoint("CENTER")
	end
	f:Show()
	local index = 0
	for bossname,info in pairs(mod.db) do
		if type(info)=="table" then
			local child = f[bossname] or CreateFrame("Button",nil,f,"OptionsButtonTemplate")
			child:SetText(bossname)
			child:SetSize(100,30)
			child:SetPoint("TOPLEFT",f,"TOPLEFT",index*170+10,-20)
			index = index + 1
			child:SetScript("OnEnter",function(self)
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
				GameTooltip:AddLine(bossname)
				if mod.db[bossname] then
					for _,j in pairs(mod.db[bossname]) do--这里的mod.db[bossname] 不能用info来替代,不然不会即时刷新
						local time = date(MESSAGESHARE_DATA,j.time)
						GameTooltip:AddDoubleLine(time,j.IsDead and MESSAGESHARE_WIDEBOSS_DEAD or MESSAGESHARE_WIDEBOSS_LIVE)
					end
				else
					
				end
				GameTooltip:Show()
			end)
			child:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		end
	end
end