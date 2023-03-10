--[[
Name: Sink-2.0
Revision: $Rev: 115 $
Author(s): Funkydude
Description: Library that handles chat output.
Dependencies: LibStub, SharedMedia-3.0 (optional)
License: CC-BY-NC-SA 3.0
]]

--[[
Copyright (C) 2008-2015
For the attribution bit of the license, as long as you distribute the library unmodified,
no attribution is required.
If you derive from the library or change it in any way, you are required to contact the author(s).
]]

-----------------------------------------------------------------------
-- Sink-2.0

local SINK20 = "LibSink-2.0"
local SINK20_MINOR = 90103

local sink = LibStub:NewLibrary(SINK20, SINK20_MINOR)
if not sink then return end

-- Start upgrade
sink.storageForAddon = sink.storageForAddon or {}
sink.override = sink.override or {}
sink.msbt_registered_fonts = sink.msbt_registered_fonts or {}
sink.registeredScrollAreaFunctions = sink.registeredScrollAreaFunctions or {}
sink.handlers = sink.handlers or {}

sink.stickyAddons = sink.stickyAddons or {
	Blizzard = true,
	MikSBT = true,
	SCT = true,
}

-- Upgrade complete

local _G = _G
local format, gsub, wipe, next, select = string.format, string.gsub, wipe, next, select
local IsInRaid, IsInGroup, SendChatMessage = IsInRaid, IsInGroup, SendChatMessage

local L = {}
L.DEFAULT = _G.DEFAULT -- "Default"
L.CHAT = _G.CHAT -- "Chat"
L.NONE = _G.NONE -- "None"
L.RW = _G.RAID_WARNING -- "Raid Warning"
L.BLIZZARD = _G.FLOATING_COMBATTEXT_LABEL -- "Floating Combat Text"
L.CHANNEL = _G.CHANNEL -- "Channel"

L.DEFAULT_DESC = "Route output from this addon through the first available handler, preferring scrolling combat text addons if available."
L.ROUTE = "Route output from this addon through %s."
L.UIERROR = "Blizzard Error Frame"
L.OUTPUT = "Output"
L.OUTPUT_DESC = "Where to route the output from this addon."
L.SCROLL = "Sub section"
L.SCROLL_DESC = "Set the sub section where messages should appear.\n\nOnly available for some outputs."
L.STICKY = "Sticky"
L.STICKY_DESC = "Set messages from this addon to appear as sticky.\n\nOnly available for some outputs."
L.NONE_DESC = "Hide all messages from this addon."
L.NOTINCHANNEL = "LibSink: %s (Sending to channel '%s' failed, you're not in it)"

do
	-- These localization strings are translated on WoWAce: http://www.wowace.com/addons/libsink-2-0/localization/
	local l = GetLocale()
	if l == "koKR" then
		L["DEFAULT_DESC"] = "???????????? ?????? ????????? ??????????????? ?????? ??? ????????????????????? ????????? ????????????." -- Needs review
		L["NONE_DESC"] = "??? ???????????? ?????? ???????????? ????????????." -- Needs review
		L["NOTINCHANNEL"] = "LibSink: %s (%s ????????? ?????? ??????)" -- Needs review
		L["OUTPUT"] = "??????" -- Needs review
		L["OUTPUT_DESC"] = "????????? ??? ???????????? ???????????? ???????????? ???????????????." -- Needs review
		L["ROUTE"] = "%s|1???;???; ?????? ??? ???????????? ???????????? ???????????????." -- Needs review
		L["SCROLL"] = "????????? ??????" -- Needs review
		L["SCROLL_DESC"] = "???????????? ????????? ????????? ????????? ???????????????." -- Needs review
		L["STICKY"] = "??????" -- Needs review
		L["STICKY_DESC"] = "???????????? ????????? ?????? ??? ???????????? ???????????? ???????????????." -- Needs review
		L["UIERROR"] = "???????????? ?????? ???" -- Needs review
	elseif l == "frFR" then
		L["DEFAULT_DESC"] = "Dirige la sortie de cet addon vers le premier gestionnaire disponible, de pr??f??rence les addons de texte de combat flottant si disponibles." -- Needs review
		L["NONE_DESC"] = "Cache tous les messages de cet addon." -- Needs review
		L["NOTINCHANNEL"] = "LibSink??: %s (l'envoi vers le canal '%s' a ??chou??, car vous n'??tes pas dessus)" -- Needs review
		L["OUTPUT"] = "Sortie" -- Needs review
		L["OUTPUT_DESC"] = "Vers o?? diriger la sortie de cet addon." -- Needs review
		L["ROUTE"] = "Dirige la sortie de cet addon vers %s" -- Needs review
		L["SCROLL"] = "Sous-section" -- Needs review
		L["SCROLL_DESC"] = [=[D??finit la sous-section dans laquelle les messages doivent appara??tre.

		Disponible uniquement pour certaines sorties.]=] -- Needs review
		L["STICKY"] = "??pingl??" -- Needs review
		L["STICKY_DESC"] = [=[Fait appara??tre les messages de cet addon comme ??pingl??s.

		Disponible uniquement pour certaines sorties.]=] -- Needs review
		L["UIERROR"] = "Cadre des erreurs de Blizzard" -- Needs review
	elseif l == "deDE" then
		L["DEFAULT_DESC"] = "Die Ausgaben dieses Addons werden durch den ersten verf??gbaren Handler geleitet, es werden Schwebender-Kampftext-Addons bevorzugt, wenn diese vorhanden sind."
		L["NONE_DESC"] = "Alle Meldungen dieses Addons verstecken."
		L["NOTINCHANNEL"] = "LibSink : %s (Senden auf Channel \"%s\" gescheitert, da du nicht in ihm bist)"
		L["OUTPUT"] = "Ausgabe"
		L["OUTPUT_DESC"] = "Wohin die Ausgaben dieses Addons geleitet werden sollen."
		L["ROUTE"] = "Die Ausgaben dieses Addons werden durch %s geleitet."
		L["SCROLL"] = "Unterabschnitt"
		L["SCROLL_DESC"] = [=[Stelle den Unterabschnitt ein, in dem die Nachrichten erscheinen sollen. 

		Dies ist nur f??r manche Ausgaben verf??gbar.]=]
		L["STICKY"] = "Fixiert"
		L["STICKY_DESC"] = [=[L??sst Nachrichten dieses Addons als fixiert erscheinen, das hei??t, dass die Ausgaben an einer festen Position auf dem Bildschirm erscheinen und dort wieder verschwinden.

		Dies ist nur f??r manche Ausgaben verf??gbar.]=]
		L["UIERROR"] = "Blizzards Fehlerfenster"
	elseif l == "zhCN" then
		L["DEFAULT_DESC"] = "????????????????????????????????????????????????????????????????????????????????????????????????????????????"
		L["NONE_DESC"] = "??????????????????????????????"
		L["NOTINCHANNEL"] = "LibSink???%s?????????????????????%s??????????????????????????????"
		L["OUTPUT"] = "??????"
		L["OUTPUT_DESC"] = "???????????????????????????"
		L["ROUTE"] = "??????????????????%s???????????????"
		L["SCROLL"] = "?????????"
		L["SCROLL_DESC"] = [=[????????????????????????????????????

		???????????????????????????]=]
		L["STICKY"] = "??????"
		L["STICKY_DESC"] = [=[????????????????????????????????????????????????

		???????????????????????????]=]
		L["UIERROR"] = "??????????????????"
	elseif l == "zhTW" then
		L.DEFAULT_DESC = "????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"
		L.ROUTE = "?????????????????????%s?????????"
		L.UIERROR = "????????????????????????"
		L.OUTPUT = "??????"
		L.OUTPUT_DESC = "????????????????????????????????????"
		L.SCROLL = "????????????"
		L.SCROLL_DESC = "??????????????????????????????\n\n?????????????????????????????????????????????"
		L.STICKY = "???????????????"
		L.STICKY_DESC = "???????????????????????????????????????????????????\n\n?????????????????????????????????????????????"
		L.NONE_DESC = "??????????????????????????????"
		L.NOTINCHANNEL = "LibSink: %s (??????????????? '%s' ??????????????????????????????)"
	elseif l == "ruRU" then
		L["DEFAULT_DESC"] = "???????????????????? ?????????? ???? ?????????? ???????????? ?????????? ???????????? ?????????????????? ????????????????????, ?????????????????????? ???????????? ?????????????????? ?????????????? ?????? ???????? ?????? ????????????????."
		L["NONE_DESC"] = "???????????? ?????? ?????????????????? ?????????? ????????????"
		L["NOTINCHANNEL"] = "LibSink: %s (???????????????? ?? ?????????? '%s' ????????????????, ???? ???? ?? ??????)"
		L["OUTPUT"] = "??????????"
		L["OUTPUT_DESC"] = "???????? ???????????????????? ?????????? ???? ?????????? ????????????."
		L["ROUTE"] = "???????????????????? ?????????? ???? ?????????? ???????????? ?????????? %s."
		L["SCROLL"] = "????????????????????"
		L["SCROLL_DESC"] = [=[???????????????????? ??????????????????, ?????? ???????????? ???????????????????? ??????????????????.

		???????????????? ???????????? ?????? ?????????????????? ??????????????.]=]
		L["STICKY"] = "????????????????????????"
		L["STICKY_DESC"] = [=[?????????????????????? ?????????????????? ???? ?????????? ????????????

		???????????????? ???????????? ?????? ?????????????????? ??????????????.]=]
		L["UIERROR"] = "?????????? ???????????? Blizzard."
	elseif l == "esES" or l == "esMX" then
		L["DEFAULT_DESC"] = "Ruta de salida de este addon mediante el primer controlador disponible, prefiriendo el desplazamiento de texto de combate si est?? disponible." -- Needs review
		L["NONE_DESC"] = "Oculta todos los mensajes de este addon." -- Needs review
		L["NOTINCHANNEL"] = "LibSink: %s (Fall?? al enviar al canal '%s', no est??s en el)" -- Needs review
		L["OUTPUT"] = "Salida" -- Needs review
		L["OUTPUT_DESC"] = "Donde se ajustar?? la ruta de salida de este addon." -- Needs review
		L["ROUTE"] = "Ruta de salida de este addon mediante %s." -- Needs review
		L["SCROLL"] = "Sub secci??n." -- Needs review
		L["SCROLL_DESC"] = [=[Ajusta la sub secci??n donde los mensajes deben aparecer.

		Disponible s??lo para algunas salidas.]=] -- Needs review
		L["STICKY"] = "Chincheta" -- Needs review
		L["STICKY_DESC"] = [=[Ajusta los mensajes de este addon para que aparezcan como chincheta.

		Disponible s??lo para algunas salidas.]=] -- Needs review
		L["UIERROR"] = "Marco de Errores de Blizzard" -- Needs review
	elseif l == "ptBR" then
		
	elseif l == "itIT" then
		L["DEFAULT_DESC"] = "Indirizza l'uscita da questo addon attraverso il primo metodo di uscita disponibile, preferibilmente un addon visivo a schermo se disponibile."
		L["NONE_DESC"] = "Nasconti tutti i messaggi per questo addon."
		L["NOTINCHANNEL"] = "LibSink: %s (Invio al canale '%s' non riuscito, non sei dentro)"
		L["OUTPUT"] = "Uscita"
		L["OUTPUT_DESC"] = "Dove indirizzare l'uscita da questo addon."
		L["ROUTE"] = "Indirizza l'uscita da questo addon attraverso %s."
		L["SCROLL"] = "Sotto sezione"
		L["SCROLL_DESC"] = [=[Imposta la sotto sezione in cui i messaggi devono apparire.

		Disponibile solo per alcune uscite.]=]
		L["STICKY"] = "Importante"
		L["STICKY_DESC"] = [=[Imposta i messaggi di questo addon di apparire come importanti.

		Disponibile solo per alcune uscite.]=]
		L["UIERROR"] = "Frame Errore Blizzard"
	end
end

local SML = LibStub("LibSharedMedia-3.0", true)

local sct_color = {}
local function sct(addon, text, r, g, b, font, size, outline, sticky, _, icon)
	sct_color.r, sct_color.g, sct_color.b = r, g, b
	local loc = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20ScrollArea or "Messages"
	local location = (loc == "Outgoing" and SCT.FRAME1) or (loc == "Incoming" and SCT.FRAME2) or SCT.MSG
	local s = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20Sticky or sticky
	SCT:DisplayCustomEvent(text, sct_color, s, location, nil, icon)
end

local msbt_outlines = {["NORMAL"] = 1, ["OUTLINE"] = 2, ["THICKOUTLINE"] = 3}
local function msbt(addon, text, r, g, b, font, size, outline, sticky, _, icon)
	if font and SML and not sink.msbt_registered_fonts[font] then
		MikSBT.RegisterFont(font, SML:Fetch("font", font))
		sink.msbt_registered_fonts[font] = true
	end
	local location = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20ScrollArea or MikSBT.DISPLAYTYPE_NOTIFICATION
	local s = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20Sticky or sticky
	MikSBT.DisplayMessage(text, location, s, r * 255, g * 255, b * 255, size, font, msbt_outlines[outline], icon)
end

local function blizzard(addon, text, r, g, b, font, size, outline, sticky, _, icon)
	if icon then text = "\124T"..icon..":15:15:0:0:64:64:4:60:4:60\124t "..text end
	if SHOW_COMBAT_TEXT == "1" then
		local s = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20Sticky or sticky
		if not CombatText_AddMessage then
			UIParentLoadAddOn("Blizzard_CombatText")
		end
		CombatText_AddMessage(text, CombatText_StandardScroll, r, g, b, s and "crit" or nil, false)
	else
		UIErrorsFrame:AddMessage(text, r, g, b, 1.0)
	end
end

sink.channelMapping = sink.channelMapping or {
	[_G.SAY] = "SAY",
	[_G.PARTY] = "PARTY",
	[_G.INSTANCE_CHAT] = "INSTANCE_CHAT",
	[_G.GUILD_CHAT] = "GUILD",
	[_G.OFFICER_CHAT] = "OFFICER",
	[_G.YELL] = "YELL",
	[_G.RAID] = "RAID",
	[_G.RAID_WARNING] = "RAID_WARNING",
	[_G.GROUP] = "GROUP",
}
sink.channelMappingIds = sink.channelMappingIds or {}
sink.frame = sink.frame or CreateFrame("Frame")
sink.frame:UnregisterAllEvents()
sink.frame:RegisterEvent("CHANNEL_UI_UPDATE")
sink.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
do
	local function loop(...)
		wipe(sink.channelMappingIds)
		for i = 1, select("#", ...), 2 do
			local id, name = select(i, ...)
			sink.channelMappingIds[name] = id
		end
		for k, v in next, sink.channelMapping do
			if v == "CHANNEL" and not sink.channelMappingIds[k] then
				sink.channelMapping[k] = nil
			end
		end
		for k in next, sink.channelMappingIds do sink.channelMapping[k] = "CHANNEL" end
	end
	local function rescanChannels() loop(GetChannelList()) end
	sink.frame:SetScript("OnEvent", rescanChannels)
	rescanChannels()
end

local function color_strip(a, b, c)
	if b:sub(1,2) == "|H" then
		return a..b..c
	else
		return b
	end
end

local function channel(addon, text)
	-- Sanitize the text, remove all color codes & icons
	text = gsub(text, "(|c%x%x%x%x%x%x%x%x)(.-)(|r)", color_strip)
	text = gsub(text, "|T.-|t", "")
	local loc = sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20ScrollArea
	local chan = sink.channelMapping[loc]
	if chan == "GROUP" then
		chan = (IsInGroup(2) and "INSTANCE_CHAT") or (IsInRaid() and "RAID") or (IsInGroup() and "PARTY") or "SAY"
	elseif chan == "CHANNEL" then
		local id, name = GetChannelName(sink.channelMappingIds[loc])
		if name then
			SendChatMessage(text, "CHANNEL", nil, id)
		else
			print(format(L.NOTINCHANNEL, text, loc))
		end
		return
	end
	SendChatMessage(text, chan or "SAY")
end

-- |TTexturePath:size1:size2:xoffset:yoffset:dimx:dimy:coordx1:coordx2:coordy1:coordy2:red:green:blue|t
local function chat(addon, text, r, g, b, _, _, _, _, _, icon)
	if icon then text = "\124T"..icon..":15:15:0:0:64:64:4:60:4:60\124t"..text end
	DEFAULT_CHAT_FRAME:AddMessage(text, r, g, b)
end

local function uierror(addon, text, r, g, b, _, _, _, _, _, icon)
	if icon then text = "\124T"..icon..":15:15:0:0:64:64:4:60:4:60\124t "..text end
	UIErrorsFrame:AddMessage(text, r, g, b, 1.0)
end

local rw
do
	local white = {r = 1, g = 1, b = 1}
	function rw(addon, text, r, g, b, _, _, _, _, _, icon)
		if r or g or b then
			text = format("\124cff%02x%02x%02x%s\124r", (r or 0) * 255, (g or 0) * 255, (b or 0) * 255, text)
		end
		if icon then text = "\124T"..icon..":15:15:0:0:64:64:4:60:4:60\124t "..text end
		RaidNotice_AddMessage(RaidWarningFrame, text, white)
	end
end

local function noop() --[[ noop! ]] end

local handlerPriority = { "SCT", "MikSBT" }
local customHandlersEnabled = {
	SCT = function()
		return _G.SCT and _G.SCT:IsEnabled()
	end,
	MikSBT = function()
		return _G.MikSBT and not _G.MikSBT.IsModDisabled()
	end,
}

local currentHandler = nil
local function getPrioritizedSink()
	if currentHandler then
		local check = customHandlersEnabled[currentHandler]
		if check and check() then
			return sink.handlers[currentHandler]
		end
	end
	for i, v in next, handlerPriority do
		local check = customHandlersEnabled[v]
		if check and check() then
			currentHandler = v
			return sink.handlers[v]
		end
	end
	if SHOW_COMBAT_TEXT and tostring(SHOW_COMBAT_TEXT) ~= "0" then
		return blizzard
	end
	return chat
end

local function pour(addon, text, r, g, b, ...)
	local func = sink.override and sink.handlers[sink.override] or nil
	if not func and sink.storageForAddon[addon] and sink.storageForAddon[addon].sink20OutputSink then
		local h = sink.storageForAddon[addon].sink20OutputSink
		func = sink.handlers[h]
		-- If this sink is not available now, find one manually.
		if customHandlersEnabled[h] and not customHandlersEnabled[h]() then
			func = nil
		end
	end
	if not func then
		func = getPrioritizedSink()
	end
	if not func then func = chat end
	func(addon, text, r or 1, g or 1, b or 1, ...)
end

function sink:Pour(textOrAddon, ...)
	local t = type(textOrAddon)
	if t == "string" then
		pour(self, textOrAddon, ...)
	elseif t == "number" then
		pour(self, tostring(textOrAddon), ...)
	elseif t == "table" then
		pour(textOrAddon, ...)
	else
		error("Invalid argument 2 to :Pour, must be either a string or a table.")
	end
end

local sinks
do
	-- Maybe we want to hide them instead of disable
	local function shouldDisableSCT()
		return not _G.SCT
	end
	local function shouldDisableMSBT()
		return not _G.MikSBT
	end
	local function shouldDisableFCT()
		return not SHOW_COMBAT_TEXT or tostring(SHOW_COMBAT_TEXT) == "0"
	end

	local sctFrames = {"Incoming", "Outgoing", "Messages"}
	local msbtFrames = nil
	local function getScrollAreasForAddon(addon)
		if type(addon) ~= "string" then return nil end
		if addon == "MikSBT" then
			if not msbtFrames then
				msbtFrames = {}
				for key, name in MikSBT.IterateScrollAreas() do
					msbtFrames[#msbtFrames+1] = name
				end
			end
			return msbtFrames
		elseif addon == "SCT" then
			return sctFrames
		elseif addon == "Channel" then
			local tmp = {}
			for k in next, sink.channelMapping do
				tmp[#tmp + 1] = k
			end
			return tmp
		elseif sink.registeredScrollAreaFunctions[addon] then
			return sink.registeredScrollAreaFunctions[addon]()
		end
		return nil
	end

	local emptyTable, args, options = {}, {}, {}
	sinks = {
		Default = {L.DEFAULT, L.DEFAULT_DESC},
		SCT = {"Scrolling Combat Text (SCT)", nil, shouldDisableSCT},
		MikSBT = {"MikSBT", nil, shouldDisableMSBT},
		Blizzard = {L.BLIZZARD, nil, shouldDisableFCT},
		RaidWarning = {L.RW},
		ChatFrame = {L.CHAT},
		Channel = {L.CHANNEL},
		UIErrorsFrame = {L.UIERROR},
		None = {L.NONE, L.NONE_DESC}
	}

	local function getAce2SinkOptions(key, opts)
		local name, desc, hidden = unpack(opts)
		args["Ace2"][key] = {
			type = "toggle",
			name = name,
			desc = desc or format(L.ROUTE, name),
			isRadio = true,
			hidden = hidden
		}
	end

	function sink.GetSinkAce2OptionsDataTable(addon)
		options["Ace2"][addon] = options["Ace2"][addon] or {
			output = {
				type = "group",
				name = L.OUTPUT,
				desc = L.OUTPUT_DESC,
				pass = true,
				get = function(key)
					if not sink.storageForAddon[addon] then
						return "Default"
					end
					if tostring(key) == "nil" then
						-- Means AceConsole wants to list the output option,
						-- so we should show which sink is currently used.
						return sink.storageForAddon[addon].sink20OutputSink or L.DEFAULT
					end
					if key == "ScrollArea" then
						return sink.storageForAddon[addon].sink20ScrollArea
					elseif key == "Sticky" then
						return sink.storageForAddon[addon].sink20Sticky
					else
						if sink.storageForAddon[addon].sink20OutputSink == key then
							local sa = getScrollAreasForAddon(key)
							options["Ace2"][addon].output.args.ScrollArea.validate = sa or emptyTable
							options["Ace2"][addon].output.args.ScrollArea.disabled = not sa
							options["Ace2"][addon].output.args.Sticky.disabled = not sink.stickyAddons[key]
						end
						return sink.storageForAddon[addon].sink20OutputSink and sink.storageForAddon[addon].sink20OutputSink == key or nil
					end
				end,
				set = function(key, value)
					if not sink.storageForAddon[addon] then return end
					if key == "ScrollArea" then
						sink.storageForAddon[addon].sink20ScrollArea = value
					elseif key == "Sticky" then
						sink.storageForAddon[addon].sink20Sticky = value
					elseif value then
						local sa = getScrollAreasForAddon(key)
						options["Ace2"][addon].output.args.ScrollArea.validate = sa or emptyTable
						options["Ace2"][addon].output.args.ScrollArea.disabled = not sa
						options["Ace2"][addon].output.args.Sticky.disabled = not sink.stickyAddons[key]
						sink.storageForAddon[addon].sink20OutputSink = key
					end
				end,
				args = args["Ace2"],
				disabled = function()
					return (type(addon.IsActive) == "function" and not addon:IsActive()) or nil
				end
			}
		}
		return options["Ace2"][addon]
	end

	-- Ace3 options data table format
	local function getAce3SinkOptions(key, opts)
		local name, desc, hidden = unpack(opts)
		args["Ace3"][key] = {
			type = "toggle",
			name = name,
			desc = desc or format(L.ROUTE, name),
			hidden = hidden
		}
	end

	function sink.GetSinkAce3OptionsDataTable(addon)
		if not options["Ace3"][addon] then
			options["Ace3"][addon] = {
				type = "group",
				name = L.OUTPUT,
				desc = L.OUTPUT_DESC,
				args = args["Ace3"],
				get = function(info)
					local key = info[#info]
					if not sink.storageForAddon[addon] then
						return "Default"
					end
					if tostring(key) == "nil" then
						-- Means AceConsole wants to list the output option,
						-- so we should show which sink is currently used.
						return sink.storageForAddon[addon].sink20OutputSink or L.DEFAULT
					end
					if key == "ScrollArea" then
						return sink.storageForAddon[addon].sink20ScrollArea
					elseif key == "Sticky" then
						return sink.storageForAddon[addon].sink20Sticky
					else
						if sink.storageForAddon[addon].sink20OutputSink == key then
							local sa = getScrollAreasForAddon(key)
							if sa then
								local tbl = {}
								for i = 1, #sa do
									local n = sa[i]
									tbl[n] = n
								end
								options["Ace3"][addon].args.ScrollArea.values = tbl
								options["Ace3"][addon].args.ScrollArea.disabled = nil
							else
								options["Ace3"][addon].args.ScrollArea.disabled = true
								options["Ace3"][addon].args.ScrollArea.values = emptyTable
							end
							options["Ace3"][addon].args.Sticky.disabled = not sink.stickyAddons[key]
						end
						return sink.storageForAddon[addon].sink20OutputSink and sink.storageForAddon[addon].sink20OutputSink == key or nil
					end
				end,
				set = function(info, v)
					local key = info[#info]
					if not sink.storageForAddon[addon] then return end
					if key == "ScrollArea" then
						sink.storageForAddon[addon].sink20ScrollArea = v
					elseif key == "Sticky" then
						sink.storageForAddon[addon].sink20Sticky = v
					elseif v then
						local sa = getScrollAreasForAddon(key)
						if sa then
							local tbl = {}
							for i = 1, #sa do
								local n = sa[i]
								tbl[n] = n
							end
							options["Ace3"][addon].args.ScrollArea.values = tbl
							options["Ace3"][addon].args.ScrollArea.disabled = nil
						else
							options["Ace3"][addon].args.ScrollArea.disabled = true
							options["Ace3"][addon].args.ScrollArea.values = emptyTable
						end
						options["Ace3"][addon].args.Sticky.disabled = not sink.stickyAddons[key]
						sink.storageForAddon[addon].sink20OutputSink = key
					end
				end,
				disabled = function()
					return (type(addon.IsEnabled) == "function" and not addon:IsEnabled()) or nil
				end,
			}
		end
		return options["Ace3"][addon]
	end

	local sinkOptionGenerators = {
		["Ace2"] = getAce2SinkOptions,
		["Ace3"] = getAce3SinkOptions
	}
	for generatorName, generator in next, sinkOptionGenerators do
		options[generatorName] = options[generatorName] or {}
		args[generatorName] = args[generatorName] or {}
		for name, opts in next, sinks do
			generator(name, opts)
		end
	end

	args["Ace2"].ScrollArea = {
		type = "text",
		name = L.SCROLL,
		desc = L.SCROLL_DESC,
		validate = emptyTable,
		order = -1,
		disabled = true
	}
	args["Ace2"].Sticky = {
		type = "toggle",
		name = L.STICKY,
		desc = L.STICKY_DESC,
		validate = emptyTable,
		order = -2,
		disabled = true
	}

	args["Ace3"].ScrollArea = {
		type = "select",
		name = L.SCROLL,
		desc = L.SCROLL_DESC,
		values = emptyTable,
		order = -1,
		disabled = true
	}
	args["Ace3"].Sticky = {
		type = "toggle",
		name = L.STICKY,
		desc = L.STICKY_DESC,
		order = -2,
		disabled = true
	}

	function sink:RegisterSink(shortName, name, desc, func, scrollAreaFunc, hasSticky)
		assert(type(shortName) == "string")
		assert(type(name) == "string")
		assert(type(desc) == "string" or desc == nil)
		assert(type(func) == "function" or type(func) == "string")
		assert(type(scrollAreaFunc) == "function" or type(scrollAreaFunc) == "string" or scrollAreaFunc == nil)
		assert(type(hasSticky) == "boolean" or hasSticky == nil)

		if sinks[shortName] or sink.handlers[shortName] then
			error(format("There's already a sink by the short name %q.", shortName))
		end
		sinks[shortName] = {name, desc}
		-- Save it for library upgrades.
		if not sink.registeredSinks then sink.registeredSinks = {} end
		sink.registeredSinks[shortName] = sinks[shortName]

		if type(func) == "function" then
			sink.handlers[shortName] = func
		else
			sink.handlers[shortName] = function(...)
				self[func](self, ...)
			end
		end
		if type(scrollAreaFunc) == "function" then
			sink.registeredScrollAreaFunctions[shortName] = scrollAreaFunc
		elseif type(scrollAreaFunc) == "string" then
			sink.registeredScrollAreaFunctions[shortName] = function(...)
				return self[scrollAreaFunc](self, ...)
			end
		end
		sink.stickyAddons[shortName] = hasSticky and true or nil

		for k, v in next, sinkOptionGenerators do
			v(shortName, sinks[shortName])
		end
	end
end

function sink.SetSinkStorage(addon, storage)
	assert(type(addon) == "table")
	assert(type(storage) == "table", "Storage must be a table")
	sink.storageForAddon[addon] = storage
end

-- Sets a sink override for -all- addons, librarywide.
function sink:SetSinkOverride(override)
	assert(type(override) == "string" or override == nil)
	if override and not sink.handlers[override] then
		error("There's no %q sink.", override)
	end
	sink.override = override
end

-- Put this at the bottom, because we need the local functions to exist first.
local handlers = {
	SCT = sct,
	MikSBT = msbt,
	ChatFrame = chat,
	Channel = channel,
	UIErrorsFrame = uierror,
	Blizzard = blizzard,
	RaidWarning = rw,
	None = noop,
}
-- Overwrite any handler functions from the old library
for k, v in next, handlers do
	sink.handlers[k] = v
end

-----------------------------------------------------------------------
-- Embed handling

sink.embeds = sink.embeds or {}

local mixins = {
	"Pour", "RegisterSink", "SetSinkStorage",
	"GetSinkAce2OptionsDataTable", "GetSinkAce3OptionsDataTable"
}

function sink:Embed(target)
	sink.embeds[target] = true
	for _,v in next, mixins do
		target[v] = sink[v]
	end
	return target
end

for addon in next, sink.embeds do
	sink:Embed(addon)
end

