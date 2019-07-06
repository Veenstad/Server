Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 425.130, y = -979.558, z = 30.711 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_COMBATPISTOL',     price = 5000 },
			{ name = 'WEAPON_SMG',              price = 15000 },
			{ name = 'WEAPON_PUMPSHOTGUN',      price = 15000 },
			{ name = 'WEAPON_STUNGUN',          price = 2500 },
			{ name = 'WEAPON_BZGAS',            price = 25 },
			{ name = 'WEAPON_NIGHTSTICK',       price = 25 },
			{ name = 'WEAPON_FLASHLIGHT',       price = 25 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 25 },
			{ name = 'WEAPON_FLARE',            price = 25 },
		},

		Cloakrooms = {
			{ x = 452.600, y = -993.306, z = 29.750 },
			{ x = -1134.18, y = -1713.49, z = 3.41 },
		},

		Armories = {
			{ x = 451.699, y = -980.356, z = 29.689 },
			{ x = -1114.6, y = -1719.78, z = 3.45 },
		},

		Vehicles = {
			{
				Spawner    = { x = 454.69, y = -1017.4, z = 27.430 },
				SpawnPoint = { x = 438.42, y = -1018.3, z = 27.757 },
				Heading    = 90.0
			},
			{
				Spawner    = { x = 473.38, y = -1018.43, z = 27.00 },
				SpawnPoint = { x = 475.98, y = -1021.65, z = 28.06 },
				Heading    = 276.11
			},
			{
				Spawner    = { x = -1162.37, y = -1772.16, z = 3.3 },
				SpawnPoint = { x = -1160.42, y = -1769.04, z = 3.4 },
				Heading    = 276.11
			},
			{
				Spawner    = { x = -721.25, y = -1370.05, z = 0.6 },
				SpawnPoint = { x = -723.76, y = -1364.95, z = -0.47 },
				Heading    = 131.2
			},
			{
				Spawner    = { x = -275.93, y = 6634.47, z = 6.42 },
				SpawnPoint = { x = -291.44, y = 6644.78, z = 0 },
				Heading    = 145.15
			},
		},

		Helicopters = {
			{
				Spawner    = { x = 466.477, y = -982.819, z = 42.691 },
				SpawnPoint = { x = 450.04, y = -981.14, z = 42.691 },
				Heading    = 0.0
			},
			{
				Spawner    = { x = -1203.2, y = -1729.51, z = 5.27 },
				SpawnPoint = { x = -1203.2, y = -1729.51, z = 5.27 },
				Heading    = 294
			}
		},

		VehicleDeleters = {
			{ x = 462.74, y = -1014.4, z = 27.065 },
			{ x = 462.40, y = -1019.7, z = 27.104 },
			{ x = 469.12, y = -1024.52, z = 27.20 },
			{ x = 1847.47, y = 3670.68, z = 32.58 },
			{ x = -478.74, y = 6027.6, z = 30.34 },
			{ x = -1151.36, y = -1741.8, z = 3.16 }
		},

		BossActions = {
			{ x = 448.417, y = -973.208, z = 29.689 }
		},

	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {
	Shared = {
	
	},

	recruit = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		}
	},

	officer = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		},
		{
			model = 'noodhulp2',
			label = 'VW Touran | NH'
		},
		{
			model = 'noodhulp3',
			label = 'VW Transporter 5 | NH'
		}
		
	},

	sergeant = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		},
		{
			model = 'noodhulp2',
			label = 'VW Touran | NH'
		},
		{
			model = 'noodhulp3',
			label = 'VW Transporter 5 | NH'
		},
		{
			model = 'polmotor',
			label = 'BMW Motor | VP/NH'
		},
		{
			model = 'verkeer1',
			label = 'Volvo V70 | VP'
		},
		{
			model = "dinghy3",
			label = "Politie Boot | NH"
		}
	},

	lieutenant = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		},
		{
			model = 'noodhulp2',
			label = 'VW Touran | NH'
		},
		{
			model = 'noodhulp3',
			label = 'VW Transporter 5 | NH'
		},
		{
			model = 'polmotor',
			label = 'BMW Motor | VP/NH'
		},
		{
			model = 'polschafter3',
			label = 'Schafter | UNM'
		},
		{
			model = 'verkeer1',
			label = 'Volvo V70 | VP'
		},
		{
			model = 'onopvallend',
			label = 'Volvo V70 | VP/UNM'
		},
		{
			model = 'rs6dsi',
			label = 'AUDI RS6 | VP/UNM'
		},
		{
			model = 'polmav',
			label = 'Zulu'
		},
		{
			model = "dinghy3",
			label = "Politie Boot | NH"
		}
	},

	boss = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		},
		{
			model = 'noodhulp2',
			label = 'VW Touran | NH'
		},
		{
			model = 'noodhulp3',
			label = 'VW Transporter 5 | NH'
		},
		{
			model = 'polmotor',
			label = 'BMW Motor | VP/NH'
		},
		{
			model = 'verkeer1',
			label = 'Volvo V70 | VP'
		},
		{
			model = 'onopvallend',
			label = 'Volvo V70 | VP/UNM'
		},
		{
			model = 'polschafter3',
			label = 'Schafter | UNM'
		},
		{
			model = 'polmav',
			label = 'Zulu'
		},
		{
			model = 'audiq7',
			label = 'AUDI Q7 | AT'
		},
		{
			model = 'rs6dsi',
			label = 'AUDI RS6 | VP/UNM'
		},
		{
			model = 'polschafter3',
			label = 'Schafter | UNM'
		},
		{
			model = 'dzsb500',
			label = 'Mercedes S500 (Speciaal vervoer) | AT'
		},
		{
			model = 'DZSB',
			label = 'Rolls-Royce Phantom (Speciaal vervoer) | AT'
		},
		{
			model = "dinghy3",
			label = "Politie Boot | NH"
		}
	},
	
	at = {
		{
			model = 'bklasse',
			label = 'Mercedes B-Klasse | NH'
		},
		{
			model = 'scorcher',
			label = 'Politie fiets'
		},
		{
			model = 'noodhulp2',
			label = 'VW Touran | NH'
		},
		{
			model = 'noodhulp3',
			label = 'VW Transporter 5 | NH'
		},
		{
			model = 'polmotor',
			label = 'BMW Motor | VP/NH'
		},
		{
			model = 'verkeer1',
			label = 'Volvo V70 | VP'
		},
		{
			model = 'onopvallend',
			label = 'Volvo V70 | VP/UNM'
		},
		{
			model = 'polschafter3',
			label = 'Schafter | UNM'
		},
		{
			model = 'polmav',
			label = 'Zulu'
		},
		{
			model = 'audiq7',
			label = 'AUDI Q7 | AT'
		},
		{
			model = 'rs6dsi',
			label = 'AUDI RS6 | VP/UNM'
		},
		{
			model = 'dzsb500',
			label = 'Mercedes S500 (Speciaal vervoer) | AT'
		},
		{
			model = 'DZSB',
			label = 'Rolls-Royce Phantom (Speciaal vervoer) | AT'
		},
		{
			model = 'dzsb500',
			label = 'Mercedes S500 (Speciaal vervoer) | AT'
		}
	}
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	
	kortnh_wear = { -- Korte mauwen noodhulp
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 94,   ['torso_2'] = 0,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		}
	},

	bodyguard_wear = { -- Persoons Beveiliger
		male = {
			['tshirt_1'] = 96,  ['tshirt_2'] = 16,
			['torso_1'] = 102,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 33,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 29,    ['chain_2'] = 2,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		}
	},

	petje_wear = { -- Petje
		male = {
			['helmet_1'] = 10,  ['helmet_2'] = 0
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},

	mask_wear = { -- at masker
		male = {
			['mask_1'] = 52,  ['mask_2'] = 0
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},

	atdicht_wear = { -- dsi helm dicht
		male = {
			['helmet_1'] = 125,  ['helmet_2'] = 0
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},

	motorhelm_wear = { -- motorhelm
		male = {
			['helmet_1'] = 17,  ['helmet_2'] = 0
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},

	atopen_wear = { -- dsi helm dicht
		male = {
			['helmet_1'] = 126,  ['helmet_2'] = 0
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},


	langnh_wear = { -- Lange mauwen noodhulp
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 156,   ['torso_2'] = 1,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	
	werendnh_wear = { -- Kogelwerend vest
		male = {
			['bproof_1'] = 17,  ['bproof_2'] = 2
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	werendat_wear = { -- Kogelwerend vest
		male = {
			['bproof_1'] = 17,  ['bproof_2'] = 6
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	ovdphesje_wear = { -- ovdp hesje
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 3
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	polhesje_wear = { -- politie hesje
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 2
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	werendvp_wear = { -- Kogelwerend vest
		male = {
			['bproof_1'] = 17,  ['bproof_2'] = 3
		},
		female = {
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	verkeerkort_wear = { -- Verkeer korte mauwen
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 94,   ['torso_2'] = 0,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	verkeerlang_wear = { -- Verkeer lange mauwen
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 156,   ['torso_2'] = 1,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},

	dsi_wear = { -- Dienst Speciale Interventies
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 0,
			['torso_1'] = 156,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 4,   ['pants_2'] = 2,
			['shoes_1'] = 65,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 0,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
	}
},

	motor_wear = { -- Motor
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 156,   ['torso_2'] = 2,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 32,   ['pants_2'] = 1,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			['mask_1'] = 121,   ['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	}

}