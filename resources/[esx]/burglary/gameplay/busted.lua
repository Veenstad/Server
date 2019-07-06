RegisterNetEvent("burglary:finished")

CreateThread(function()
	while true do
		Wait(0)
		
		-- if time is up
		if TimeToSeconds(GetClockTime()) > TimeToSeconds(5, 30, 0) and onMission then
			-- if still in the house
			if GetCurrentHouse() then
				-- mission failed we'll get em next time
				ShowMPMessage("~r~Gefaald!", "Je hebt het huist niet optijd verlaten.", 3500)
				TriggerServerEvent("burglary:ended", true, true, lastDoor)
			else
				-- player made it before time
				TriggerServerEvent("burglary:ended", false)
			end
			
			ForceEndMission()
		end

		if onMission then		
			if CanPedHearPlayer(PlayerId(), peds[1]) then
				ShowMPMessage("~r~Burglary failed", "Je hebt iemand wakker gemaakt!", 3500)
				TriggerServerEvent("burglary:ended", true, true, lastDoor)
				
				ClearPedTasks(peds[1])
				PlayPain(peds[1], 7, 0)
				
				-- if resident is aggresive
				if HasPedGotWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), false) then
					SetCurrentPedWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), true)
					
					TaskShootAtEntity(peds[1], PlayerPedId(), -1, 2685983626)
				end
				
				ForceEndMission()
			end
		end
		
		if IsPedCuffed(PlayerPedId()) and onMission then
			ShowMPMessage("~r~Betrapt!", "Je bent gesnapt!", 3500)
			TriggerServerEvent("burglary:ended", true, false)
			
			ForceEndMission()
		end
		
		-- cancel mission if player is dead
		if IsPedDeadOrDying(PlayerPedId()) then
			TriggerServerEvent("burglary:ended", true, false)
			
			ForceEndMission()
		end
		
		-- check if van is not destroyed
		--[[if IsEntityDead(currentVan) and onMission then
			ShowMPMessage("~r~Burglary failed", "Your van got destroyed.", 3500)
			TriggerServerEvent("burglary:ended", true, false)
			
			ForceEndMission()
		end]]--
	end
end)

function ForceEndMission()
	if isHolding then
		DetachEntity(holdingProp)
	end
	
	-- lot of cleanup
	isHolding = false
	holdingProp = nil
	
	stolenItems = {}
	currentItem = {}
	
	-- reset anim
	ClearPedTasks(PlayerPedId())
	SetPedCanSwitchWeapon(PlayerPedId(), not isHolding)
	
	onMission = false
	SetVehicleAsNoLongerNeeded(NetToVeh(currentVan))
	
	RemoveBlips()
	RemovePickups()
end

AddEventHandler("burglary:finished", function(sum)
	ShowMPMessage("~g~Inbraak successvol", "Je hebt al je spullen verkocht voor $" .. sum, 3500)
end)