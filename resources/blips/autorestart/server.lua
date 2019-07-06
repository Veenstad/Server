local text1 = "^1Automatische server restart in 15 minuten!"
local text2 = "^1Automatische server restart in 10 minuten!"
local text3 = "^1Automatische server restart in 5 minuten!"
local text4 = "^1Server gaat restarten, NU uitloggen om je spullen veilig op te slaan!"
local text5 = "^1Ben je al aangemeld op onze discord? Type /Discord voor meer info!"
local text6 = "^1Heb je opmerking en/of klachten over de roleplay? Stuur dan je melding via /Report! Gratis tip van de staff: neem je gameplay op!"

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '17:46:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '00:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '00:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '01:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '01:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '02:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '02:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '03:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '03:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '04:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '04:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '05:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '05:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '06:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '06:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '07:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '07:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '08:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '08:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '09:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '09:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '10:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '10:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '11:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '11:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '12:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '12:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '13:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '13:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '14:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '14:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '15:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '15:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '16:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '16:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '17:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '17:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '18:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '18:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '19:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '19:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '20:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '20:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '21:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '21:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '22:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '22:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
	elseif date_local == '23:00:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text6)
	elseif date_local == '23:30:00' then
		TriggerClientEvent('chatMessage', -1, "BOT", {255, 0, 0}, text5)
		

	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()
