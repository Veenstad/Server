Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'en'

Config.lostmcStations = {

  lostmc = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_BAT',              price = 400}
    },

	  AuthorizedVehicles = {
      { name = 'GBURRITO',  label = 'Bus' },
	    { name = 'Zombieb',  label = 'Zombie' },
      { name = 'Wolfsbane',  label = 'Wolfsbane' },
	    { name = 'Sanctus',  label = 'Sanctus' },
      { name = 'Avarus',  label = 'Avarus' },
	    { name = 'slamvan2',  label = 'Slamvan lostmc' },
      { name = 'hexer',  label = 'Motor' },
	  },

    Cloakrooms = {
      { x = 866.65, y = -2139.09, z = 529.49 },
    },

    Armories = {
      { x = 986.84, y = -92.48, z = 73.85 },
	  { x = 859.34, y = -2156.21, z = 29.51 },
    },

    Vehicles = {
      {
        Spawner    = { x = 854.70, y = -2113.47, z = 30.58 },
        SpawnPoint = { x = 857.02, y = -2119.46, z = 30.67 },
        Heading    = 261.86,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -780.51, y = 165.55, z = 66.47 },
        SpawnPoint = { x = -772.36, y = 146.05, z = 68.35 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 854.20, y = -2120.40, z = 29.60 },
    },

    BossActions = {
      { x = 977.14, y = -104.12, z = 73.85 },
	  { x = 864.64, y = -2164.29, z = 29.52 }
    },

  },

}