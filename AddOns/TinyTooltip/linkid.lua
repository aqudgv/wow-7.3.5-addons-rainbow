
local addon = TinyTooltip

local function ParseHyperLink(link)
    local name, value = string.match(link or "", "|?H?(%a+):(%d+):")
    if (name and value) then
        return name:gsub("^([a-z])", strupper), value
    end
end

local function ShowId(tooltip, name, value, noBlankLine)
    if (not name or not value) then return end
    if (IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown() or addon.db.general.alwaysShowIdInfo) then
        local line = addon:FindLine(tooltip, name)
        if (not line) then
            if (not noBlankLine) then tooltip:AddLine(" ") end
            tooltip:AddLine(format("%s ID：%s", addon.L[name] or name, value), 0, 1, 0.8)
            tooltip:Show()
        end
    end
end

local function ShowLinkIdInfo(tooltip, link)
    ShowId(tooltip, ParseHyperLink(link or select(2,tooltip:GetItem())))
end

-- keystone
local function KeystoneAffixDescription(self, link)
    link = link or select(2, self:GetItem())
    local data, name, description, AffixID
    if (link and strfind(link, "keystone:")) then
        link = link:gsub("|H(keystone:.-)|.+", "%1")
        data = {strsplit(":", link)}
        self:AddLine(" ")
        for i = 4, 6 do
            AffixID = tonumber(data[i])
            if (AffixID and AffixID > 0) then
                name, description = C_ChallengeMode.GetAffixInfo(AffixID)
                if (name and description) then
                    self:AddLine(format("|cffffcc33%s：|r%s", name, description), 0.1, 0.9, 0.1, true)
                end
            end
        end
        self:Show()
    end
end
GameTooltip:HookScript("OnTooltipSetItem", KeystoneAffixDescription)
hooksecurefunc(ItemRefTooltip, "SetHyperlink", KeystoneAffixDescription)

-- Item
hooksecurefunc(GameTooltip, "SetHyperlink", ShowLinkIdInfo)
hooksecurefunc(ItemRefTooltip, "SetHyperlink", ShowLinkIdInfo)
hooksecurefunc("SetItemRef", function(link) ShowLinkIdInfo(ItemRefTooltip, link) end)
GameTooltip:HookScript("OnTooltipSetItem", ShowLinkIdInfo)
ItemRefTooltip:HookScript("OnTooltipSetItem", ShowLinkIdInfo)
ShoppingTooltip1:HookScript("OnTooltipSetItem", ShowLinkIdInfo)
ShoppingTooltip2:HookScript("OnTooltipSetItem", ShowLinkIdInfo)
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", ShowLinkIdInfo)
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", ShowLinkIdInfo)

-- Spell
GameTooltip:HookScript("OnTooltipSetSpell", function(self) ShowId(self, "Spell", (select(3,self:GetSpell()))) end)
hooksecurefunc(GameTooltip, "SetUnitAura", function(self, ...) ShowId(self, "Spell", (select(11,UnitAura(...)))) end)
hooksecurefunc(GameTooltip, "SetUnitBuff", function(self, ...) ShowId(self, "Spell", (select(11,UnitBuff(...)))) end)
hooksecurefunc(GameTooltip, "SetUnitDebuff", function(self, ...) ShowId(self, "Spell", (select(11,UnitDebuff(...)))) end)
hooksecurefunc(GameTooltip, "SetArtifactPowerByID", function(self, powerID)
    ShowId(self, "Power", powerID)
    ShowId(self, "Spell", C_ArtifactUI.GetPowerInfo(powerID).spellID, 1)
end)

-- Quest
hooksecurefunc("QuestMapLogTitleButton_OnEnter", function(self)
    if (self.questID) then ShowId(GameTooltip, "Quest", self.questID) end
end)

-- Achievement UI
local function ShowAchievementId(self)
    if ((IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown() or addon.db.general.alwaysShowIdInfo) and self.id) then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, -32)
        GameTooltip:SetText("|cffffdd22Achievement:|r " .. self.id, 0, 1, 0.8)
        GameTooltip:Show()
    end
end

hooksecurefunc("HybridScrollFrame_CreateButtons", function(self, buttonTemplate)
    if (buttonTemplate == "StatTemplate") then
        for _, button in pairs(self.buttons) do
            button:HookScript("OnEnter", ShowAchievementId)
        end
    elseif (buttonTemplate == "AchievementTemplate") then
        for _, button in pairs(self.buttons) do
            button:HookScript("OnEnter", ShowAchievementId)
            button:HookScript("OnLeave", GameTooltip_Hide)
        end
    end
end)

-- adds caster of buffs/debuffs to their tooltips
hooksecurefunc(GameTooltip,"SetUnitAura",function(self,unit,index,filter)
	if addon.db.general.showCaster then
		local caster = select(8,UnitAura(unit,index,filter))
		if caster and UnitExists(caster) then
				GameTooltip:AddLine(" ")
				GameTooltip:AddLine(addon.L["Caster"].."："..UnitName(caster),.65,.85,1,1)
				GameTooltip:Show()
		end
	end
end)
