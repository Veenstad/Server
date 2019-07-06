RegisterServerEvent("kickForBeingAnAFKDouchebag")
AddEventHandler("kickForBeingAnAFKDouchebag", function()
	DropPlayer(source, "Je stond te lang stil! (AFK).")
end)