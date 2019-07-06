Config = {}

----------------------------------------------------
-------- Intervalles en secondes -------------------
----------------------------------------------------

-- Waiting time for antispam
Config.AntiSpamTimer = 2

-- Verification and allocation of a free place
Config.TimerCheckPlaces = 3

--Update of the message (emojis) and access to the free place for the lucky one
Config.TimerRefreshClient = 3

-- Number of points updating
Config.TimerUpdatePoints = 6

----------------------------------------------------
------------ Nombres de points ---------------------
----------------------------------------------------

-- Number of points earned for those who are waiting
Config.AddPoints = 1

-- Number of points lost for those who entered the server
Config.RemovePoints = 1

-- Number of points earned for those who have 3 identical emojis (lottery)
Config.LoterieBonusPoints = 0

-- Priority access
-- Admin = 10000
-- Moderator = 5000
-- Donateur = 2500
Config.Points = {
	{'steam:1100001057e3b2f', 10000}, -- Johnny
	{'steam:11000010e4c6ff3', 10000}, -- Tosti Thomas
	{'steam:11000010863baa4', 10000}, -- Stephan
	{'steam:11000011a2aeb11', 10000}, -- Chummytim
	{'steam:110000100f3f5b4', 10000}, -- Satansmom
	{'steam:11000010c1328b9', 10000}, -- Blizard
	{'steam:11000010a2f00a6', 5000},  -- SpikyBoy1999
	{'steam:110000115c8d44d', 5000},  -- Pandafag
	{'steam:1100001142d82ea', 5000},  -- Jordi
	{'steam:1100001099b96df', 2000},  -- Cromotag
	{'steam:11000010745e262', 1500},  -- wander1992
	{'steam:110000136472f1d', 1500},  -- Brandweer18
	{'steam:11000010458d710', 1500},  -- born arrow
	{'steam:110000100a07264', 1500},  -- The_Cell(412)
	{'steam:11000010a2e16b4', 1500},  -- Zoemiej
	{'steam:11000010c0a036c', 1500},  -- Adolf Weedler donateur
	{'steam:1100001325af064', 1000},  -- Bruce donateur
	{'steam:110000107a5577c', 1100},  -- BLENK donateur
	{'steam:110000104e3447c', 1100},  -- DLZ Psycho donateur
}

----------------------------------------------------
------------- Textes des messages ------------------
----------------------------------------------------

-- If steam is not detected
Config.NoSteam = "Steam is niet gedetecteerd. Start (opnieuw) Steam en FiveM op en probeer het opnieuw."

-- Waiting text
Config.EnRoute = "Je zit in de wachtrij"

-- "points" for RP purpose
Config.PointsRP = "punten"

-- position in the queue
Config.Position = "Je bent momenteel in positie "

-- Text before emojis
Config.EmojiMsg = "Verwijder je emojis in je naam en probeer opnieuw: "

-- When the player win the lottery
Config.EmojiBoost = "!!! Yes, " .. Config.LoterieBonusPoints .. " " .. Config.PointsRP .. " gewonnen !!!"

-- Anti-spam message
Config.PleaseWait_1 = "Even geduld aub "
Config.PleaseWait_2 = " seconden. De verbinding start automatisch!"

-- Should never be displayed
Config.Accident = "Oops, er ging iets fout... Als dit weet gebeurt. Meld het op discord.io/veenstad"

-- In case of negative points


Config.EmojiList = {
	'🐌', 
	'🐍',
	'🐎', 
	'🐑', 
	'🐒',
	'🐘', 
	'🐙', 
	'🐛',
	'🐜',
	'🐝',
	'🐞',
	'🐟',
	'🐠',
	'🐡',
	'🐢',
	'🐤',
	'🐦',
	'🐧',
	'🐩',
	'🐫',
	'🐬',
	'🐲',
	'🐳',
	'🐴',
	'🐅',
	'🐈',
	'🐉',
	'🐋',
	'🐀',
	'🐇',
	'🐏',
	'🐐',
	'🐓',
	'🐕',
	'🐖',
	'🐪',
	'🐆',
	'🐄',
	'🐃',
	'🐂',
	'🐁',
	'🔥'
}
