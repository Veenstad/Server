ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source, callback)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchAll('SELECT identifier, firstname, lastname, dateofbirth, sex, height FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1].firstname ~= nil then
			local data = {
				identifier	= result[1].identifier,
				firstname	= result[1].firstname,
				lastname	= result[1].lastname,
				dateofbirth	= result[1].dateofbirth,
				sex			= result[1].sex,
				height		= result[1].height
			}

			callback(data)
		else
			local data = {
				identifier	= '',
				firstname	= '',
				lastname	= '',
				dateofbirth	= '',
				sex			= '',
				height		= ''
			}

			callback(data)
		end
	end)
end

function getCharacters(source, callback)
	local identifier = GetPlayerIdentifiers(source)[1]
	MySQL.Async.fetchAll('SELECT * FROM `characters` WHERE `identifier` = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		if result[1] and result[2] and result[3] then

			local data = {
				identifier		= result[1].identifier,
				firstname1		= result[1].firstname,
				lastname1		= result[1].lastname,
				dateofbirth1	= result[1].dateofbirth,
				sex1			= result[1].sex,
				height1			= result[1].height,
				firstname2		= result[2].firstname,
				lastname2		= result[2].lastname,
				dateofbirth2	= result[2].dateofbirth,
				sex2			= result[2].sex,
				height2			= result[2].height,
				firstname3		= result[3].firstname,
				lastname3		= result[3].lastname,
				dateofbirth3	= result[3].dateofbirth,
				sex3			= result[3].sex,
				height3			= result[3].height
			}

			callback(data)

		elseif result[1] and result[2] and not result[3] then

			local data = {
				identifier		= result[1].identifier,
				firstname1		= result[1].firstname,
				lastname1		= result[1].lastname,
				dateofbirth1	= result[1].dateofbirth,
				sex1			= result[1].sex,
				height1			= result[1].height,
				firstname2		= result[2].firstname,
				lastname2		= result[2].lastname,
				dateofbirth2	= result[2].dateofbirth,
				sex2			= result[2].sex,
				height2			= result[2].height,
				firstname3		= '',
				lastname3		= '',
				dateofbirth3	= '',
				sex3			= '',
				height3			= ''
			}

			callback(data)

		elseif result[1] and not result[2] and not result[3] then

			local data = {
				identifier		= result[1].identifier,
				firstname1		= result[1].firstname,
				lastname1		= result[1].lastname,
				dateofbirth1	= result[1].dateofbirth,
				sex1			= result[1].sex,
				height1			= result[1].height,
				firstname2		= '',
				lastname2		= '',
				dateofbirth2	= '',
				sex2			= '',
				height2			= '',
				firstname3		= '',
				lastname3		= '',
				dateofbirth3	= '',
				sex3			= '',
				height3			= ''
			}

			callback(data)

		else

			local data = {
				identifier		= '',
				firstname1		= '',
				lastname1		= '',
				dateofbirth1	= '',
				sex1			= '',
				height1			= '',
				firstname2		= '',
				lastname2		= '',
				dateofbirth2	= '',
				sex2			= '',
				height2			= '',
				firstname3		= '',
				lastname3		= '',
				dateofbirth3	= '',
				sex3			= '',
				height3			= ''
			}

			callback(data)

		end
	end)
end

function setIdentity(identifier, data, callback)
	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			callback(true)
		end
	end)

	MySQL.Async.execute('INSERT INTO characters (identifier, firstname, lastname, dateofbirth, sex, height) VALUES (@identifier, @firstname, @lastname, @dateofbirth, @sex, @height)', {
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	})
end

function updateIdentity(identifier, data, callback)
	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			callback(true)
		end
	end)
end

function deleteIdentity(identifier, data, callback)
	MySQL.Async.execute('DELETE FROM `characters` WHERE identifier = @identifier AND firstname = @firstname AND lastname = @lastname AND dateofbirth = @dateofbirth AND sex = @sex AND height = @height', {
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			callback(true)
		end
	end)
end

RegisterServerEvent('esx_identity:setIdentity')
AddEventHandler('esx_identity:setIdentity', function(data, myIdentifiers)
	setIdentity(myIdentifiers.steamid, data, function(callback)
		if callback then
			TriggerClientEvent('esx_identity:identityCheck', myIdentifiers.playerid, true)
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITEIT]', 'Het is niet gelukt om jou karakter te maken, probeer het nog eens of contacteer een admin!' } })
		end
	end)
end)

AddEventHandler('es:playerLoaded', function(source)
	local myID = {
		steamid = GetPlayerIdentifiers(source)[1],
		playerid = source
	}

	TriggerClientEvent('esx_identity:saveID', source, myID)
	getIdentity(source, function(data)
		if data.firstname == '' then
			TriggerClientEvent('esx_identity:identityCheck', source, false)
			TriggerClientEvent('esx_identity:showRegisterIdentity', source)
		else
			TriggerClientEvent('esx_identity:identityCheck', source, true)
		end
	end)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(3000)

		-- Set all the client side variables for connected users one new time
		local xPlayers, xPlayer = ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			local myID = {
				steamid  = xPlayer.identifier,
				playerid = xPlayer.source
			}

			TriggerClientEvent('esx_identity:saveID', xPlayer.source, myID)

			getIdentity(xPlayer.source, function(data)
				if data.firstname == '' then
					TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, false)
					TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
				else
					TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, true)
				end
			end)
		end
	end
end)

TriggerEvent('es:addCommand', 'register', function(source, args, user)
	getCharacters(source, function(data)
		if data.firstname3 ~= '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITEIT]', 'Je kan maximaal 3 karakters aanmaken. Gebruik de ^3/chardel^0  command om een huidige karakter te verwijderen.' } })
		else
			TriggerClientEvent('esx_identity:showRegisterIdentity', source, {})
		end
	end)
end, {help = "Register a new character"})

TriggerEvent('es:addGroupCommand', 'char', 'user', function(source, args, user)
	getIdentity(source, function(data)
		if data.firstname == '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen actieve karakter!' } })
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Actieve karakter: ^2' .. data.firstname .. ' ' .. data.lastname } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEEM', 'Niet genoeg permissies!' } })
end, {help = "List your current character"})

TriggerEvent('es:addGroupCommand', 'charlist', 'user', function(source, args, user)
	getCharacters(source, function(data)
		if data.firstname1 ~= '' then
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT] Karakter 1:', data.firstname1 .. ' ' .. data.lastname1 } })
			
			if data.firstname2 ~= '' then
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT] Karakter 2:', data.firstname2 .. ' ' .. data.lastname2 } })
				
				if data.firstname3 ~= '' then
					TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT] Karakter 3:', data.firstname3 .. ' ' .. data.lastname3 } })
				end
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITEIT]', 'Je hebt geen geregistreerde karakters. Gebruik de ^3/register^0 command om een karakter aan te maken.' } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEEM', 'Niet genoeg permissies!' } })
end, {help = "Lijst met al jou geregistreerde karakters"})

TriggerEvent('es:addGroupCommand', 'charselect', 'user', function(source, args, user)
	local charNumber = tonumber(args[1])

	if charNumber == nil or charNumber > 3 or charNumber < 1 then
		TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITEIT]', 'Dat is een ongeldige karakter!' } })
		return
	end

	getCharacters(source, function(data)
		if charNumber == 1 then
			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname1,
				lastname	= data.lastname1,
				dateofbirth	= data.dateofbirth1,
				sex			= data.sex1,
				height		= data.height1
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je actieve karakter is geupdate naar ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kan uw identiteit niet bijwerken, probeer het later opnieuw of neem contact op met een admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 1!' } })
			end
		elseif charNumber == 2 then

			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname2,
				lastname	= data.lastname2,
				dateofbirth	= data.dateofbirth2,
				sex			= data.sex2,
				height		= data.height2
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)

					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je actieve karakter is geupdate naar ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kan uw identiteit niet bijwerken, probeer het later opnieuw of neem contact op met een admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 2!' } })
			end
		elseif charNumber == 3 then

			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname3,
				lastname	= data.lastname3,
				dateofbirth	= data.dateofbirth3,
				sex			= data.sex3,
				height		= data.height3
			}

			if data.firstname ~= '' then
				updateIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je actieve karakter is geupdate naar ^2' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kan uw identiteit niet bijwerken, probeer het later opnieuw of neem contact op met een admin!' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 3!' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kan uw identiteit niet bijwerken, probeer het later opnieuw of neem contact op met een admin!' } })
		end

	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEEM', 'Niet genoeg permissies!' } })
end, {help = "Switch tussen een karakter", params = {{name = "char", help = "id van je karakter, tussen 1-3"}}})

TriggerEvent('es:addGroupCommand', 'chardel', 'user', function(source, args, user)
	local charNumber = tonumber(args[1])

	if charNumber == nil or charNumber > 3 or charNumber < 1 then
		TriggerClientEvent('chat:addMessage', source, { args = { '^[IDENTITEIT]', 'Dat is een ongeldige karakter!' } })
		return
	end

	getCharacters(source, function(data)

		if charNumber == 1 then

			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname1,
				lastname	= data.lastname1,
				dateofbirth	= data.dateofbirth1,
				sex			= data.sex1,
				height		= data.height1
			}

			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt verwijderd: ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kon de karakter niet verwijderen, probeer het nog eens of neem contact op met een admin' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 1!' } })
			end

		elseif charNumber == 2 then

			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname2,
				lastname	= data.lastname2,
				dateofbirth	= data.dateofbirth2,
				sex 		= data.sex2,
				height		= data.height2
			}

			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt verwijderd: ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kon de karakter niet verwijderen, probeer het nog eens of neem contact op met een admin' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 2!' } })
			end

		elseif charNumber == 3 then

			local data = {
				identifier	= data.identifier,
				firstname	= data.firstname3,
				lastname	= data.lastname3,
				dateofbirth	= data.dateofbirth3,
				sex			= data.sex3,
				height		= data.height3
			}

			if data.firstname ~= '' then
				deleteIdentity(GetPlayerIdentifiers(source)[1], data, function(callback)
					if callback then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt verwijderd: ^1' .. data.firstname .. ' ' .. data.lastname } })
					else
						TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kon de karakter niet verwijderen, probeer het nog eens of neem contact op met een admin' } })
					end
				end)
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Je hebt geen karakter in slot 3!' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1[IDENTITEIT]', 'Kon de karakter niet verwijderen, probeer het nog eens!' } })
		end
	end)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEEM', 'Niet genoeg permissies!' } })
end, {help = "Delete a registered character", params = {{name = "char", help = "id van je karakter, tussen 1-3"}}})
