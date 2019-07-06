RegisterNetEvent("safe-zone:refresh")
AddEventHandler("safe-zone:refresh", function()
    TriggerClientEvent("esx-qalle-sellvehicles:refreshVehicles", -1)
end)