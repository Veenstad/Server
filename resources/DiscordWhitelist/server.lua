----------------------------------------
--- Discord Whitelist, Made by FAXES ---
----------------------------------------

--- Config ---
notWhitelisted = "Je bent geen lid van onze discord of je hebt je discord niet geopend. Wordt lid via www.veenstadrp.nl en probeer het opnieuw." -- Message displayed when they are not whitelist with the role
noDiscord = "Je bent geen lid van onze discord of je hebt je discord niet geopend. Doe dit en probeer het opnieuw." -- Message displayed when discord is not found

roles = { -- Role nickname(s) needed to pass the whitelist
    "Lid",
}


--- Code ---

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
    local src = source
    deferrals.defer()
    deferrals.update("Checken of je lid bent van onze discord... (www.veenstadrp.nl)")

    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
        end
    end

    if identifierDiscord then
        for i = 1, #roles do
            if exports.discord_perms:IsRolePresent(src, roles[i]) then
                deferrals.done()
            else
                deferrals.done(notWhitelisted)
            end
        end
    else
        deferrals.done(noDiscord)
    end
end)