Config									= {}
Config.Locale						= 'en'
Config.DrawDistance			= 25.0

Config.PercentCurrentMoney = 40 -- % of store current money to transfert to bank
Config.MaxRandomMultiplier = 2	-- multiplier (musn't go over 100% of PercentCurrentMoney)
-- For example : if 25% : multiplieur max = 4 (4*25=100)
-- partOfCurrentMoney = CurrentMoney * Config.PercentCurrentMoney / 100
-- randomMoneyToBank 	= math.random(partOfCurrentMoney, partOfCurrentMoney * Config.MaxRandomMultiplier)

Config.AddMoneyToStoresTimeOut	= 10 -- minutes
Config.AddMoneyToBanksTimeOut		= 30 -- minutes

--[[
---------- TEMPLATES ----------

-- STORES
["My Little Store"] = {
	Pos				= { x = 28.288, y = -1339.537, z = 28.497 },
	Size  		= { x = 1.5, y = 1.5, z = 1.0 },
	Color 		= { r = 220, g = 110, b = 0 },
	Type  		= 1,
	AreaSize 	= 15, -- maximum area size the player can walk in without canceling the robbery
	CurrentMoney			= 1000, -- store starting money
	MaxMoney 					= 25000, -- store maximum money
	MoneyRegeneration	= math.random(1000,3000), -- store money generation each Config.AddMoneyToStoresTimeOut
	BankToDeliver 		= "My Little Bank", -- bank where the store money will go each Config.AddMoneyToBanksTimeOut
	Robbed						= 0, -- DO NOT CHANGE : current timer before new robbery allowed for this store
	TimeToRob					= 10, -- time to take the store money
	TimeBeforeNewRob 	= 100, -- time reference before new robbery allowed
	PoliceRequired		= 1 -- number of cops required to rob this store
},

-- BANKS (must be related to store's BankToDeliver)
["My Little Bank"] = {
	Pos				= { x = -706.193, y = -910.005, z = 18.216 },
	Size  		= { x = 1.5, y = 1.5, z = 1.0 },
	Color 		= { r = 220, g = 110, b = 0 },
	Type  		= 1,
	AreaSize 	= 15, -- maximum area size the player can walk in without canceling the robbery
	CurrentMoney			= 0, -- bank starting money
	MaxMoney 					= 200000,	-- bank maximum money
	Robbed						= 0, -- DO NOT CHANGE : current timer before new robbery allowed for this bank
	TimeToRob					= 10, -- time to take the bank money
	TimeBeforeNewRob 	= 100, -- time reference before new robbery allowed
	PoliceRequired		= 1 -- number of cops required to rob this bank
},

-------------------------------
]]--

Config.Zones = {


	
	-- ZONE 1
	
	-- STORES (CASH REGISTERS) / (SAFES)	

		["7/11 (Innocence Blvd) *Cash 1*"] = {
		Pos				= { x = 24.44, y = -1347.31, z = 28.5},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Innocence Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["7/11 (Innocence Blvd) *Cash 2*"] = {
		Pos				= { x = 24.5, y = -1344.93, z = 28.5},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Innocence Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["7/11 (Innocence Blvd) *Safe*"] = {
		Pos				= { x = 28.288, y = -1339.537, z = 28.497 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["BP Servo (Grove St) *Cash 1*"] = {
		Pos				= { x = 47.85, y = -1759.45, z =  28.42},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Grove St) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["BP Servo (Grove St) *Cash 2*"] = {
		Pos				= { x = 73.9, y = -1387.64, z =  28.38},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Grove St) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["BP Servo (Grove St) *Safe*"] = {
		Pos				= { x = -43.057, y = -1748.811, z = 28.421 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Rob's Botte-O (El Rancho Blvd) *Cash*"] = {
		Pos				= { x = 1134.21, y = -982.53, z = 44.42 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Rob's Botte-O (El Rancho Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Rob's Botte-O (El Rancho Blvd) *Safe*"] = {
		Pos				= { x = 1126.65, y = -980.56, z = 43.42 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Vanilla Unicorn (Innocence Blvd) *Cash*"] = {
		Pos				= { x = 128.72, y = -1286.43, z = 28.28 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Vanilla Unicorn (Innocence Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Vanilla Unicorn (Innocence Blvd) *Safe*"] = {
		Pos				= { x = 93.9, y = -1292.44, z = 28.27 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
	
	-- SECONDARY STORES (SUCH AS CLOTHING AND TATTOOS)
	
		["Discount Store (Innocence Blvd) *Cash 1*"] = {
		Pos				= { x = 78.09, y = -1387.63, z =  28.38},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Innocence Blvd) *Cash 2*"] = {
		Pos				= { x = 78.09, y = -1387.63, z =  28.38},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Innocence Blvd) *Cash 3*"] = {
		Pos				= { x = 73.9, y = -1387.64, z =  28.38},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Herr Kutz Barber (Carson Ave) *Cash*"] = {
		Pos				= { x = 134.48, y = -1707.88, z = 28.29 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Popular St) *Cash 1*"] = {
		Pos				= { x = 808.88, y = -2159.01, z = 28.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Popular St) *Cash 2*"] = {
		Pos				= { x = 813.92, y = -2154.67, z = 28.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Vespucci Blvd) *Cash 1*"] = {
		Pos				= { x = 846.11, y = -1030.82, z = 27.19 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Ammunation (Vespucci Blvd) *Cash 2*"] = {
		Pos				= { x = 813.92, y = -1035.82, z = 27.19 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Sinner St) *Cash 1*"] = {
		Pos				= { x = 422.85, y = -811.6, z =  28.49},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Sinner St) *Cash 1*"] = {
		Pos				= { x = 422.85, y = -811.6, z =  28.49},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Sinner St) *Cash 3*"] = {
		Pos				= { x = 427.05, y = -807.05, z =  28.49},
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Vespucci Blvd)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
	
	-- BANKS
	
	["Fleeca Bank (Vespucci Blvd)"] = {
		Pos				= { x = 146.913, y = -1044.836, z = 28.376 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 300000,
		MaxMoney 					= 700000,
		BankToDeliver 		= "Union Depository (Power St)",		
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},
	
	-- ZONE 2
	
	-- STORES (CASH REGISTERS) / (SAFES)	
	
		["BP Servo (Mirror Park) *Cash 1*"] = {
		Pos				= { x = 1165.07, y = -324.48, z = 68.21 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Mirror Park) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["BP Servo (Mirror Park) *Cash 2*"] = {
		Pos				= { x = 1164.79, y = -322.72, z = 68.21 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Mirror Park) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["BP Servo (Mirror Park) *Safe*"] = {
		Pos				= { x = 1160.55, y = -313.93, z = 68.21 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["7/11 (Clinton Ave) *Cash 1*"] = {
		Pos				= { x = 373.1, y = 328.74, z = 102.57 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Clinton Ave) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Clinton Ave) *Cash 2*"] = {
		Pos				= { x = 372.5, y = 326.47, z = 102.57 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Clinton Ave) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Clinton Ave) *Safe*"] = {
		Pos				= { x = 378.1, y = 332.56, z = 102.57 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Rob's Botte-O (Prosperity St) *Cash*"] = {
		Pos				= { x = -1486.15, y = -377.93, z = 39.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Rob's Botte-O (Prosperity St) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Rob's Botte-O (Prosperity St) *Safe*"] = {
		Pos				= { x = -1479.55, y = -374.76, z = 38.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Tequi-la-la (Eclipse Blvd) *Cash 1*"] = {
		Pos				= { x = -561.98, y = 287.31, z = 81.18 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 750,
		MaxMoney 					= 1500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Tequi-la-la (Eclipse Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Tequi-la-la (Eclipse Blvd) *Cash 2*"] = {
		Pos				= { x = -563.98, y = 279.58, z = 81.18 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 750,
		MaxMoney 					= 1500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Tequi-la-la (Eclipse Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Tequi-la-la (Eclipse Blvd) *Cash 3*"] = {
		Pos				= { x = -565.16, y = 285.05, z = 84.38 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 750,
		MaxMoney 					= 1500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Tequi-la-la (Eclipse Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Tequi-la-la (Eclipse Blvd) *Safe*"] = {
		Pos				= { x = -568.52, y = 291.76, z = 78.18 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 45000,
		BankToDeliver 		= "Fleeca Bank Hawick Ave",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Rob's Botte-O (San Andreas Ave) *Cash*"] = {
		Pos				= { x = -1222, y = -908.44, z = 11.33 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Rob's Botte-O (San Andreas Ave) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Rob's Botte-O (San Andreas Ave) *Safe*"] = {
		Pos				= { x = -1220.01, y = -915.46, z = 10.33 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["BP Servo (Little Seoul) *Cash 1*"] = {
		Pos				= { x = -706.01, y = -915.26, z = 18.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Little Seoul) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["BP Servo (Little Seoul) *Cash 2*"] = {
		Pos				= { x = -705.96, y = -913.45, z = 18.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Little Seoul) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["BP Servo (Little Seoul) *Safe*"] = {
		Pos				= { x = -708.82, y = -904.19, z = 18.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
	
	-- SECONDARY STORES (SUCH AS CLOTHING AND TATTOOS)
	
		["Herr Kutz Barber (Mirror Park) *Cash*"] = {
		Pos				= { x = 1211.46, y = -470.62, z = 66.21 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Blazing Tattoo (Vinewood) *Cash*"] = {
		Pos				= { x = 319.83, y = 181.65, z = 102.59 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Hair on Hawick Barbers (Hawick Ave) *Cash*"] = {
		Pos				= { x = -30.52, y = -151.77, z = 56.08 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Hawick Ave) *Cash 1*"] = {
		Pos				= { x = 127.53, y = -222.64, z = 53.56 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Hawick Ave) *Cash 2*"] = {
		Pos				= { x = 127.01, y = -224.28, z = 53.56 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Hawick Ave) *Cash 2*"] = {
		Pos				= { x = 126.43, y = -225.95, z = 53.56 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ponsonbys (Las Lagunas Blvd) *Cash*"] = {
		Pos				= { x = -165.04, y = -303.19, z = 39.73 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Ponsonbys (Portola Dr) *Cash*"] = {
		Pos				= { x = -708.88, y = -151.44, z = 36.42 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Bob Mulet (Mad Wayne Thunder Dr) *Cash*"] = {
		Pos				= { x = 822.03, y = -183.01, z = 36.57 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Ponsonbys (Cougar Ave) *Cash*"] = {
		Pos				= { x = -1448.3, y = -237.99, z = 48.81 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Bahama Mamas (San Andreas Ave) *Cash 1*"] = {
		Pos				= { x = -1380.07, y = -628.8, z = 29.82 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Bahama Mamas (San Andreas Ave) *Cash 2*"] = {
		Pos				= { x = -1377.12, y = -626.71, z = 29.82 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Bahama Mamas (San Andreas Ave) *Cash 3*"] = {
		Pos				= { x = -1374.15, y = -646.85, z = 29.82 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Bahama Mamas (San Andreas Ave) *Cash 4*"] = {
		Pos				= { x = -1392.71, y = -598.54, z = 29.82 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Bahama Mamas (San Andreas Ave) *Cash 5*"] = {
		Pos				= { x = -1394.09, y = -604.17, z = 29.82 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (San Andreas Ave) *Cash 1*"] = {
		Pos				= { x = -1195.29, y = -767.87, z = 16.32 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (San Andreas Ave) *Cash 2*"] = {
		Pos				= { x = -1193.86, y = 766.87, z = 16.32 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (San Andreas Ave) *Cash 3*"] = {
		Pos				= { x = -1192.4, y = 765.65, z = 16.32 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Beach Combover Barbers (Conquistador St) *Cash*"] = {
		Pos				= { x = -1284.07, y = 115.37, z = 5.99 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["The Pit (Aguja St) *Cash*"] = {
		Pos				= { x = -1151.82, y = -1424.46, z = 3.95 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Binco South (Rockford Dr) *Cash 1*"] = {
		Pos				= { x = -816.49, y = -1073.06, z = 10.33 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Binco South (Rockford Dr) *Cash 2*"] = {
		Pos				= { x = -817.98, y = -1070.48, z = 10.33 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Binco South (Rockford Dr) *Cash 3*"] = {
		Pos				= { x = -822.47, y = -1071.75, z = 10.33 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Ammunation (Little Seoul) *Cash 1*"] = {
		Pos				= { x = -666.01, y = -938.04, z = 20.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Little Seoul) *Cash 2*"] = {
		Pos				= { x = -661.1, y = -933.4, z = 20.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Adam's Apple Blvd) *Cash 1*"] = {
		Pos				= { x = 17.49, y = -1108.46, z = 28.8 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Adam's Apple Blvd) *Cash 2*"] = {
		Pos				= { x = 23.75, y = -1105.96, z = 28.8 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Fleeca Bank (Hawick Ave)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
	
	-- BANKS

	["Fleeca Bank (Hawick Ave)"] = {
		Pos				= { x = -354.31, y = -54, z = 49.05 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 300000,
		MaxMoney 					= 700000,
		BankToDeliver 		= "Union Depository (Power St)",		
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},
	
	-- ZONE 3
	
	-- STORES (CASH REGISTERS) / (SAFES)	
	
		["Rob's Botte-O (Great Ocean Hwy) *Cash*"] = {
		Pos				= { x = -2966.33, y = 390.84, z = 14.04 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Rob's Botte-O (Great Ocean Hwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Rob's Botte-O (Great Ocean Hwy) *Safe*"] = {
		Pos				= { x = -2959.57, y = 387.82, z = 12.04 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["7/11 (Ineseno Rd) *Cash 1*"] = {
		Pos				= { x = -3038.86, y = 584.45, z = 6.91 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Ineseno Rd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Ineseno Rd) *Cash 2*"] = {
		Pos				= { x = -3041.22, y = 583.6, z = 6.91 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Ineseno Rd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Ineseno Rd) *Safe*"] = {
		Pos				= { x = -3046.22, y = 585.83, z = 6.91 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["7/11 (Barbareno Rd) *Cash 1*"] = {
		Pos				= { x = -3242.22, y = 999.71, z = 11.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Barbareno Rd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Barbareno Rd) *Cash 2*"] = {
		Pos				= { x = -3244.67, y = 999.97, z = 11.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Barbareno Rd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Barbareno Rd) *Safe*"] = {
		Pos				= { x = -3249.15, y = 1004.29, z = 11.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["BP Servo (Banham Canyon Dr) *Cash 1*"] = {
		Pos				= { x = -1818.82, y = 793.07, z = 137.08 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Banham Canyon Dr) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["BP Servo (Banham Canyon Dr) *Cash 2*"] = {
		Pos				= { x = -1819.95, y = 794.56, z = 137.08 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Banham Canyon Dr) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["BP Servo (Banham Canyon Dr) *Safe*"] = {
		Pos				= { x = -1828.44, y = 799.48, z = 137.08 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Fleeca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
	
	-- SECONDARY STORES (SUCH AS CLOTHING AND TATTOOS)
	
		["Ammunation (Great Ocean Hwy) *Cash 1*"] = {
		Pos				= { x = -3170.94, y = 1083.07, z = 19.84 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Great Ocean Hwy) *Cash 2*"] = {
		Pos				= { x = -3173.1, y = 1089.65, z = 19.84 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Ink Inc Tattoos (Great Ocean Hwy) *Cash*"] = {
		Pos				= { x = -3171.21, y = 1073.34, z = 19.83 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Suburban (Great Ocean Hwy) *Cash 1*"] = {
		Pos				= { x = -3168.74, y = 1044.8, z = 19.86 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Suburban (Great Ocean Hwy) *Cash 2*"] = {
		Pos				= { x = -3169.46, y = 1043.1, z = 19.86 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Suburban (Great Ocean Hwy) *Cash 3*"] = {
		Pos				= { x = -3170.03, y = 1041.37, z = 19.86 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Great Ocean Hwy)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
	
	-- BANKS

	["Flecca Bank (Great Ocean Hwy)"] = {
		Pos				= { x = -354.31, y = -54, z = 49.05 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 300000,
		MaxMoney 					= 700000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},	

	-- ZONE 4
	
	-- STORES (CASH REGISTERS) / (SAFES)	
	
		["7/11 (Route 68) *Cash 1*"] = {
		Pos				= { x = 549.16, y = 2671.36, z = 41.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Route 68) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (Route 68) *Cash 2*"] = {
		Pos				= { x = 549.42, y = 2669.02, z = 41.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Route 68) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (Route 68) *Safe*"] = {
		Pos				= { x = 546.37, y = 2663.64, z = 41.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["Scoops Liquour Barn (Route 68) *Cash*"] = {
		Pos				= { x = 1165.99, y = 2710.87, z = 37.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Scoops Liquor Barn (Route 68) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Scoops Liquour Barn (Route 68) *Safe*"] = {
		Pos				= { x = 1168.47, y = 2717.87, z = 36.16 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Yellow Jack Inn (Panorama Dr) *Cash*"] = {
		Pos				= { x = 1994.59, y = 3046.71, z = 46.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Yellow Jack Inn (Panorama Dr) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Yellow Jack Inn (Panorama Dr) *Safe*"] = {
		Pos				= { x = 1982.68, y = 3053.11, z = 46.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["7/11 (Sandy Shores) *Cash 1*"] = {
		Pos				= { x = 1960.11, y = 3739.92, z = 31.34 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Sandy Shores) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (Sandy Shores) *Cash 2*"] = {
		Pos				= { x = 1958.9, y = 3741.92, z = 31.34 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Sandy Shores) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Sandy Shores) *Safe*"] = {
		Pos				= { x = 1959.76, y = 3748.15, z = 31.34 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
		["Ace Liquour (Algonquin Blvd) *Cash*"] = {
		Pos				= { x = 1392.67, y = 3606.42, z = 33.98 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Yellow Jack Inn (Algonquin Blvd) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Ace Liquour (Algonquin Blvd) *Safe*"] = {
		Pos				= { x = 1395.31, y = 3612.89, z = 33.98 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 24000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["BP Servo (Grapeseed Main St) *Cash 1*"] = {
		Pos				= { x = 1696.43, y = 4923.74, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Grapeseed Main St) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["BP Servo (Grapeseed Main St) *Cash 2*"] = {
		Pos				= { x = 1698.11, y = 4822.86, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "BP Servo (Grapeseed Main St) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["BP Servo (Grapeseed Main St) *Safe*"] = {
		Pos				= { x = 1707.32, y = 4919.69, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
	
	-- SECONDARY STORES (SUCH AS CLOTHING AND TATTOOS)
	
		["Ammunation (Route 68) *Cash 1*"] = {
		Pos				= { x = -1118.91, y = 2693.92, z = 17.55 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Route 68) *Cash 2*"] = {
		Pos				= { x = -1118.09, y = 2700.6, z = 17.55 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Route 68) *Cash 1*"] = {
		Pos				= { x = -1095.75, y = 2712.13, z = 18.11 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Route 68) *Cash 2*"] = {
		Pos				= { x = -1097.81, y = 2714.41, z = 18.11 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Route 68) *Cash 3*"] = {
		Pos				= { x = -1102.05, y = 2712.2, z = 18.11 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Route 68) *Cash 1*"] = {
		Pos				= { x = 613.08, y = 2761.08, z = 41.09 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Route 68) *Cash 2*"] = {
		Pos				= { x = 612.91, y = 2762.68, z = 41.09 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Suburban (Route 68) *Cash 2*"] = {
		Pos				= { x = 612.76, y = 2764.47, z = 41.09 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Route 68) *Cash 1*"] = {
		Pos				= { x = 1202.13, y = 2707.56, z = 37.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Route 68) *Cash 2*"] = {
		Pos				= { x = 1201.88, y = 2710.73, z = 37.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Route 68) *Cash 3*"] = {
		Pos				= { x = 1197.51, y = 2711.82, z = 37.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["O'Sheas Barbers Shop (Sandy Shores) *Cash*"] = {
		Pos				= { x = 1930.82, y = 3728.13, z = 31.84 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Ammunation (Sandy Shores) *Cash 1*"] = {
		Pos				= { x = 1692.87, y = 3755.21, z = 33.71 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Sandy Shores) *Cash 2*"] = {
		Pos				= { x = 1693.01, y = 3762.01, z = 33.71 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Tattoo (Sandy Shores) *Cash*"] = {
		Pos				= { x = 1862.5, y = 3748.35, z = 32.03 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Grapeseed Main St) *Cash 1*"] = {
		Pos				= { x = 1691.96, y = 4817.13, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Grapeseed Main St) *Cash 2*"] = {
		Pos				= { x = 1695.19, y = 4817.43, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},
		["Discount Store (Grapeseed Main St) *Cash 3*"] = {
		Pos				= { x = 1695.44, y = 4822.34, z = 41.06 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Flecca Bank (Route 68)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},

	
	-- BANKS

	["Flecca Bank (Route 68)"] = {
		Pos				= { x = -354.31, y = -54, z = 49.05 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 300000,
		MaxMoney 					= 700000,
		BankToDeliver 		= "Union Depository (Power St)",		
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},	
	
	-- ZONE 5
	
	-- STORES (CASH REGISTERS) / (SAFES)	
	
		["7/11 (North Senora Fwy) *Cash 1*"] = {
		Pos				= { x = 1727.62, y = 6417.27, z = 34.04 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (North Senora Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (North Senora Fwy) *Cash 2*"] = {
		Pos				= { x = 1728.81, y = 6417.32, z = 34.04 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (North Senora Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},			
		["7/11 (North Senora Fwy) *Safe*"] = {
		Pos				= { x = 1734.39, y = 6419.97, z = 34.04 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["7/11 (Senora Fwy) *Cash 1*"] = {
		Pos				= { x = 2678.05, y = 3279.42, z = 54.24 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Senora Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (Senora Fwy) *Cash 2*"] = {
		Pos				= { x = 2675.9, y = 3280.55, z = 54.24 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Senora Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Senora Fwy) *Safe*"] = {
		Pos				= { x = 2673.56, y = 3286.29, z = 54.244 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},	
		["7/11 (Palomino Fwy) *Cash 1*"] = {
		Pos				= { x = 2557.19, y = 380.78, z = 107.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Palomino Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["7/11 (Palomino Fwy) *Cash 2*"] = {
		Pos				= { x = 2554.81, y = 380.75, z = 107.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 500,
		MaxMoney 					= 1000,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "7/11 (Palomino Fwy) *Safe*",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["7/11 (Palomino Fwy) *Safe*"] = {
		Pos				= { x = 2500.17, y = 384.94, z = 107.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 10000,
		MaxMoney 					= 30000,
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 240,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 3
	},
	
	-- SECONDARY STORES (SUCH AS CLOTHING AND TATTOOS)
	
		["Discount Store (Paleto Blvd) *Cash 1*"] = {
		Pos				= { x = -0.88, y = 6510.79, z = 30.88 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Paleto Blvd) *Cash 2*"] = {
		Pos				= { x = 1.35, y = 6508.47, z = 30.88 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Discount Store (Paleto Blvd) *Cash 3*"] = {
		Pos				= { x = 5.2, y = 6510.78, z = 30.88 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Herr Kutz Barber (Paleto) *Cash*"] = {
		Pos				= { x = -277.91, y = 6230.48, z = 30.7 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},		
		["Tattoo (Paleto) *Cash*"] = {
		Pos				= { x = -292.12, y = 6199.88, z = 30.49 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Paleto) *Cash 1*"] = {
		Pos				= { x = -331.21, y = 6079.21, z = 30.45 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Paleto) *Cash 2*"] = {
		Pos				= { x = -330.82, y = 6085.98, z = 30.45 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Palomino Fwy) *Cash 1*"] = {
		Pos				= { x = 2571.71, y = 297.14, z = 107.73 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
		["Ammunation (Palomino Fwy) *Cash 2*"] = {
		Pos				= { x = 2566.63, y = 292.58, z = 107.73 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 250,
		MaxMoney 					= 500,
		MoneyRegeneration	= math.random(250,500),
		BankToDeliver 		= "Blane County Saving Bank (Paleto)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 1800,
		PoliceRequired		= 1
	},	
	
	-- BANKS

	["Blane County Saving Bank (Paleto)"] = {
		Pos				= { x = -103.79, y = 6478, z = 30.63 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 300000,
		MaxMoney 					= 700000,
		BankToDeliver 		= "Union Depository (Power St)",		
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},	

	-- HOLDINGS	

		["Clucking Bell Farms (Paleto)"] = {
		Pos				= { x = -75.62, y = 6250.83, z = 30.09 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},	
		["LS Customs (Paleto)"] = {
		Pos				= { x = 98.71, y = 6620.22, z = 31.44 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},	
		["Grapeseed Airfield (Seaview Rd)"] = {
		Pos				= { x = 2129.14, y = 4770.54, z = 39.97 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["Sandy Shore's Airport (Panorama Dr)"] = {
		Pos				= { x = 1701.11, y = 3291.28, z = 47.97 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["Benny's Original Motorworks (Alta St)"] = {
		Pos				= { x = -209.91, y = -1338.77, z = 33.89 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["Car Dealership (Adam's Apple Blvd)"] = {
		Pos				= { x = -31.47, y = -1113.55, z = 25.42 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["Life Invader (Dorset Dr)"] = {
		Pos				= { x = -1053.9, y = -223.19, z = 43.02 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["LS Customs (Popular St)"] = {
		Pos				= { x = 726.33, y = -1066.33, z = 27.31 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
		["Lester's Clothing Factory (Vespucci Blvd)"] = {
		Pos				= { x = 706.99, y = -965.97, z = 29.41 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		AreaSize 	= 15,
		Type  		= 1,
		CurrentMoney			= 20000,
		MaxMoney 					= 50000,
		MoneyRegeneration	= math.random(5000,7500),	
		BankToDeliver 		= "Pacific Standard (Vinewood)",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 360,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 4
	},
	
	-- BANKS

	["Pacific Standard (Vinewood)"] = {
		Pos				= { x = -103.79, y = 6478, z = 30.63 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 450000,
		MaxMoney 					= 1200000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 600,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 5
	},
	
	-- Depository
	
	["Union Depository (Power St)"] = {
		Pos				= { x = 9.45, y = -669.58, z = 16.13 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 220, g = 110, b = 0 },
		Type  		= 1,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 2500000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 900,
		TimeBeforeNewRob 	= 43200,
		PoliceRequired		= 8
	},		
}

