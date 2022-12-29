
function BagManagementConfigFunc()
	if (GetLocale() == "zhCN") then
		BF_BANK_OPEN_ALL_BAGS = "显示银行界面时打开所有背包";
		MOD_BAG_MANAGEMENT_TITLE = {"背包管理", "beibaoguanli"};

		BF_MERCHANT_OPEN_ALL_BAGS = "同商人交易时自动打开背包";
		BF_TRADE_OPEN_ALL_BAGS = "与玩家交易时自动打开背包";

	elseif (GetLocale() == "zhTW") then
		BF_BANK_OPEN_ALL_BAGS = "顯示銀行界面時打開所有背包";
		MOD_BAG_MANAGEMENT_TITLE = {"背包管理", "beibaoguanli"};

		BF_MERCHANT_OPEN_ALL_BAGS = "與商人交易時自動打開背包";
		BF_TRADE_OPEN_ALL_BAGS = "與玩家交易時自動打開背包";

	else
		BF_BANK_OPEN_ALL_BAGS = "Open all bags while talking with banker";
		MOD_BAG_MANAGEMENT_TITLE = "Bag Management";

		BF_MERCHANT_OPEN_ALL_BAGS = "Open all bags while talking with vendor";
		BF_TRADE_OPEN_ALL_BAGS = "Open all bags while trading with player";
	end

	ModManagement_RegisterMod(
		"BagManagement",
		"Interface\\Icons\\INV_Misc_Bag_16",
		MOD_BAG_MANAGEMENT_TITLE,
		"",
		nil,
		nil,
		{[5]=true}
	);

	ModManagement_RegisterCheckBox(
		"BagManagement",
		BF_MERCHANT_OPEN_ALL_BAGS,
		nil,
		"EnabelOpenAllBagsOnMerchant",
		1,
		BagManage_MerchantOpenAll
	);

	ModManagement_RegisterCheckBox(
		"BagManagement",
		BF_BANK_OPEN_ALL_BAGS,
		nil,
		"EnabelOpenAllBagsOnBank",
		1,
		BagManage_BankOpenAll
	);

	ModManagement_RegisterCheckBox(
		"BagManagement",
		BF_TRADE_OPEN_ALL_BAGS,
		nil,
		"EnabelOpenAllBagsOnTrading",
		1,
		BagManage_TradeOpenAll
	);
end

BigFoot_AddCollector(BagManagementConfigFunc)