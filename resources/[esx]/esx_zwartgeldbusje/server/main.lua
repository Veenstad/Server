ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

 RegisterServerEvent('esx_godirtyjob:pay')
  AddEventHandler('esx_godirtyjob:pay', function(amount)
 	local _source = source
 	local xPlayer = ESX.GetPlayerFromId(_source)
 	if xPlayer ~= nil and amount > 1 then
 		local money = xPlayer.getAccount('black_money').money
 		if money > amount or money == amount then
 			xPlayer.addMoney(tonumber(amount)) -- Add Clean Money
 			xPlayer.removeAccountMoney('black_money', amount) -- Removes Dirty Money
 			TriggerClientEvent('esx:showNotification', _source, "Je witgewassen bedrag is: €" ..amount)
 		else
 			TriggerClientEvent('esx:showNotification', _source, "Je hebt geen zwartgeld...")
 		end
 		if money < amount then
 			local money = xPlayer.getAccount('black_money').money
 			xPlayer.addMoney(tonumber(money)) -- Add Clean Money
 			xPlayer.removeAccountMoney('black_money', money) -- Removes Dirty Money
 			TriggerClientEvent('esx:showNotification', _source, "Je hebt al je geld witgewassen: €" ..money)
 			retourcamion_oui()
 			isJobTrucker = false
 		end
 	end
 end)

--------------------------------------------------------------------------
-----------------MODIFIED BY  K R I Z F R O S T---------------------------
--------------------------------------------------------------------------
----- MONEY LAUNDERING SCRIPT RELEASED CREDITS TO ORIGINAL CREATOR--------
----- OF ESX_POSTALJOB RE WORKED AND MODIFIED BY KRIZFROST ---------------
-------------------------------------------------------------------------- 