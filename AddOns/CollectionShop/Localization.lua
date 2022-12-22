--------------------------------------------------------------------------------------------------------------------------------------------
-- INIT
--------------------------------------------------------------------------------------------------------------------------------------------
local NS = select( 2, ... );
--------------------------------------------------------------------------------------------------------------------------------------------
NS.localization = setmetatable( {}, { __index = function( self, key )
	self[key] = key; -- Use original phrase for undefined keys
	return key;
end } );
--
local L = NS.localization;
-- enUS, enGB
if GetLocale() == "enUS" or GetLocale() == "enGB" then
-- zhTW
elseif GetLocale() == "zhTW" then
L["|cffFFFF99[拍賣]|r 收藏專賣店"] = "收藏專賣店"
L["CollectionShop"] = "收藏專賣店"
L["Collection Shop"] = "收藏-專賣店"
L["Mounts"] = "坐騎"
L["Pets"] = "寵物"
L["Toys"] = "玩具"
L["Appearances"] = "塑形外觀"
L[" day"] = " 天"
L[" day "] = " 天 "
L[" hr"] = " 小時"
L[" hr "] = " 小時 "
L[" min"] = " 分鐘"
L[" sec"] = " 秒"
L["(adds Item Value % column to results, leave blank to disable)"] = "(在結果中新增物品價值 % 欄位，空白表示停用)"
L["% Item Value"] = "% 物品價值"
L["%s appearanceID not found."] = "無法找到外觀ID %s。"
L["%s cannot be previewed, no model data. Please report to addon developer"] = "%s 無法預覽，沒有模組資料，請將這個問題回報給插件作者。"
L["%s for %s is no longer available and has been removed"] = "%s (%s) 缺貨，已從清單中移除。"
L["%s remaining auctions...\n\nCollecting auction item links for all modes."] = "尚有 %s 項拍賣商品...\n\n正在收集所有類別的拍賣商品連結。"
L["%s remaining items..."] = "尚有 %s 項物品..."
L["%s version %s"] = "%s 版本 %s"
L["%s\n%sBuyout tracking is reset when closing %s|r"] = "%s\n%s關閉%s時已經重置直購價追蹤|r"
L["%sEach result is the lowest buyout auction for an|r %s"] = "%s每個都是這項拍賣的最低直購價:|r %s"
L["%sNeed More Help?|r"] = "%s需要更多說明?|r"
L["%sSlash Commands|r"] = "%s指令|r"
L["15 min"] = "15 分鐘"
L["Abort"] = "放棄"
L["ago"] = "之前"
L["Appearance"] = "塑形外觀"
L["appearance"] = "塑形外觀"
L["Appearance Category"] = "塑形外觀分類"
L["Appearance Source"] = "塑形外觀來源"
L["Appearance Sources"] = "塑形外觀來源"
L["Auction Category"] = "拍賣分類"
L["Auction House data required"] = "需要拍賣場資料"
L["Auction House scan complete. Ready"] = "拍賣場掃描完成。"
L["Auctions Won Reminder"] = "贏得拍賣提醒"
L["Blizzard allows a GetAll scan once every 15 minutes. Please try again later."] = "暴雪允許每15分鐘只能做一次完整掃描，請稍後再試。"
L["Buy All"] = "全買"
L["Buy All has been stopped. %s"] = "已經停止全買。%s"
L["Buyout"] = "直購"
L["Buyout"] = "直購"
L["Buyouts"] = "直購"
L["Buyouts"] = "直購"
L["Buyouts Refreshed"] = "已重新整理直購價"
L["Category"] = "分類"
L["Check All"] = "全部選取"
L["Choose Collection Mode"] = "選擇收藏品類別"
L["Collected"] = "已收集"
L["Collected - Known Sources"] = "已收集 - 已知來源"
L["Collected - Unknown Sources"] = "已收集 - 未知來源"
L["Collected (1-2/3)"] = "已收集 (1-2/3)"
L["Collected (3/3)"] = "已收集 (1-2/3)"
L["Could not query Auction House after several attempts. Please try again later."] = "多次嘗試後仍然無法查詢拍賣場，請稍後再試。"
L["Delete Data"] = "刪除資料"
L["Delete GetAll scan data? %s\n\nThis will interupt or reset %s Auction House scans"] = "是否要刪除所有完整掃瞄資料? %s\n\n執行這個動作會中斷或重置%s掃瞄拍賣場。"
L["Filter failed at %s for %s"] = "用 %s 取代 %s 過濾失敗"
L["Filtering, one moment please..."] = "正在過濾，請稍候..."
L["GetAll Scan Data"] = "完整掃瞄資料"
L["GetAll scan data deleted: %s"] = "完整掃瞄資料已刪除: %s"
L["Group By Species"] = "依種類分類"
L["Hide auctions above this Item Price, 0 to show all."] = "隱藏超過這個價格的拍賣商品，要顯示全部請輸入 0"
L["Include"] = "包括"
L["Item Price"] = "物品價格"
L["Item Price"] = "物品價格"
L["Item Value Source"] = "物品價值來源"
L["Level 1-10"] = "等級 1-10"
L["Level 11-15"] = "等級 11-15"
L["Level 16-20"] = "等級 16-20"
L["Level 21-24"] = "等級 21-24"
L["Level 25"] = "等級 25"
L["Live"] = "即時"
L["Lvl"] = "等級"
L["Max Item Price: %s"] = "價格上限: %s"
L["Max Item Prices"] = "商品價格上限"
L["Mode"] = "類別"
L["N/A"] = "N/A"
L["Never"] = "從未"
L["No additional auctions matched your settings"] = "沒有更多符合設定的拍賣商品"
L["No auctions were found that matched your settings"] = "無法找到符合設定的拍賣商品"
L["No GetAll scan data for any realms."] = "沒有任何伺服器群組的完整掃瞄資料。"
L["None"] = "無"
L["Not a valid price source or custom price source."] = "無效的價格來源或自訂價格來源。"
L["Not Collected"] = "尚未收集"
L["Options"] = "選項"
L["Pet Family"] = "寵物類別"
L["Ready"] = "準備完成"
L["Realm:"] = "伺服器群組:"
L["Refresh"] = "重新整理"
L["Remember when leaving %s to equip or use auctions won to update your Collections for future Shop results."] = "帳號中的所有角色都會使用相同的設定。\n更改設定時會中斷或重置%s掃瞄拍賣場。"
L["Remind me to use or\nequip auctions I've won\nafter leaving %s."] = "當我離開%s後，\n提醒我要使用或裝備購得的拍賣商品\。"
L["Request sent, waiting on auction data... This can take a minute, please wait..."] = "已送出要求，等待拍賣資料中... 可能會花上幾分鐘，請稍候..."
L["Requires Level"] = "需要等級"
L["Requires Profession"] = "需要專業"
L["Requires Riding Skill"] = "需要騎術"
L["Scan"] = "掃瞄"
L["Scanning %s: Page %d of %d"] = "正在掃描%s: 頁面 %d / %d"
L["Scanning Auction House"] = "正在掃瞄拍賣場"
L["Scanning..."] = "正在掃瞄..."
L["Selecting %s for %s, next cheapest."] = "已選擇 %s (%s)，是下一個最便宜的。"
L["Selecting %s for %s, same %s."] = "已選擇 %s (%s)，%s相同。"
L["Selection ignored, busy scanning or buying an auction"] = "動作取消，正在掃瞄或購買拍賣商品"
L["Selection ignored, buying"] = "動作取消，正在購買"
L["Selection ignored, scanning"] = "動作取消，正在掃描"
L["Shop"] = "血拚"
L["Shop Filters"] = "購物過濾方式"
L["Shopping"] = "購物"
L["Show character with\nselected item only"] = "角色只顯示選擇的物品"
L["source"] = "來源"
L["Stop"] = "停止"
L["That auction belonged to a character on your account and has been removed"] = "這項拍賣商品屬於你相同帳號中的另一個角色，已從清單中移除。"
L["That auction is no longer available and has been removed"] = "這項拍賣商品缺貨，已從清單中移除。"
L["These options apply to all characters on your account.\nMaking changes will interupt or reset %s Auction House scans."] = "帳號中的所有角色都會使用相同的設定。\n更改設定時會中斷或重置%s掃瞄拍賣場。"
L["Time since last scan: %s"] = "距離上次掃描時間: %s"
L["Toggle Categories"] = "切換分類"
L["Toggle Pet Families"] = "切換寵物類別"
L["TradeSkillMaster price source or custom price source. For a list of price sources type /tsm sources."] = "TradeSkillMaster 或自訂價格來源。要取得來源清單請輸入 /tsm sources"
L["Uncheck All"] = "取消全選"
L["Undress Character"] = "脫光光"
L["Unknown command, opening Help"] = "未知的指令，正在開啟說明。"
L["Updating"] = "正在更新"
L["Updating Appearances, please try again afterwards."] = "正在更新塑形外觀，請等完成後再試。"
L["Upgraded version %s to %s"] = "已從 %s 升級到 %s 版本"
L["Use either slash command, /cs or /collectionshop"] = "請在聊天對話框輸入 /cs 或 /收藏專賣店"
L["You must check at least one %s filter"] = "請務必檢查，至少要選擇一種%s過濾方式"
L["You must check at least one Collected filter"] = "請務必檢查，至少要選擇一種已收集的過濾方式"
L["You must check at least one Level filter"] = "請務必檢查，至少要選擇一種等級過濾方式"
L["You must check at least one rarity filter"] = "請務必檢查，至少要選擇一種稀有程度過濾方式"
L["Select an auction to buy or click \"Buy All\""] = "選擇一項拍賣商品來購買，或是按下 \"全買\""
L["Press \"Scan\" to perform a GetAll scan"] = "請按下 \"掃瞄\" 來執行完整掃瞄"
L["Press \"Shop\""] = "請按下 \"血拚\" 開始選購"
L["Blizzard allows a GetAll scan once every %s. Press \"Shop\""] = "暴雪允許每15分鐘只能做一次完整掃描。請按下 \"血拚\" 開始選購"
L["Scan Auction House live when\npressing \"Shop\" instead of\nusing GetAll scan data\n\nLive scans only search\nthe pages required for the\nfilters you checked and may\nbe faster in certain modes or\nwhen using a low max price"] = "按下 \"血拚\" 會即時掃瞄拍賣場，而不是使用完整掃瞄資料。\n\n即時掃瞄只會搜尋過濾方式中勾選所需要的頁面，\n在某些類別中，或使用較低的價格上限時可能會加快速度。"
L["%s/cs|r - Opens options frame to \"Options\"\n" ..
"%s/cs buyouts|r - Opens options frame to \"Buyouts\"\n" ..
"%s/cs getallscandata|r - Opens options frame to \"GetAll Scan Data\"\n" ..
"%s/cs help|r - Opens options frame to \"Help\"\n" ..
"%s/cs buyoutbuttonclick|r - Clicks the Buyout button on the Auction House tab.\n                                     Use in a Macro for fast key or mouse bound buying."] = "%s/cs|r - 開啟選項視窗的 \"選項\" 標籤頁面\n%s/cs buyouts|r - 開啟選項視窗的 \"直購\" 標籤頁面\n%s/cs getallscandata|r - 開啟選項視窗的 \"完整掃瞄資料\" 標籤頁面\n%s/cs help|r - 開啟選項視窗的 \"說明\" 標籤頁面\n%s/cs buyoutbuttonclick|r - 按下拍賣場頁面的直購按鈕。\n                                   用於巨集設定快速鍵或滑鼠綁定。"
L["%sQuestions, Comments, Bugs, and Suggestions|r\n\nhttps://mods.curse.com/addons/wow/collectionshop"] = "%s問題、評論和建議|r\n\nhttps://mods.curse.com/addons/wow/collectionshop"
end
