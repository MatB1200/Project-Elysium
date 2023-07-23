if CLIENT and Game.IsMultiplayer then return end

Hook.Add("character.created", "test", function (createdCharacter)

	local multiplier = 2
	
	if createdCharacter.SpeciesName == "Mudraptor" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	print(createdCharacter.SpeciesName, " ", createdCharacter.Vitality)
	end
end)