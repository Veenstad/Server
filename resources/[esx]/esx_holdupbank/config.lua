Config = {}
Config.Locale = 'en'
Config.NumberOfCopsRequired = 5

Banks = {
	["blainecounty"] = {
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = math.random(75000,125000),
		nameofbank = "Blaine County Savings",
		lastrobbed = 0
	},
	["PrincipalBank"] = {
		position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		reward = math.random(325000,600000),
		nameofbank = "Principal bank",
		lastrobbed = 0
	}
}