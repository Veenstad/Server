local text1 = "^1Automatische server restart in 15 minuten!"
local text2 = "^1Automatische server restart in 10 minuten!"
local text3 = "^1Automatische server restart in 5 minuten!"
local text4 = "^1Server gaat restarten, NU uitloggen om je spullen veilig op te slaan!"

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '17:46:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text1)
	elseif date_local == '17:51:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text2)
	elseif date_local == '17:56:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text3)
	elseif date_local == '17:59:10' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)
	elseif date_local == '17:59:20' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)
	elseif date_local == '17:59:30' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)
	elseif date_local == '17:59:40' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)
	elseif date_local == '17:59:50' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)
	elseif date_local == '18:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text4)

	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()
