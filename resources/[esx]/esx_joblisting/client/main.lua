local Keys = {
	["ESC"] = 322, ["BACKSPACE"] = 177, ["E"] = 38, ["ENTER"] = 18,	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173
}

local menuIsShowed 				 = false
local hasAlreadyEnteredMarker 	 = false
local lastZone 					 = nil
local isInJoblistingMarker 		 = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function ShowJobListingMenu()
	ESX.TriggerServerCallback('esx_joblisting:getJobsList', function(data)
		local elements = {}

		for i = 1, #data, 1 do
			table.insert(elements, {
				label = data[i].label,
				job   = data[i].job
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'joblisting', {
			title    = _U('job_center'),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			TriggerServerEvent('esx_joblisting:setJob', data.current.job)
			ESX.ShowNotification(_U('new_job'))
			menu.close()
		end, function(data, menu)
			menu.close()
		end)

	end)
end

AddEventHandler('esx_joblisting:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
end)

-- Display markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local coords = GetEntityCoords(PlayerPedId())
		for i=1, #Config.Zones, 1 do
			if GetDistanceBetweenCoords(coords, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, true) < Config.DrawDistance then
				DrawMarker(Config.MarkerType, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		local coords, currentZone = GetEntityCoords(PlayerPedId()), nil

		for i=1, #Config.Zones, 1 do
			if GetDistanceBetweenCoords(coords, Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z, true) < (Config.ZoneSize.x / 2) then
				isInJoblistingMarker  = true
				ESX.ShowHelpNotification(_U('access_job_center'))
			else
				isInJoblistingMarker = false
			end
		end

		if isInJoblistingMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
		end

		if not isInJoblistingMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_joblisting:hasExitedMarker')
		end
	end
end)

-- Create blips
Citizen.CreateThread(function()
	for i=1, #Config.Zones, 1 do
		local blip = AddBlipForCoord(Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z)

		SetBlipSprite (blip, 407)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 1.2)
		SetBlipColour (blip, 27)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('job_center'))
		EndTextCommandSetBlipName(blip)
	end
end)

-- Menu Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)

		if IsControlJustReleased(0, Keys['E']) and isInJoblistingMarker and not menuIsShowed then
			ESX.UI.Menu.CloseAll()
			ShowJobListingMenu()
		end
	end
end)
