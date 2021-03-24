NoUselessMods = NoUselessMods or {}
NoUselessMods.Party = {}

function NoUselessMods.Party.Initialize()
	DestroyWindow("GroupWindow")
	DestroyWindow("GroupWindowPlayer1")
	DestroyWindow("GroupWindowPlayer2")
	DestroyWindow("GroupWindowPlayer3")
	DestroyWindow("GroupWindowPlayer4")
	DestroyWindow("GroupWindowPlayer5")
end