--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( -493.11, -690.53, 20.03, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -493.11, -690.53, 20.03  -1.400, "Hallo nieuwe burger!", 4, 0.1, 0.1)
			Draw3DText( -493.11, -690.53, 20.03  -1.600, "Dit is een RP server", 4, 0.1, 0.1)
			Draw3DText( -493.11, -690.53, 20.03  -1.800, "zorg dat je op de hoogte bent van onze regels", 4, 0.1, 0.1)		
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( -482.4, -690.75, 20.03, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -482.4, -690.75, 20.03  -1.400, "De discordlink is Discord.io/veenstad. Lees daar de regels.", 4, 0.1, 0.1)
			Draw3DText( -482.4, -690.75, 20.03  -1.600, "zorg dat je een werkende microfoon hebt", 4, 0.1, 0.1)
			Draw3DText( -482.4, -690.75, 20.03  -1.800, "voor verdere vragen kan je in de chat terecht", 4, 0.1, 0.1)		
		end	
				--Hologram No. 3
		if GetDistanceBetweenCoords( -486.41, -732.12, 23.9, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -486.41, -732.12, 23.9  -1.400, "Je staat op het punt om de stad te betreden", 4, 0.1, 0.1)
			Draw3DText( -486.41, -732.12, 23.9  -1.600, "Namens het staffteam van Veenstad wensen wij jou", 4, 0.1, 0.1)
			Draw3DText( -486.41, -732.12, 23.9  -1.800, "veel plezier en succes!", 4, 0.1, 0.1)		
		end	
		        --Hologram No. airport
		if GetDistanceBetweenCoords( -896.40, -2330.83, 6.71, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -896.40, -2330.83, 6.71  -1.400, "Je staat op het punt om een auto te huren bij Veenstad Autoverhuur,", 4, 0.1, 0.1)
			Draw3DText( -896.40, -2330.83, 6.71  -1.600, "Als je de auto/bus gehuurt hebt, druk dan meteen op je [U] spier.", 4, 0.1, 0.1)
			Draw3DText( -896.40, -2330.83, 6.71  -1.800, "Zo pak je de sleutels van je auto en kan je er altijd weer in.", 4, 0.1, 0.1)		
		end	
		        --Hologram No. gevangenis
		if GetDistanceBetweenCoords( 2007.57, 2681.25, 46.71, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 2007.57, 2681.25, 46.71  -1.400, "Je staat op het punt om een auto te huren bij Veenstad Autoverhuur,", 4, 0.1, 0.1)
			Draw3DText( 2007.57, 2681.25, 46.71  -1.600, "Als je de auto/bus gehuurt hebt, druk dan meteen op je [U] spier.", 4, 0.1, 0.1)
			Draw3DText( 2007.57, 2681.25, 46.71  -1.800, "Zo pak je de sleutels van je auto en kan je er altijd weer in.", 4, 0.1, 0.1)		
		end	
		        --Hologram No. startpunt
		if GetDistanceBetweenCoords( -487.93, -609.91, 31.17, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -487.93, -609.91, 31.17  -1.400, "Je staat op het punt om een auto te huren bij Veenstad Autoverhuur,", 4, 0.1, 0.1)
			Draw3DText( -487.93, -609.91, 31.17  -1.600, "Als je de auto/bus gehuurt hebt, druk dan meteen op je [U] spier.", 4, 0.1, 0.1)
			Draw3DText( -487.93, -609.91, 31.17  -1.800, "Zo pak je de sleutels van je auto en kan je er altijd weer in.", 4, 0.1, 0.1)		
		end
				--Hologram No. startpunt
		if GetDistanceBetweenCoords( -469.35, -701.45, 20.03, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -469.35, -701.45, 20.03  -1.400, "Is dit de eerste keer dat je in Veenstad bent?", 4, 0.1, 0.1)
			Draw3DText( -469.35, -701.45, 20.03  -1.600, "Dan raden wij je aan even te reloggen, dit ivm dat je dan alles kunt gebruiken.", 4, 0.1, 0.1)
			Draw3DText( -469.35, -701.45, 20.03  -1.800, "Dit is eenmalig en alleen de eerste keer dat je in veenstad arriveerd.", 4, 0.1, 0.1)		
		end
				--Hologram Cardealer
		if GetDistanceBetweenCoords( -32.43, -1102.32, 26.42, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -32.43, -1102.32, 26.42  -1.400, "Let op!", 4, 0.1, 0.1)
			Draw3DText( -32.43, -1102.32, 26.42  -1.600, "Ben je van plan een ADDON auto te kopen? Upgraden hiervan kan niet!", 4, 0.1, 0.1)
			Draw3DText( -32.43, -1102.32, 26.42  -1.800, "De upgrade's kunnen verdwijnen van je auto, er zal niks vergoed worden.", 4, 0.1, 0.1)		
		end
		        --Hologram No. sandyshores
		if GetDistanceBetweenCoords( 3.22, 6345.06, 31.40, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 3.22, 6345.06, 31.40  -1.400, "Je staat op het punt om een auto te huren bij Veenstad Autoverhuur,", 4, 0.1, 0.1)
			Draw3DText( 3.22, 6345.06, 31.40  -1.600, "Als je de auto/bus gehuurt hebt, druk dan meteen op je [U] spier.", 4, 0.1, 0.1)
			Draw3DText( 3.22, 6345.06, 31.40  -1.800, "Zo pak je de sleutels van je auto en kan je er altijd weer in.", 4, 0.1, 0.1)		
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(254, 235, 169, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
