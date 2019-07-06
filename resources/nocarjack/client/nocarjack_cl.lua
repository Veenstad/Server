ESX              = nil
local PlayerData = {}
local closestZone = 1
local notifIn = false
local notifOut = false

local zones = {
	{ ['x'] = -48.34, ['y'] = -1685.38, ['z'] = 29.47},
	{ ['x'] = 492.56, ['y'] = -1316.44, ['z'] = 29.26},
}

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDistance = 100000
		for i = 1, #zones, 1 do
			dist = Vdist(zones[i].x, zones[i].y, zones[i].z, x, y, z)
			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end
		Citizen.Wait(15000)
	end
end)

Citizen.CreateThread(function()
local plate = GetVehicleNumberPlateText(veh)
local veh = GetVehiclePedIsTryingToEnter(PlayerPedId())
	
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(zones[closestZone].x, zones[closestZone].y, zones[closestZone].z, x, y, z)
	
		if dist <= 15.0 then  ------------------------------------------------------------------------------ Here you can change the RADIUS of the Safe Zone. Remember, whatever you put here will DOUBLE because 
			if not notifIn then																			  -- it is a sphere. So 50 will actually result in a diameter of 100. I assume it is meters. No clue to be honest.
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Dit is een sleutel vriendelijke zone.</b>",
					type = "success",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
				notifIn = true
				notifOut = false
			end
		else
			if not notifOut then
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Je hebt de sleutel vriendelijke zone verlaten.</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
				notifOut = true
				notifIn = false
			end
		end
	end
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function isPlayerJobPolice()
	for k,v in pairs(ESX.GetPlayerData()) do
		for k,v in pairs(k) do
			print(v)
		end
	end
end

Citizen.CreateThread(function()
	while true do
		-- gets if player is entering vehicle
		if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId())) then
			-- gets vehicle player is trying to enter and its lock status
			local xPlayer = ESX.GetPlayerData()
			local veh = GetVehiclePedIsTryingToEnter(PlayerPedId())
			local lock = GetVehicleDoorLockStatus(veh)
				
				-- Get the conductor door angle, open if value > 0.0
				local doorAngle = GetVehicleDoorAngleRatio(veh, 0)
			
				-- normalizes chance
				if cfg.chance > 100 then
					cfg.chance = 100
				elseif cfg.chance < 0 then
					cfg.chance = 0
				end
			
				-- check if got lucky
				local lucky = (math.random(100) < cfg.chance)
			
				-- Set lucky if conductor door is open
				if doorAngle > 0.0 then
					lucky = true
				end
			
				-- check if vehicle is in whitelisted
				local whitelisted = false
				for k,model in pairs(cfg.whitelisted) do
					if IsVehicleModel(veh, GetHashKey(model)) then
						whitelisted = true
					end
				end

				local blacklist = false
				for k,model in pairs(cfg.blacklist) do
					if IsVehicleModel(veh, GetHashKey(model)) then
						blacklist = true
					end
				end

				-- gets ped that is driving the vehicle
				local pedd = GetPedInVehicleSeat(veh, -1)
				local plate = GetVehicleNumberPlateText(veh)
				-- lock doors if not lucky or whitelisted
				if (lock == 7 or pedd) then
					if notifIn then
						TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 1, plate})
					end
					if has_value(cfg.job_whitelist, xPlayer.job.name) or whitelisted then
						TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 1, plate})
					else
						if not lucky or blacklist then
							TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 2, plate})
						else
							TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 1, plate})
						end
					end
				end
			end
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_nocarjack:setVehicleDoors')
AddEventHandler('esx_nocarjack:setVehicleDoors', function(veh, doors)
	SetVehicleDoorsLocked(veh, doors)
end)