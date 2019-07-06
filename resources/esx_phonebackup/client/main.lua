local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local GUI                        = {}
local PhoneData                  = {phoneNumber = 0, contacts = {}}
local CurrentAction              = nil
local CurrentActionMsg           = ''
local CurrentActionData          = {}
local CurrentDispatchRequestId   = -1
local CellphoneObject            = nil
local CallStartTime              = nil
local OnCall                     = false
local GUI                        = {}
GUI.IsOpen                       = false
GUI.HasFocus                     = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	ESX.UI.Menu.RegisterType('phone', OpenPhone, ClosePhone)
end)

function OpenPhone()
	GUI.IsOpen   = true
	GUI.HasFocus = false

	TriggerServerEvent('esx_phone:reload', PhoneData.phoneNumber)

	SendNUIMessage({
		showPhone = true
	})

	local playerPed  = PlayerPedId()
	local coords     = GetEntityCoords(playerPed)
	local bone       = GetPedBoneIndex(playerPed, 28422)
	local phoneModel = 'prop_npc_phone_02'

	Citizen.CreateThread(function()
		RequestAnimDict('cellphone@')
		while not HasAnimDictLoaded('cellphone@') do
			Citizen.Wait(0)
		end

		TaskPlayAnim(playerPed, 'cellphone@', 'cellphone_call_listen_base', 1.0, -1, -1, 50, 0, false, false, false)

		ESX.Game.SpawnObject(phoneModel, coords, function(object)
			AttachEntityToEntity(object, playerPed, bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 2, true)
			CellphoneObject = object
		end)
	end)

end

function ClosePhone()
	GUI.IsOpen      = false
	GUI.HasFocus    = false
	local playerPed = PlayerPedId()

	SendNUIMessage({
		showPhone = false
	})

	SetNuiFocus(false)

	ClearPedTasks(playerPed)
	DeleteObject(CellphoneObject)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	for i=1, #xPlayer.accounts, 1 do
		if xPlayer.accounts[i].name == 'bank' then
			SendNUIMessage({
				setBank = true,
				money   = xPlayer.accounts[i].money
			})

			break
		end
	end
end)

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	PhoneData.phoneNumber = phoneNumber
	PhoneData.contacts    = {}

	for i=1, #contacts, 1 do
		table.insert(PhoneData.contacts, contacts[i])
	end

	SendNUIMessage({
		reloadPhone = true,
		phoneData   = PhoneData
	})
end)

RegisterNetEvent('esx_phone:addContact')
AddEventHandler('esx_phone:addContact', function(name, phoneNumber)
	table.insert(PhoneData.contacts, {
		name   = name,
		number = phoneNumber
	})

	SendNUIMessage({
		contactAdded = true,
		phoneData    = PhoneData
	})
end)

RegisterNetEvent('esx_phone:onMessage')
AddEventHandler('esx_phone:onMessage', function(phoneNumber, message, position, anon, job, dispatchRequestId)
	if job == 'player' then
		ESX.ShowNotification('~b~Nieuw bericht~s~ : ' .. message)
	else
		ESX.ShowNotification('~b~' .. job .. ': ~s~' .. message)
	end

	PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
	Citizen.Wait(250)
	PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)
	Citizen.Wait(250)
	PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", 0, 0, 1)

	SendNUIMessage({
		newMessage  = true,
		phoneNumber = anon and '-1' or phoneNumber,
		message     = message,
		position    = position,
		anon        = anon,
		job         = job
	})

	if dispatchRequestId then
		CurrentAction            = 'dispatch'
		CurrentActionMsg         = job .. ' - Druk op ~INPUT_CONTEXT~ om de oproep te beantwoorden'
		CurrentDispatchRequestId = dispatchRequestId

		CurrentActionData = {
			phoneNumber = anon and '-1' or phoneNumber,
			message     = message,
			position    = position,
			actions     = actions,
			anon        = anon,
			job         = job
		}

		ESX.SetTimeout(15000, function()
			CurrentAction = nil
		end)
	end

end)

RegisterNetEvent('esx_phone:stopDispatch')
AddEventHandler('esx_phone:stopDispatch', function(dispatchRequestId, playerName)
	if CurrentDispatchRequestId == dispatchRequestId and CurrentAction == 'dispatch' then
		CurrentAction = nil
		ESX.ShowNotification(playerName .. _U('taken_call'))
	end
end)

RegisterNetEvent('esx_phone:incomingCall')
AddEventHandler('esx_phone:incomingCall', function(target, channel, number)
	if not OnCall then
		ESX.UI.Menu.Open('phone', GetCurrentResourceName(), 'main')

		SendNUIMessage({
			incomingCall = true,
			target       = target,
			channel      = channel,
			number       = number
		})
	end
end)

RegisterNetEvent('esx_phone:onAcceptCall')
AddEventHandler('esx_phone:onAcceptCall', function(channel, target)
	OnCall = true

	SendNUIMessage({
		acceptedCall = true,
		channel      = channel,
		target       = target
	})

	NetworkSetVoiceChannel(channel)
	NetworkSetTalkerProximity(0.0)
end)


RegisterNetEvent('esx_phone:endCall')
AddEventHandler('esx_phone:endCall', function(msg)
	OnCall = false

	if msg ~= nil then
		ESX.ShowNotification(msg)
	end

	if CallStartTime ~= nil then
		TriggerServerEvent('esx_phone:billCall', GetPosixTime() - CallStartTime)
		CallStartTime = nil
	end

	SendNUIMessage({
		endCall = true
	})

	NetworkClearVoiceChannel()
	NetworkSetTalkerProximity(2.5)
end)

RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
	if account.name == 'bank' then
		SendNUIMessage({
			setBank = true,
			money   = account.money
		})
	end
end)

AddEventHandler('esx_phone:showIcon', function(icon, show)
	SendNUIMessage({
		showIcon = show,
		icon     = icon
	})
end)

RegisterNUICallback('activate_gps', function(data)
	SetNewWaypoint(data.x, data.y)
	ESX.ShowNotification('Positie ingevoerd in de GPS')
end)

RegisterNUICallback('start_call', function(data, cb)
	CallStartTime = GetPosixTime()
	TriggerServerEvent('esx_phone:startCall', data.number)
	cb('OK')
end)

RegisterNUICallback('accept_call', function(data, cb)
	OnCall = true

	TriggerServerEvent('esx_phone:acceptCall', data.target, data.channel)
	NetworkSetVoiceChannel(data.channel)
	NetworkSetTalkerProximity(0.0)
	cb('OK')
end)

RegisterNUICallback('end_call', function(data, cb)
	TriggerServerEvent('esx_phone:endCall', data.channel, data.target)
	cb('OK')
end)

RegisterNUICallback('send', function(data)
	local phoneNumber = data.number
	local playerPed   = PlayerPedId()
	local coords      = GetEntityCoords(playerPed)

	if tonumber(phoneNumber) ~= nil then
		phoneNumber = tonumber(phoneNumber)
	end

	TriggerServerEvent('esx_phone:send', phoneNumber, data.message, data.anon, {
		x = coords.x,
		y = coords.y,
		z = coords.z
	})

	ESX.ShowNotification('Bericht verstuurd')
end)

RegisterNUICallback('add_contact', function(data, cb)
	local phoneNumber = tonumber(data.phoneNumber)
	local contactName = tostring(data.contactName)

	if phoneNumber then
		TriggerServerEvent('esx_phone:addPlayerContact', phoneNumber, contactName)
	end

	cb('OK')
end)

RegisterNUICallback('escape', function()
	ESX.UI.Menu.Close('phone', GetCurrentResourceName(), 'main')
end)

RegisterNUICallback('request_focus', function()
	GUI.HasFocus = true
	SetNuiFocus(true, true)
end)

RegisterNUICallback('release_focus', function()
	GUI.HasFocus = false
	SetNuiFocus(false)
end)

RegisterNUICallback('get_players', function(data, cb)
	local players  = ESX.Game.GetPlayers()
	local _players = {}

	for i=1, #players, 1 do
		table.insert(_players, {
			source = GetPlayerServerId(players[i]),
			name   = GetPlayerName(players[i])
		})
	end

	SendNUIMessage({
		onPlayers = true,
		players   = _players,
		reason    = data.reason
	})

	cb('OK')
end)

RegisterNUICallback('bank_transfer', function(data, cb)
	local amount = tonumber(data.amount)

	if amount ~= nil then
		TriggerServerEvent('esx_phone:bankTransfer', data.player, amount)
	else
		ESX.ShowNotification('Montant invalide')
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		if GUI.IsOpen then

			if IsControlJustReleased(0, Keys['TOP']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'TOP'
				})
			elseif IsControlJustReleased(0, Keys['DOWN']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'DOWN'
				})
			elseif IsControlJustReleased(0, Keys['LEFT']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'LEFT'
				})
			elseif IsControlJustReleased(0, Keys['RIGHT']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'RIGHT'
				})
			elseif IsControlJustReleased(0, Keys['ENTER']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'ENTER'
				})
			elseif IsControlJustReleased(0, Keys['BACKSPACE']) then
				SendNUIMessage({
					controlPressed = true,
					control        = 'BACKSPACE'
				})
			end

		end

		if GUI.HasFocus then -- codes here: https://pastebin.com/guYd0ht4
			DisableControlAction(0, 1,    true) -- LookLeftRight
			DisableControlAction(0, 2,    true) -- LookUpDown
			DisableControlAction(0, 25,   true) -- Input Aim
			DisableControlAction(0, 106,  true) -- Vehicle Mouse Control Override

			DisableControlAction(0, 24,   true) -- Input Attack
			DisableControlAction(0, 140,  true) -- Melee Attack Alternate
			DisableControlAction(0, 141,  true) -- Melee Attack Alternate
			DisableControlAction(0, 142,  true) -- Melee Attack Alternate
			DisableControlAction(0, 257,  true) -- Input Attack 2
			DisableControlAction(0, 263,  true) -- Input Melee Attack
			DisableControlAction(0, 264,  true) -- Input Melee Attack 2

			DisableControlAction(0, 12,   true) -- Weapon Wheel Up Down
			DisableControlAction(0, 14,   true) -- Weapon Wheel Next
			DisableControlAction(0, 15,   true) -- Weapon Wheel Prev
			DisableControlAction(0, 16,   true) -- Select Next Weapon
			DisableControlAction(0, 17,   true) -- Select Prev Weapon
		else
			if IsDisabledControlJustReleased(0, Keys['F1']) then
				if not GUI.IsOpen then
					ESX.UI.Menu.CloseAll()
					ESX.UI.Menu.Open('phone', GetCurrentResourceName(), 'main')
				end
			end

			if IsControlJustReleased(0, Keys['U']) and GUI.IsOpen then
				SendNUIMessage({
					activateGPS = true
				})
			end
		end
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction ~= nil then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, Keys['E']) then
				if CurrentAction == 'dispatch' then
					TriggerServerEvent('esx_phone:stopDispatch', CurrentDispatchRequestId)
					SetNewWaypoint(CurrentActionData.position.x,  CurrentActionData.position.y)
				end

				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)
