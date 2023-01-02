seterrorhandler(GnomeSequencerErrorHandler)

local GNOME, Sequences = ...
if not next(Sequences) then
	print('|cffff0000' .. GNOME .. ':|r Failed to load Sequences.lua or contains no macros, create the file from ExampleSequences.lua and restart the game.')
	return
end

local CastCmds = { use = true, cast = true, spell = true }
local function UpdateIcon(self)
	local step = self:GetAttribute('step') or 1
	local button = self:GetName()
	local macro, foundSpell, notSpell = Sequences[button][step], false, ''
	for cmd, etc in gmatch(macro or '', '/(%w+)%s+([^\n]+)') do
		if CastCmds[strlower(cmd)] then
			local spell, target = SecureCmdOptionParse(etc)
			if spell then
				if GetSpellInfo(spell) then
					SetMacroSpell(button, spell, target)
					foundSpell = true
					break
				elseif notSpell == '' then
					notSpell = spell
				end
			end
		end
	end
	if not foundSpell then SetMacroItem(button, notSpell) end
end

local OnClick = [=[
	local step = self:GetAttribute('step')
	self:SetAttribute('macrotext', self:GetAttribute('PreMacro') .. macros[step] .. self:GetAttribute('PostMacro'))
	%s
	if not step or not macros[step] then -- User attempted to write a step method that doesn't work, reset to 1
		print('|cffff0000Invalid step assigned by custom step sequence', self:GetName(), step or 'nil')
		step = 1
	end
	self:SetAttribute('step', step)
	self:CallMethod('UpdateIcon')
]=]

for name, sequence in pairs(Sequences) do
	local button = CreateFrame('Button', name, nil, 'SecureActionButtonTemplate,SecureHandlerBaseTemplate')
	button:SetAttribute('type', 'macro')
	button:Execute('name, macros = self:GetName(), newtable([=======[' .. strjoin(']=======],[=======[', unpack(sequence)) .. ']=======])')
	button:SetAttribute('step', 1)
	button:SetAttribute('PreMacro', (sequence.PreMacro or '') .. '\n')
	button:SetAttribute('PostMacro', '\n' .. (sequence.PostMacro or ''))
	button:WrapScript(button, 'OnClick', format(OnClick, sequence.StepFunction or 'step = step % #macros + 1'))
	button.UpdateIcon = UpdateIcon
end

local ModifiedMacros = {} -- [macroName] = true if we've already modified this macro

local IgnoreMacroUpdates = false
local f = CreateFrame('Frame')
f:SetScript('OnEvent', function(self, event, ...)
	if (event == 'UPDATE_MACROS' or event == 'PLAYER_LOGIN') and not IgnoreMacroUpdates then
		if not InCombatLockdown() then
			IgnoreMacroUpdates = true
			--self:UnregisterEvent('UPDATE_MACROS')
			for name, sequence in pairs(Sequences) do
				local macroIndex = GetMacroIndexByName(name)
				if macroIndex and macroIndex ~= 0 then
					if not ModifiedMacros[name] then
						ModifiedMacros[name] = true
						EditMacro(macroIndex, nil, nil, '#showtooltip\n/click ' .. name)
					end
					_G[name]:UpdateIcon()
				elseif ModifiedMacros[name] then
					ModifiedMacros[name] = nil
				end
			end
			IgnoreMacroUpdates = false
			--self:RegisterEvent('UPDATE_MACROS')
		else
			self:RegisterEvent('PLAYER_REGEN_ENABLED')
		end
	elseif event == 'PLAYER_REGEN_ENABLED' then
		self:UnregisterEvent('PLAYER_REGEN_ENABLED')
		self:GetScript('OnEvent')(self, 'UPDATE_MACROS')
	end
end)

do -- temporary? fix for bug clearing the icon when zoning in 7.2
	local f = CreateFrame('frame')
	f:Hide()
	local DoUpdate = false
	local IgnoreIconUpdates = false
	f:SetScript('OnUpdate', function(self, elapsed)
		if DoUpdate then	
			DoUpdate = false
			self:Hide()
			for name, sequence in pairs(Sequences) do
				local macroIndex = GetMacroIndexByName(name)
				if macroIndex and macroIndex ~= 0 and _G[name] then
					_G[name]:UpdateIcon()
				end
			end
			-- print(GetTime(), 'Done updating all icons')
			IgnoreIconUpdates = false
		else
			DoUpdate = true
		end
	end)
	f:SetScript('OnEvent', function(self, event, slot)
		if not IgnoreIconUpdates then
			if slot == 0 then
				IgnoreIconUpdates = true
				self:Show() -- we have to set the icon on the next frame or it won't take
				-- print(GetTime(), 'Start updating all icons')
			else
				IgnoreIconUpdates = true
				local actionType, macroSlot = GetActionInfo(slot)
				if actionType == 'macro' then
					local macroName = GetMacroInfo(macroSlot)
					if Sequences[macroName] and _G[macroName] then
						_G[macroName]:UpdateIcon()
						-- print(GetTime(), 'Updating specific icon', macroName)
					end
				end
				IgnoreIconUpdates = false
			end
		end
	end)
	f:RegisterEvent('ACTIONBAR_SLOT_CHANGED')
end

f:RegisterEvent('UPDATE_MACROS')
f:RegisterEvent('PLAYER_LOGIN')