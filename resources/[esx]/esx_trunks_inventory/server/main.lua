--[[

	This script has nothing to do with ESX-org's vehicle inventory.

]]--
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

trace = true
function dbg(msg)
	if trace then
		Citizen.Trace("\n[esx_vehicletrunk]: " .. tostring(msg) .. " \n")
	end 
end

TrunksInUse = {}

AddEventHandler('onMySQLReady', function()
	MySQL.Async.execute('DELETE FROM vehicle_trunks WHERE junk = 1')
	dbg("Junk trunks deleted")
end)

AddEventHandler('esx:playerDropped', function(source)
  dbg("Player dropped")
  local xPlayer = ESX.GetPlayerFromId(source)
  for i, j in pairs(TrunksInUse) do
	dbg("looping open trunk ".. i .. " > ".. j)
	if j == xPlayer.identifier then
		dbg("Trunk " .. i .." released")
		if Config.EnableDupeProtection then
			MySQL.Async.execute('DELETE FROM vehicle_trunks WHERE plate = @plate', { ['@plate'] = i }, function(r) TrunksInUse[j] = nil dbg("Trunk content deleted") end)
		else
			TrunksInUse[i] = nil
		end
		break
	end
  end
end)

IsVehicleJunk = function(plate)
	local result = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE 1')
	for i = 1, #result, 1 do
		if json.decode(result[i].vehicle).plate == plate then
			dbg("vehicle" .. plate .. " is not junk")
			return 0
		end
	end
	return 1
end

AddEventHandler('esx_vehicletrunk:checkForGlitchedTrunks', function(id)
	for i, j in pairs(TrunksInUse) do
		if j == id then
			TrunksInUse[i] = nil
			dbg("Glitched trunk found")
			break
		end
	end
end)

RegisterServerEvent('esx_vehicletrunk:release')
AddEventHandler('esx_vehicletrunk:release', function(plate, content, exists)
	local junk = IsVehicleJunk(plate)
	local query = 'INSERT INTO vehicle_trunks (`plate`, `content`, `junk`) VALUES (@plate, @content, @junk)'
	if exists then
		query = 'UPDATE vehicle_trunks SET content = @content, junk = @junk WHERE plate = @plate'
	end
	MySQL.Async.execute(query, {['@plate'] = plate, ['@content'] = content, ['@junk'] = junk}, function(rows) if TrunksInUse[plate] ~= nil then TrunksInUse[plate] = nil end end)
	dbg("Trunk released")
end)

RegisterServerEvent('esx_vehicletrunk:giveWeapon')
AddEventHandler('esx_vehicletrunk:giveWeapon', function(weapon)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weapon, Config.Ammo)
end)

RegisterServerEvent('esx_vehicletrunk:removeWeapon')
AddEventHandler('esx_vehicletrunk:removeWeapon', function(weapon)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeWeapon(weapon)
end)

RegisterServerEvent('esx_vehicletrunk:removeItem')
AddEventHandler('esx_vehicletrunk:removeItem', function(item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(item, count)
end)

RegisterServerEvent('esx_vehicletrunk:giveItem')
AddEventHandler('esx_vehicletrunk:giveItem', function(item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem(item, count)
end)


ESX.RegisterServerCallback('esx_vehicletrunk:openTrunk', function(source, cb, plate)
	dbg("Trunk opening for " .. plate)
	if TrunksInUse[plate] ~= nil then
		cb({error = true})
		if Config.CheckForGlitchedTrunks then
			TriggerEvent('esx_vehicletrunk:checkForGlitchedTrunks', ESX.GetPlayerFromId(source).identifier)
		end
		return
	end
	local xPlayer = ESX.GetPlayerFromId(source)
	local plate = plate
	TrunksInUse[plate] = xPlayer.identifier
	MySQL.Async.fetchAll(
	'SELECT * FROM vehicle_trunks WHERE plate = @plate',
	{
		['@plate'] = plate
	},function(result)
		if #result >= 1 then
			cb({content = result[1].content, exists = true})
		else
			cb({content = {}, exists = false})
		end
	end)
end)
