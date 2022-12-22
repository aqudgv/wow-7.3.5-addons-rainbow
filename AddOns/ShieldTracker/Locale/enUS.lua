local L = LibStub("AceLocale-3.0"):NewLocale("ShieldTracker", "enUS", true, false)

if not L then return end

L["Abbreviated"] = true
L["Absorbs Tracked"] = true
L["AbsorbsTracked_OptionDesc"] = "Determines the absorbs tracked.  |cff00ff00All|r tracks every absorb.  |cff00ff00Selected|r tracks only the selected absorbs.  |cff00ff00All Minus Selected|r tracks all absorbs except the ones selected."
L["All"] = true
L["All Minus Selected"] = true
L["Anchor"] = true
L["Anchor Point"] = true
L["Anchor_Desc"] = "These settings allow a bar to be aligned to another bar or UI item.  These settings override the x, y coordinates.  The bar will automatically re-position based on the anchor."
L["Anchor_OptDesc"] = "Anchors the bar to the selected UI item."
L["AnchorBar_OptDesc"] = "Anchor this bar to another bar created in this addon."
L["AnchorPoint_OptDesc"] = "The point on the anchor to attach to."
L["Appearance"] = true
L["Applied Sound"] = true
L["AppliedSoundDesc"] = "The sound to play when the shields are applied."
L["Bar"] = true
L["Bar Background Color"] = true
L["Bar Color"] = true
L["Bar Depleted Color"] = true
L["Bar Options"] = true
L["Bar Point"] = true
L["BarBackgroundColor_OptionDesc"] = "Color to use for the background of the bar."
L["BarColor_OptionDesc"] = "Change the color of the bar."
L["BarHeight_Desc"] = "Change the height of the bar."
L["BarPoint_OptDesc"] = "The point on this bar that is aligned to the anchor."
L["Bars"] = true
L["Bars_Desc"] = "Settings for the bars."
L["BarTextColor_OptionDesc"] = "Changes the color of the text on the bar."
L["BarTexture_OptionDesc"] = "Texture to use for the bar."
L["BarWidth_Desc"] = "Change the width of the bar."
L["Blizzard"] = true
L["Borders"] = true
L["Bottom"] = true
L["Center"] = true
L["Colors"] = true
L["Compact Runes"] = true
L["Config Mode"] = true
L["Create Bar"] = true
L["CreateBarDesc"] = "Enter the name for the new bar"
L["Custom"] = true
L["Delete Bar"] = true
L["DeleteBarDesc"] = "Delete this bar"
L["DeleteConfirmMsg"] = "Are you sure you want to delete this bar?"
L["Delimited"] = true
L["Dimensions"] = true
L["ElvUI"] = true
L["ElvUIBorders_OptionDesc"] = "If enabled, borders are disabled for bars and replaced with the ElvUI border."
L["ElvUIEnabled_OptionDesc"] = "If enabled, the UI will be customized for ElvUI."
L["ElvUIFont_OptionDesc"] = "If enabled, the font is overriden and the standard ElvUI font is used."
L["ElvUIFontFlags_OptionDesc"] = "If enabled, the font flags will be overriden and ElvUI appropriate flags will be used."
L["ElvUITexture_OptionDesc"] = "If enabled, the bar textures are overriden and the normal ElvUI texture is used."
L["Enable"] = true
L["EnableBarDesc"] = "Enable the bar."
L["Enabled"] = true
L["Fixed"] = true
L["Focus"] = true
L["Font"] = true
L["Font Flags"] = true
L["Font size"] = true
L["Font size for the bars."] = true
L["Font to use for this panel."] = true
L["Font to use."] = true
L["FontMonochrome_OptionDesc"] = "Toggles if the font is rendered without anti-aliasing."
L["FontOutline_OptionDesc"] = "Toggles if a black outline is displayed around the font."
L["FontThickOutline_OptionDesc"] = "Toggles if the font is displayed with a thick black outline."
L["Frame"] = true
L["Frame_OptDesc"] = "If Anchor is Custom, the bar is anchored to this frame.  If the frame cannot be found, the bar is positioned with its x, y coordinates. "
L["Full"] = true
L["General Options"] = true
L["Group"] = true
L["Height"] = true
L["IncludeGeneric_Desc"] = "Toggles if this absorb is included in the bar's value."
L["Index"] = true
L["IndexDesc"] = "The index within the subgroup of the player to track."
L["Label"] = true
L["Label_Desc"] = "A label or title can be attached to the bar."
L["LabelAnchorPoint_OptDesc"] = "The point on the bar the label attaches to."
L["Left"] = true
L["Lock bar"] = true
L["LockBarDesc"] = "Lock the bar from moving."
L["Minimap Button"] = true
L["Mode"] = true
L["Monochrome"] = true
L["Mouseover"] = true
L["Named"] = true
L["None"] = true
L["Number Format"] = true
L["NumberFormat_OptionDesc"] = "The format to use for numbers.  Raw indicates no formatting.  Delimited will thousand delimit the number.  Abbreviated will shorten numbers and use indicators such as k and m."
L["One"] = true
L["Outline"] = true
L["Pet"] = true
L["Player"] = true
L["Position"] = true
L["Position_OptionDesc"] = "Position on the bar to display the value."
L["Precision"] = true
L["Precision_OptionDesc"] = "Specifies the number of digits shown to the right of the decimal point."
L["Progress Bar"] = true
L["Raw"] = true
L["Removed Sound"] = true
L["RemovedSoundDesc"] = "The sound to play when the shields are removed."
L["Rename Bar"] = true
L["RenameBarDesc"] = "Rename this bar"
L["Right"] = true
L["Scale"] = true
L["ScaleDesc"] = "Set the bar scaling."
L["seconds"] = true
L["Selected"] = true
L["ShieldSoundEnabledDesc"] = "Enable playing sounds when shields are applied or removed."
L["ShieldTracker_Desc"] = "This addon allows you to setup highly configurable bars to track shields on units."
L["Show Bar"] = true
L["Show Text"] = true
L["Show Time"] = true
L["ShowBar"] = "Show background"
L["ShowBarConfig_Desc"] = "Show this bar for configuration."
L["ShowBarDesc"] = "Show the bar and border, when disabled only the text will appear."
L["ShowBorder"] = "Show Border"
L["ShowBorderDesc"] = "Show the border around the bar."
L["ShowTime_OptionDesc"] = "Toggle if the time remaining is shown on the bar."
L["Skinning"] = true
L["Skinning_Desc"] = "These settings allow you to override the default UI to match the look and feel of Tukui and Elvui.  You must logout and back in or use /reloadui in order for these settings to take effect."
L["Sound"] = true
L["StatusBarTexture"] = "Statusbar Texture"
L["Subgroup"] = true
L["SubgroupDesc"] = "The subgroup of the player to watch."
L["Target"] = true
L["Text Color"] = true
L["Text Format"] = true
L["TextFormat_OptionDesc"] = "Specifies the format of the text on the bar."
L["Texture"] = true
L["Thick Outline"] = true
L["Time Remaining"] = true
L["TimeRemaining_OptionDesc"] = "Position on the bar to display the time remaining or None to disable."
L["Toggle config mode"] = true
L["Toggle the minimap button"] = true
L["Top"] = true
L["Tukui"] = true
L["TukuiBorders_OptionDesc"] = "If enabled, borders are disabled for bars and replaced with the Tukui border."
L["TukuiEnabled_OptionDesc"] = "If enabled, the displau will be customized for Tukui."
L["TukuiFont_OptionDesc"] = "If enabled, the font is overriden and the standard Tukui font is used."
L["TukuiFontFlags_OptionDesc"] = "If enabled, the font flags will be overriden and Tukui appropriate flags will be used."
L["TukuiTexture_OptionDesc"] = "If enabled, the bar textures are overriden and the normal Tukui texture is used."
L["Unit"] = true
L["Unit Name"] = true
L["UnitDesc"] = "The unit this bar watches."
L["UnitNameDesc"] = "The name of the unit this bar watches."
L["Verbose"] = true
L["Width"] = true
L["X Offset"] = true
L["XOffset_Desc"] = "X offset from the center of the screen."
L["XOffsetAnchor_Desc"] = "The X offset of the bar point from the anchor point."
L["Y Offset"] = true
L["YOffset_Desc"] = "Y offset from the center of the screen."
L["YOffsetAnchor_Desc"] = "The Y offset of the bar point from the anchor point."
L["Zero"] = true

L["Death Knight"] = true
L["Druid"] = true
L["Mage"] = true
L["Monk"] = true
L["Paladin"] = true
L["Priest"] = true
L["Warlock"] = true
L["Warrior"] = true
L["Items"] = true
L["Special Debuffs"] = true
L["Shield Tracker"] = true
L["Profiles"] = true