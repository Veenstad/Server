function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group'],
			question = identity['question_rp']
		}
	else
		return nil
	end
end

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerClientEvent("pNotify:SetQueueMax", -1, rptoets, 5)

--[[ ***** EVENTS GUI ***** ]]
RegisterServerEvent("antirpquestion:kick")
AddEventHandler("antirpquestion:kick", function()
	local naam = ("Logboekactie van " ..GetPlayerName(source))
	local gnaam = GetPlayerName(source)
	local tstamp2 = os.date("*t", os.time())
	local message = ("RP Toets [" ..os.date(tstamp2.year .. "-" .. tstamp2.month .. "-" .. tstamp2.day .. " " .. tstamp2.hour .. ":" .. tstamp2.min .. ":" .. tstamp2.sec).. "] " ..gnaam.. " heeft de roleplay toets **NIET** behaald")
	DropPlayer(source, "Helaas heb je de test niet gehaald. Lees de regels goed door en kom dan snel terug. Discord Invite Link: Discord.io/veenstad")
end)

RegisterServerEvent("antirpquestion:success")
AddEventHandler("antirpquestion:success", function()
	local identifier = GetPlayerIdentifiers(source)[1]
	local naam1 = getIdentity(source)
	
	TriggerEvent("es:getPlayerFromId", source, function(player)
		local gehaald = 'true'
		MySQL.Sync.execute('UPDATE users SET question_rp=@gehaald WHERE identifier = @username', {['@username'] = identifier, ['@gehaald'] = gehaald})
	end)
	
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.addMoney(1000)
	
	local thePlayer = GetPlayerName(source)
	local naam = ("Logboekactie van " ..GetPlayerName(source))
	local gnaam = GetPlayerName(source)
	local tstamp2 = os.date("*t", os.time())
	local message = ("RP Toets [" ..os.date(tstamp2.year .. "-" .. tstamp2.month .. "-" .. tstamp2.day .. " " .. tstamp2.hour .. ":" .. tstamp2.min .. ":" .. tstamp2.sec).. "] " ..gnaam.. " heeft de roleplay toets behaald")
	
	PerformHttpRequest('https://discordapp.com/api/webhooks/', function(err, text, headers) end, 'POST', json.encode({username = naam, content = message}), { ['Content-Type'] = 'application/json' })
	
	TriggerClientEvent("pNotify:SendNotification", source, {
		text = "<center><b style='color:#FF4343'>Veenstad RP</b> <br/><b style='color:yellow'> </br> Gefeliciteerd! Je hebt de toets gehaald<br/> <br/> Welkom in Veenstad! Veel plezier</b><br /></center>",
		type = "alert",
		queue = "rptoets",
		timeout = 10000,
		layout = "centerLeft",
		theme = "gta",
	})
	
	TriggerClientEvent("pNotify:SendNotification", -1, {
		text = "<center><b style='color:#FF4343'>Veenstad RP</b> <br/><b style='color:yellow'> </br> "..thePlayer.. " is geslaagd voor de Roleplay test! <br/> <br/> Welkom in Veenstad!</b><br /></center>",
		type = "alert",
		queue = "rptoets",
		timeout = 10000,
		layout = "centerLeft",
		theme = "gta",
	})
	
	if naam1.firstname == '' then
		TriggerClientEvent('esx_identity:identityCheck', source, false)
		TriggerClientEvent('esx_identity:showRegisterIdentity', source)
	end
end)

--[[ ***** SPAWN ***** ]]
RegisterServerEvent("antirpquestion:didQuestion")
AddEventHandler("antirpquestion:didQuestion", function()
	local speler = source
	local naam = getIdentity(speler)
	TriggerEvent("es:getPlayerFromId", speler, function(player)
		if(naam.question == 'false') then
			TriggerClientEvent('antirpquestion:notMade',speler)
		end
	end)
end)


