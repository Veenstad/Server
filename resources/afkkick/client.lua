-- CONFIG --

-- AFK Kick Time Limit (in seconds)
secondsUntilKick = 1860

-- Warn players if 3/4 of the Time Limit ran up
kickWarning = true
isDead = false

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1000)
		
		AddEventHandler('playerSpawned', function(spawn)
			isDead = false
		end)
		
		AddEventHandler('esx:onPlayerDeath', function(data)
			isDead = true
		end)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if kickWarning and time == math.ceil(secondsUntilKick / 4)  then
						if isDead == false then
						TriggerEvent("chatMessage", "PAS OP", {255, 0, 0}, "^1Je zal gekicked worden in " .. time .. " seconden voor AFK!")
						end
					end

					time = time - 1
				else
					if isDead == false then
					TriggerServerEvent("kickForBeingAnAFKDouchebag")
					end
				end
			else
				time = secondsUntilKick
			end

			prevPos = currentPos
		end
	end
end)