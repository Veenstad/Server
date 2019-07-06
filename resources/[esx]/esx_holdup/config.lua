Config = {}
Config.Locale = 'en'

Config.PoliceNumberRequired = 3
Config.TimerBeforeNewRob = 12000 -- seconds

Config.MaxDistance    = 20 -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = true -- give black money? If disabled it will give cash instead.

Stores = {
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.17, y = -904.21, z = 19.21 },
		reward = math.random(1000, 2500),
		nameofstore = "24/7. (Little Seoul)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	},
	["ocean_liquor"] = {
		position = { x = -2959.33, y = 388.21, z = 14.00 },
		reward = math.random(1000, 2500),
		nameofstore = "Robs Liquor. (Great Ocean Highway)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.41 },
		reward = math.random(1000, 2500),
		nameofstore = "Robs Liquor. (El Rancho Blvd)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1219.85, y = -916.27, z = 11.32 },
		reward = math.random(1000, 2500),
		nameofstore = "Robs Liquor. (San Andreas Avenue)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	},
	["grove_ltd"] = {
		position = { x = -43.40, y = -1749.20, z = 29.42 },
		reward = math.random(1000, 2500),
		nameofstore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	},
	["mirror_ltd"] = {
		position = { x = 1160.67, y = -314.40, z = 69.20 },
		reward = math.random(1000, 2500),
		nameofstore = "LTD Gasoline. (Mirror Park Boulevard)",
		secondsRemaining = 25, -- seconds
		lastrobbed = 0
	}
}
