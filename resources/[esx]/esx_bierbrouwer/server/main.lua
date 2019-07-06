-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local vine = 1
local jus = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'bier', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'bier', _U('bierron_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'bier', 'bierron', 'society_bier', 'society_bier', 'society_bier', {type = 'private'})
local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "HopFarm" then
			local itemQuantity = xPlayer.getInventoryItem('hop').count
			if itemQuantity >= 1000 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('hop', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_bierronjob:startHarvest')
AddEventHandler('esx_bierronjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('hop_taken'))  
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_bierronjob:stopHarvest')
AddEventHandler('esx_bierronjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementHop" then
			local itemQuantity = xPlayer.getInventoryItem('hop').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_hop'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('hop', 1)
						xPlayer.addInventoryItem('bromans', 1)
						TriggerClientEvent('esx:showNotification', source, _U('bromans'))
						Transform(source, zone)
					end)
				else
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('hop', 1)
						xPlayer.addInventoryItem('mannenliefde', 1)
				
						Transform(source, zone)
					end)
				end
			end
		elseif zone == "TraitementWitbier" then
			local itemQuantity = xPlayer.getInventoryItem('hop').count
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_hop'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('hop', 1)
					xPlayer.addInventoryItem('witbier', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end
	end	
end

RegisterServerEvent('esx_bierronjob:startTransform')
AddEventHandler('esx_bierronjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_bierronjob:stopTransform')
AddEventHandler('esx_bierronjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Je verliet de ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Je kunt je Hop ~g~verwerken')
		PlayersTransforming[_source]=true
		
	end
end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		
		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('mannenliefde').count <= 0 then
				vine = 0
			else
				vine = 1
			end
			
			if xPlayer.getInventoryItem('witbier').count <= 0 then
				jus = 0
			else
				jus = 1
			end

			if xPlayer.getInventoryItem('bromans').count <= 0 then
			bottle = 0
			else
			bottle = 1
			end
		
			if vine == 0 and jus == 0 and bottle == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('mannenliefde').count <= 0 and jus == 0 and bottle == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_vin_sale'))
				vine = 0
				return
			elseif xPlayer.getInventoryItem('witbier').count <= 0 and vine == 0 and bottle == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
				jus = 0
				return
			elseif xPlayer.getInventoryItem('bromans').count <= 0 and jus == 0 and vine == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_vintage_sale'))
				bottle = 0
			return
			else
				if (jus == 1) then
					SetTimeout(1100, function()
						local money = math.random(8,14)
						xPlayer.removeInventoryItem('witbier', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bier', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				elseif (vine == 1) then
					SetTimeout(1100, function()
						local money = math.random(10,15)
						xPlayer.removeInventoryItem('mannenliefde', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bier', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
					elseif (bottle == 1) then
					SetTimeout(1100, function()
						local money = math.random(100,150)
						xPlayer.removeInventoryItem('bromans', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bier', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				end
			end
		end
	end
end

RegisterServerEvent('esx_bierronjob:startSell')
AddEventHandler('esx_bierronjob:startSell', function(zone)

	local _source = source
	
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'Er is iets fout gegaan, probeer opnieuw. ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_bierronjob:stopSell')
AddEventHandler('esx_bierronjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Je verlaat de ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Je kunt ~g~verkopen')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_bierronjob:getStockItem')
AddEventHandler('esx_bierronjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bier', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_bierronjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bier', function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_bierronjob:putStockItems')
AddEventHandler('esx_bierronjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bier', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

	end)
end)

ESX.RegisterServerCallback('esx_bierronjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)


ESX.RegisterUsableItem('witbier', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('witbier', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 20000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 120000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_jus'))

end)

ESX.RegisterUsableItem('bromans', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bromans', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bromans'))

end)

ESX.RegisterUsableItem('mannenliefde', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mannenliefde', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 20000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 120000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hop'))

end)
