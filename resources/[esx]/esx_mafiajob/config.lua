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

Config.MafiaStations = {

  Mafia = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
    { name = 'WEAPON_WRENCH',             price = 150 },
    { name = 'WEAPON_PISTOL',     	      price = 5000 },
    { name = 'WEAPON_FLASHLIGHT',         price = 150 },
    { name = 'WEAPON_VINTAGEPISTOL',      price = 15000 },
    { name = 'GADGET_PARACHUTE',          price = 3000 },
    { name = 'WEAPON_STICKYBOMB',         price = 125000 },
    { name = 'WEAPON_GUSENBERG',          price = 45000 },
	  { name = 'WEAPON_SNIPERRIFLE',      price = 375000 },
	  { name = 'WEAPON_ASSAULTRIFLE',     price = 40000 },
	  { name = 'WEAPON_HAMMER',           price = 50 },
	  { name = 'WEAPON_MACHINEPISTOL',    price = 40000 },
	  { name = 'WEAPON_MICROSMG',    	  price = 20000 },
	  { name = 'WEAPON_BAT',              price = 100 },
	  { name = 'WEAPON_COMPACTRIFLE',     price = 35000 },
	  { name = 'WEAPON_MINISMG',          price = 40000 },
	  { name = 'WEAPON_GRENADE',          price = 50000 },
    { name = 'WEAPON_RPG',                price = 450000 },
    },

	  AuthorizedVehicles = {
		  { name = 'DUBSTA2',  label = 'Luxe SUV' },
		  { name = 'granger',   label = 'Suv aanval' },
		  { name = 'SCHAFTER3', label = 'SCHAFTER v12' },
		  { name = 'towtruck',     label = 'Grote takelwagen' },
		  { name = 'cognoscenti',     label = 'Cognoscenti' },
		  { name = 'burrito',     label = 'Onopvallende busje' },
		  { name = 'towtruck2',     label = 'Kleine takelwagen' },
		  { name = 'mower',   label = 'Grasmaaier van de baas' },
		  { name = 'youga2',   label = 'Busje' },
	  },

    Cloakrooms = {
      { x = -811.81, y = 175.15, z = 75.75 },
    },

    Armories = {
      { x = -803.31, y = 169.58, z = 75.74 },
    },

    Vehicles = {
      {
        Spawner    = { x = -830.8, y = 179.96, z = 70.24 },
        SpawnPoint = { x = -827.91, y = 174.94, z = 69.73 },
        Heading    = 190.0,
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
      { x = -812.2, y = 188.34, z = 71.47 },
      { x = -820.35, y = 184.26, z = 71.11 },
    },

    BossActions = {
      { x = -800.41, y = 169.84, z = 71.83 }
    },

  },

}