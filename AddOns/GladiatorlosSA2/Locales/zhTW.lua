﻿-- Mini Dragon(projecteurs@gmail.com)
-- Last update: Jan 29, 2015

local L = LibStub("AceLocale-3.0"):NewLocale("GladiatorlosSA", "zhTW")
if not L then return end

L["GladiatorlosSA"] = "PVP 技能語音"
L["Spell_CastSuccess"] = "施法成功"
L["Spell_CastStart"] = "施法開始"
L["Spell_AuraApplied"] = "增益獲得"
L["Spell_AuraRemoved"] = "增益消失"
L["Spell_Interrupt"] = "法術打斷"
L["Spell_Summon"] = "法術召喚"
L["Any"] = "任意"
L["Player"] = "玩家"
L["Target"] = "目標"
L["Focus"] = "關注目標"
L["Mouseover"] = "鼠標指向"
L["Party"] = "小隊"
L["Raid"] = "團隊"
L["Arena"] = "競技場敵方"
L["Boss"] = "副本Boss"
L["Custom"] = "自訂"
L["Friendly"] = "友好"
L["Hostile player"] = "敵對玩家"
L["Hostile unit"] = "敵對單位"
L["Neutral"] = "中立"
L["Myself"] = "玩家自己"
L["Mine"] = "自己或自己的單位"
L["My pet"] = "自己的寵物"
L["Custom Spell"] = "自訂法術"
L["New Sound Alert"] = "新的聲音提示"
L["name"] = "名字"
L["same name already exists"] = "已有相同的名稱"
L["spellid"] = "法術ID"
L["Remove"] = "移除"
L["Are you sure?"] = "是否確定要這麼做?"
L["Test"] = "測試"
L["Use existing sound"] = "使用已有的聲音"
L["choose a sound"] = "選擇一個聲音"
L["file path"] = "文件路徑"
L["event type"] = "事件類型"
L["Source unit"] = "來源單位"
L["Source type"] = "來源類型"
L["Custom unit name"] = "自訂單位名字"
L["Dest unit"] = "目標單位"
L["Dest type"] = "目標類型"

L["Profiles"] = "設定檔"

L["GladiatorlosSACredits"] = "可自訂的 PvP 提示插件，用語音報出敵人所施放的重要技能。|n|n|cffFFF569原作者|r |cff9482C9Abatorlos|r |cffFFF569of Spinebreaker|r|n|cffFFF569軍臨天下版本更新由|r |cffC79C6EOrunno|r |cffFFF569of Moon Guard (從 zuhligan 獲得同意授權)|r|n|n|cffFFF569特別感謝|r|n|cffA330C9superk521|r (Past Project Manager)|n|cffA330C9DuskAshes|r (Chinese Support)|n|cffA330C9N30Ex|r (Mists of Pandaria Support)|n|cffA330C9zuhligan|r (Warlords of Draenor & French Support)|n|cffA330C9jungwan2|r (Korean Support)|n|cffA330C9Mini_Dragon|r (Chinese support for WoD & Legion)|n|cffA330C9LordKuper|r (Russian support for Legion)"
L["PVP Voice Alert"] = "PVP技能語音提示"
L["Load Configuration"] = "載入設定"
L["Load Configuration Options"] = "載入設定選項"
L["General"] = "一般"
L["General options"] = "一般選項"
L["Enable area"] = "啟用區域"
L["Anywhere"] = "總是啟用"
L["Alert works anywhere"] = "在任何地方PVP技能語音提示都處於開啟狀態"
L["Arena"] = "競技場"
L["Alert only works in arena"] = "在競技場中啟用PVP技能語音提示"
L["Battleground"] = "戰場"
L["Alert only works in BG"] = "在戰場中啟用PVP技能語音提示"
L["World"] = "野外"
L["Alert works anywhere else then anena, BG, dungeon instance"] = "除了戰場、競技場和副本的任何地方都啟用PVP技能語音提示"
L["Voice config"] = "聲音設定"
L["Voice language"] = "語言類型"
L["Select language of the alert"] = "選擇通報所用語音"
L["Chinese(female)"] = "國語 (女聲)"
L["English(female)"] = "英語 (女聲)"
L["Volume"] = "聲音大小"
L["adjusting the voice volume(the same as adjusting the system master sound volume)"] = "調節聲音大小(等同於調節系統主音量大小)"
L["Advance options"] = "高級設定"
L["Smart disable"] = "智能停用模式"
L["Disable addon for a moment while too many alerts comes"] = "處於大型戰場等提示過於頻繁的區域自動停用"
L["Throttle"] = "最小間隔"
L["The minimum interval of each alert"] = "控制聲音提示的最小間隔"
L["Abilities"] = "技能"
L["Abilities options"] = "技能選項"
L["Disable options"] = "技能模組控制"
L["Disable abilities by type"] = "技能各個模組停用選項"
L["Disable Buff Applied"] = "停用敵方增益技能"
L["Check this will disable alert for buff applied to hostile targets"] = "勾選此選項以關閉敵方增益型技能通報"
L["Disable Buff Down"] = "停用敵方增益結束"
L["Check this will disable alert for buff removed from hostile targets"] = "勾選此選項以關閉敵方增益結束通報"
L["Disable Spell Casting"] = "停用敵方讀條技能"
L["Chech this will disable alert for spell being casted to friendly targets"] = "勾選此選項以關閉敵方對友方讀條技能通報"
L["Disable special abilities"] = "停用敵方特殊技能"
L["Check this will disable alert for instant-cast important abilities"] = "勾選此選項以關閉敵方對友方特殊技能通報"
L["Disable friendly interrupt"] = "停用友方打斷技能"
L["Check this will disable alert for successfully-landed friendly interrupting abilities"] = "勾選此選項以關閉友方對敵方打斷技能成功的通報"
L["Buff Applied"] = "敵方增益技能"
L["Target and Focus Only"] = "僅目標或關注目標"
L["Alert works only when your current target or focus gains the buff effect or use the ability"] = "僅當該技能是你的目標或關注目標使用或增益出現在你的目標或關注目標身上才語音通報"
L["Alert Drinking"] = "通報正在進食"
L["In arena, alert when enemy is drinking"] = "在競技場中,通報敵方玩家正在進食"
L["PvP Trinketed Class"] = "徽章職業提示"
L["Also announce class name with trinket alert when hostile targets use PvP trinket in arena"] = "在競技場中,通報徽章的同時提示使用徽章的職業"
L["General Abilities"] = "通用技能"
L["|cffFF7D0ADruid|r"] = "|cffFF7D0A德魯伊|r"
L["|cffF58CBAPaladin|r"] = "|cffF58CBA聖騎士|r"
L["|cffFFF569Rogue|r"] = "|cffFFF569盜賊|r"
L["|cffC79C6EWarrior|r"] = "|cffC79C6E戰士|r"
L["|cffFFFFFFPriest|r"] = "|cffFFFFFF牧師|r"
L["|cff0070daShaman|r"] = "|cff0070DE薩滿|r"
L["|cff69CCF0Mage|r"] = "|cff69CCF0法師|r"
L["|cffC41F3BDeath Knight|r"] = "|cffC41F3B死亡騎士|r"
L["|cffABD473Hunter|r"] = "|cffABD473獵人|r"
L["|cFF00FF96Monk|r"] = "|cFF00FF96武僧|r"
L["|cffA330C9Demon Hunter|r"] = "|cffA330C9惡魔獵人|r"
L["Buff Down"] = "敵方增益結束"
L["Spell Casting"] = "敵方讀條技能"
L["BigHeal"] = "大型治療法術"
L["BigHeal_Desc"] = "強效治療術 神聖之光 強效治療波 治療之觸"
L["Resurrection"] = "復活技能"
L["Resurrection_Desc"] = "復活術 救贖 先祖之魂 復活"
L["|cff9482C9Warlock|r"] = "|cff9482C9術士|r"
L["Special Abilities"] = "敵方特殊技能"
L["Friendly Interrupt"] = "友方打斷技能"
L["Spell Lock, Counterspell, Kick, Pummel, Mind Freeze, Skull Bash, Rebuke, Solar Beam, Spear Hand Strike, Wind Shear"] = "法術封鎖 法術反制 腳踢 拳擊 心智冰封 碎顱猛擊 責難"

L["PvPWorldQuests"] = true
L["DisablePvPWorldQuests"] = true
L["DisablePvPWorldQuestsDesc"] = "世界任務中停用所有語音提示"
L["OperationMurlocFreedom"] = true

L["EnemyInterrupts"] = "斷法 (和太陽光束，因為它會打斷和沉默!)"
L["EnemyInterruptsDesc"] = "啟用或停用所有敵方斷法和沉默技能的語音提示。"
L["FriendlyInterrupted"] = "敵方斷法"
L["FriendlyInterruptedDesc"] = "停用所有敵方成功打斷你或盟友法術的語音提示。(播放暴雪的 '任務失敗' 音效。)"

L["Default / Female voice"] = "默認 / 女聲"
L["Select the default voice pack of the alert"] = "選擇預設語音包"
L["Optional / Male voice"] = "可選 / 男聲"
L["Select the male voice"] = "選擇男性語音包"
L["Optional / Neutral voice"] = "可選 / 中立"
L["Select the neutral voice"] = "選擇中性語音包"
L["Gender detection"] = "性別判斷"
L["Activate the gender detection"] = "開啟性別判斷"
L["Voice menu config"] = "語音選單設定"
L["Choose a test voice pack"] = "選擇測試語音包"
L["Select the menu voice pack alert"] = "選擇選單語音包警告"

L["English(male)"] = true
L["Master Volume"] = "主音量"
L["Change Output"] = "更改輸出"
L["Unlock the output options"] = "解鎖輸出選項"
L["Output"] = "輸出"
L["Select the default output"] = "選擇預設輸出"
L["Master"] = "主要"
L["SFX"] = "音效"
L["Ambience"] = "環境"
L["Music"] = "音樂"

L["DPSDispel"] = "非魔法驅散"
L["DPSDispel_Desc"] = "Generic callout for hybrid class dispels that do not remove Magic effects.|n|nRemove Corruption (|cffFF7D0ADruid|r)|nDetox (|cFF00FF96Monk|r)|nCleanse Toxins (|cffF58CBAPaladin|r)|nPurify Disease (Priest)|nCleanse Spirit (|cff0070daShaman|r)"
L["HealerDispel"] = "魔法驅散"
L["HealerDispel_Desc"] = "Generic callout for healing class (AND WARLOCKS. >:| ) dispels that remove Magic effects.|n|nNature's Cure (|cffFF7D0ADruid|r)|nDetox (|cFF00FF96Monk|r)|nCleanse (|cffF58CBAPaladin|r)|nPurify (Priest)|nPurify Spirit (|cff0070daShaman|r)|nSinge Magic (|cff9482C9Warlock|r)"
L["CastingSuccess"] = "控場技能施法成功"
L["CastingSuccess_Desc"] = "Enables generic 'success' callout when a major enemy cast-time Crowd Control ability successfully finishes a cast.|n|nCyclone (|cffFF7D0ADruid|r)|nWyvern Sting (|cffABD473Hunter|r)|nPolymorph (|cff69CCF0Mage|r)|nRepentance (|cffF58CBAPaladin|r)|nMind Control (Priest)|nHex (|cff0070daShaman|r)|nFear (|cff9482C9Warlock|r)"
L["DispelKickback"] = "驅散懲罰"

L["Purge"] = "淨化"
L["PurgeDesc"] = "Generic callout for hybrid class (AND WARLOCKS. D:< ) purges that remove magic effects from your team.|n|nDispel Magic (Priest)|nPurge (|cff0070daShaman|r)|nDevour Magic (|cff9482C9Warlock|r)"

L["|cFF33FF22GladiatorlosSA|r: "] = "|cFF33FF22PVP技能語音提示|r："
L["Dialog"] = "對話"