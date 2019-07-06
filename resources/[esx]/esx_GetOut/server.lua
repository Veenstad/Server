RegisterServerEvent('KickPlayer:EmergencyVehicle')
AddEventHandler('KickPlayer:EmergencyVehicle', function()
  DropPlayer(source, "Automatische kick. Je hebt geprobeerd een overheidsvoertuig te stelen, dit is tegen de regels en wordt ook gelogd. Probeer dit dus niet opnieuw want dan volgt er eventueel een ban.")
end)
