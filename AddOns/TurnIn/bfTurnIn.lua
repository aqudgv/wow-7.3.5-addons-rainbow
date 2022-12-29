local checkbox
do
	checkbox = CreateFrame("CheckButton", "bfTI_fastSwitch", ObjectiveTrackerFrame, "UICheckButtonTemplate");
	bfTI_fastSwitch:SetChecked(BigFoot_GetModVariable("QuestEnhancement", "EnableTurnIn"))
	bfTI_fastSwitch:SetParent(ObjectiveTrackerFrame.HeaderMenu)
	checkbox:SetWidth(22);
	checkbox:SetHeight(22);
	bfTI_fastSwitchText:SetText("快速交/接任务")
	checkbox:SetPoint("BOTTOM", ObjectiveTrackerFrame, "TOPLEFT", -7, 0);
	checkbox:SetScript("OnClick", function(this, button)
		local value = BigFoot_GetModVariable("QuestEnhancement", "EnableTurnIn")
		if (value == 1) then
			bfTI_Check(0)
		else
			bfTI_Check(1)
		end
	end);
	checkbox:SetScript("OnEnter", function(this, button)
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		if (value) then
			GameTooltip:SetText("关闭快速交/接任务");
		else
			GameTooltip:SetText("开启快速交/接任务");
		end
		GameTooltip:Show();
	end);
	checkbox:SetScript("OnLeave", function(this, button)
		GameTooltip:Hide();
	end);
end

function TI_message(...)

end

function bfTI_Check(switch)
	if switch ==1 then
		BigFoot_SetModVariable("QuestEnhancement", "EnableTurnIn", 1);
		bfTI_fastSwitch:SetChecked(1)
		TI_status.state = true;
		TI_status.usedefault = true;
		TI_LoadEvents();
	else
		BigFoot_SetModVariable("QuestEnhancement", "EnableTurnIn", 0);
		bfTI_fastSwitch:SetChecked(false)
		TI_status.state = false;
		TI_status.usedefault = false;
		TI_UnloadEvents();
		TI_ResetPointers();
	end
	ModManagement_Refresh();
	TI_StatusIndicatorUpdate();
end
