AddEventHandler("discord:send", function(source, name, message)
	AddEventHandler("discord:send", function()
	TriggerClientEvent("chatMessage", source, "DISCORD:", {204, 51, 255}, "discord.io/veenstad"))
end)