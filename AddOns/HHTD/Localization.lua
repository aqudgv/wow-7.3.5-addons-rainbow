--[=[
H.H.T.D. World of Warcraft Add-on
Copyright (c) 2009-2017 by John Wellesz (Archarodim@teaser.fr)
All rights reserved

Version 2.4.6

In World of Warcraft healers have to die. This is a cruel truth that you're
taught very early in the game. This add-on helps you influence this unfortunate
destiny in a way or another depending on the healer's side...

More information: https://www.wowace.com/projects/h-h-t-d

-----
    Localization.lua
-----


--]=]


--[=[
--                      YOUR ATTENTION PLEASE
--
--         !!!!!!! TRANSLATORS TRANSLATORS TRANSLATORS !!!!!!!
--
--    Thank you very much for your interest in translating H.H.T.D.
--    Do not edit this file. Use the localization interface available at the following address:
--
--      ##########################################################################
--      #     http://www.wowace.com/addons/h-h-t-d/localization/     #
--      ##########################################################################
--
--    Your translations made using this interface will be automatically included in the next release.
--
--]=]


do
    local L = LibStub("AceLocale-3.0"):NewLocale("H.H.T.D.", "enUS", true, true);

    if L then
L["H.H.T.D."] = "H.H.T.D."
L["ACTIVE"] = "Active!"
L["Announcer"] = "Announcer"
L["Announcer_DESC"] = "This module allows you to manage chat and sound alerts"
L["AUTO_RAID_PARTY_INSTANCE"] = "Auto: Raid Warning / Raid / Instance / Party"
L["CHAT_POST_ANNOUNCE_FEATURE_NOT_CONFIGURED"] = "The announce to raid messages are not configured. Type /HHTDG"
L["CHAT_POST_ANNOUNCE_TOO_SOON_WAIT"] = "It's too soon (see the announce throttle setting)."
L["CHAT_POST_NO_HEALERS"] = "No healers on either sides :/ (yet)"
L["CM"] = "Custom Marks"
L["CM_DESC"] = "Enable this module to set permanent custom marks on NPC and Player units' nameplates."
L["DESCRIPTION"] = "In World of Warcraft healers have to die. This is a cruel truth that you're taught very early in the game. This add-on helps you influence this unfortunate destiny in a way or another depending on the healer's side..."
L["DISABLED"] = [=[hhtd has been disabled!
Type '/hhtd on' to re-enable it.]=]
L["ENABLED"] = "enabled! Type /HHTDG to open its option panel"
L["HEALER_UNDER_ATTACK"] = "Healer friend %s is being attacked by %s"
L["HHTD_IS_NOW_KNOWN_AS_H.H.T.D."] = [=['%s' is now known as H.H.T.D. (see the change log for more information)

Your previous settings were successfully transferred and the old version turned off.

If you had previously disabled HHTD for some of your characters, you must login to each one once before deleting or disabling globally the old '%s' add-on so that this preference can also be kept.

This message will be displayed only once per character where HHTD's previous version was enabled.]=]
L["HUMAN"] = "Human"
L["IDLE"] = "Idle"
L["INSTANCE_CHAT"] = "Instance chat"
L["IS_A_HEALER"] = "%s is a healer!"
L["LOG_ACTIVE"] = "Active!"
L["LOG_BELOW_THRESHOLD"] = " (below threshold)"
L["LOG_IDLE"] = "Idle"
L["NO_DATA"] = "No data"
L["NPC"] = "NPC"
L["NPH"] = "Nameplate Hooker"
L["NPH_DESC"] = "This module adds a red cross to enemy healers' nameplates"
L["OPT_A_CHAT_WARNING"] = "Chat Warning"
L["OPT_A_CHAT_WARNING_DESC"] = "Display a chat warning when a friendly healer is under attack"
L["OPT_A_HEALER_PROTECTION"] = "Healer protection settings"
L["OPT_A_HUD_WARNING"] = "HUD Warning"
L["OPT_A_HUD_WARNING_DESC"] = "Display a heads-up warning when a friendly healer is under attack"
L["OPT_ALWAYS_SHOW_NAMEPLATES"] = "Always show nameplates"
L["OPT_ALWAYS_SHOW_NAMEPLATES_DESC"] = "By default nameplates are hidden outside of combat"
L["OPT_ANNOUNCE"] = "Show messages"
L["OPT_ANNOUNCE_DESC"] = "HHTD will display messages when you target or mouse-over an enemy healer."
L["OPT_CLEAR_LOGS"] = "Clear logs"
L["OPT_CM_CHANGEMARK"] = "Change to %s"
L["OPT_CM_CHANGEMARK_DESC"] = "Change the mark to the one selected in the '%s' selector"
L["OPT_CM_CLEARASSOC"] = "Clear"
L["OPT_CM_CLEARASSOC_DESC"] = "Clear the selected name from its mark"
L["OPT_CM_CLEARTARGETMARKER"] = "Clear target"
L["OPT_CM_CLEARTARGETMARKER_DESC"] = "Remove the marker from your target"
L["OPT_CM_DESCRIPTION"] = "Here you can target a unit and apply a custom mark only you will see, these marks will persist accross sessions."
L["OPT_CM_EXISTINGASSOC"] = "Existing name-marker associations"
L["OPT_CM_EXISTINGASSOC_DESC"] = "Select a name in this list to use with the other buttons of this section"
L["OPT_CM_FNPC_NAMEPLATE"] = "Friendly NPC nameplates"
L["OPT_CM_FNPC_NAMEPLATE_DESC"] = [=[Show nameplates on friendly NPCs
This is necessary for markers to be shown on these units.]=]
L["OPT_CM_MARKER_CUSTOMIZATION"] = "Marker customization"
L["OPT_CM_MARKER_MANAGEMENT"] = "Marker management"
L["OPT_CM_SELECT_MARKER"] = "Marker"
L["OPT_CM_SELECT_MARKER_DESC"] = "Select a marker to apply to your target"
L["OPT_CM_SETTARGETMARKER"] = "Mark target"
L["OPT_CM_SETTARGETMARKER_DESC"] = "Mark the selected target with the selected marker"
L["OPT_CM_VCa"] = "Alpha Shading"
L["OPT_CM_VCa_DESC"] = "Change texture's Alpha component shading"
L["OPT_CM_VCb"] = "Blue Shading"
L["OPT_CM_VCb_DESC"] = "Change texture's Blue component shading"
L["OPT_CM_VCg"] = "Green Shading"
L["OPT_CM_VCg_DESC"] = "Change texture's Green component shading"
L["OPT_CM_VCr"] = "Red Shading"
L["OPT_CM_VCr_DESC"] = "Change texture's red component shading"
L["OPT_CORE_OPTIONS"] = "Core options"
L["OPT_DEBUG"] = "debugging logs"
L["OPT_DEBUG_DESC"] = "Enables / disables debugging"
L["OPT_DEBUGLEVEL"] = "debugging level"
L["OPT_DEBUGLEVEL_DESC"] = "debug level: 1=all, 2=warnings, 3=errors"
L["OPT_ENABLE_GEHR"] = "Enable Graphical Reporter"
L["OPT_ENABLE_GEHR_DESC"] = "Displays a graphical list of detected enemy healers with various features"
L["OPT_GUI"] = "Open GUI"
L["OPT_GUI_DESC"] = "Open the graphical configuration panel"
L["OPT_HEADER_GLOBAL_ENEMY_HEALER_OPTIONS"] = "Global enemy healers settings"
L["OPT_HEADER_GLOBAL_FRIENDLY_HEALER_OPTIONS"] = "Global friendly healers settings"
L["OPT_HEALER_FORGET_TIMER"] = "Healer Forget Timer"
L["OPT_HEALER_FORGET_TIMER_DESC"] = "Set the Healer Forget Timer (the time in seconds an enemy will remain considered has a healer)"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT"] = "Heal amount (|cff00dd00%u|r) threshold"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "Healers won't be detected until they reach this cumulative amount of healing based on a percentage of your own maximum health."
L["OPT_HEALER_UNDER_ATTACK_ALERTS"] = "Protect friendly healers"
L["OPT_HEALER_UNDER_ATTACK_ALERTS_DESC"] = "Display an alert when a nearby friendly healers is attacked for more than |cffdd0000%u|r damage"
L["OPT_LOG"] = "Logging"
L["OPT_LOG_DESC"] = "Enables logging and adds a new 'Logs' tab to HHTD's option panel"
L["OPT_LOGS"] = "Logs"
L["OPT_LOGS_DESC"] = "Display HHTD detected healers and statistics"
L["OPT_MODULES"] = "Modules"
L["OPT_NPH_DISPLAY_HEALER_RANK"] = "Display healers' rank"
L["OPT_NPH_DISPLAY_HEALER_RANK_DESC"] = [=[Add a number representing each healer's rank.
The lower the number the better the healer.]=]
L["OPT_NPH_ENEMY_NAMEPLATE"] = "Enemy nameplates"
L["OPT_NPH_FRIENDLY_NAMEPLATE"] = "Friendly nameplates"
L["OPT_NPH_MARKER_HIDDEN_WOW_SETTINGS"] = "Hidden WoW settings"
L["OPT_NPH_MARKER_SCALE"] = "Markers' scaling"
L["OPT_NPH_MARKER_SCALE_DESC"] = "Multiply markers' size by # i.e. 1 = normal size, 0.5 = half size, 2 = double size, etc..."
L["OPT_NPH_MARKER_SETTINGS"] = "Markers' settings"
L["OPT_NPH_MARKER_THEME"] = "Markers' theme"
L["OPT_NPH_MARKER_THEME_DEFAULT"] = "Default"
L["OPT_NPH_MARKER_THEME_DESC"] = "Select between the available markers' themes"
L["OPT_NPH_MARKER_THEME_MINIMAL"] = "Minimalist"
L["OPT_NPH_MARKER_WOW_SETTINGS"] = "WoW settings"
L["OPT_NPH_MARKER_X_OFFSET"] = "Horizontal offset"
L["OPT_NPH_MARKER_X_OFFSET_DESC"] = "Move markers horizontally"
L["OPT_NPH_MARKER_Y_OFFSET"] = "Vertical offset"
L["OPT_NPH_MARKER_Y_OFFSET_DESC"] = "Move markers vertically"
L["OPT_NPH_WARNING1"] = [=[WARNING: *Enemies*' nameplates are currently disabled. HHTD cannot add its symbol on enemies.
        You can enable nameplates display through the WoW UI's options or by using the assigned key-stroke.]=]
L["OPT_NPH_WARNING2"] = [=[WARNING: *Allies*' nameplates are currently disabled. HHTD cannot add its symbol on allies.
        You can enable nameplates display through the WoW UI's options or by using the assigned key-stroke.]=]
L["OPT_OFF"] = "off"
L["OPT_OFF_DESC"] = "Disables HHTD"
L["OPT_ON"] = "on"
L["OPT_ON_DESC"] = "Enables HHTD"
L["OPT_POST_ANNOUNCE_CHANNEL"] = "Post channel"
L["OPT_POST_ANNOUNCE_CHANNEL_DESC"] = [=[Decide where your announce will be posted.
Note: unless you want to use 'say' or 'yell' you should leave this to automatic.]=]
L["OPT_POST_ANNOUNCE_DESCRIPTION"] = [=[|cFFFF0000IMPORTANT:|r Type |cff40ff40/hhtdp|r or bind a key to announce friendly healers to protect and enemy healers to focus.

(see World of Warcraft escape menu binding interface to bind a key)
]=]
L["OPT_POST_ANNOUNCE_ENABLE"] = "Chat announces"
L["OPT_POST_ANNOUNCE_ENABLE_DESC"] = "Enable announce to raid features."
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY"] = "Humans only"
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY_DESC"] = "Do not include NPCs in the announce."
L["OPT_POST_ANNOUNCE_KILL_MESSAGE"] = "Text for enemy healers"
L["OPT_POST_ANNOUNCE_KILL_MESSAGE_DESC"] = [=[Type a message inciting your team to focus enemy healers.

You must use the [HEALERS] keyword somewhere which will be automatically replaced by the names of the currently active healers.]=]
L["OPT_POST_ANNOUNCE_MESSAGE_TOO_SHORT"] = "Your message is too short!"
L["OPT_POST_ANNOUNCE_MESSAGES_EQUAL"] = "There is one message for friends and one for foes, they cannot be the same."
L["OPT_POST_ANNOUNCE_MISSING_KEYWORD"] = "The [HEALERS] keyword is missing!"
L["OPT_POST_ANNOUNCE_NUMBER"] = "Healers number"
L["OPT_POST_ANNOUNCE_NUMBER_DESC"] = "Set how many healers to include in each announce."
L["OPT_POST_ANNOUNCE_POST_MESSAGE_ISSUE"] = "There is something wrong with one of the announce text."
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE"] = "Text for friendly healers"
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE_DESC"] = [=[Type a message inciting your team to protect their healers.

You must use the [HEALERS] keyword somewhere which will be automatically replaced by the names of the currently active healers.]=]
L["OPT_POST_ANNOUNCE_SETTINGS"] = "Announce to raid settings"
L["OPT_POST_ANNOUNCE_THROTTLE"] = "Announce throttle"
L["OPT_POST_ANNOUNCE_THROTTLE_DESC"] = "Set the minimum time in seconds between each possible announce."
L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT"] = "Damage amount (|cffdd0000%u|r) threshold"
L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT_DESC"] = "Friendly attacked healers won't be detected until they reach this cumulative amount of damage based on a percentage of your own maximum health."
L["OPT_PVE"] = "Enable for PVE"
L["OPT_PVE_DESC"] = "HHTD will also work for NPCs."
L["OPT_PVPHEALERSSPECSONLY"] = "Specialized players only"
L["OPT_PVPHEALERSSPECSONLY_DESC"] = "Only detect players specialized in healing."
L["OPT_SET_FRIENDLY_HEALERS_ROLE"] = "Set friendly healers role"
L["OPT_SET_FRIENDLY_HEALERS_ROLE_DESC"] = "Will automatically set the raid HEALER role to friendly healers upon detection (if possible)"
L["OPT_SHOW_CHAT_COMMAND_REMINDER"] = "Show /HHTDG chat command reminder"
L["OPT_SHOW_CHAT_COMMAND_REMINDER_DESC"] = "Print a message in the chat every time HHTD is enabled."
L["OPT_SOUNDS"] = "Sound alerts"
L["OPT_SOUNDS_DESC"] = "HHTD will play a specific sound when you hover or target an enemy healer"
L["OPT_STRICTGUIDPVE"] = "Accurate PVE detection"
L["OPT_STRICTGUIDPVE_DESC"] = "When several NPCs share the same name, HHTD will only add a cross over those who actually healed instead of adding a cross to all of them."
L["OPT_SWAPSYMBOLS"] = "Swap friends/foes symbols"
L["OPT_SWAPSYMBOLS_DESC"] = "The symbols used for friends and foes are swapped"
L["OPT_TESTONTARGET"] = "Test HHTD's behavior on current target"
L["OPT_TESTONTARGET_DESC"] = "Will mark your current target as a healer so you can test what happens."
L["OPT_TESTONTARGET_ENOTARGET"] = "You need to target something"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT"] = "Use minimum heal amount filter"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "Healers will have to heal for a specified amount before being tagged as such."
L["OPT_VERSION"] = "version"
L["OPT_VERSION_DESC"] = "Display version and release date"
L["PARTY"] = "Party"
L["RELEASE_DATE"] = "Release Date:"
L["SAY"] = "Say"
L["VERSION"] = "version:"
L["YELL"] = "Yell"
L["YOU_GOT_HER"] = "You got %sher|r!"
L["YOU_GOT_HIM"] = "You got %shim|r!"
L["YOU_GOT_IT"] = "You got %sit|r!"



    end

end

do
    local L = LibStub("AceLocale-3.0"):NewLocale("H.H.T.D.", "zhCN");

    if L then
L["ACTIVE"] = "激活！"
L["Announcer"] = "通报"
L["Announcer_DESC"] = "此模管理聊天和音效警报"
L["AUTO_RAID_PARTY_INSTANCE"] = "自动：团队/小队/副本"
L["CHAT_POST_ANNOUNCE_FEATURE_NOT_CONFIGURED"] = "未配置团队通报信息。输入 /HHTDG"
L["CHAT_POST_ANNOUNCE_TOO_SOON_WAIT"] = "太快了（查看通报阈值设置）。"
L["CHAT_POST_NO_HEALERS"] = "哇靠，当前双方都没有治疗职业！:D（暂时的）"
--Translation missing 
-- L["CM"] = ""
--Translation missing 
-- L["CM_DESC"] = ""
L["DESCRIPTION"] = "在魔兽世界中，治疗者必须死亡。这是一个残酷的真理，你在游戏的早期就被教导。这个插件可以帮助你影响这种不幸的命运在某种方式或另一个取决于治疗师的身边..."
L["DISABLED"] = [=[hhtd 已被禁用！
输入“/hhtd on”来重新启用。]=]
L["ENABLED"] = "已启用！输入 /HHTDG 打开选项列表"
L["HEALER_UNDER_ATTACK"] = "友方治疗职业%s被%s攻击"
L["HHTD_IS_NOW_KNOWN_AS_H.H.T.D."] = [=['%s'现在称为H.H.T.D. （有关详细信息，请参阅更改日志）

您之前的设置已成功传输，旧版本已关闭。

如果先前已为某些字符停用HHTD，则应在删除或全局禁用旧版'%s'插件之前加载每个字符，以便也可以保留此首选项。

此消息每个字符只显示一次。
]=]
L["HUMAN"] = "人类"
L["IDLE"] = "发呆"
L["INSTANCE_CHAT"] = "副本消息"
L["IS_A_HEALER"] = "%s是治疗职业！"
L["LOG_ACTIVE"] = "激活！"
L["LOG_BELOW_THRESHOLD"] = "（低于阈值）"
L["LOG_IDLE"] = "发呆"
L["NO_DATA"] = "无数据"
L["NPC"] = "NPC"
L["NPH"] = "姓名版挂钩"
L["NPH_DESC"] = "此模块在敌对治疗姓名板上添加一个红十字"
--Translation missing 
-- L["OPT_A_CHAT_WARNING"] = ""
--Translation missing 
-- L["OPT_A_CHAT_WARNING_DESC"] = ""
--Translation missing 
-- L["OPT_A_HEALER_PROTECTION"] = ""
--Translation missing 
-- L["OPT_A_HUD_WARNING"] = ""
--Translation missing 
-- L["OPT_A_HUD_WARNING_DESC"] = ""
--Translation missing 
-- L["OPT_ALWAYS_SHOW_NAMEPLATES"] = ""
--Translation missing 
-- L["OPT_ALWAYS_SHOW_NAMEPLATES_DESC"] = ""
L["OPT_ANNOUNCE"] = "显示信息"
L["OPT_ANNOUNCE_DESC"] = "当你的目标或是鼠标指向一个敌对治疗者时 HHTD 将显示信息。"
L["OPT_CLEAR_LOGS"] = "清除记录"
--Translation missing 
-- L["OPT_CM_CHANGEMARK"] = ""
--Translation missing 
-- L["OPT_CM_CHANGEMARK_DESC"] = ""
--Translation missing 
-- L["OPT_CM_CLEARASSOC"] = ""
--Translation missing 
-- L["OPT_CM_CLEARASSOC_DESC"] = ""
--Translation missing 
-- L["OPT_CM_CLEARTARGETMARKER"] = ""
--Translation missing 
-- L["OPT_CM_CLEARTARGETMARKER_DESC"] = ""
--Translation missing 
-- L["OPT_CM_DESCRIPTION"] = ""
--Translation missing 
-- L["OPT_CM_EXISTINGASSOC"] = ""
--Translation missing 
-- L["OPT_CM_EXISTINGASSOC_DESC"] = ""
--Translation missing 
-- L["OPT_CM_FNPC_NAMEPLATE"] = ""
--Translation missing 
-- L["OPT_CM_FNPC_NAMEPLATE_DESC"] = ""
--Translation missing 
-- L["OPT_CM_MARKER_CUSTOMIZATION"] = ""
--Translation missing 
-- L["OPT_CM_MARKER_MANAGEMENT"] = ""
--Translation missing 
-- L["OPT_CM_SELECT_MARKER"] = ""
--Translation missing 
-- L["OPT_CM_SELECT_MARKER_DESC"] = ""
--Translation missing 
-- L["OPT_CM_SETTARGETMARKER"] = ""
--Translation missing 
-- L["OPT_CM_SETTARGETMARKER_DESC"] = ""
--Translation missing 
-- L["OPT_CM_VCa"] = ""
--Translation missing 
-- L["OPT_CM_VCa_DESC"] = ""
--Translation missing 
-- L["OPT_CM_VCb"] = ""
--Translation missing 
-- L["OPT_CM_VCb_DESC"] = ""
--Translation missing 
-- L["OPT_CM_VCg"] = ""
--Translation missing 
-- L["OPT_CM_VCg_DESC"] = ""
--Translation missing 
-- L["OPT_CM_VCr"] = ""
--Translation missing 
-- L["OPT_CM_VCr_DESC"] = ""
L["OPT_CORE_OPTIONS"] = "核心选项"
L["OPT_DEBUG"] = "除错"
L["OPT_DEBUG_DESC"] = "启用/禁用除错"
L["OPT_DEBUGLEVEL"] = "除错等级"
L["OPT_DEBUGLEVEL_DESC"] = "除错等级：1=全部，2=警报，3=错误"
L["OPT_ENABLE_GEHR"] = "启用图形报告"
L["OPT_ENABLE_GEHR_DESC"] = "显示敌对治疗多功能图形列表"
--Translation missing 
-- L["OPT_GUI"] = ""
--Translation missing 
-- L["OPT_GUI_DESC"] = ""
--Translation missing 
-- L["OPT_HEADER_GLOBAL_ENEMY_HEALER_OPTIONS"] = ""
--Translation missing 
-- L["OPT_HEADER_GLOBAL_FRIENDLY_HEALER_OPTIONS"] = ""
L["OPT_HEALER_FORGET_TIMER"] = "治疗职业遗忘计时器"
L["OPT_HEALER_FORGET_TIMER_DESC"] = "设置治疗职业遗忘计时器（用于在一定时间内将一个敌人标记为治疗职业）"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT"] = "治疗值（|cff00dd00%u|r）阈值"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "治疗职业当他们达到累积的治疗量根据自己的最大生命值的百分比之前不会被检测到。"
L["OPT_HEALER_UNDER_ATTACK_ALERTS"] = "保护友方治疗职业"
L["OPT_HEALER_UNDER_ATTACK_ALERTS_DESC"] = "当附近的友方治疗职业被攻击时显示警报"
L["OPT_LOG"] = "正在记录"
L["OPT_LOG_DESC"] = "启用记录并添加一个新的“记录”标签到 HHTD 选项面板"
L["OPT_LOGS"] = "记录"
L["OPT_LOGS_DESC"] = "显示 HHTD 检测到的治疗和数据"
L["OPT_MODULES"] = "模块"
--Translation missing 
-- L["OPT_NPH_DISPLAY_HEALER_RANK"] = ""
--Translation missing 
-- L["OPT_NPH_DISPLAY_HEALER_RANK_DESC"] = ""
--Translation missing 
-- L["OPT_NPH_ENEMY_NAMEPLATE"] = ""
--Translation missing 
-- L["OPT_NPH_FRIENDLY_NAMEPLATE"] = ""
--Translation missing 
-- L["OPT_NPH_MARKER_HIDDEN_WOW_SETTINGS"] = ""
L["OPT_NPH_MARKER_SCALE"] = "标记缩放"
L["OPT_NPH_MARKER_SCALE_DESC"] = "更改标记尺寸"
L["OPT_NPH_MARKER_SETTINGS"] = "标记配置"
--Translation missing 
-- L["OPT_NPH_MARKER_THEME"] = ""
--Translation missing 
-- L["OPT_NPH_MARKER_THEME_DEFAULT"] = ""
--Translation missing 
-- L["OPT_NPH_MARKER_THEME_DESC"] = ""
--Translation missing 
-- L["OPT_NPH_MARKER_THEME_MINIMAL"] = ""
--Translation missing 
-- L["OPT_NPH_MARKER_WOW_SETTINGS"] = ""
L["OPT_NPH_MARKER_X_OFFSET"] = "水平偏移量"
L["OPT_NPH_MARKER_X_OFFSET_DESC"] = "水平移动标记"
L["OPT_NPH_MARKER_Y_OFFSET"] = "垂直偏移量"
L["OPT_NPH_MARKER_Y_OFFSET_DESC"] = "垂直移动标记"
L["OPT_NPH_WARNING1"] = [=[提示：敌方姓名版未被启用。HHTD 不能添加治疗标记。
可以通过游戏内界面选项开启姓名版显示或使用快捷键。]=]
L["OPT_NPH_WARNING2"] = [=[提示：友方姓名版未被启用。HHTD 不能添加治疗标记。
可以通过游戏内界面选项开启姓名版显示或使用快捷键。]=]
L["OPT_OFF"] = "off"
L["OPT_OFF_DESC"] = "禁用 HHTD"
L["OPT_ON"] = "on"
L["OPT_ON_DESC"] = "启用 HHTD"
L["OPT_POST_ANNOUNCE_CHANNEL"] = "广播频道"
L["OPT_POST_ANNOUNCE_CHANNEL_DESC"] = "选择广播通报的频道"
L["OPT_POST_ANNOUNCE_DESCRIPTION"] = [=[|cFFFF0000主要：|r输入 |cff40ff40/hhtdp|r 或绑定按键通报保护友方治疗职业和特殊照顾敌方治疗职业。

（魔兽世界 ESC 菜单绑定界面设置按键绑定）]=]
L["OPT_POST_ANNOUNCE_ENABLE"] = "聊天通报"
L["OPT_POST_ANNOUNCE_ENABLE_DESC"] = "启用通报到团队功能。"
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY"] = "只对人类"
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY_DESC"] = "通报中不包含 NPC。"
L["OPT_POST_ANNOUNCE_KILL_MESSAGE"] = "敌对治疗文本"
L["OPT_POST_ANNOUNCE_KILL_MESSAGE_DESC"] = [=[输入一个消息鼓动你的队伍集中火力攻击敌方治疗职业。

必须使用 [HEALERS] 键值将被自动替换为当前激活治疗职业。]=]
L["OPT_POST_ANNOUNCE_MESSAGE_TOO_SHORT"] = "你的信息太少了！"
L["OPT_POST_ANNOUNCE_MESSAGES_EQUAL"] = "这有一个友好和敌对的信息，他们不能一样。"
L["OPT_POST_ANNOUNCE_MISSING_KEYWORD"] = "[HEALERS] 键值缺失！"
L["OPT_POST_ANNOUNCE_NUMBER"] = "治疗数量"
L["OPT_POST_ANNOUNCE_NUMBER_DESC"] = "设置每条通报上的治疗数量。"
L["OPT_POST_ANNOUNCE_POST_MESSAGE_ISSUE"] = "通报文本里有什么东西出错。"
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE"] = "友方治疗文本"
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE_DESC"] = [=[输入一个信息鼓动团队保护他们的治疗职业。

必须使用 [HEALERS] 键值将被自动替换为当激活的治疗职业。]=]
L["OPT_POST_ANNOUNCE_SETTINGS"] = "通报到团队设置"
L["OPT_POST_ANNOUNCE_THROTTLE"] = "通报阈值"
L["OPT_POST_ANNOUNCE_THROTTLE_DESC"] = "设置每条可能通报的最小时间间隔。"
--Translation missing 
-- L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT"] = ""
--Translation missing 
-- L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT_DESC"] = ""
L["OPT_PVE"] = "PvE 启用"
L["OPT_PVE_DESC"] = "HHTD 同样作用于 NPC。"
L["OPT_PVPHEALERSSPECSONLY"] = "治疗职业特定检测"
L["OPT_PVPHEALERSSPECSONLY_DESC"] = "只特定治疗玩家。"
L["OPT_SET_FRIENDLY_HEALERS_ROLE"] = "设置友方治疗职业角色"
L["OPT_SET_FRIENDLY_HEALERS_ROLE_DESC"] = "（如可能）自动设置检测团队治疗角色到友方治疗"
--Translation missing 
-- L["OPT_SHOW_CHAT_COMMAND_REMINDER"] = ""
--Translation missing 
-- L["OPT_SHOW_CHAT_COMMAND_REMINDER_DESC"] = ""
L["OPT_SOUNDS"] = "音效警报"
L["OPT_SOUNDS_DESC"] = "当你鼠标悬停或目标到一个敌对治疗时 HHTD 播放特定的音效。"
L["OPT_STRICTGUIDPVE"] = "精确 PvE 检测"
L["OPT_STRICTGUIDPVE_DESC"] = "当多个 NPC 共享相同的名称，HHTD 只会增加一个十字而不是全部。请注意，在十字出现之前大部分的时间需要切换目标或鼠标悬停在单位。"
--Translation missing 
-- L["OPT_SWAPSYMBOLS"] = ""
--Translation missing 
-- L["OPT_SWAPSYMBOLS_DESC"] = ""
L["OPT_TESTONTARGET"] = "在当前目标测试 HHTD 状态"
L["OPT_TESTONTARGET_DESC"] = "将标记当前目标为治疗者来测试发生了什么。"
L["OPT_TESTONTARGET_ENOTARGET"] = "需要一个目标"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT"] = "使用最少治疗值过滤"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "治疗职业将有指定治疗数值前被标记等。"
L["OPT_VERSION"] = "version"
L["OPT_VERSION_DESC"] = "显示版本和发布日期"
L["PARTY"] = "小队"
L["RELEASE_DATE"] = "发布日期："
L["SAY"] = "说"
L["VERSION"] = "版本："
L["YELL"] = "大喊"
L["YOU_GOT_HER"] = "你抓到%s她了|r！"
L["YOU_GOT_HIM"] = "你抓到%s他了|r！"
L["YOU_GOT_IT"] = "你抓到%s它了|r！"

    end
end

do
    local L = LibStub("AceLocale-3.0"):NewLocale("H.H.T.D.", "zhTW");

    if L then
L = L or {}
L["ACTIVE"] = "啟用！"
L["Announcer"] = "通報"
L["Announcer_DESC"] = "此模組管理聊天和音效警報"
L["AUTO_RAID_PARTY_INSTANCE"] = "自動:團隊警告/團隊/隊伍/副本"
L["CHAT_POST_ANNOUNCE_FEATURE_NOT_CONFIGURED"] = "未設定團隊通報訊息。輸入 /HHTDG"
L["CHAT_POST_ANNOUNCE_TOO_SOON_WAIT"] = "太快了（查看通報條件設定）。"
L["CHAT_POST_NO_HEALERS"] = "哇靠，當前雙方都沒有治療！"
L["CM"] = "自訂標記"
L["CM_DESC"] = "啟用此模組在NPC和玩家血條上設定一個永久固定不變的自訂標記圖示。"
L["DESCRIPTION"] = "在魔獸世界中，治療者必須死亡。這是一個殘酷的真理，你在遊戲的早期就被教導。這個插件可以幫助你影響這種不幸的命運在某種方式或另一個取決於治療師的身邊..."
L["DISABLED"] = [=[hhtd 已被禁用！
輸入“/hhtd on”來重新啟用。]=]
L["ENABLED"] = "已啟用！輸入 /HHTDG 開啟選項面板"
L["HEALER_UNDER_ATTACK"] = "友方治療者%s被%s攻擊"
L["HHTD_IS_NOW_KNOWN_AS_H.H.T.D."] = [=['%s'現在稱為H.H.T.D. （有關詳細信息，請參閱更改日誌）

您之前的設置已成功傳輸，舊版本已關閉。

如果您以前對某些字符停用了HHTD，則應該在刪除或全局禁用舊版'%s'插件之前加載每個字符，以便也可以保留此首選項。

此消息每個字符只顯示一次。
]=]
L["HUMAN"] = "人類"
L["IDLE"] = "呆滯"
L["INSTANCE_CHAT"] = "副本頻道"
L["IS_A_HEALER"] = "%s是治療者！"
L["LOG_ACTIVE"] = "啟用！"
L["LOG_BELOW_THRESHOLD"] = "（低於條件）"
L["LOG_IDLE"] = "呆滯"
L["NO_DATA"] = "無數據"
L["NPC"] = "NPC"
L["NPH"] = "血條標記"
L["NPH_DESC"] = "此模組會在敵方治療者血條上添加一個紅十字標記"
L["OPT_A_CHAT_WARNING"] = "聊天視窗顯示警報"
L["OPT_A_CHAT_WARNING_DESC"] = "當友方治療者被攻擊時在聊天視窗顯示警報"
L["OPT_A_HEALER_PROTECTION"] = "保護補師設定"
L["OPT_A_HUD_WARNING"] = "螢幕畫面顯示警報"
L["OPT_A_HUD_WARNING_DESC"] = "當友方治療者被攻擊時在螢幕畫面上顯示警報"
L["OPT_ALWAYS_SHOW_NAMEPLATES"] = "總是顯示血條"
L["OPT_ALWAYS_SHOW_NAMEPLATES_DESC"] = "非戰鬥中預設會隱藏血條"
L["OPT_ANNOUNCE"] = "顯示訊息"
L["OPT_ANNOUNCE_DESC"] = "當你的目標或是滑鼠指向一個敵對治療者時 HHTD 將顯示訊息。"
L["OPT_CLEAR_LOGS"] = "清除記錄"
L["OPT_CM_CHANGEMARK"] = "更改成 %s"
L["OPT_CM_CHANGEMARK_DESC"] = "將標記更改為 '%s' 中的所選擇的其中一個"
L["OPT_CM_CLEARASSOC"] = "清除"
L["OPT_CM_CLEARASSOC_DESC"] = "清除選取名稱的標記"
L["OPT_CM_CLEARTARGETMARKER"] = "清除目標"
L["OPT_CM_CLEARTARGETMARKER_DESC"] = "移除目標的標記圖示"
L["OPT_CM_DESCRIPTION"] = "選取一個對象為目標，加上只有你看得到的自訂標記圖示。這些標記圖示會一直保留。"
L["OPT_CM_EXISTINGASSOC"] = "已被標記的名稱"
L["OPT_CM_EXISTINGASSOC_DESC"] = "從清單中選擇一個名稱來使用此區塊按鈕的功能"
L["OPT_CM_FNPC_NAMEPLATE"] = "友方NPC血條"
L["OPT_CM_FNPC_NAMEPLATE_DESC"] = [=[顯示友方NPC的血條
要在頭上顯示標記圖示必須開啟這項功能。]=]
L["OPT_CM_MARKER_CUSTOMIZATION"] = "自訂標記圖示"
L["OPT_CM_MARKER_MANAGEMENT"] = "管理標記"
L["OPT_CM_SELECT_MARKER"] = "標記"
L["OPT_CM_SELECT_MARKER_DESC"] = "選擇要套用的標記圖示"
L["OPT_CM_SETTARGETMARKER"] = "標記目標"
L["OPT_CM_SETTARGETMARKER_DESC"] = "將選擇的標記圖示套用到選取的目標上"
L["OPT_CM_VCa"] = "半透明"
L["OPT_CM_VCa_DESC"] = "更改圖案的透明度"
L["OPT_CM_VCb"] = "藍色"
L["OPT_CM_VCb_DESC"] = "更改圖案的藍色調"
L["OPT_CM_VCg"] = "綠色"
L["OPT_CM_VCg_DESC"] = "更改圖案的綠色調"
L["OPT_CM_VCr"] = "紅色"
L["OPT_CM_VCr_DESC"] = "更改圖案的紅色調"
L["OPT_CORE_OPTIONS"] = "核心選項"
L["OPT_DEBUG"] = "除錯"
L["OPT_DEBUG_DESC"] = "啟用/停用除錯"
L["OPT_DEBUGLEVEL"] = "除錯等級"
L["OPT_DEBUGLEVEL_DESC"] = "除錯等級：1=全部，2 =警報，3 =錯誤"
L["OPT_ENABLE_GEHR"] = "啟用圖形報告"
L["OPT_ENABLE_GEHR_DESC"] = "顯示敵方治療多功能圖形列表"
L["OPT_GUI"] = "開啟圖形介面"
L["OPT_GUI_DESC"] = "開啟圖形設定面板"
L["OPT_HEADER_GLOBAL_ENEMY_HEALER_OPTIONS"] = "全局敵方治療者設定"
L["OPT_HEADER_GLOBAL_FRIENDLY_HEALER_OPTIONS"] = "全局友方治療者設定"
L["OPT_HEALER_FORGET_TIMER"] = "治療忽略計時器"
L["OPT_HEALER_FORGET_TIMER_DESC"] = "設定治療忽略計時器（在幾秒鐘的時間敵人仍會被認為有個治療者）"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT"] = "治療值（|cff00dd00%u|r）條件"
L["OPT_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "治療者不會被偵測到直到他們累積一定數值的治療量(基於你最大血量的百分比)。"
L["OPT_HEALER_UNDER_ATTACK_ALERTS"] = "保護友方治療者"
L["OPT_HEALER_UNDER_ATTACK_ALERTS_DESC"] = "當附近的友方治療者被攻擊多達|cffdd0000%u|r傷害時顯示警報"
L["OPT_LOG"] = "正在記錄"
L["OPT_LOG_DESC"] = "啟用記錄並添加一個新的“記錄”標籤到 HHTD 選項面板"
L["OPT_LOGS"] = "記錄"
L["OPT_LOGS_DESC"] = "顯示 HHTD 檢測到的治療和數據"
L["OPT_MODULES"] = "模組"
L["OPT_NPH_DISPLAY_HEALER_RANK"] = "顯示治療者的排名"
L["OPT_NPH_DISPLAY_HEALER_RANK_DESC"] = "用數字來顯示治療者的排名，數字愈小表示治療者愈厲害。"
L["OPT_NPH_ENEMY_NAMEPLATE"] = "敵方血條"
L["OPT_NPH_FRIENDLY_NAMEPLATE"] = "友方血條"
L["OPT_NPH_MARKER_HIDDEN_WOW_SETTINGS"] = "隱藏的遊戲設定"
L["OPT_NPH_MARKER_SCALE"] = "標記縮放"
L["OPT_NPH_MARKER_SCALE_DESC"] = "更改標記尺寸。1=一般大小、0.5=一半大小、2=雙倍大小...等。"
L["OPT_NPH_MARKER_SETTINGS"] = "標記設定"
L["OPT_NPH_MARKER_THEME"] = "標記樣式主題"
L["OPT_NPH_MARKER_THEME_DEFAULT"] = "預設"
L["OPT_NPH_MARKER_THEME_DESC"] = "選擇一種標記外觀的樣式主題"
L["OPT_NPH_MARKER_THEME_MINIMAL"] = "極簡"
L["OPT_NPH_MARKER_WOW_SETTINGS"] = "遊戲本身的設定"
L["OPT_NPH_MARKER_X_OFFSET"] = "水平偏移量"
L["OPT_NPH_MARKER_X_OFFSET_DESC"] = "水平移動標記"
L["OPT_NPH_MARKER_Y_OFFSET"] = "垂直偏移量"
L["OPT_NPH_MARKER_Y_OFFSET_DESC"] = "垂直移動標記"
L["OPT_NPH_WARNING1"] = [=[警告：敵方血條目前是關閉的，HHTD無法加入紅十字標記。
你可以在遊戲的介面選項中啟用顯示名稱/血條，或使用指定的按鍵。]=]
L["OPT_NPH_WARNING2"] = [=[警告：友方血條目前是關閉的，HHTD無法加入紅十字標記。
你可以在遊戲的介面選項中啟用顯示名稱/血條，或使用指定的按鍵。]=]
L["OPT_OFF"] = "off"
L["OPT_OFF_DESC"] = "停用 HHTD"
L["OPT_ON"] = "on"
L["OPT_ON_DESC"] = "啟用 HHTD"
L["OPT_POST_ANNOUNCE_CHANNEL"] = "廣播頻道"
L["OPT_POST_ANNOUNCE_CHANNEL_DESC"] = [=[選擇廣播通報的頻道
注意：除非您想使用'說'或'大喊'否則應該使用預設選項]=]
L["OPT_POST_ANNOUNCE_DESCRIPTION"] = [=[|cFFFF0000重要:|r 輸入 |cff40ff40/hhtdp|r 或是綁定一個按鍵以通報保護友方治療者與聚焦敵方治療者。
(請看魔獸世界ESC的快捷鍵設定介面以綁定一個按鍵)]=]
L["OPT_POST_ANNOUNCE_ENABLE"] = "聊天通報"
L["OPT_POST_ANNOUNCE_ENABLE_DESC"] = "啟用通報到團隊功能。"
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY"] = "只有玩家"
L["OPT_POST_ANNOUNCE_HUMAMNS_ONLY_DESC"] = "通報中不包含 NPC。"
L["OPT_POST_ANNOUNCE_KILL_MESSAGE"] = "敵方治療訊息"
L["OPT_POST_ANNOUNCE_KILL_MESSAGE_DESC"] = [=[輸入一個訊息以煽動你的團隊聚焦到敵方治療者。
你必須使用 [HEALERS]關鍵字，此字會自動替換為當前敵方治療者的名稱。]=]
L["OPT_POST_ANNOUNCE_MESSAGE_TOO_SHORT"] = "你的訊息太少了！"
L["OPT_POST_ANNOUNCE_MESSAGES_EQUAL"] = "這有一個友好和敵對的訊息，他們不能一樣。"
L["OPT_POST_ANNOUNCE_MISSING_KEYWORD"] = "[治療]鍵值缺失！"
L["OPT_POST_ANNOUNCE_NUMBER"] = "治療數值"
L["OPT_POST_ANNOUNCE_NUMBER_DESC"] = "設定每條通報上的治療數值。"
L["OPT_POST_ANNOUNCE_POST_MESSAGE_ISSUE"] = "通報訊息裡有什麼東西出錯。"
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE"] = "友方治療訊息"
L["OPT_POST_ANNOUNCE_PROTECT_MESSAGE_DESC"] = [=[輸入一個訊息調動團隊保護他們的治療。

你必須使用[HEALERS]關鍵字，而此字將被替換為當前啟動的治療者。]=]
L["OPT_POST_ANNOUNCE_SETTINGS"] = "通報到團隊設定"
L["OPT_POST_ANNOUNCE_THROTTLE"] = "通報條件"
L["OPT_POST_ANNOUNCE_THROTTLE_DESC"] = "設定每條可能通報的最小時間間隔。"
L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT"] = "傷害量(|cffdd0000%u|r)閥值"
L["OPT_PROTECT_HEALER_MINIMUM_DAMAGE_AMOUNT_DESC"] = "友方攻擊治療者不會被檢測到直到累積基於你本身最大血量質一定百分比的傷害量。"
L["OPT_PVE"] = "PvE 啟用"
L["OPT_PVE_DESC"] = "HHTD 同樣作用於 NPC。"
L["OPT_PVPHEALERSSPECSONLY"] = "偵測特定治療者"
L["OPT_PVPHEALERSSPECSONLY_DESC"] = "只偵測特定治療玩家。"
L["OPT_SET_FRIENDLY_HEALERS_ROLE"] = "設定友方治療者角色"
L["OPT_SET_FRIENDLY_HEALERS_ROLE_DESC"] = "（如可能）自動設定檢測團隊治療職責到友方治療"
L["OPT_SHOW_CHAT_COMMAND_REMINDER"] = "顯示 /HHTDG 指令提醒"
L["OPT_SHOW_CHAT_COMMAND_REMINDER_DESC"] = "HHTD 每次啟用時都要在聊天視窗顯示訊息。"
L["OPT_SOUNDS"] = "音效警報"
L["OPT_SOUNDS_DESC"] = "當滑鼠滑過或目標為敵方治療時 HHTD 播放特定的音效。"
L["OPT_STRICTGUIDPVE"] = "精確 PvE 檢測"
L["OPT_STRICTGUIDPVE_DESC"] = "當多個NPC的名字相同時，HHTD只會加上一個紅十字在真實的治療者上，而不是所有人。"
L["OPT_SWAPSYMBOLS"] = "對調友方/敵方的標記"
L["OPT_SWAPSYMBOLS_DESC"] = "友方和敵方所使用的標記互相調換"
L["OPT_TESTONTARGET"] = "在當前目標測試 HHTD 狀態"
L["OPT_TESTONTARGET_DESC"] = "將標記當前目標為治療者來測試發生了什麼。"
L["OPT_TESTONTARGET_ENOTARGET"] = "需要一個目標"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT"] = "使用最少治療值過濾"
L["OPT_USE_HEALER_MINIMUM_HEAL_AMOUNT_DESC"] = "治療者需要治療特定數額的治療量才能被標記。"
L["OPT_VERSION"] = "version"
L["OPT_VERSION_DESC"] = "顯示版本和發佈日期"
L["PARTY"] = "小隊"
L["RELEASE_DATE"] = "發佈日期："
L["SAY"] = "說"
L["VERSION"] = "版本："
L["YELL"] = "大喊"
L["YOU_GOT_HER"] = "你抓到%s她了|r！"
L["YOU_GOT_HIM"] = "你抓到%s他了|r！"
L["YOU_GOT_IT"] = "你抓到%s它了|r！"

L["H.H.T.D."] = "H.H.T.D. 補師必須死！"
L["You have updated H.H.T.D while WoW was still running in the background.\n\nYou need to restart WoW completely or you might experience various issues with your add-ons until you do."] = "你在魔獸程式還在背景執行時更新了 H.H.T.D. 補師必須死！\n\n必須完全的重新啟動遊戲才能使用享受插件的最佳體驗，避免發生問題。"
L["Settings transfer from '"] = "從 '"
L["' to '"] = "' 轉移舊設定到 '"
L["' failed. "] = "' 失敗。"
L[" will stay disabled. Error was: "] = " 會保持停用狀態。錯誤訊息是："

    end
end
