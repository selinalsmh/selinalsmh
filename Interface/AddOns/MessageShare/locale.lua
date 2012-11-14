if GetLocale()=="zhCN" then
	MESSAGESHARE_INVITEWHISPER = "邀请您入队,已经有%d玩家在队伍中."
	MESSAGESHARE_DATA = "%m月%d日 %H:%M:%S"
	MESSAGESHARE_WIDEBOSS_TITEL = "野外BOSS模块"
	MESSAGESHARE_WIDEBOSS_APPEAR = " 刷新!!!,发现者: "
	MESSAGESHARE_WIDEBOSS_LIVE = "|cff00ff00 存活"
	MESSAGESHARE_WIDEBOSS_DEAD = "|cffff0000 死亡"
	MESSAGESHARE_WIDEBOSS_NOTE = "当其他玩家看到炮舰时,会自动弹出此窗口\n如果此窗口是空的,则表示暂无发现历史"
	MESSAGESHARE_BLACKMARKET_UPDATETIME = "|cFFee0000更新时间: "
	MESSAGESHARE_BLACKMARKET_NOWTIME = "|cFF00ee00当前时间: "
	MESSAGESHARE_BLACKMARKET_NODATE = "|cFFee0000暂无数据"
	MESSAGESHARE_OPTIONS_MS = "'/ms' 打开插件设置(包括远程黑市,自动邀请,炮舰提示)"
	MESSAGESHARE_OPTIONS_BANK = "'/ms bank' 显示远程黑市"
	MESSAGESHARE_OPTIONS_BOSS = "'/ms boss' 显示炮舰刷屏历史"
	MESSAGESHARE_OPTIONS_INVITE = "'/ms group' 启用/禁用自动邀请功能,自动邀请密语中带有'+','组'等关键字玩家,现在是"
elseif GetLocale()=="zhTW" then
	MESSAGESHARE_INVITEWHISPER = "邀請您入隊,已經有%d玩家在隊伍中."
	MESSAGESHARE_DATA = "%m月%d日 %H:%M:%S"
	MESSAGESHARE_WIDEBOSS_TITEL = "野外首領模塊"
	MESSAGESHARE_WIDEBOSS_APPEAR = " 刷新!!!,發現者: "
	MESSAGESHARE_WIDEBOSS_LIVE = "|cff00ff00 存活"
	MESSAGESHARE_WIDEBOSS_DEAD = "|cffff0000 死亡"
	MESSAGESHARE_WIDEBOSS_NOTE = "當其他玩家看到帆船時,會自動彈出此窗口\n如果此窗口為空,則表示暫無發現歷史"
	MESSAGESHARE_BLACKMARKET_UPDATETIME = "|cFFee0000更新時間: "
	MESSAGESHARE_BLACKMARKET_NOWTIME = "|cFF00ee00當前時間: "
	MESSAGESHARE_BLACKMARKET_NODATE = "|cFFee0000暫無數據"
	MESSAGESHARE_OPTIONS_MS = "'/ms' 打開插件設置(包括遠程黑市,自動邀請,帆船提示)"
	MESSAGESHARE_OPTIONS_BANK = "'/ms bank' 顯示遠程黑市"
	MESSAGESHARE_OPTIONS_BOSS = "'/ms boss' 顯示帆船刷新歷史"
	MESSAGESHARE_OPTIONS_INVITE = "'/ms group' 啟用/禁用自動邀請功能,自動邀請密語中帶有'+','組'等關鍵家玩家,現在是"

else
	MESSAGESHARE_INVITEWHISPER = "Mogu:%s invite you.%d person have alreay in group."
	MESSAGESHARE_DATA = "%m\%d %H:%M:%S"
	MESSAGESHARE_WIDEBOSS_TITEL = "Wide BOSS Mod"
	MESSAGESHARE_WIDEBOSS_APPEAR = " appear!!!,finder: "
	MESSAGESHARE_WIDEBOSS_LIVE = "|cff00ff00 LIVE"
	MESSAGESHARE_WIDEBOSS_DEAD = "|cffff0000 DEAD"
	MESSAGESHARE_WIDEBOSS_NOTE = "The frame will be shown when somebody found the Galleon"
	MESSAGESHARE_BLACKMARKET_UPDATETIME = "|cFFee0000Updatetime: "
	MESSAGESHARE_BLACKMARKET_NOWTIME = "|cFF00ee00Now: "
	MESSAGESHARE_BLACKMARKET_NODATE = "|cFFee0000Nodata"
	MESSAGESHARE_OPTIONS_MS = "'/ms' for setting addon MessageShare"
	MESSAGESHARE_OPTIONS_BANK = "'/ms bank' to show the black bank"
	MESSAGESHARE_OPTIONS_BOSS = "'/ms boss' to show the wild boss log"
	MESSAGESHARE_OPTIONS_INVITE = "'/ms group' to toggle autoinvite,now is"
end