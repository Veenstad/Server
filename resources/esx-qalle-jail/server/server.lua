ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("jail", function(src, args, raw)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then

		local jailPlayer = args[1]
		local jailTime = tonumber(args[2])
		local jailReason = args[3]

		if GetPlayerName(jailPlayer) ~= nil then

			if jailTime ~= nil then
				JailPlayer(jailPlayer, jailTime)

				TriggerClientEvent("esx:showNotification", src, GetPlayerName(jailPlayer) .. " Jailed for " .. jailTime .. " minutes!")

				GetRPName(jailPlayer, function(Firstname, Lastname)
					if args[3] ~= nil then
						TriggerClientEvent('chat:addMessage', -1, { args = { "RECHTER",  Firstname .. " " .. Lastname .. " Zit nu in de gevangenis voor: " .. args[3] }, color = { 249, 166, 0 } })
					end
				end)
			else
				TriggerClientEvent("esx:showNotification", src, "dit is geen geldige tijd!")
			end
		else
			TriggerClientEvent("esx:showNotification", src, "Deze ID is niet online!")
		end
	else
		TriggerClientEvent("esx:showNotification", src, "Je bent geen politie!")
	end
end)

RegisterCommand("unjail", function(src, args)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then

		local jailPlayer = args[1]

		if GetPlayerName(jailPlayer) ~= nil then
			UnJail(jailPlayer)
		else
			TriggerClientEvent("esx:showNotification", src, "Deze ID is niet online!")
		end
	else
		TriggerClientEvent("esx:showNotification", src, "Je bent geen politie!")
	end
end)


RegisterServerEvent("esx-qalle-jail:updateJailTime")
AddEventHandler("esx-qalle-jail:updateJailTime", function(newJailTime)
	local src = source

	EditJailTime(src, newJailTime)
end)

RegisterServerEvent("esx-qalle-jail:prisonWorkReward")
AddEventHandler("esx-qalle-jail:prisonWorkReward", function()
	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)

	xPlayer.addMoney(math.random(13, 21))

	TriggerClientEvent("esx:showNotification", src, "Thanks, here you have som cash for food!")
end)

function JailPlayer(jailPlayer, jailTime)
	TriggerClientEvent("esx-qalle-jail:jailPlayer", jailPlayer, jailTime)

	EditJailTime(jailPlayer, jailTime)
end

function UnJail(jailPlayer)
	TriggerClientEvent("esx-qalle-jail:unJailPlayer", jailPlayer)

	EditJailTime(jailPlayer, 0)
end

function EditJailTime(source, jailTime)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier

	MySQL.Async.execute(
       "UPDATE users SET jail = @newJailTime WHERE identifier = @identifier",
        {
			['@identifier'] = Identifier,
			['@newJailTime'] = tonumber(jailTime)
		}
	)
end

function GetRPName(playerId, data)
	local Identifier = ESX.GetPlayerFromId(playerId).identifier

	MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		data(result[1].firstname, result[1].lastname)

	end)
end

ESX.RegisterServerCallback("esx-qalle-jail:retrieveJailTime", function(source, cb)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier


	MySQL.Async.fetchAll("SELECT jail FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		local JailTime = result[1].jail

		if JailTime > 0 or nil then

			cb(true, JailTime)
		else
			cb(false, 0)
		end

	end)
end)