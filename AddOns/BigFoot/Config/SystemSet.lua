
function SystemSetConfigFunc()
	if (GetLocale() == "zhCN") then
		BF_SYSTEM_LASTER_TITLE ={"大脚主设置","!!!",3}

		BF_SYSTEM_LASTER_LOAD="进入世界之后开始载入插件"
		BF_SYSTEM_LASTER_LOAD_TOOLTIP ="选中之后，会在玩家进入世界之后载入插件"

		ErrorFilter_Text="开启红色信息过滤"
		ErrorFilter_TOOLTIP ="过滤显示界面中上方部分的系统红字提示，可以自行设置想要屏蔽的信息"

		ErrorFilter_Set ="设置"

	elseif (GetLocale() == "zhTW") then
		BF_SYSTEM_LASTER_TITLE ={"大腳主設置","!!!",3}

		BF_SYSTEM_LASTER_LOAD="進入世界之後開始載入插件"
		BF_SYSTEM_LASTER_LOAD_TOOLTIP="選中之後，會在玩家進入世界之後載入插件"

		ErrorFilter_Text="開啟红色信息过滤"
		ErrorFilter_TOOLTIP ="過濾顯示介面中上方部份的系統紅字提示，可以自行設置想要屏蔽的信息"

		ErrorFilter_Set ="設置"

	else
		BF_SYSTEM_LASTER_TITLE ={"Bigfoot System Set","!!!"}

		BF_SYSTEM_LASTER_LOAD="load Addon after player inter word"
		BF_SYSTEM_LASTER_LOAD_TOOLTIP ="load Addon after player inter word"

		ErrorFilter_Text="Enable ErrorFilter"
		ErrorFilter_TOOLTIP ="Filters the errors dislayed in the UIErrorsFrame"

		ErrorFilter_Set ="SET"
	end

	ModManagement_RegisterMod(
		"BF_System",
		"Interface\\AddOns\\BigFoot\\Media\\BigFootIcon.tga",
		BF_SYSTEM_LASTER_TITLE,
		"",
		nil,
		nil,
		{[1]=true}
	);

	local NewInfoStr =[[Beta 4.2.0.299
	功能：延迟加载
	分类：大脚主设置
	介绍：玩家可以选在是卡蓝条来加载插件或者进入游戏后加载插件咯！这样根据玩家的需求优化了插件载入方式，快来试试看！

	]]
	local NewInfoStrName=[[
	蓝条不再卡！
	]]
	local NewInfoStr1=[[
	本次更新，我们为蓝条进行了大幅度的优化，带来全新的高速体验！
	先载入还是后载入？
	不论是大脚自带插件、大脚整合插件还是玩家使用的单体插件，都可以选择在游戏进入前加载或者进入游戏后加载。
	蓝条不再卡
	所在位置：
	大脚设置-大脚主设置
	]]
	ModManagement_RegisterCheckBox(
		"BF_System",
		BF_SYSTEM_LASTER_LOAD,
		BF_SYSTEM_LASTER_LOAD_TOOLTIP,
		"EnableLoadLater",
		0,
		function (__arg)
			if __arg ==1 then
				BigFoot_SysTemSetTab.BigFoot_LoadBefore =0;
			else
				BigFoot_SysTemSetTab.BigFoot_LoadBefore =1;
			end
		end,
		nil,
		function(__arg)
			if __arg ==1 then
				BigFoot_SysTemSetTab.BigFoot_LoadBefore =0;
			else
				BigFoot_SysTemSetTab.BigFoot_LoadBefore =1;
			end
			-- BF_NewAddOnsPromotion("zhCNb",299,"EnableLoadLater",NewInfoStr,"BF_System","EnableLoadLater")
			-- BF_NewAddOnsPromotion("zhCN",307,NewInfoStrName,NewInfoStr1,"BF_System","EnableLoadLater")
		end
	);
	local NewInfoStrName=[[
	红字消息能屏蔽
	]]
	local NewInfoStr1=[[
	一些频繁出现语音又出现文字的红字系统消息很凌乱？现在使用红字信息屏蔽功能就可以解决了，还可以设置哪些需要显示哪些需要隐藏。快来体验一下整洁的界面！

	功能所在位置：
	大脚主设置-开启红色信息屏蔽
	]]

	if (IsConfigurableAddOn("ErrorFilter")) then
		ModManagement_RegisterCheckBox(
			"BF_System",
			ErrorFilter_Text,
			ErrorFilter_TOOLTIP,
			"EnableErrorFilter",
			nil,
			function (__arg)
				if (__arg == 1) then
					if (not BigFoot_IsAddOnLoaded("ErrorFilter")) then
						BigFoot_LoadAddOn("ErrorFilter");
					end
					if (BigFoot_IsAddOnLoaded("ErrorFilter")) then
						ErrorFilter_Toggle(1)
					end
				else
					if (BigFoot_IsAddOnLoadedFromBigFoot("ErrorFilter")) then
						ErrorFilter_Toggle()
					end
				end
			end,
			nil,
			function (__arg)
				if (__arg == 1) then
					if (not BigFoot_IsAddOnLoaded("ErrorFilter")) then
						BigFoot_LoadAddOn("ErrorFilter");
					end
					if (BigFoot_IsAddOnLoaded("ErrorFilter")) then
						ErrorFilter_Toggle(1)
					end
				else
					if (BigFoot_IsAddOnLoadedFromBigFoot("ErrorFilter")) then
						ErrorFilter_Toggle()
					end
				end
				BF_NewAddOnsPromotion("zhCN",316,NewInfoStrName,NewInfoStr1,"BF_System","EnableErrorFilter")
			end
		);

		ModManagement_RegisterButton(
			"BF_System",
			ErrorFilter_Set,
			function()
				if (BigFoot_IsAddOnLoadedFromBigFoot("ErrorFilter")) then
					ErrorFilter:ShowConfig()
					HideUIPanel(ModManagementFrame);
				end
			end,
			nil,
			1
		);

	end
end

BigFoot_AddCollector(SystemSetConfigFunc)
