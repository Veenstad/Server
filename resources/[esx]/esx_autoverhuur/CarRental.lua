rentalTimer = 2.5 --How often a player should be charged in Minutes
isBeingCharged = false
autoChargeAmount = 100 -- How much a player should be charged each time
ESX = nil
devMode = false
damageInsurance = false
damageCharge = false
canBeCharged = false
--handCuffed = false
arrestCheckAlreadyRan = false
isInPrison = false
isBlipCreated = false


Citizen.CreateThread(function()
	local items = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" }
	local currentItemIndex = 1
	local selectedItemIndex = 1
	local checkBox = true
	
	pickupStation = { --Set the car rental locaitons here
		{x = -902.26593017578, y = -2327.3703613281, z = 5.7090311050415},		--Airport car rental place
		{x = -487.75, y = -615.42, z = 30.17},  --startpunt
		{x = 1483.46, y = 3751.94, z = 32.77},  --Sandyshores
		{x = -1.24, y = 6341.57, z = 30.23},  --Blanecounty
		{x = 2006.89, y = 2673.89, z = 45.73}

	}
	
	dropoffStation = { --Set the car dropoff locations here
		{x = -903.59967041016, y = -2310.703125, z = 5.7090353965759}, --Airport car rental place
		{x = 241.49575805664, y = -756.84222412109, z = 29.82596206665}, -- PV At Legion SQ
		{x = -914.16, y = -160.85, z = 40.88}, -- PV at Boulevard Del Perro
		{x = -1179.45, y = -731.2, z = 19.5}, -- PV at North Rockford Dr
		{x = -791.74, y = 332.14, z = 84.7}, -- PV at South Mo Milton Dr
		{x = 1957.42, y = 2786.17, z = 48.23}, -- PV at Jail
		{x = 394.15, y = -1660.44, z = 26.31}, -- PV at Innocence Blvd
		{x = 1459.65, y = 3735.7, z = 32.51}, -- PV at Marina Dr
		{x = 19.39, y = 6334.73, z = 30.24}, -- PV at Great Ocean Hwy
		{x = -485.69, y = -596.34, z = 30.24}, -- PV at startpunt
		{x = -357.69, y = -733.21, z = 32.97}, -- PV at garagecentrum
		{x = 497.10, y = -1335.61, z = 28.32}, -- PV at inbeslagname
		
	}	
	
    while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
	
	WarMenu.CreateMenu('carRental', 'Veenstad autoverhuur')
	WarMenu.CreateSubMenu('closeMenu', 'carRental', 'Weet je het zeker?')
	WarMenu.CreateSubMenu('carPicker', 'carRental', 'Kies een auto | 1 dag is ' .. rentalTimer ..  ' minuten')
	WarMenu.CreateSubMenu('carInsurance', 'carRental', 'Wil je een verzekering afsluiten?')
	WarMenu.CreateMenu('carReturn', 'Veenstad Autoverhuur')
	WarMenu.SetSubTitle('carReturn', 'Wil je de auto terugbrengen?') 
	WarMenu.CreateMenu('arrestCheck', 'Car Rental')
	WarMenu.SetSubTitle('arrestCheck', 'Bent u momenteel gearresteerd?')
	
	while true do
		--Main menu
		if WarMenu.IsMenuOpened('carRental') then
			if WarMenu.MenuButton('Huur een auto', 'carPicker') then
			elseif WarMenu.MenuButton('Autoverzekering', 'carInsurance') then
			--elseif WarMenu.Button('DEV: Return car') then
			--	returnVehicle()
			--elseif WarMenu.Button('DEV: Delete car') then
			--	local currentVehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
			--	SetEntityAsMissionEntity(currentVehicle, true, true)
			--	DeleteVehicle(currentVehicle)
			--elseif WarMenu.Button('DEV: Add 200k') then		
			--	TriggerServerEvent("devAddPlayer", 200000)
            --elseif WarMenu.CheckBox('DEV: Dev Mode', checkbox, function(checked)
            --        checkbox = checked
			--		devMode = checked
            --end) then
			--elseif WarMenu.Button('DEV: Spawn intruder') then
			--	SpawnVehicle("intruder")
			--	Citizen.Wait(100)
			--	canBeCharged = false
            --elseif WarMenu.CheckBox('DEV: Handcuffed', checkbox2, function(checked2)
            --        checkbox2 = checked2
			--		handCuffed = not checked2
            --end) then
			--elseif WarMenu.Button('DEV: TP Prison') then
			--	SetEntityCoords(GetPlayerPed(-1), 1677.233, 2658.618, 45.216)
			--elseif WarMenu.Button('DEV: TP Rental') then
			--	SetEntityCoords(GetPlayerPed(-1), -902.26593017578, -2327.3703613281, 5.7090311050415)
			--elseif WarMenu.MenuButton('Exit', 'closeMenu') then
			end
			WarMenu.SetSubTitle('carRental', 'Autoverhuur | Autoverzekering')
			
			WarMenu.Display()
			
		--Close menu
		elseif WarMenu.IsMenuOpened('closeMenu') then
			if WarMenu.Button('Yes') then
				WarMenu.CloseMenu()
			elseif WarMenu.MenuButton('No', 'carRental') then
			end
			
			WarMenu.Display()
		
		
		elseif WarMenu.IsMenuOpened('carPicker') then
			if WarMenu.Button('Scooter | Aanbetaling: €100 | Per dag: €100') then
				SpawnVehicle("faggio")
				TriggerServerEvent("chargePlayer", 100)
				ESX.ShowNotification("Je hebt €100 aanbetaald.")
				autoChargeAmount = 100
				isBeingCharged = true
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Panto | Aanbetaling: €200 | Per dag: €150') then
				SpawnVehicle("panto")
				TriggerServerEvent("chargePlayer", 200)
				ESX.ShowNotification("Je hebt €200 aanbetaald.")
				autoChargeAmount = 150
				isBeingCharged = true
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Primo | Aanbetaling: €300 | Per dag: €200') then
				SpawnVehicle("primo")
				TriggerServerEvent("chargePlayer", 300)
				ESX.ShowNotification("Je hebt €300 aanbetaald.")
				autoChargeAmount = 200
				isBeingCharged = true
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Dubsta | Aanbetaling: €400 | Per dag: €250') then
				SpawnVehicle("dubsta")
				TriggerServerEvent("chargePlayer", 400)
				ESX.ShowNotification("Je hebt €400 aanbetaald.")
				autoChargeAmount = 250
				isBeingCharged = true
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Busje | Aanbetaling: €500 | Per dag: €300') then
				SpawnVehicle("rentalbus")
				TriggerServerEvent("chargePlayer", 500)
				ESX.ShowNotification("Je hebt €500 aanbetaald.")
				autoChargeAmount = 300
				isBeingCharged = true
				WarMenu.CloseMenu()
			elseif WarMenu.MenuButton('Terug', 'carRental') then
			end
			
			WarMenu.Display()
		
		--Return car menu
		elseif WarMenu.IsMenuOpened('carReturn') then
			if WarMenu.Button('Ja') then
				returnVehicle()
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Nee') then
				WarMenu.CloseMenu()
			end	
			
			WarMenu.Display()

		--Car insurance menu
		elseif WarMenu.IsMenuOpened('carInsurance') then
			if WarMenu.Button('Ja | €750') then
				TriggerServerEvent("chargePlayer", 750)
				damageInsurance = true
				ESX.ShowNotification("Bedankt voor het aanschaffen van een schadeverzekering")
				WarMenu.CloseMenu()
			elseif WarMenu.MenuButton('Nee', 'carRental') then
			end
			
			WarMenu.Display()
		
		--Arrest check menu
		elseif WarMenu.IsMenuOpened('arrestCheck') then
			if WarMenu.Button('Ja') then
				isBeingCharged = false
				damageInsurance = false
				damageCharge = false
				arrestCheckAlreadyRan = true
				ESX.ShowNotification('We hebben uw huuraanvraag geannuleerd.')
				WarMenu.CloseMenu()
			elseif WarMenu.Button('Nee') then
				WarMenu.CloseMenu()
				arrestCheckAlreadyRan = true
			end
			
			WarMenu.Display()
			
		--elseif IsControlJustReleased(0, 48) then
		--	WarMenu.OpenMenu('carRental')
		--end
		end
		


		
		Citizen.Wait(0)
	end
	
	
end)
--Draw map blips
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not isBlipCreated then 
			for _, v in pairs(pickupStation) do
				pickupBlip = AddBlipForCoord(v.x, v.y, v.z)
      			SetBlipSprite(pickupBlip, 85)
      			SetBlipDisplay(pickupBlip, 4)
      			SetBlipScale(pickupBlip, 1.0)
      			SetBlipColour(pickupBlip, 2)
      			SetBlipAsShortRange(pickupBlip, true)
	  			BeginTextCommandSetBlipName("STRING")
      			AddTextComponentString("Veenstad Autoverhuur")
      			EndTextCommandSetBlipName(pickupBlip)
			end
			for _, v in pairs(dropoffStation) do
				pickupBlip = AddBlipForCoord(v.x, v.y, v.z)
      			SetBlipSprite(pickupBlip, 85)
      			SetBlipDisplay(pickupBlip, 4)
      			SetBlipScale(pickupBlip, 0.60)
      			SetBlipColour(pickupBlip, 1)
      			SetBlipAsShortRange(pickupBlip, true)
	  			BeginTextCommandSetBlipName("STRING")
      			AddTextComponentString("Autoverhuur inleverpunt")
      			EndTextCommandSetBlipName(pickupBlip)
			end
			isBlipCreated = true
		else
		end
	end
end)

--Draw markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		for _, v in pairs(pickupStation) do
			DrawMarker(1, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.75, 1.75, 1.75, 0, 204, 0, 100, false, true, 2, false, false, false, false)
			--{title="Car Rental", colour=2, id=85, x=v.x, y=v.y, z=v.z, scale=0.75}
		end
		for _, v in pairs(dropoffStation) do
			DrawMarker(1, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.75, 3.75, 3.75, 255, 0, 0, 100, false, true, 2, false, false, false, false)
		end
	end
end)

--Check to see if player is in marker
Citizen.CreateThread(function()
	while true do
		local HasAlreadyEnteredMarker = false
		Citizen.Wait(0)
		
		local coords = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker = false
		local isInReturnMarker = false
		
		for _, v in pairs(pickupStation) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 1.75) then
				isInMarker = true
			end
		end
		
		for _, v in pairs(dropoffStation) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < 2.75) then
				isInReturnMarker = true
			end
		end
		
		if (isInReturnMarker and not WarMenu.IsMenuOpened('carReturn')) then
			local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(GetPlayerPed(-1), false))
			if plate == "HUURAUTO" then
				WarMenu.OpenMenu('carReturn')
			end
		end
		
		if (not isInReturnMarker and not devMode and not isInMarker) then
			Citizen.Wait(100)
			WarMenu.CloseMenu()
		end
		
		if (isInMarker and not WarMenu.IsMenuOpened('carRental') and not WarMenu.IsMenuOpened('carPicker') and not WarMenu.IsMenuOpened('closeMenu') and not WarMenu.IsMenuOpened('carInsurance') and not WarMenu.IsMenuOpened('arrestCheck')) then
			WarMenu.OpenMenu('carRental')
		end
		
		if (not isInMarker and not devMode and not isInReturnMarker) then
			Citizen.Wait(100)
			WarMenu.CloseMenu()
		end
	end
end)

--Charge player if the car gets damaged
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local currentVehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		local plate = GetVehicleNumberPlateText(currentVehicle)
		if plate == "HUURAUTO" then
			if (IsVehicleDamaged(currentVehicle) and damageInsurance == false and damageCharge == false and canBeCharged == true) then
				damageCharge = true
				TriggerServerEvent("chargePlayer", 1500)
				ESX.ShowNotification("Er is €1500 euro schade in rekening gebracht. Een verzekering kan u hiertegen beschermen.")
			elseif (damageInsurance == true and IsVehicleDamaged(currentVehicle) and damageCharge == false) then
				ESX.ShowNotification("U heeft schade gereden. Gelukkig bent u verzekerd, er wordt niets afgeschreven.")
				damageCharge = true
			end
		end
	end
end)
			

--Auto charge player every 5 minutes
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(rentalTimer*60*1000)
		if isBeingCharged == true then
			TriggerServerEvent("chargePlayer", autoChargeAmount)
			ESX.ShowNotification("U heeft u dagelijkse huur van" .. autoChargeAmount .. " betaald.")
		end
	end
end)

--Spawn vehicle function
function SpawnVehicle(request)
			local hash = GetHashKey(request)

			RequestModel(hash)

			while not HasModelLoaded(hash) do
				RequestModel(hash)
				Citizen.Wait(0)
			end

			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
			local vehicle = CreateVehicle(hash, x + 2, y + 2, z + 1, 0.0, true, false)
			SetVehicleDoorsLocked(vehicle, 1)
			SetVehicleNumberPlateText(vehicle, "HUURAUTO")
			canBeCharged = true
			arrestCheckAlreadyRan = false
			isInPrison = false
			TaskWarpPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
end

--Return vehicle script
function returnVehicle()
			isBeingCharged = false
			damageInsurance = false
			damageCharge = false
			ESX.ShowNotification("Bedankt voor het terugbrengen van de huurauto. Komt u gerust nog eens terug!")
			local currentVehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
			SetEntityAsMissionEntity(currentVehicle, true, true)
			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
			SetEntityCoords(GetPlayerPed(-1), x - 2, y, z)
			DeleteVehicle(currentVehicle)
end


--Prison check script
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		if(GetDistanceBetweenCoords(coords, 1677.2429199219, 2658.6179199219, 44.560031890869, true) < 2.75 and isInPrison == false) then
			isInPrison = true
			ESX.ShowNotification("Onze gegevens zeggen dat u op dit moment bent gearresteerd.")
			ESX.ShowNotification("We hebben de huur geannuleerd")
			isBeingCharged = false
			damageInsurance = false
			damageCharge = false
		end
	end
end)

						