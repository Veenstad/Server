Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips   = true  --markers visible on the map? (false to hide the markers on the map)

Config.RequiredCopsCoke  = 2
Config.RequiredCopsMeth  = 3
Config.RequiredCopsWeed  = 0
Config.RequiredCopsOpium = 2

Config.TimeToFarm    = 5 * 1000
Config.TimeToProcess = 5 * 1000
Config.TimeToSell    = 5 * 1000

Config.Locale = 'en'

Config.Zones = {
	CokeField =			{x = -2012.83,	y = 3387.62,	z = 29.49,		name = _U('coke_field'),		sprite = 501,	color = 40},
	CokeProcessing =	{x = 1099.64,	y = -3194.52,	z = -39.99,		name = _U('coke_processing'),	sprite = 478,	color = 40},
	CokeDealer =		{x = 1463.15,	y = 1162.88,	z = 112.30,		name = _U('coke_dealer'),		sprite = 500,	color = 75},
	MethField =			{x = 223.8,	    y = 111.87,	    z = 92.46,		name = _U('meth_field'),		sprite = 499,	color = 26},
	MethProcessing =	{x = 2434.5,	y = 4968.37,	z = 41.35,		name = _U('meth_processing'),	sprite = 499,	color = 26},
	MethDealer =		{x = -60.45,	y = -1218.61,	z = 27.76,		name = _U('meth_dealer'),		sprite = 500,	color = 75},
	WeedField =			{x = 717.48,	y = 1201.39,	z = 324.02,		name = _U('weed_field'),		sprite = 496,	color = 52},
	WeedProcessing =	{x = 1032.93,	y = -3205.42,	z = -39.16,		name = _U('weed_processing'),	sprite = 496,	color = 52},
	WeedDealer =		{x = -100.13,	y = -1633.61,	z = 31.11,		name = _U('weed_dealer'),		sprite = 500,	color = 75},
	--OpiumField =		{x = 1392.33,	y = 3607.02,	z = 38.94,		name = _U('opium_field'),		sprite = 51,	color = 60},
	--OpiumProcessing =	{x = 971.86,	y = -2157.00,	z = -228.47,		name = _U('opium_processing'),	sprite = 51,	color = 60},
	--OpiumDealer =		{x = 2331.08,	y = 2570.22,	z = -245.30,		name = _U('opium_dealer'),		sprite = 500,	color = 75}
}

Config.Blips = {
	--CokeField =			{x = 3829.3,	y = 4514.16,	z = 1.03,		name = _U('coke_field'),		sprite = 501,	color = 40},
	--[[CokeProcessing =	{x = 1099.64,	y = -3194.52,	z = -39.99,		name = _U('coke_processing'),	sprite = 478,	color = 40},]]--
	--CokeDealer =		{x = -331.69,	y = -2616.68,	z = 5.0,		name = _U('coke_dealer'),		sprite = 500,	color = 75},
	MethField =			{x = 223.8,	y = 111.87,	z = 92.46,		name = _U('meth_field'),		sprite = 499,	color = 26},
	--[[MethProcessing =	{x = 1005.78,	y = -3200.15,	z = -39.52,		name = _U('meth_processing'),	sprite = 499,	color = 26},]]--
	--MethDealer =		{x = -60.45,	y = -1218.61,	z = 27.76,		name = _U('meth_dealer'),		sprite = 500,	color = 75},
	--WeedField =			{x = 1597.46,	y = 3588.47,	z = 37.77,		name = _U('weed_field'),		sprite = 496,	color = 52},
	--[[WeedProcessing =	{x = 1032.93,	y = -3205.42,	z = -39.16,		name = _U('weed_processing'),	sprite = 496,	color = 52},]]--
	--WeedDealer =		{x = -100.13,	y = -1633.61,	z = 31.11,		name = _U('weed_dealer'),		sprite = 500,	color = 75}
	--[[OpiumField =		{x = 1972.78,	y = 3819.39,	z = -320.50,		name = _U('opium_field'),		sprite = 51,	color = 60},]]--
	--[[OpiumProcessing =	{x = 971.86,	y = -2157.00,	z = -228.47,		name = _U('opium_processing'),	sprite = 51,	color = 60},]]--
	--[[OpiumDealer =		{x = 2331.08,	y = 2570.22,	z = -245.30,		name = _U('opium_dealer'),		sprite = 500,	color = 75}]]--
}
