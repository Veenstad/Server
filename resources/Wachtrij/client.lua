local connected = false

AddEventHandler("playerSpawned", function()
	if not connected then
		TriggerServerEvent("rocademption:playerConnected")
		connected = true
	end
end)

RegisterNetEvent('WachtRij')
AddEventHandler('WachtRij', function()
	TriggerEvent("chatMessage", "Wachtrij: ", {150, 50, 180}, #wachtrij)
end)