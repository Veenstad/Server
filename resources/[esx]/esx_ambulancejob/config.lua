Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 350  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 10 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.Blip = {
	Pos     = { x = 298.2, y = -584.53, z = 42.26 },
	Sprite  = 61,
	Display = 4,
	Scale   = 1.2,
	Colour  = 2
}

Config.HelicopterSpawner = {
	SpawnPoint = { x = 351.79, y = -588.92, z = 73.17 },
	Heading    = 348.0
}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {

	{
		model = 'ambulance2',
		label = 'Mercedes Sprinter'
	},
	{
		model = 'rapid1',
		label = 'Touran Rapid'
	},
	{
		model = 'ambulance',
		label = 'Mercedes E-Klasse'
	},
	{
		model = 'mmt1',
		label = 'Audi Q7 MMT'
	}

}

Config.Zones = {

	HospitalInteriorEntering1 = { -- Main entrance
		Pos	= { x = 294.2, y = -1448.60, z = 29.0 },
		Type = 1
	},

	HospitalInteriorInside1 = {
		Pos	= { x = 272.8, y = -1358.8, z = 23.5 },
		Type = -1
	},

	HospitalInteriorOutside1 = {
		Pos	= { x = 295.8, y = -1446.5, z = 28.9 },
		Type = -1
	},

	HospitalInteriorExit1 = {
		Pos	= { x = 275.7, y = -1361.5, z = 23.5 },
		Type = 1
	},

	HospitalInteriorEntering2 = { -- Lift go to the roof
		Pos	= { x = 325.49, y = -598.89, z = 42.29 },
		Type = 1
	},

	HospitalInteriorInside2 = { -- Roof outlet
		Pos	= { x = 338.5,	y = -583.94, z = 73.17 },
		Type = -1
	},

	HospitalInteriorOutside2 = { -- Lift back from roof
		Pos	= { x = 325.44,	y = -596.89, z = 42.29 },
		Type = -1
	},

	HospitalInteriorExit2 = { -- Roof entrance
		Pos	= { x = 339.32, y = -584.09, z = 73.17 },
		Type = 1
	},

	AmbulanceActions = { -- Cloakroom
		Pos	= { x = 309.73, y = -602.82, z = 42.29 },
		Type = 1
	},

	VehicleSpawner = {
		Pos	= { x = 322.91, y = -555.11, z = 27.74 },
		Type = 1
	},

	VehicleSpawnPoint = {
		Pos	= { x = 330.02, y = -553.98, z = 28.74, h = 324.7 },
		Type = -1
	},

	VehicleDeleter = {
		Pos	= { x = 340.81, y = -560.83, z = 27.74 },
		Type = 1
	},

	Pharmacy = {
		Pos	= { x = 310.72, y = -599.15, z = 42.29 },
		Type = 1
	},

	ParkingDoorGoOutInside = {
		Pos	= { x = 234.56, y = -1373.77, z = 20.97 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 320.98, y = -1478.62, z = 28.81 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = 23.53 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 317.97, y = -1476.13, z = 28.97 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 251.91, y = -1363.3, z = 38.53 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 237.45, y = -1373.89, z = 26.30 },
		Type = -1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = 37.30 },
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = 26.30 },
		Type = -1
	}

}
