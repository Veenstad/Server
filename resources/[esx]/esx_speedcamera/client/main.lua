-- BELOVE IS YOUR SETTINGS, CHANGE THEM TO WHATEVER YOU'D LIKE & MORE SETTINGS WILL COME IN THE FUTURE! --

local useBilling = true -- OPTIONS: (true/false)
local useCameraSound = true -- OPTIONS: (true/false)
local useFlashingScreen = true -- OPTIONS: (true/false)
local useBlips = true -- OPTIONS: (true/false)
local alertPolice = true -- OPTIONS: (true/false)
local alertSpeed = 150 -- OPTIONS: (1-5000 KMH)

-- ABOVE IS YOUR SETTINGS, CHANGE THEM TO WHATEVER YOU'D LIKE & MORE SETTINGS WILL COME IN THE FUTURE!  --







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

ESX = nil

local hasBeenCaught = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- BLIP FOR SPEEDCAMERA (START)

local blips = {	
	{title="Speedcamera 1", colour=1, id=1, x = 858.15, y = 218.12, z = 75.3},
    {title="Speedcamera 2)", colour=1, id=1, x = 27.07, y = 255.25, z = 112.3},
    {title="Speedcamera 3", colour=1, id=1, x = -99.62, y = -1142.25, z = 25.3},
	{title="Speedcamera 4", colour=1, id=1, x = -159.95, y = -1395.22, z = 30.3},
	{title="Speedcamera 5", colour=1, id=1, x = 2036.58, y = -3764.43, z = 32.31},
	{title="Speedcamera 6", colour=1, id=1, x = 1785.69, y = 3686.14, z = 34.31},
	{title="Speedcamera 7", colour=1, id=1, x = 1471.81, y = 3612.9, z = 35.31},
	{title="Speedcamera 8", colour=1, id=1, x = 72.74, y = 6610.0, z = 31.31},
	{title="Speedcamera 9", colour=1, id=1, x = -304.24, y = 6229.37, z = 31.3},
	{title="Speedcamera 10", colour=1, id=1, x = -37.3, y = -944.73, z = 33.3},
	{title="Speedcamera 11", colour=1, id=1, x = -184.36, y = -891.12, z = 33.3},
	{title="Speedcamera 12", colour=1, id=1, x = -635.45, y = -836.18, z = 33.3},
	{title="Speedcamera 13", colour=1, id=1, x = 220.37, y = -1043.44, z = 33.3},
	{title="Speedcamera 14)", colour=1, id=1, x = 401.81, y = -960.28, z = 33.3},
	{title="Speedcamera 15", colour=1, id=1, x = 401.81, y = -960.28, z = 33.3},
	{title="Speedcamera 16", colour=1, id=1, x = 508.82, y = -682.78, z = 26.3},
	{title="Speedcamera 17", colour=1, id=1, x = 388.4, y = -600.21, z = 31.3},
	{title="Speedcamera 18", colour=1, id=1, x = -56.25, y = -533.48, z = 40.3},
	{title="Speedcamera 90", colour=1, id=1, x = 72.81, y = -165.42, z = 57.3},
}

Citizen.CreateThread(function()
	for _, info in pairs(blips) do
		if useBlips == true then
			info.blip = AddBlipForCoord(info.x, info.y, info.z)
			SetBlipSprite(info.blip, info.id)
			SetBlipDisplay(info.blip, 4)
			SetBlipScale(info.blip, 0.5)
			SetBlipColour(info.blip, info.colour)
			SetBlipAsShortRange(info.blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(info.title)
			EndTextCommandSetBlipName(info.blip)
		end
	end
end)

-- BLIP FOR SPEEDCAMERA (END)

local Speedcamera60Zone = {
    {x = -524.2645,y = -1776.3569,z = 21.3384}
}

local Speedcamera80Zone = {
    {x = 2506.0671,y = 4145.2431,z = 38.1054}
}

local Speedcamera120Zone = {
    {x = 1584.9281,y = -993.4557,z = 59.3923},
    {x = 2442.2006,y = -134.6004,z = 88.7765},
    {x = 2871.7951,y = 3540.5795,z = 53.0930}
}

-- 60 ZONE (START)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(Speedcamera60Zone) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Speedcamera60Zone[k].x, Speedcamera60Zone[k].y, Speedcamera60Zone[k].z)

            if dist <= 20.0 then
				local playerPed = GetPlayerPed(-1)
				local playerCar = GetVehiclePedIsIn(playerPed, false)
				local veh = GetVehiclePedIsIn(playerPed)
				local SpeedKM = GetEntitySpeed(playerPed)*3.6
				local maxSpeed = 60.0 -- THIS IS THE MAX SPEED IN KM/H
				
				if SpeedKM > maxSpeed then
					if IsPedInAnyVehicle(playerPed, false) then
						if (GetPedInVehicleSeat(playerCar, -1) == playerPed) then
							if hasBeenCaught == false then
								if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE2" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE3" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE4" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICEB" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICET" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "FIRETRUK" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "AMBULAN" then -- BLACKLISTED VEHICLE
								-- VEHICLES ABOVE ARE BLACKLISTED
								else
									-- ALERT POLICE (START)
									if alertPolice == true then
										if SpeedKM > alertSpeed then
											local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
											TriggerServerEvent('esx_phone:send', 'police', ' Someone passed the speed camera, above ' .. alertSpeed.. ' KMH', true, {x =x, y =y, z =z})
										end
									end
									-- ALERT POLICE (END)								
								
									-- FLASHING EFFECT (START)
									if useFlashingScreen == true then
										TriggerServerEvent('esx_speedcamera:openGUI')
									end
									
									if useCameraSound == true then
										TriggerServerEvent("InteractSound_SV:PlayOnSource", "speedcamera", 0.5)
									end
									
									if useFlashingScreen == true then
										Citizen.Wait(200)
										TriggerServerEvent('esx_speedcamera:closeGUI')
									end
									-- FLASHING EFFECT (END)								
								
									TriggerEvent("pNotify:SendNotification", {text = "You've been caught by the speedcamera in a 60 zone!", type = "error", timeout = 5000, layout = "centerLeft"})
									
									if useBilling == true then
										TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(PlayerId()), 'society_police', 'Speedcamera (60KM/H)', 500) -- Sends a bill from the police
									else
										TriggerServerEvent('esx_speedcamera:PayBill60Zone')
									end
										
									hasBeenCaught = true
									Citizen.Wait(5000) -- This is here to make sure the player won't get fined over and over again by the same camera!
								end
							end
						end
					end
					
					hasBeenCaught = false
				end
            end
        end
    end
end)

-- 60 ZONE (END)

-- 80 ZONE (START)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(Speedcamera80Zone) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Speedcamera80Zone[k].x, Speedcamera80Zone[k].y, Speedcamera80Zone[k].z)

            if dist <= 20.0 then
				local playerPed = GetPlayerPed(-1)
				local playerCar = GetVehiclePedIsIn(playerPed, false)
				local veh = GetVehiclePedIsIn(playerPed)
				local SpeedKM = GetEntitySpeed(playerPed)*3.6
				local maxSpeed = 80.0 -- THIS IS THE MAX SPEED IN KM/H
				
				if SpeedKM > maxSpeed then
					if IsPedInAnyVehicle(playerPed, false) then
						if (GetPedInVehicleSeat(playerCar, -1) == playerPed) then					
							if hasBeenCaught == false then
								if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE2" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE3" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE4" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICEB" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICET" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "FIRETRUK" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "AMBULAN" then -- BLACKLISTED VEHICLE
								-- VEHICLES ABOVE ARE BLACKLISTED
								else
									-- ALERT POLICE (START)
									if alertPolice == true then
										if SpeedKM > alertSpeed then
											local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
											TriggerServerEvent('esx_phone:send', 'police', ' Someone passed the speed camera, above ' .. alertSpeed.. ' KMH', true, {x =x, y =y, z =z})
										end
									end
									-- ALERT POLICE (END)								
								
									-- FLASHING EFFECT (START)
									if useFlashingScreen == true then
										TriggerServerEvent('esx_speedcamera:openGUI')
									end
									
									if useCameraSound == true then
										TriggerServerEvent("InteractSound_SV:PlayOnSource", "speedcamera", 0.5)
									end
									
									if useFlashingScreen == true then
										Citizen.Wait(200)
										TriggerServerEvent('esx_speedcamera:closeGUI')
									end
									-- FLASHING EFFECT (END)								
								
									TriggerEvent("pNotify:SendNotification", {text = "You've been caught by the speedcamera in a 80 zone!", type = "error", timeout = 5000, layout = "centerLeft"})
									
									if useBilling == true then
										TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(PlayerId()), 'society_police', 'Speedcamera (80KM/H)', 1000) -- Sends a bill from the police
									else
										TriggerServerEvent('esx_speedcamera:PayBill80Zone')
									end
										
									hasBeenCaught = true
									Citizen.Wait(5000) -- This is here to make sure the player won't get fined over and over again by the same camera!
								end
							end
						end
					end
					
					hasBeenCaught = false
				end
            end
        end
    end
end)

-- 80 ZONE (END)

-- 120 ZONE (START)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(Speedcamera120Zone) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Speedcamera120Zone[k].x, Speedcamera120Zone[k].y, Speedcamera120Zone[k].z)

            if dist <= 20.0 then
				local playerPed = GetPlayerPed(-1)
				local playerCar = GetVehiclePedIsIn(playerPed, false)
				local veh = GetVehiclePedIsIn(playerPed)
				local SpeedKM = GetEntitySpeed(playerPed)*3.6
				local maxSpeed = 120.0 -- THIS IS THE MAX SPEED IN KM/H
				
				if SpeedKM > maxSpeed then
					if IsPedInAnyVehicle(playerPed, false) then
						if (GetPedInVehicleSeat(playerCar, -1) == playerPed) then 
							if hasBeenCaught == false then
								if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE2" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE3" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICE4" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICEB" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "POLICET" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "FIRETRUK" then -- BLACKLISTED VEHICLE
								elseif GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "AMBULAN" then -- BLACKLISTED VEHICLE
								-- VEHICLES ABOVE ARE BLACKLISTED
								else
									-- ALERT POLICE (START)
									if alertPolice == true then
										if SpeedKM > alertSpeed then
											local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
											TriggerServerEvent('esx_phone:send', 'police', ' Someone passed the speed camera, above ' .. alertSpeed.. ' KMH', true, {x =x, y =y, z =z})
										end
									end
									-- ALERT POLICE (END)
								
									-- FLASHING EFFECT (START)
									if useFlashingScreen == true then
										TriggerServerEvent('esx_speedcamera:openGUI')
									end
									
									if useCameraSound == true then
										TriggerServerEvent("InteractSound_SV:PlayOnSource", "speedcamera", 0.5)
									end
									
									if useFlashingScreen == true then
										Citizen.Wait(200)
										TriggerServerEvent('esx_speedcamera:closeGUI')
									end
									-- FLASHING EFFECT (END)
								
									TriggerEvent("pNotify:SendNotification", {text = "You've been caught by the speedcamera in a 120 zone!", type = "error", timeout = 5000, layout = "centerLeft"})
									
									if useBilling == true then
										TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(PlayerId()), 'society_police', 'Speedcamera (120KM/H)', 1500) -- Sends a bill from the police
									else
										TriggerServerEvent('esx_speedcamera:PayBill120Zone')
									end
										
									hasBeenCaught = true
									Citizen.Wait(5000) -- This is here to make sure the player won't get fined over and over again by the same camera!
								end
							end
						end
					end
					
					hasBeenCaught = false
				end
            end
        end
    end
end)

-- 120 ZONE (END)

RegisterNetEvent('esx_speedcamera:openGUI')
AddEventHandler('esx_speedcamera:openGUI', function()
    SetNuiFocus(false,false)
    SendNUIMessage({type = 'openSpeedcamera'})
end)   

RegisterNetEvent('esx_speedcamera:closeGUI')
AddEventHandler('esx_speedcamera:closeGUI', function()
    SendNUIMessage({type = 'closeSpeedcamera'})
end)