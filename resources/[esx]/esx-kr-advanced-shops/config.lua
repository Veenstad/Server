Config                            = {}
Config.DrawDistance               = 15.0
Config.Locale = 'en'
Config.DeliveryTime = 1 -- IN SECOUNDS DEFAULT (18000) IS 5 HOURS / 300 MINUTES
Config.TimeBetweenRobberies = 1
Config.CutOnRobbery = 10 -- IN PERCENTAGE FROM THE TARGET SHOP
Config.RequiredPolices = 0 -- For the robbery
Config.SellValue = 2 -- This is the shops value divided by 2
Config.ChangeNamePrice = 50000 -- In $ - how much you can change the shops name for

-- CONFIG ITEMS, DON'T FORGET TO ADD CORRECT NUMBER IN THE BRACKETS
Config.Items = {
    [1] = {label = "Water",       item = "water",        price = 1},
    [2] = {label = "Bread",      item = "bread",       price = 1},
    [3] = {label = "Watermeloen",        item = "meloen",     price = 1},
    [4] = {label = "Reparatie set",     item = "repairkit",       price = 1000},
    [5] = {label = "Bami schijf",     item = "bamischijf",       price = 2},
    [6] = {label = "Bacon burger",     item = "baconburger",       price = 2},
    [7] = {label = "Banaan",     item = "banaan",       price = 1},
    [8] = {label = "Blinddoek",     item = "blindfold",       price = 15},
    [9] = {label = "Appel",     item = "appel",       price = 1},
    [10] = {label = "Broodje Unox",     item = "broodje braadworst",       price = 2},
    [11] = {label = "Burrito",     item = "burrito",       price = 2},
    [12] = {label = "Bananen ijs", item = "bananenijs", price = 2},
    [13] = {label = "bananenvlaai", item = "bananenvlaai", price = 2},
    [14] = {label = "Kom met pinda\'s", item = "bolcacahuetes", price = 2},
    [15] = {label = "Schaal met chips", item = "bolchips", price = 2},
    [16] = {label = "Schaal met cashewnoten", item = "bolnoixcajou", price = 2},
    [17] = {label = "Broodje braadworst", item = "broodjebraadworst", price = 2},
    [18] = {label = "cappuchino", item = "cappuchino", price = 1},
	[19] = {label = "chili con carne", item = "chiliconcarne", price = 2},
	[20] = {label = "chimichanga", item = "chimichanga", price = 2},
	[21] = {label = "chocolade donut", item = "chocodonut", price = 1},
	[22] = {label = "chocolade ijs", item = "chocoladeijs", price = 2},
	[23] = {label = "cola", item = "cola", price = 1},
	[24] = {label = "cola light", item = "colalight", price = 1},
	[25] = {label = "Huisdierensnacks", item = "croquettes", price = 2},
	[26] = {label = "aardbeien donut", item = "donutaardbij", price = 1},
	[27] = {label = "bananen donut", item = "donutbanaan", price = 1},
	[28] = {label = "donut met sprinkel", item = "donutmetsprinkel", price = 1},
	[29] = {label = "Dr. Pepper", item = "drpepper", price = 1},
	[30] = {label = "Dubbele hotdog", item = "dubbelehotdog", price = 3},
	[31] = {label = "enchilada", item = "enchilada", price = 2},
	[32] = {label = "Redbull", item = "energy", price = 2},
	[33] = {label = "Espresse", item = "espresso", price = 1},
	[34] = {label = "Fanta", item = "fanta", price = 1},
	[35] = {label = "Frikandel", item = "frikandel", price = 1},
	[36] = {label = "Frikandelbroodje", item = "frikandelbroodje", price = 2},
	[37] = {label = "gelukskoeje", item = "gelukskoekje", price = 3},
	[38] = {label = "gevulde koek", item = "gevuldekoek", price = 1},
	[39] = {label = "Luxe wijn", item = "grand_cru", price = 80},
	[40] = {label = "Tros druiven", item = "grapperaisin", price = 2},
	[41] = {label = "hamburger", item = "hamburger", price = 2},
	[42] = {label = "Sack", item = "headbag", price = 15},
	[43] = {label = "Hotdog", item = "hotdog", price = 1},
	[44] = {label = "Hotdog gefrituurde ui", item = "hotdoggefrituurdeui", price = 4},
	[45] = {label = "Hotdog zuurkool", item = "hotdogzuurkool", price = 3},
	[46] = {label = "Ijsthee", item = "icetea", price = 1},
	[47] = {label = "Jagermeister", item = "jager", price = 5},
	[48] = {label = "Jagerbomb", item = "jagerbomb", price = 7},
	[49] = {label = "Jagercerbere", item = "jagercerbere", price = 8},
	[50] = {label = "Vruchtensap", item = "jusfruit", price = 1},
	[51] = {label = "Grape juice", item = "jus_raisin", price = 2},
	[52] = {label = "Kipburger", item = "kipburger", price = 3},
	[53] = {label = "Kipcorn", item = "kipcorn", price = 2},
	[54] = {label = "Koffie", item = "koffie", price = 1},
	[55] = {label = "Kroepoek", item = "kroepoek", price = 2},
	[56] = {label = "Kroket", item = "kroket", price = 2},
	[57] = {label = "Limonade", item = "limonade", price = 1},
	[58] = {label = "Martini bianco", item = "martini", price = 7},
	[59] = {label = "Een meter shotjes", item = "metreshooter", price = 10},
	[60] = {label = "Milkshake aardbei", item = "milkshakeaardbei", price = 2},
	[61] = {label = "Milkshake banaan", item = "milkshakebanaan", price = 2},
	[62] = {label = "Milkshake chocola", item = "milkshakechoco", price = 2},
	[63] = {label = "Mixdrankje", item = "mixapero", price = 5},
	[64] = {label = "Mojito", item = "mojito", price = 5},
	[65] = {label = "Moorkop", item = "moorkop", price = 2},
	[66] = {label = "nr 41 Nasi Goreng", item = "nr41nasigoreng", price = 3},
	[67] = {label = "nr 71 Tjap Tjoy", item = "nr71tjaptjoy", price = 3},
	[68] = {label = "nr 81 Foe Yong Hai", item = "nr81foeyounghai", price = 3},
	[69] = {label = "nr 91 Babi Pangang", item = "nr91babipangang", price = 3},
	[70] = {label = "Oliebol", item = "oliebol", price = 2},
	[71] = {label = "Oreo ijs", item = "oreoijs", price = 2},
	[72] = {label = "Panini", item = "panini", price = 2},
	[73] = {label = "Patat", item = "patat", price = 2},
	[74] = {label = "Peer", item = "peer", price = 1},
	[75] = {label = "Pistolet", item = "pistolet", price = 1},
	[76] = {label = "Pizza Calzone", item = "pizazacalzone", price = 3},
	[77] = {label = "Pizza Hawaii", item = "pizzahawaii", price = 3},
	[78] = {label = "Pizza Margherita", item = "pizzamargerita", price = 3},
	[79] = {label = "Pizza Pepperoni", item = "pizzapepperoni", price = 3},
	[80] = {label = "Pizza Quatro Formaggi", item = "pizzaquatroformaggi", price = 3},
	[81] = {label = "Rum", item = "rhum", price = 3},
	[82] = {label = "Rum-Cola", item = "rhumcoca", price = 5},
	[83] = {label = "Rum met fruit", item = "rhumfruit", price = 6},
	[84] = {label = "Rijstwijn", item = "rijstwijn", price = 5},
	[85] = {label = "Rivella", item = "rivella", price = 1},
}

Config.Images = {
  [1] = {item = "water",   src = "img/bottle.png"},
  [2] = {item = "bread",   src = "img/burger.png"},
  [3] = {item = "pizzahawaii", src = "img/pizza.png"},
  [4] = {item = "pizzacalzone", src = "img/pizza.png"},
  [5] = {item = "pizzapepperoni", src = "img/pizza.png"},
  [6] = {item = "pizzaquatroformaggi", src = "img/pizza.png"},
}

Config.Zones = {

  ShopCenter = {
    Pos   = {x = 6.09,   y = -708.89,  z = 44.97, number = 'center'},
  },
  Shop1 = {
    Pos   = {x = 373.875,   y = 325.896,  z = 102.566, number = 1},
  },
  Shop2 = {
    Pos = {x = 2557.458,  y = 382.282,  z = 107.622, number = 2},
  },
  Shop3 = {
    Pos = {x = -3038.939, y = 585.954,  z = 6.908, number = 3},
  },
  Shop4 = {
    Pos = {x = -1487.553, y = -379.107,  z = 39.163, number = 4},
  },
  Shop5 = {
    Pos = {x = 1392.562,  y = 3604.684,  z = 33.980, number = 5},
  },
  Shop6 = {
    Pos = {x = -2968.243, y = 390.910,   z = 14.043, number = 6},
  },
  Shop7 = {
    Pos = {x = 2678.916,  y = 3280.671, z = 54.241, number = 7},
  },
  Shop8 = {
    Pos = {x = -48.519,   y = -1757.514, z = 28.421, number = 8},
  },
  Shop9 = {
    Pos = {x = 1163.373,  y = -323.801,  z = 68.205, number = 9},
  },
  Shop10 = {
    Pos = {x = -707.501,  y = -914.260,  z = 18.215, number = 10},
  },
  Shop11 = {
    Pos = {x = -1820.523, y = 792.518,   z = 137.118, number = 11},
  },
  Shop12 = {
    Pos = {x = 1698.388,  y = 4924.404,  z = 41.063, number = 12},
  },
  Shop13 = {
    Pos = {x = 1961.464,  y = 3740.672, z = 31.343, number = 13},
  },
  Shop14 = {
    Pos = {x = 1135.808,  y = -982.281,  z = 45.415, number = 14},
  },
  Shop15 = {
    Pos = {x = 25.88,   y = -1347.1, z = 28.5, number = 15},
  },
  Shop16 = {
    Pos = {x = 1763.34,   y = 2546.86,   z = 44.53, number = 16},
  },
  Shop17 = {
    Pos = {x = 547.431,   y = 2671.710, z = 41.156, number = 17},
  },
  Shop18 = {
    Pos = {x = -3241.927, y = 1001.462, z = 11.830, number = 18},
  },
  Shop19 = {
    Pos = {x = 1166.024,  y = 2708.930,  z = 37.157, number = 19},
  },
  Shop20 = {
    Pos = {x = 1729.216,  y = 6414.131, z = 34.037, number = 20}
  },
  Shop21 = {
  Pos = {x = 461.74,  y = -709.29, z = 26.34, number = 21}
  },
  Shop22 = {
  Pos = {x = 538.14,  y = 101.09, z = 95.48, number = 22}
  },
  Shop23 = {
  Pos = {x = 194.34,  y = -993.14,   z = 29.05, number = 23}
  },
  Shop24 = {
  Pos = {x = 198.59,    y = -956.75,   z = 29.05, number = 24}
  },
  Shop25 = {
  Pos = {x = 151.46,    y = -968.62,   z = 29.05, number = 25}
  },
  Shop26 = {
  Pos = {x = -164.57,   y = -1439.22,  z = 31.41, number = 26}
  },
  Shop27 = {
  Pos = {x = 386.17,    y = -325.93,   z = 46.87, number = 27}
  },
  Shop28 = {
  Pos = {x = 51.02,     y = -135.44,   z = 54.13, number = 28}
  },
  Shop29 = {
  Pos = {x = -359.13,   y = -129.35,   z = 37.65, number = 29}
  },
  Shop30 = {
  Pos = {x = 316.74,    y = -588.61,   z = 42.29, number = 30}
  },
  Shop31 = {
  Pos = {x = 436.52,    y = -985.98,   z = 29.65, number = 31}
  },
  Shop32 = {
  Pos = {x = 97.83,     y = 284.18,    z = 108.92, number = 32}
  },
  Shop33 = {
  Pos = {x = -1223.25,  y = -906.75,   z = 11.28, number = 33}
  },
  Robbery1 = {
    Pos   = {x = 379.19, y = 332.08, z = 102.57, number = 101, red = true},
  },
  Robbery2 = {
    Pos   = {x = 2550.15, y = 385.37, z = 107.62, number = 102, red = true},
  },
  Robbery3 = {
    Pos   = {x = -3047.08, y = 586.37, z = 6.91, number = 103, red = true},
  },
  Robbery4 = {
    Pos   = {x = -1480.09, y = -373.35, z = 38.16, number = 104, red = true},
  },
  Robbery5 = {
    Pos   = {x = 1396.21, y = 3611.28, z = 33.98, number = 105, red = true},
  },
  Robbery6 = {
    Pos   = {x = -2959.15, y = 388.54, z = 13.04, number = 106, red = true},
  },
  Robbery7 = {
    Pos   = {x = 2673.59, y = 3286.2, z = 54.24, number = 107, red = true},
  },
  Robbery8 = {
    Pos   = {x = -43.7, y = -1750.58, z = 28.42, number = 108, red = true},
  },
  Robbery9 = {
    Pos   = {x = 1161.15, y = -315.73, z = 68.21, number = 109, red = true},
  },
  Robbery10 = {
    Pos   = {x = -708.29, y = -905.99, z = 18.22, number = 110, red = true},
  },
  Robbery11 = {
    Pos   = {x = -1827.32, y = 798.78, z = 137.16, number = 111, red = true},
  },
  Robbery12 = {
    Pos   = {x = 1705.41, y = 4920.56, z = 41.06, number = 112, red = true},
  },
  Robbery13 = {
    Pos   = { x = 1959.04, y = 3747.93, z = 31.34, number = 113, red = true},
  },
  Robbery14 = {
    Pos   = {x = 1126.83, y = -982.6, z = 44.42, number = 114, red = true},
  },
  Robbery15 = {
    Pos   = {x = 28.48, y = -1339.94, z = 28.5, number = 115, red = true},
  },
  Robbery16 = {
    Pos   = {x = -1384.41, y = -628.71, z = 29.82, number = 116, red = true},
  },
  Robbery17 = {
    Pos   = {x = 546.86, y = 2663.71, z = 41.16, number = 117, red = true},
  },
  Robbery18= {
    Pos   = {x = -3249.3, y = 1004.54, z = 11.83, number = 118, red = true},
  },
  Robbery19 = {
    Pos   = {x = 1166.89, y = 2718.14, z = 36.16, number = 119, red = true},
  },
  Robbery20= {
    Pos   = {x = 1734.88, y = 6419.83, z = 34.04, number = 120, red = true},
  },
  Robbery21= {
    Pos   = {x = 464.65, y = -707.58, z = 26.49, number = 121, red = true},
  },
  Robbery22= {
    Pos = {x = 548.53,  y = 125.22, z = 97.05, number = 122, red = true},
  },
  Robbery26= {
    Pos = {x = -153.9,  y = -1447.29, z = 30.34, number = 126, red = true},
},
  Robbery27= {
    Pos = {x = 367.66, y = -311.93, z = 45.67, number = 127, red = true},
},
  Robbery28= {
    Pos = {x = 55.38, y = -113.02, z = 54.95, number = 128, red = true},
},
  Robbery29= {
    Pos = {x = -355.61, y = -126.08, z = 38.38, number = 129, red = true},
},
  Robbery32= {
    Pos = {x = 114.28, y = 279.24, z = 108.93, number = 132, red = true},
},
}