-----[ CHANGE THIS ]-------------------------------------------
local minutesBetweenAnnouncements = 5
local prefix = "^1[TIP]^0"
local suffix = "^0."
local messages = {
    '^3Ben je al lid van onze discord? Discord.io/veenstad',
    '^3Zie je fail rp? Meld het de staff via /report',
    '^3Wij adviseren altijd om je gameplay op te nemen, bijvoorbeeld via Plays.tv',
    '^3Vergeet je sleutels niet uit je auto te pakken met U',
    '^3Lees onze regels op de discord. Discord.io/veenstad',
	'^3Stream je je gameplay? Meld dit dan op discord zodat je de streamrol kunt ontvangen.',
    '^3Gebruik de OOC chat alleen voor relevante roleplay vragen. Voor IC en IG info gebruik /twt. Misbruik wordt bestraft!',
	'^3Zoek je een baan bij de overheid? Kijk dan op Discord voor de sollicitatieformulieren!',
	'^3klachten over de roleplay? Doe dan /report, en/of stuur je filmpje in roleplay-report op discord.',
	'^3Blijf altijd in character, je mag hier alleen van afwijken als staff je iets vraagt.'
}
local ignorelist = {
}
---------------------------------------------------------------

--  Extra info:
--  You can use ^0-^9 in your messages to change text color.
--  You only need to change the messages above,
--  the code below shouldn't be touched.
--  The prefix string will be placed before every message.
--  The suffix string will be placed after every message.
--  You can set the suffix/prefix to "" to disable them.
--  Add player identifiers (eg: ip:127.0.0.1 or steam:123456)
--  to the ignorelist. Anyone on that ignore list will not
--  receive the automessages. This could be useful if you want
--  to send help messages to new players, but your staff won't
--  get annoyed by the spam. Leave the ignore list empty to
--  always announce to everyone.

---------------------------------------------------------------














-------[ CODE, NO NEED TO TOUCH THIS PART! ]---------
local playerSpawned = false
local playerIsOnIgnoreList = false
local timeout = minutesBetweenAnnouncements * 60000
local playerIdentifiers = {}
local messagesEnabled = true
local count = 0
for _ in pairs(messages) do count = count + 1 end

RegisterNetEvent('va:setPlayerIdentifiers')
AddEventHandler('va:setPlayerIdentifiers', function(playerIds)
    if playerIds == nil then
        playerIdentifiers = {"null", "null"}
    else
        playerIdentifiers = playerIds
    end
end)

RegisterNetEvent('va:toggleAutoMessage')
AddEventHandler('va:toggleAutoMessage', function(source)
    if messagesEnabled then
        messagesEnabled = false
        TriggerEvent('chatMessage', '', { 255, 255, 255 }, "^3Automessages are now ^1disabled^3.")
    else
        messagesEnabled = true
        TriggerEvent('chatMessage', '', { 255, 255, 255 }, "^3Automessages are now ^2enabled^3.")
    end
end)

function checkForPlayerOnIgnoreList()
    Citizen.CreateThread(function()
        Citizen.Wait(2000)
        for i, id in pairs(playerIdentifiers) do
            for x, ignoreItem in pairs(ignorelist) do
                if id == ignoreItem then
                    playerIsOnIgnoreList = true
                end
            end
        end
    end)
end

function sendMessages()
    local i = 1
    Citizen.CreateThread(function()
        Citizen.Wait(2000)
        if (playerIsOnIgnoreList == false) then
            while true do
                if (messagesEnabled == true) then
                    TriggerEvent('chatMessage', '', { 255, 255, 255 }, prefix .. " " .. messages[i] .. suffix)
                    i = i + 1
                    if (i == (count + 1)) then
                        i = 1
                    end
                else
                    print('automessages is disabled')
                end
                Citizen.Wait(timeout)
            end
        else
            print('Player on ignore list.')
        end
    end)
end

AddEventHandler('playerSpawned', function()
    if playerSpawned == false then
        Citizen.CreateThread(function()
            Citizen.Wait(2000)
            TriggerServerEvent('va:getPlayerIdentifiers')
            Citizen.Wait(2000)
            checkForPlayerOnIgnoreList()
            Citizen.Wait(2000)
            sendMessages()
            playerSpawned = true
        end)
    end
end)
-----------------------------------------------------