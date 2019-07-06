Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(495901385989029908)

        --Here you will have to put the image name.
		SetDiscordRichPresenceAsset('logo_name')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
		
		RegisterCommand("discord", function(source, args, rawCommandString)
		   
		end, false)
	end
end)

function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', 'Veenstad Roleplay | discord.io/veenstad')
end)
