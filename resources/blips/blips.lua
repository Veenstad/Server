local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	 --{title="Meth verwerking", colour=26, id=499, x = -41.97, y = 6435.59, z = 30.49},
	 --{title="Meth dealer", colour=26, id=499, x = -18.74, y = -216.09, z = 45.18},
	 --{title="wiet verwerking", colour=52, id=496, x = 201.87, y = 2461.96, z = 54.69},
	 --{title="Coke verwerking", colour=40, id=478, x = 387.51, y = 3585.03, z = 32.29},
	 --{title="Rechtbank", colour=26, id=58,  x = 317.79, y = -1631.77, z = 32.53},
	 {title="DSI Hoofdkantoor", colour=29, id=137, x = -1133.4, y = -1708.63, z = 3.41},
	 {title="Politie Bureau", colour=29, id=137, x = -442.09, y = 6031.75, z = 31.01},
	 {title="Politie Bureau", colour=29, id=137, x = 1855.89, y = 3682.74, z = 34.27},
	 --{title="Advocatenkantoor", 	   colour=26, id=351,  x = -117.34, y = -607.46,  z = 35.28}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)