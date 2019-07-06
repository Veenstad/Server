AddEventHandler('onServerResourceStart', function (resource)
    if resource == "mysql-async-2" then
        exports['mysql-async-2']:mysql_configure()

        Citizen.CreateThread(function ()
            Citizen.Wait(0)
            TriggerEvent('onMySQLReady')
        end)
    end
end)


