-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
--[[
	The Tutorial System [BY KRIZFROST]
]]
--[[
	Tips:
	• DO NOT EDIT THE CODE UNLESS YOU KNOW WHAT YOU ARE DOING
	Information:
	• The only reason I had implemented ESX is to display the help notifications as well as the basic notifications that appear besides that this could honestly be a standalone script
	• To change the prices change the price on in server.lua
	• If you'd like to get help on this and see more of my projects join the discord https://discord.gg/yjyugBu
	Credits: 
	• KrizFrost - Base Code

]]
--- Blip Added 

Key = 38 --- E


local ESX = nil
local PlayerData                = {}
--[[
	Loading ESX Data
]]

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--[[
	Location of Tutorial Spot If you change this you need to change the blip location as well
]]
TutorialStation = {
	{-490.17, -696.20, 32.22}
}


function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
			for i = 1, #TutorialStation do
				tutcoords = TutorialStation[i]
				DrawMarker(-27, tutcoords[1], tutcoords[2], tutcoords[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), tutcoords[1], tutcoords[2], tutcoords[3], true ) < 5 then
				 ESX.ShowHelpNotification('Welkom in Veenstad! Druk op ~INPUT_CONTEXT~ om een korte uitleg van de server te krijgen!')
					if(IsControlJustPressed(1, Key)) then
						TutorialFunction() --- Tutorial Function
						insidemarkercheck = true
					end
				end
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), tutcoords[1], tutcoords[2], tutcoords[3], true ) > 5 then
					    if ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'civtutorial_menu') then
       						ESX.UI.Menu.CloseAll()
   					end
				end
			end
	end
end)
local menuEnabled = false 
function ToggleActionMenu()
	-- Make the menuEnabled variable not itself 
	-- e.g. not true = false, not false = true 
	menuEnabled = not menuEnabled

	if ( menuEnabled ) then 
		-- Focuses on the NUI, the second parameter toggles the 
		-- onscreen mouse cursor. 
		SetNuiFocus( true, true )

		-- Sends a message to the JavaScript side, telling it to 
		-- open the menu. 
		SendNUIMessage({
			showmenu = true 
		})
	else 
		-- Bring the focus back to the game
		SetNuiFocus( false )

		-- Sends a message to the JavaScript side, telling it to
		-- close the menu.
		SendNUIMessage({
			hidemenu = true 
		})
	end 
end


--DO-NOT-EDIT-BELLOW-THIS-LINE--
--DO-NOT-EDIT-BELLOW-THIS-LINE--
--DO-NOT-EDIT-BELLOW-THIS-LINE--
--DO-NOT-EDIT-BELLOW-THIS-LINE--

function TutorialFunction() -- Tutorial Menu and Majic ( DO NOT EDIT UNLESS YOU KNOW WHAT YOU ARE DOING )

    local elements = {
        { label = 'Basis begin om te roleplayen', value = "basic_tutorial" }
    }

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'civtutorial_menu',
        {
            title    = "<font color='lightblue' font-size='15px'>Rondleiding Veenstad</font>",
            align    = 'center',
            elements = elements
        },
    function(data, menu)

        local action = data.current.value

        if action == "basic_tutorial" then
       local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
    TriggerEvent('chat:clear')  --- Clear current chat
    TriggerEvent('chat:toggleChat') --- Toggle chat chat
    createdCamera = cam --- Create Cam
    SetEntityVisible(playerPed, false, 0) --- Make Player Invisible
    SetEntityCoordsNoOffset(playerPed, 171.41, -1034.04, 39.33, false, false, false, true) --- Teleport Infront of Maze Bank IN Air
    FreezeEntityPosition(playerPed, true) --- Freeze The Player There
    SetFocusEntity(playerPed) ---- Focus on the player (To Render the building)
    SetCamCoord(cam, 171.41, -1034.04, 39.33) --- Set the camera there
    RenderScriptCams(1, 0, 0, 1, 1) --- Render Cams
    ESX.ShowHelpNotification('~b~Start\n~w~Welkom in ~y~Veenstad Roleplay~w~ Serieuze roleplay, Geniet van de stad!')
    Citizen.Wait(250)
    Citizen.Wait(5000)
    ESX.ShowHelpNotification('We laten je nu de basisbeginselen van de stad zien, ga lekker achterover zitten en geniet!')
    Citizen.Wait(6050)
    ESX.ShowHelpNotification('Laten we beginnen.')
    Citizen.Wait(2000)
    Citizen.Trace('(*<*)Stay Frosty(*<*) - By KrizFrost')
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, -249.46, -991.05, 35.23, false, false, false, true) --- Teleport Player Infront Job Center
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, -249.46, -991.05, 35.23) -- Set the Camera Infront of the Job Center
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    Citizen.Trace('(*<*)Stay Frosty(*<*) - By KrizFrost')
    ESX.ShowHelpNotification('~b~Werk zoeken\n~w~Je kunt hier naartoe gaan om te solliciteren voor een baan en geld te verdienen.')
    Citizen.Wait(5000)
    ESX.ShowNotification('Ook hebben we werk die hier niet tussen staat, denk aan politie, ambulance enz.-')
    Citizen.Wait(2000)
    ESX.ShowNotification('Je kunt hiervoor solliciteren op onze discord!')
    Citizen.Wait(8000)
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, -342.35, -858.54, 38.58, false, false, false, true) --- Teleport Player Infront Legion Garage
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, -342.35, -858.54, 38.58) -- Set the Camera Infront of the Legion Garage
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Trace('(*<*)Stay Frosty(*<*) - By KrizFrost')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~b~Veenstad Garage\n~w~We hebben meerdere garages om je auto neer te zetten-')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~b~Veenstad Garage\n~w~in de stad, wanneer je je auto gekocht hebt kun je hem hier neerzetten.')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~o~Herinnering:\nAls je auto in beslag is genomen kun je hem tegen betaling ophalen bij de impound.')
    Citizen.Wait(9000)
    DoScreenFadeOut(800) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, -938.62, -414.58, 40.55, false, false, false, true) --- Teleport Player Infront Pink Hotel
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, -938.62, -414.58, 40.55) -- Set the Camera Infront of the Pink Hotel
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~b~Huizen\n~w~In veenstad heb je meerdere woonlocaties, dit is er een van.')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~b~Huizen\n~w~Wanneer je een huis hebt gehuurd of gekocht kun je hier je spullen in kwijt-')
    Citizen.Wait(8000)
    ESX.ShowHelpNotification('~b~Huizen\n~w~Ook kun je hier je vrienden uitnodigen.')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~o~Herinnering:\nIn het begin zul je nog niet veel geld hebben, huur verstandig!')
    Citizen.Wait(8000)
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, 65.42, -1904.3, 27.93, false, false, false, true) --- Teleport Player Infront Grove Street
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, 65.42, -1904.3, 27.93) -- Set the Camera Infront of the Grove Street
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    SetCamRot(cam, 0.0, 0.0, -125.0)
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Criminaliteit\n~w~Ook in Veenstad hebben we criminelen!')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~r~Criminaliteit\n~w~Je kunt bijvoorbeeld zwartgeld verdienen door je drugs te verkopen aan NPCs.')
    Citizen.Wait(8000)
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, 6.44, -1140.07, 31.93, false, false, false, true) --- Teleport Player Infront Ammunation
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, 6.44, -1140.07, 31.93) -- Set the Camera Infront of the Ammunation
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    SetCamRot(cam, 0.0, 0.0, 0.0)
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~b~Wapen licentie\n~w~Je kunt hier je wapen licentie halen.')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~b~Wapen licentie\n~w~Deze heb je nodig om wapens te mogen dragen.')
    Citizen.Wait(8000)
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, 231.20, 109.90, 95.82, false, false, false, true) --- Teleport Player Drug Dealer
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, 231.20, 109.90, 95.82) -- Set the Camera Infront of the Drug Dealer
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    SetCamRot(cam, 0.0, 0.0, 70.0)
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Drugs\n~w~Je kunt drugs verzamelen en verkopen, let wel op voor de politie!')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~r~Drugs\n~w~Je zult de drugslocaties zelf moeten zoeken! Of de juiste contacten hebben')
    Citizen.Wait(8000)
    DoScreenFadeOut(400) --- Fade Out the screen
    Citizen.Wait(3000) --- Wait (3 Seconds)
    SetEntityCoordsNoOffset(playerPed, 255.35, -583.52, 54.61, false, false, false, true) --- Teleport Player Hospital
    FreezeEntityPosition(playerPed, true) --- Freeze Player
    SetFocusEntity(playerPed) --- Focus on the player (To Render Building)
    Citizen.Wait(800) --- Wait 0.8 Seconds
    SetCamCoord(cam, 255.35, -583.52, 54.61) -- Set the Camera Infront of the Hospital
    RenderScriptCams(1, 0, 0, 1, 1) -- Render Cams
    SetCamRot(cam, 0.0, 0.0, -90.0)
    DoScreenFadeIn(400) --- Fade In Showing the Screen
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Ziekenhuis\n~w~Wanneer je gewond bent en niet meer gered kunt worden')
    Citizen.Wait(9000)
    ESX.ShowHelpNotification('~r~Ziekenhuis\n~w~Zal je hier weer terug kunnen komen.')
    Citizen.Wait(8000)
    ESX.ShowHelpNotification('~r~Succes in Veenstad!\n~w~We hopen je met deze informatie alvast een mooie start te kunnen geven!')
    SetEntityCoordsNoOffset(playerPed, -490.57, -690.04, 33.22, false, false, false, true) --- Teleport Player Back to start
    FreezeEntityPosition(playerPed, true) --- Freeze The Player There
    SetEntityVisible(playerPed, true, 0) --- set visable
    FreezeEntityPosition(playerPed, false) -- unfreeze
    DestroyCam(createdCamera, 0)
    DestroyCam(createdCamera, 0)
    RenderScriptCams(0, 0, 1, 1, 1)
    createdCamera = 0
    ClearTimecycleModifier("scanline_cam_cheap")
    SetFocusEntity(GetPlayerPed(PlayerId()))
    ---- End Delete Camera
        end

        menu.close()

    end, function(data, menu)
        menu.close()
    end)

end
-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
-------------- DO NOT TRADE/SELL THIS SCRIPT IT IS 100% FREE ON FIVEM FORUMS ------------------------
