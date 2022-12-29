
-------------------------------------------------------
-- BigFootPatch.lua
-- AndyXiao@BigFoot
-- 本文件是用来修正一些来自WoW本身Interface的问题
-------------------------------------------------------

do
	-- 屏蔽界面失效的提醒
	UIParent:UnregisterEvent("ADDON_ACTION_BLOCKED");
	_G["ChatFrameEditBox"] = _G["ChatFrame1EditBox"]
end

--支持可以从团队框体直接选择
do
	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_LOADED")
	f:SetScript("OnEvent", function(self, event,...)
		if event == "ADDON_LOADED" and select(1,...) == "Blizzard_RaidUI" then
			BigFoot_DelayCall(BFSecureCall,1,function ()
				for i=1,40 do
					local raidbutton = getglobal("RaidGroupButton"..i);
					if(raidbutton and raidbutton.unit) then
						raidbutton:SetAttribute("type", "target");
						raidbutton:SetAttribute("unit", raidbutton.unit);
					end
				end
			end)
			f:UnregisterEvent("ADDON_LOADED")
		end
	end)
end

--QuickLoot中当拾取到空尸体的时候自动隐藏LootFrame 的逻辑移到这里
do
	local f = CreateFrame("Frame")
	f:RegisterEvent("LOOT_READY")
	f:SetScript("OnEvent",function(self,event)
		if ( GetNumLootItems() == 0 ) then
			HideUIPanel(LootFrame);
		end
	end)
end

-- 修改系统ADDON_ACTION_FORBIDDEN逻辑
do
	UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN");

	StaticPopupDialogs["BF_ADDON_ACTION_FORBIDDEN"] = {
		text = ADDON_ACTION_FORBIDDEN,
		button1 = RELOADUI,
		button2 = IGNORE_DIALOG,
		OnAccept = function(self, data)
			ReloadUI();
		end,
		timeout = 0,
		exclusive = 1,
		whileDead = 1,
		hideOnEscape = 1
	};

	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_ACTION_FORBIDDEN")
	f:SetScript("OnEvent", function(self, event, ...)
		local FORBIDDEN_ADDON,FORBIDDEN_FUNCTION = ...;
		StaticPopup_Show("BF_ADDON_ACTION_FORBIDDEN", FORBIDDEN_ADDON);
	end)
end

do
	hooksecurefunc("CompactUnitFrame_UpdateHealthColor", function(frame)
		if not frame.optionTable.healthBarColorOverride then
			if C_NamePlate.GetNamePlateForUnit(frame.unit) ~= C_NamePlate.GetNamePlateForUnit("player") and not UnitIsPlayer(frame.unit) and not CompactUnitFrame_IsTapDenied(frame) then
				-- local threat = UnitThreatSituation("player", frame.unit) or 0
				local guid = UnitGUID(frame.unit)
				if not guid then return end
				local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
				if tonumber(npc_id) == 120651 then return end
				local r, g, b;
				if tonumber(npc_id) == 120651 then	-- 邪能炸药
					r, g, b = 0, 255, 0
				-- elseif threat == 3 then
					-- r, g, b = 0.3, 0, 0.6   -- 仇恨是你 颜色
				-- elseif threat == 2 then
					-- if GetSpecializationRole(GetSpecialization()) == "TANK" then
						-- r, g, b = 0, 0, 1		-- 你是T但是仇恨不稳 颜色
					-- else
						-- r, g, b = 0.6, 0, 0.6	-- 你不是T但是仇恨不稳 颜色
					-- end
				-- elseif threat == 1 then
					-- r, g, b = 1, 0.5, 0		-- 你要OT  颜色
				end
				if r then
					frame.healthBar:SetStatusBarColor(r, g, b, 1)
				end
			end
		end
	end)
end
