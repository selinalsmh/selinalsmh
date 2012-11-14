local GetDefaultLanguage = GetDefaultLanguage
local DisplayChannelOwner = DisplayChannelOwner
local SendAddonMessage = SendAddonMessage
local SendChatMessage = SendChatMessage


MessageShare = LibStub("AceAddon-3.0"):NewAddon("MessageShare", "AceTimer-3.0", "AceEvent-3.0","AceSerializer-3.0");
local MS = MessageShare
local ChanngeName = "MoguChannel"
local PassWord = "MessageSharePassWord"
local Language = GetDefaultLanguage()
local PlayerName = UnitName("Player")
local realmKey = GetRealmName()
local MessageTable = {}
local MessageTypes = {}
local InviteKeyWord = {"+","组","組","invite"}
local db
--MS.kick = {}
--local debug = print
local ChannelOwner
function MS:Module(name, ...)
	local module = self:GetModule(name, true)
	if not module then
		module = self:NewModule(name, ...)
		module.func = {}
		module.db = module.default or {}
		setmetatable(module.func, {__index = function(t,k,v) return MS[k] end})
	end
	return module
end
local function HideChannelDisplay()
	oGetChannelName = oGetChannelName or GetChannelName
	function GetChannelName(id)
		local index,name,arg3 = oGetChannelName(id)
		if name ==ChanngeName then
			return 0,nil,0
		else
			return index,name,arg3
		end
	end
	oGetChannelList = oGetChannelList or GetChannelList
	function GetChannelList()
		local t = {oGetChannelList()}
		for i,j in pairs(t) do
			if j==ChanngeName then
				table.remove(t,i-1)
				table.remove(t,i-1)
				break
			end
		end
		return unpack(t)
	end
end
local function GetChannelId()
	local channelCount = GetNumDisplayChannels();
	for i=1,channelCount do
		local name, header, collapsed, channelNumber, count, active, category, voiceEnabled, voiceActive = GetChannelDisplayInfo(i);
		if name==ChanngeName then
			SetSelectedDisplayChannel(i)
			return i
		end
	end
end
function MS:PLAYER_LOGIN()
	MessageShareDB = MessageShareDB or {}
	MessageShareDB[realmKey] = MessageShareDB[realmKey] or {}
	db = MessageShareDB[realmKey]
	self:ScheduleTimer(function() 
		JoinTemporaryChannel(ChanngeName,PassWord)
		DisplayChannelOwner(ChanngeName)
		ChatFrame_RemoveChannel(FCF_GetCurrentChatFrame(), ChanngeName)
		self:ScheduleTimer(function() 
			for i,j in pairs(MS.modules) do
				db[i] = db[i] or j.db
				j.db = db[i]
				if j.OnModuleReady then
					j:OnModuleReady()
				end
			end
		end,
		2)
	end,
	5)
	MS:Options()
end
function MS:GetChannelMemberNum()
	local id = GetChannelId()
	if not id then return end
	local name, header, collapsed, channelNumber, count, active, category, voiceEnabled, voiceActive = GetChannelDisplayInfo(id);
	return count
end
function MS:GetChannelMaster()
	return ChannelOwner
end
function MS:SendWisper(key,msg,target)
--print("SendWisper",msg,target)
	if not (msg and target) then return end
	msg = MS:Serialize(msg)
	--SendAddonMessage(ChanngeName,msg,"WHISPER",target)
	local time = time()
	SendAddonMessage(ChanngeName,key.."&&START"..time,"WHISPER",target)
	local len,str
	while msg~="" do--尽量每句发的长点.并且要避免把UTF8字符截断
		len = 80
		local str = msg:utf8sub(1,len)
		while (string.len(str) < (250- string.len(key) -2)) or (str:sub(-1)=="\124" and str:sub(-2)~="\124\124") do
			len = len + 1
			str = msg:utf8sub(1,len)
			if str==msg then
				break
			end
		end
		SendAddonMessage(ChanngeName,key.."&&"..str,"WHISPER",target)
		msg = msg:utf8sub(len+1)
	end
	SendAddonMessage(ChanngeName,key.."&&END"..time,"WHISPER",target)
end
local function OnReceiveWhisper(key,sender)
--print("OnReceiveWhisper",sender)
	--[[ if key=="nokick" then
		MS.kick[sender] = false
		return
	end ]]
	local t = MessageTable[key][sender][#(MessageTable[key][sender])]
	local msg = t.msg
	local time = t.time
	--msg:gsub(key.."&&","")
	local success,msg = MS:Deserialize(msg)
	if success then
		for i,j in pairs(MS.modules) do
			if j.func.MessageTypes and j.func.MessageTypes[key] then
				j:OnReceiveWhisper(key,sender,msg)
			end
		end
	end
end
function MS:CHAT_MSG_ADDON(event,prefix, msg, channel, sender)
--print(event,prefix, msg, channel, sender)
	if prefix == ChanngeName and sender~=PlayerName then
		local key = msg:match("(.+)&&")
		if MessageTypes[key] and MessageTypes[key]>0 then
			if msg:find("&&START")  then
				local time = msg:match("%d+")
				MessageTable[key] = MessageTable[key] or {}
				MessageTable[key][sender] = MessageTable[key][sender] or {}
				tinsert(MessageTable[key][sender],{time = time,msg = "",})
			elseif msg:find("&&END") then
				local t = MessageTable[key][sender][#(MessageTable[key][sender])]
				if not t or t.ended then return end
				t.ended = true
				if t.time == msg:match("%d+") then
					OnReceiveWhisper(key,sender)
				end
			else
				--debug(MessageTable,key,sender,#(MessageTable[key][sender]))
				local t = MessageTable[key][sender][#(MessageTable[key][sender])]
				if not t or t.ended then return end
				t.msg = t.msg..msg:gsub(key.."&&","")
			end
		end
	end
end
function MS:SendMessage(key,msg)
--print("SendMessage",msg)
	if not msg then return end
	msg = MS:Serialize(msg)
	msg = msg:gsub("\124","\124\124")
	local id = oGetChannelName(ChanngeName)
	local time = time()
	SendChatMessage(key.."&&START"..time,"CHANNEL",Language,id)
	local len,str
	while msg~="" do--尽量每句发的长点.并且要避免把UTF8字符及"\124\124"截断
		len = 80
		local str = msg:utf8sub(1,len)
		while (string.len(str) < (250- string.len(key) -2))  or (str:sub(-1)=="\124" and str:sub(-2)~="\124\124") do
			len = len + 1
			str = msg:utf8sub(1,len)
			if str==msg then
				break
			end
		end
		SendChatMessage(key.."&&"..str,"CHANNEL",Language,id)
		msg = msg:utf8sub(len+1)
	end
	SendChatMessage(key.."&&END"..time,"CHANNEL",Language,id)
end
function MS:RegisterChatType(key)
	self.MessageTypes = self.MessageTypes or {}
	self.MessageTypes[key] = true
	MessageTypes[key] = MessageTypes[key] and (MessageTypes[key] + 1) or 1
end
function MS:UnregisterChatType(key)
	if self.MessageTypes and self.MessageTypes[key] then
		self.MessageTypes[key] = nil
		MessageTypes[key] = MessageTypes[key] and (MessageTypes[key] - 1) or 0
	end
end
local function OnReceiveMessage(key,sender)
	--debug(2,key,sender)
	local t = MessageTable[key][sender][#(MessageTable[key][sender])]
	local msg = t.msg
	local time = t.time
	for i,j in pairs(MS.modules) do
		if j.func.MessageTypes and j.func.MessageTypes[key] then
			msg = msg:gsub("\124\124","\124")
			local success,msg = MS:Deserialize(msg)
			if success then
				j:OnReceiveMessage(key,sender,msg)
			end
		end
	end
end
function MS:CHAT_MSG_BN_WHISPER(event,msg,sender,...)
	if CanGroupInvite() then
		for _,key in pairs(InviteKeyWord)do
			if msg and msg:find(key) then
				local index = 1
				local flag,presenceID, presenceName, battleTag, isBattleTagPresence, toonName = pcall(BNGetFriendInfo,index)
				while flag and presenceName do
					if presenceName==sender then
						InviteToGroup(toonName)
						local text = string.format(MESSAGESHARE_INVITEWHISPER,PlayerName,GetNumGroupMembers())
						SendChatMessage(text,"WHISPER",Language,toonName)
						return
					else
						index = index + 1
						flag,presenceID, presenceName, battleTag, isBattleTagPresence, toonName = pcall(BNGetFriendInfo,index)
					end
				end
			end
		end
	end
end
function MS:CHAT_MSG_WHISPER(event,msg,sender)
	if CanGroupInvite() then
		for _,key in pairs(InviteKeyWord)do
			if msg and msg:find(key) then
				InviteToGroup(sender)
				local text = string.format(MESSAGESHARE_INVITEWHISPER,PlayerName,GetNumGroupMembers())
				SendChatMessage(text,"WHISPER",Language,sender)
				return
			end
		end
	end
end
function MS:CHAT_MSG_CHANNEL(event,msg,sender,language,channle)
	--if InCombatLockdown() then return end
	if channle:find(ChanngeName) and sender~=PlayerName then
		local key = msg:match("(.+)&&")
		if MessageTypes[key] and MessageTypes[key]>0 then
			if msg:find("&&START")  then
				local time = msg:match("%d+")
				MessageTable[key] = MessageTable[key] or {}
				MessageTable[key][sender] = MessageTable[key][sender] or {}
				tinsert(MessageTable[key][sender],{time = time,msg = "",})
			elseif msg:find("&&END") then
				local t = MessageTable[key][sender][#(MessageTable[key][sender])]
				if not t or t.ended then return end
				t.ended = true
				if t.time == msg:match("%d+") then
					OnReceiveMessage(key,sender)
				end
			else
				--debug(MessageTable,key,sender,#(MessageTable[key][sender]))
				local t = MessageTable[key][sender][#(MessageTable[key][sender])]
				if not t or t.ended then return end
				t.msg = t.msg..msg:gsub(key.."&&","")
			end
		end
	end
end
function MS:CHAT_MSG_CHANNEL_NOTICE_USER(...)
	local _,message,owner,_,_,_,_,_,_,channelName = ...
	if (message =="CHANNEL_OWNER" or message=="OWNER_CHANGED") and channelName==ChanngeName then
		--[[ if not ChannelOwner and (owner~=PlayerName) then
			MS:SendWisper("nokick","",owner)
		end ]]
		ChannelOwner = owner
	end
end
--[[ function MS:CHAT_MSG_CHANNEL_JOIN(event,...)
	local _, sender, _, channelString, _, _, _, channelNumber, channelName=...
	if channelName == ChanngeName and PlayerName==MS:GetChannelMaster() then
		if MS.kick[sender]==nil then
			MS.kick[sender] = true
		end
		self:ScheduleTimer(function()
			if MS.kick[sender] then
			--ChannelKick(ChanngeName, sender) --防止別人自行加入
			end
		end,
		2)
	end
end ]]
function MS:OnLeaveGame()
	LeaveChannelByName(ChanngeName)
end
function MS:OnInitialize()
--print("OnInitialize")
	HideChannelDisplay()
	if (RegisterAddonMessagePrefix) then
		RegisterAddonMessagePrefix (ChanngeName)
	end
	self:RegisterEvent("CHAT_MSG_WHISPER")
	self:RegisterEvent("CHAT_MSG_BN_WHISPER")
	self:RegisterEvent("CHAT_MSG_CHANNEL")
	self:RegisterEvent("PLAYER_LOGIN")
	self:RegisterEvent("CHAT_MSG_ADDON")
	self:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE_USER")
	--self:RegisterEvent("CHAT_MSG_CHANNEL_JOIN")
	self:RegisterEvent("PLAYER_QUITING","OnLeaveGame")
	self:RegisterEvent("PLAYER_LEAVING_WORLD","OnLeaveGame")
end
function ToggleAutoInvite(flag)
	if flag then
		MS:RegisterEvent("CHAT_MSG_WHISPER")
		MS:RegisterEvent("CHAT_MSG_BN_WHISPER")
	else
		MS:UnregisterEvent("CHAT_MSG_WHISPER")
		MS:UnregisterEvent("CHAT_MSG_BN_WHISPER")
	end
end
function MS:CopyTable(result,value)
	if type(value) =="table" then
		for i,j in pairs(value) do
			result[i] = j
		end
	end
end
function MS:Options()
	if IsAddOnLoaded("!!!Mush") then
		return
	end
	if db.autoinvite==nil then db.autoinvite = true end
	ToggleAutoInvite(db.autoinvite)
	print(MESSAGESHARE_OPTIONS_MS)
	local function SlashCmd(msg)
		if msg=="bank" then
			ShowOffLineBank()
		elseif msg=="boss" then
			WildBossShowLog()
		elseif msg=="group" then
			db.autoinvite = not db.autoinvite
			ToggleAutoInvite(db.autoinvite)
			print(MESSAGESHARE_OPTIONS_INVITE..(db.autoinvite and "|cff00ff00"..ENABLE or "|cffff0000"..DISABLE))	
		else
			print(MESSAGESHARE_OPTIONS_BANK)	
			print(MESSAGESHARE_OPTIONS_BOSS)	
			print(MESSAGESHARE_OPTIONS_INVITE..(db.autoinvite and "|cff00ff00"..ENABLE or "|cffff0000"..DISABLE))	
		end
	end
	SLASH_MS1 = "/MessageShare";
	SLASH_MS2 = "/ms";
	SlashCmdList["MS"] = SlashCmd;
end
