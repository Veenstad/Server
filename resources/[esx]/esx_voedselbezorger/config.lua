Config              = {}
Config.DrawDistance = 100.0
Config.MaxDelivery	= 10
Config.TruckPrice	= 0
Config.Locale       = 'en'

Config.Trucks = {
	"faggio" --(comment this out if using 247delivery)
	--"247delivery", (to use this, download and uncomment https://github.com/Chip-W/247-Scooter)
	--"packer"	
}

Config.Cloakroom = {
	CloakRoom = {
			Pos   = {x = 29.0, y = -1340.0, z = 28.5},
			Size  = {x = 1.5, y = 1.5, z = 1.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1
		},
}

Config.Zones = {
	VehicleSpawner = {
			Pos   = {x = 26.0, y = -1339.0, z = 28.5},
			Size  = {x = 1.5, y = 1.5, z = 1.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1
		},

	VehicleSpawnPoint = {
			Pos   = {x = 28.0, y = -1352.0, z = 29.5},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Type  = -1
		},
}

Config.Livraison = {
-------------------------------------------Los Santos
	-- Forum Dr.
	Delivery1LS = {
			Pos   = {x = -63.0, y = -1453.0, z = 30.5},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 50
		},
	-- La Puerta, La Puerta FWY
	Delivery2LS = {
			Pos   = {x = -441.0, y = -1695.0, z = 18.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 50
		},
	-- La Puerta, Tackle St.
	Delivery3LS = {
			Pos   = {x = -763.0, y = -1319.0, z = 4.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 50
		},
	-- Richard Majestic, Heritage Way
	Delivery4LS = {
			Pos   = {x = -1113.0, y = -506.0, z = 34.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 50
		},
	-- Golf Coarse
	Delivery5LS = {
			Pos   = {x = -1370.0, y = 55.0, z = 53.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 75
		},
	-- Vinewood Hills, North Sheldon Ave.
	Delivery6LS = {
			Pos   = {x = -1290.0, y = 625.0, z = 138.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 75
		},
	-- Vinewood Hills, Baytree Canyon Rd.
	Delivery7LS = {
			Pos   = {x = 228.0, y = 1174.0, z = 225.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 75
		},
	-- Downtown Vinewood, Vinewood Blvd.
	Delivery8LS = {
			Pos   = {x = 406.0, y = 111.0, z = 100.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 75
		},
	-- Mirror Park, East Mirror Dr.
	Delivery9LS = {
			Pos   = {x = 1275.0, y = -673.0, z = 65.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 100
		},
	-- Davis, Innocence Blvd
	Delivery10LS = {
			Pos   = {x = 307.0, y = -1435.0, z = 29.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 100
		},
------------------------------------------- Blaine County
	-- paleto bay 24/7
	Delivery1BC = {
			Pos   = {x = 1741.26, y = 6423.64, z = 32.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 500
		},
	-- grapeseed 24/7
	Delivery2BC = {
			Pos   = {x = 1699.08, y = 4914.52, z = 40.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 400
		},
	-- sandy shores 24/7
	Delivery3BC = {
			Pos   = {x = -1966.00, y = 3753.87, z = 30.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 300
		},
	-- harmony 24/7
	Delivery4BC = {
			Pos   = {x = 540.11, y = 2657.66, z = 40.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 250
		},
	-- chumash 24/7
	Delivery5BC = {
			Pos   = {x = -3254.27, y = 994.13, z = 11.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 200
		},
	-- banham canyon 24/7
	Delivery6BC = {
			Pos   = {x = -3050.19, y = 592.87, z = 6.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 150
		},
	-- hookies
	Delivery7BC = {
			Pos   = {x = -2170.53, y = 4280.89, z = 47.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 250
		},
	-- rex's diner
	Delivery8BC = {
			Pos   = {x = 2544.19354248047, y = 2582.53, z = 36.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 250
		},
	-- grand senora desert - senora freeway
	Delivery9BC = {
			Pos   = {x = 2660.03, y = 3257.93, z = 53.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 250
		},
	-- palomino hwy - tataviam mountains
	Delivery10BC = {
			Pos   = {x = 2544.72, y = 381.26, z = 107.0},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 150
		},
	
	RetourCamion = {
			Pos   = {x = 16.0, y = -1345.0, z = 28.5},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 0
		},
	
	AnnulerMission = {
			Pos   = {x = 17.50, y = -1314.43, z = 28.5},
			Color = {r = 191, g = 66, b = 244},
			Size  = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 191, g = 66, b = 244},
			Type  = 1,
			Paye = 0
		},
}
