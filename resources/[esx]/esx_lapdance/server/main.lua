ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_lapdance:Buy')
AddEventHandler('esx_lapdance:Buy', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 500) then
	xPlayer.removeMoney(500)
	TriggerClientEvent('esx_lapdance:lapdance', _source)
	sendNotification(_source, 'Je hebt een lapdance gekocht voor 500€', 'success', 2500)
	else
	sendNotification(_source, 'Je hebt niet genoeg geld. Een lapdance kost 500€', 'error', 2500)
	end

end)

--notification
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "lmao",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end