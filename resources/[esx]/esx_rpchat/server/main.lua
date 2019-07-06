AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', _U('unknown_command', command_args[1]) } })
end)

AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		if Config.EnableESXIdentity then name = GetCharacterName(source) end
		TriggerClientEvent('chat:addMessage', -1, { args = { _U('ooc_prefix', name), message }, color = { 128, 128, 128 } })
	end
end)

RegisterCommand('twt', function(source, args, rawCommand)
	if source == 0 then
		print('esx_rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)
	if Config.EnableESXIdentity then name = GetCharacterName(source) end

	TriggerClientEvent('chat:addMessage', -1, { args = { _U('twt_prefix', name), args }, color = { 0, 153, 204 } })
	TriggerEvent('DiscordBot:ToDiscord', 'https://discordapp.com/api/webhooks/478174469416812555/2UM8bM_1UWY9TuQipemIcuwsmsbar_VNiUuPHdd9hTIhvgDfXvGUs70RHJA_V_1fZYCN', name .. ' [ID: ' .. source .. ']', ' **[Twitter] @'.. name .. ': **' .. args, 'https://seeklogo.com/images/T/twitter-2012-negative-logo-5C6C1F1521-seeklogo.com.png', false, Source, TTS) --Sending the message to discord
	print(('%s: %s'):format(name, args))
end, false)

TriggerEvent('es:addGroupCommand', 'admin-chat', "admin", function(source, args, rawCommand)
	args = table.concat(args, ' ')
	TriggerClientEvent('chat:addMessage', -1, { args = { _U('admin_prefix', name), args }, color = { 0, 153, 204 } })
end)

TriggerEvent('es:addGroupCommand', 'mod-chat', "mod", function(source, args, message)
	args = table.concat(args, ' ')
	TriggerClientEvent('chat:addMessage', -1, { args = { _U('mod_prefix', name), args }, color = { 128, 128, 128 } })
end)

RegisterCommand('me', function(source, args, rawCommand)
	if source == 0 then
		print('esx_rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)
	if Config.EnableESXIdentity then name = GetCharacterName(source) end

	TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('me_prefix', name), args, { 255, 0, 0 })
	print(('%s: %s'):format(name, args))
end, false)

RegisterCommand('do', function(source, args, rawCommand)
	if source == 0 then
		print('esx_rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)
	if Config.EnableESXIdentity then name = GetCharacterName(source) end

	TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('do_prefix', name), args, { 0, 0, 255 })
	print(('%s: %s'):format(name, args))
end, false)

function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		if Config.OnlyFirstname then
			return result[1].firstname
		else
			return ('%s %s'):format(result[1].firstname, result[1].lastname)
		end
	else
		return GetPlayerName(source)
	end
end
