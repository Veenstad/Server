ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
end)

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
end)

ESX.RegisterUsableItem('stokbrood', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('stokbrood', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_stokbrood'))
end)

ESX.RegisterUsableItem('volkorentijgerbrood', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('volkorentijgerbrood', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_volkorentijgerbrood'))
end)

ESX.RegisterUsableItem('pistolet', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pistolet', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pistolet'))
end)

ESX.RegisterUsableItem('frikandelbroodje', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('frikandelbroodje', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_frikandelbroodje'))
end)

ESX.RegisterUsableItem('panini', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('panini', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_panini'))
end)

ESX.RegisterUsableItem('slagroomtaart', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('slagroomtaart', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_slagroomtaart'))
end)

ESX.RegisterUsableItem('bananenvlaai', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bananenvlaai', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bananenvlaai'))
end)

ESX.RegisterUsableItem('gevuldekoek', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gevuldekoek', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gevuldekoek'))
end)

ESX.RegisterUsableItem('tompoes', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tompoes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_tompoes'))
end)

ESX.RegisterUsableItem('moorkop', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('moorkop', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_moorkop'))
end)

ESX.RegisterUsableItem('chocodonut', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocodonut', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocodonut'))
end)

ESX.RegisterUsableItem('donutmetsprinkel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donutmetsprinkel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_donutmetsprinkel'))
end)

ESX.RegisterUsableItem('donutaardbei', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donutaardbei', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_donutaardbei'))
end)

ESX.RegisterUsableItem('donutbanaan', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donutbanaan', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_donutbanaan'))
end)

ESX.RegisterUsableItem('oliebol', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('oliebol', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 420000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_oliebol'))
end)

ESX.RegisterUsableItem('hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hamburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 340000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hamburger'))
end)

ESX.RegisterUsableItem('baconburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('baconburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 340000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_baconburger'))
end)

ESX.RegisterUsableItem('tripplecheeseburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tripplecheeseburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 470000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_tripplecheeseburger'))
end)

ESX.RegisterUsableItem('kipburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kipburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 340000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kipburger'))
end)

ESX.RegisterUsableItem('visburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('visburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 340000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_visburger'))
end)

ESX.RegisterUsableItem('nr91babipangang', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nr91babipangang', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 810000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nr91babipangang'))
end)

ESX.RegisterUsableItem('nr81foeyonghai', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nr81foeyonghai', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 670000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nr81foeyonghai'))
end)

ESX.RegisterUsableItem('nr71tjaptjoy', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nr71tjaptjoy', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 670000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nr71tjaptjoy'))
end)

ESX.RegisterUsableItem('nr41nasigoreng', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nr41nasigoreng', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 730000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nr41nasigoreng'))
end)

ESX.RegisterUsableItem('kroepoek', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kroepoek', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kroepoek'))
end)

ESX.RegisterUsableItem('gelukskoekje', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gelukskoekje', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gelukskoekje'))
end)

ESX.RegisterUsableItem('satestokjes', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('satestokjes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 230000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_satestokjes'))
end)

ESX.RegisterUsableItem('chiliconcarne', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chiliconcarne', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 440000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chiliconcarne'))
end)

ESX.RegisterUsableItem('burrito', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burrito', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 360000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_burrito'))
end)

ESX.RegisterUsableItem('taco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('taco', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_taco'))
end)

ESX.RegisterUsableItem('enchilada', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('enchilada', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 440000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_enchilada'))
end)

ESX.RegisterUsableItem('chimichanga', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chimichanga', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 620000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chimichanga'))
end)

ESX.RegisterUsableItem('banaan', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('banaan', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_banaan'))
end)

ESX.RegisterUsableItem('appel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('appel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 240000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_appel'))
end)

ESX.RegisterUsableItem('sinasappel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sinasappel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sinasappel'))
end)

ESX.RegisterUsableItem('peer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('peer', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_peer'))
end)

ESX.RegisterUsableItem('watermeloen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('watermeloen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 190000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_watermeloen'))
end)

ESX.RegisterUsableItem('hotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hotdog', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 240000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hotdog'))
end)

ESX.RegisterUsableItem('dubbelehotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('dubbelehotdog', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 390000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_dubbelehotdog'))
end)

ESX.RegisterUsableItem('hotdogzuurkool', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hotdogzuurkool', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 280000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hotdogzuurkool'))
end)

ESX.RegisterUsableItem('hotdoggefrituurdeui', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hotdoggefrituurdeui', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 260000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hotdoggefrituurdeui'))
end)

ESX.RegisterUsableItem('broodjebraadworst', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('broodjebraadworst', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 210000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_broodjebraadworst'))
end)

ESX.RegisterUsableItem('patat', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('patat', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_patat'))
end)

ESX.RegisterUsableItem('frikandel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('frikandel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_frikandel'))
end)

ESX.RegisterUsableItem('kroket', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kroket', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kroket'))
end)

ESX.RegisterUsableItem('bamischijf', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bamischijf', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 230000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bamischijf'))
end)

ESX.RegisterUsableItem('kipcorn', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kipcorn', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 210000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kipcorn'))
end)

ESX.RegisterUsableItem('pizzamargherita', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzamargherita', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 750000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pizzamargherita'))
end)

ESX.RegisterUsableItem('pizzapepperoni', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzapepperoni', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 750000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pizzapepperoni'))
end)

ESX.RegisterUsableItem('pizzaquatroformaggi', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaquatroformaggi', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 750000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pizzaquatroformaggi'))
end)

ESX.RegisterUsableItem('pizzacalzone', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzacalzone', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 750000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pizzacalzone'))
end)

ESX.RegisterUsableItem('pizzahawaii', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzahawaii', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 750000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pizzahawaii'))
end)

ESX.RegisterUsableItem('espresso', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('espresso', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_espresso'))
end)

ESX.RegisterUsableItem('cappuchino', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cappuchino', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cappuchino'))
end)

ESX.RegisterUsableItem('thee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('thee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_thee'))
end)

ESX.RegisterUsableItem('warmechoco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('warmechoco', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_warmechoco'))
end)

ESX.RegisterUsableItem('cola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cola'))
end)

ESX.RegisterUsableItem('colalight', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('colalight', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_colalight'))
end)

ESX.RegisterUsableItem('fanta', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fanta', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_fanta'))
end)

ESX.RegisterUsableItem('rivella', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rivella', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_rivella'))
end)

ESX.RegisterUsableItem('milkshakeaardbei', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('milkshakeaardbei', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_milkshakeaardbei'))
end)

ESX.RegisterUsableItem('milkshakebanaan', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('milkshakebanaan', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_milkshakebanaan'))
end)

ESX.RegisterUsableItem('milkshakechoco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('milkshakechoco', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_milkshakechoco'))
end)

ESX.RegisterUsableItem('vanilleijs', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vanilleijs', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_vanilleijs'))
end)

ESX.RegisterUsableItem('chocoladeijs', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocoladeijs', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocoladeijs'))
end)

ESX.RegisterUsableItem('stracciatellaijs', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('stracciatellaijs', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_stracciatellaijs'))
end)

ESX.RegisterUsableItem('bananenijs', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bananenijs', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bananenijs'))
end)

ESX.RegisterUsableItem('oreoijs', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('oreoijs', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_oreoijs'))
end)

ESX.RegisterUsableItem('koffie', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('koffie', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_koffie'))
end)

ESX.RegisterUsableItem('icetea', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('icetea', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_icetea'))

end)

ESX.RegisterUsableItem('limonade', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('limonade', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_limonade'))

end)

ESX.RegisterUsableItem('jusfruit', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('jusfruit', 1)
    
        TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
        TriggerClientEvent('esx_basicneeds:onDrink', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_jusfruit'))
    
end)

ESX.RegisterUsableItem('grapperaisin', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('grapperaisin', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_grapperaisin'))
    
end)

ESX.RegisterUsableItem('soda', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('soda', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
        TriggerClientEvent('esx_basicneeds:onDrink', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
    
end)

ESX.RegisterUsableItem('saucisson', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('saucisson', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_saucisson'))
    
end)

ESX.RegisterUsableItem('bolpistache', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('bolpistache', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_bolpistache'))
    
end)

ESX.RegisterUsableItem('bolnoixcajou', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('bolnoixcajou', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 80000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_bolnoixcajou'))
    
end)

ESX.RegisterUsableItem('bolchips', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('bolchips', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 160000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 9000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_bolchips'))
    
end)


ESX.RegisterUsableItem('bolcacahuetes', function(source)
    
        local xPlayer = ESX.GetPlayerFromId(source)
    
        xPlayer.removeInventoryItem('bolcacahuetes', 1)
    
        TriggerClientEvent('esx_status:add', source, 'hunger', 90000)
        TriggerClientEvent('esx_status:remove', source, 'thirst', 9000)
        TriggerClientEvent('esx_basicneeds:onEat', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_bolcacahuetes'))
    
end)

TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local target = tonumber(args[1])
		
		-- is the argument a number?
		if target ~= nil then
			
			-- is the number a valid player?
			if GetPlayerName(target) then
				print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing a player!')
				TriggerClientEvent('esx_basicneeds:healPlayer', target)
				TriggerClientEvent('chatMessage', target, "HEAL", {223, 66, 244}, "You have been healed!")
			else
				TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Player not found!")
			end
		else
			TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Incorrect syntax! You must provide a valid player ID")
		end
	else
		-- heal source
		print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing!')
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Insufficient Permissions.")
end, {help = "Heal a player, or yourself - restores thirst, hunger and health."})