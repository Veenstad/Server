--[[

  Made with love by Cheleber, you can join my RP Server here: www.grandtheftlusitan.com
  Just add your admins steam id to server and client!

--]]

--- ADD YOUR STEAM ID OR LICENSE FROM YOUR ADMINS!
local admins = {
    'steam:1100001057e3b2f',
	'steam:11000011a2aeb11',
	'steam:11000010e4c6ff3',
	'steam:11000010c1328b9',
	'steam:110000100f3f5b4',
    --'license:1234975143578921327',
}



function isAdmin(player)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end



AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringsplit(msg, " ")
	if cm[1] == "/noid" then
		CancelEvent()
		if isAdmin(source) then
		    TriggerClientEvent("dontshowid", -1, source)
		    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "ID's OFF!")
		end
	end	
	if cm[1] == "/seeid" then
		CancelEvent()
		if isAdmin(source) then
		    TriggerClientEvent("showid", -1, source)
		    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "ID's ON!")
		end
	end	
end)


RegisterServerEvent('checkadmin')
AddEventHandler('checkadmin', function()
	local id = source
	if isAdmin(id) then
		TriggerClientEvent("setadmin", source)
	end
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
