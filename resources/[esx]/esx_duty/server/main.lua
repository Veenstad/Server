ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("klok", function(source, args, rawCommand);    
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    
    if job == 'police' or job == 'ambulance' or job == 'mecano' or job == 'taxi' then
        xPlayer.setJob('off' ..job, grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~r~uitgeklokt~s~.")
    elseif job == 'offpolice' then
        xPlayer.setJob('police', grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~g~ingeklokt~s~.")
    elseif job == 'offambulance' then
        xPlayer.setJob('ambulance', grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~g~ingeklokt~s~.")
    elseif job == 'offmecano' then
        xPlayer.setJob('mecano', grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~g~ingeklokt~s~.")
    elseif job == 'offtaxi' then
        xPlayer.setJob('taxi', grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~g~ingeklokt~s~.")
    else
        TriggerClientEvent('esx:showNotification', _source, "Je kan met deze job ~r~niet~s~ klokken.")
    end
   end,false)


RegisterServerEvent('duty:onoff')
AddEventHandler('duty:onoff', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    
    if job == 'police' or job == 'ambulance' or job == 'mecano' or job == 'taxi' then
        xPlayer.setJob('off' ..job, grade)
        TriggerClientEvent('esx:showNotification', _source, _U('offduty'))
    elseif job == 'offpolice' then
        xPlayer.setJob('police', grade)
        TriggerClientEvent('esx:showNotification', _source, _U('onduty'))
    elseif job == 'offambulance' then
        xPlayer.setJob('ambulance', grade)
        TriggerClientEvent('esx:showNotification', _source, _U('onduty'))
    elseif job == 'offmecano' then
        xPlayer.setJob('mecano', grade)
        TriggerClientEvent('esx:showNotification', _source, _U('onduty'))
    elseif job == 'offtaxi' then
        xPlayer.setJob('taxi', grade)
        TriggerClientEvent('esx:showNotification', _source, "Je bent ~g~ingeklokt~s~.")
    else
        TriggerClientEvent('esx:showNotification', _source, "Je kan met deze job ~r~niet~s~ klokken.")
    end

end)