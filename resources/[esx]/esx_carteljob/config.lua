Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.cartelStations = {

  cartel = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = { --More Weapons:'https://wiki.rage.mp/index.php?title=Weapons'
	  { name = 'WEAPON_PISTOL',              price = 20000 },
	  
	  
    },

	AuthorizedVehicles = { --More Vehicles:'https://wiki.rage.mp/index.php?title=Vehicles'
	  { name = 'sentinel',          label = 'Sentinel' },	  
	  },

    Cloakrooms = {
      { x = 2443.93, y = 4965.53, z = 45.81},
    },
    Armories = {
      { x = 2440.91, y = 4974.9, z = 45.81},
    },
    Vehicles = {
      {
        Spawner    = { x = 2422.01, y = 4987.77, z = 45.28 },
        SpawnPoint = { x = 2414.9, y = 4991.77, z = 46.19  },
        Heading    = 16.36,
      }
    },
    Helicopters = {
      {
        Spawner    = { x = 3530.0, y = 3758.0, z = 28.92 },
        SpawnPoint = { x = 3529.15, y = 3768.93, z = 29.97 },
        Heading    = 80.4,
      }
    },
    VehicleDeleters = {
      { x = 2409.42, y = 4986.13, z = 45.17 }, 
    },
    BossActions = {
      { x = 2443.67, y = 4976.36, z = 50.56 },
    },
  },
}

