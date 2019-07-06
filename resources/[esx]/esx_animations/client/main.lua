local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local isDead = false
local inAnim = false
ESX = nil

local DoingCPR = false

function loadAnimDict(dict)
  while (not HasAnimDictLoaded(dict)) do
    RequestAnimDict(dict)
    Citizen.Wait(5)
  end
end

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

function startAttitude(lib, anim)
	ESX.Streaming.RequestAnimSet(lib, function()
		SetPedMovementClipset(PlayerPedId(), anim, true)
	end)
end

function startAnim(lib, anim)
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
	end)
end

function startScenario(anim)
	TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end

function OpenAnimationsMenu()
	local elements = {}

	for i=1, #Config.Animations, 1 do
		table.insert(elements, {label = Config.Animations[i].label, value = Config.Animations[i].name})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations',
	{
		title    = 'Animaties',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		OpenAnimationsSubMenu(data.current.value)
	end, function(data, menu)
		menu.close()
	end)
end

function OpenAnimationsSubMenu(menu)
	local title    = nil
	local elements = {}

	for i=1, #Config.Animations, 1 do
		if Config.Animations[i].name == menu then
			title = Config.Animations[i].label

			for j=1, #Config.Animations[i].items, 1 do
				table.insert(elements, {
					label = Config.Animations[i].items[j].label,
					type  = Config.Animations[i].items[j].type,
					value = Config.Animations[i].items[j].data
				})
			end

			break

		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations_sub',
	{
		title    = title,
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		local type = data.current.type
		local lib  = data.current.value.lib
		local anim = data.current.value.anim

		if type == 'scenario' then
			startScenario(anim)
		elseif type == 'attitude' then
			startAttitude(lib, anim)
		elseif type == 'anim' then
			startAnim(lib, anim)
		elseif type == 'kneel' then
			local player = GetPlayerPed(-1)
    		if (DoesEntityExist(player) and not IsEntityDead(player)) then
    		  loadAnimDict("random@arrests")
    		  loadAnimDict("random@arrests@busted")
    		  if (IsEntityPlayingAnim(player, "random@arrests@busted", "idle_a", 3)) then
    		    isKneeling = false
    		    ClearPedTasksImmediately(ped)
    		    ClearPedTasks(ped)
    		    ClearPedSecondaryTask(ped)
    		    TaskPlayAnim(player, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
    		    Wait(3000)
						TaskPlayAnim(player, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0)
					else
    		    isKneeling = true
					
    		    TaskPlayAnim(player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
    		    if isKneeling == false then
    		      return
    		    end
    		    Wait(4000)
    		    TaskPlayAnim(player, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
    		    if isKneeling == false then
    		      return
    		    end
    		    Wait(500)
    		    TaskPlayAnim(player, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0)
    		    if isKneeling == false then
    		      return
    		    end
    		    Wait(1000)
    		    TaskPlayAnim(player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0)
    		  end
			end
		elseif type == 'radio' then
			local ped = GetPlayerPed(-1)

			if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
			  Citizen.CreateThread(
				function()
				  RequestAnimDict("random@arrests")
				  while (not HasAnimDictLoaded("random@arrests")) do
					Citizen.Wait(100)
				  end
				  if IsEntityPlayingAnim(ped, "random@arrests", "generic_radio_chatter", 3) then
					ClearPedSecondaryTask(ped)
					SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
				  else
					TaskPlayAnim(ped, "random@arrests", "generic_radio_chatter", 8.0, 2.5, -1, 49, 0, 0, 0, 0)
					SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
				  end
				end
			  )
			end
		elseif type == 'sit' then
			local ped = GetPlayerPed(-1)
    		if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
    		  Citizen.CreateThread(
    		    function()
    		      RequestAnimDict("amb@world_human_picnic@male@base")
    		      while (not HasAnimDictLoaded("amb@world_human_picnic@male@base")) do
    		        Citizen.Wait(100)
    		      end
    		      if IsEntityPlayingAnim(ped, "amb@world_human_picnic@male@base", "base", 3) then
    		        ClearPedTasksImmediately(ped)
    		        ClearPedTasks(ped)
    		        ClearPedSecondaryTask(ped)
    		        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
    		      else
    		        TaskPlayAnim(ped, "amb@world_human_picnic@male@base", "base", 8.0, 2.5, -1, 1, 0, 0, 0, 0)
    		        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
    		      end
    		    end
    		  )
			end
		elseif type == 'lig' then
			local ped = GetPlayerPed(-1)
    		if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
    		  Citizen.CreateThread(
    		    function()
    		      RequestAnimDict("mini@cpr@char_b@cpr_str")
    		      while (not HasAnimDictLoaded("mini@cpr@char_b@cpr_str")) do
    		        Citizen.Wait(100)
    		      end
    		      if IsEntityPlayingAnim(ped, "mini@cpr@char_b@cpr_str", "cpr_kol_idle", 3) then
    		        ClearPedTasksImmediately(ped)
    		        ClearPedTasks(ped)
    		        ClearPedSecondaryTask(ped)
    		        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
    		      else
    		        TaskPlayAnim(ped, "mini@cpr@char_b@cpr_str", "cpr_kol_idle", 8.0, 2.5, -1, 1, 0, 0, 0, 0)
    		        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
    		      end
    		    end
    		  )
			end
		elseif type == 'cpr' then
			local ped = GetPlayerPed(-1)

    		if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
    		  Citizen.CreateThread(
    		    function()
    		      RequestAnimDict("mini@cpr@char_a@cpr_str")
    		      RequestAnimDict("mini@cpr@char_a@cpr_def")
    		      while (not HasAnimDictLoaded("mini@cpr@char_a@cpr_str")) do
    		        Citizen.Wait(100)
    		      end
    		      while (not HasAnimDictLoaded("mini@cpr@char_a@cpr_def")) do
    		        Citizen.Wait(100)
    		      end
    		      if IsEntityPlayingAnim(ped, "mini@cpr@char_a@cpr_str", "cpr_pumpchest", 3) then
    		        DoingCPR = false
    		        ClearPedTasksImmediately(ped)
    		        ClearPedTasks(ped)
    		        ClearPedSecondaryTask(ped)
								SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
    		      else
    		        DoingCPR = true
				
    		        TaskPlayAnim(ped, "mini@cpr@char_a@cpr_str", "cpr_kol", 8.0, 0, -1, 0, 0, 0, 0, 0) -- CPR Breath (play first) mini@cpr@char_a@cpr_def  cpr_kol 7466 
    		        if DoingCPR == false then
    		          return
    		        end
    		        Wait(7466)
    		        TaskPlayAnim(ped, "mini@cpr@char_a@cpr_str", "cpr_kol_to_cpr", 8.0, 0, -1, 0, 0, 0, 0, 0) -- CPR Breath (play first) mini@cpr@char_a@cpr_def  cpr_kol 7466 
    		        if DoingCPR == false then
    		          return
    		        end
    		        Wait(1566)
    		        TaskPlayAnim(ped, "mini@cpr@char_a@cpr_str", "cpr_pumpchest", 8.0, 0, -1, 1, 0, 0, 0, 1) -- CPR Chest Pump (play second) mini@cpr@char_a@cpr_st cpr_pumpchest 1000
    		      end
    		    end
    		  )
    		end
		end
	end, function(data, menu)
		menu.close()
	end)
end

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, Keys['F3']) and IsInputDisabled(0) and not isDead then
			OpenAnimationsMenu()
		end

		if IsControlJustReleased(0, Keys['X']) and IsInputDisabled(0) and not isDead then
			ClearPedTasks(PlayerPedId())
		end

	end
end)