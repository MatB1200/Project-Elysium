if CLIENT and Game.IsMultiplayer then return end

Hook.Add("character.created", "test", function (createdCharacter)

	local multiplier = 2
	
	if createdCharacter.SpeciesName == "Bonethresher" then
	createdCharacter.CharacterHealth.SetVitality(1200)
        elseif createdCharacter.SpeciesName == "Charybdis" then
	createdCharacter.CharacterHealth.SetVitality(12000)
	elseif createdCharacter.SpeciesName == "Crawler" then
	createdCharacter.CharacterHealth.SetVitality(250)
	elseif createdCharacter.SpeciesName == "Crawlerbroodmother" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Crawlerhusk" then
	createdCharacter.CharacterHealth.SetVitality(250)
	elseif createdCharacter.SpeciesName == "Cyborgworm" then
	createdCharacter.CharacterHealth.SetVitality(15000)
	elseif createdCharacter.SpeciesName == "Defensebot" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) 
	elseif createdCharacter.SpeciesName == "Endworm" then
	createdCharacter.CharacterHealth.SetVitality(12000)
	elseif createdCharacter.SpeciesName == "Fractalguardian" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Fractalguardian2" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Fractalguardian_emp" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Hammerheadgold" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Hammerheadmatriarch" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Humanhusk" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Husk" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Latcher" then
	createdCharacter.CharacterHealth.SetVitality(10000)
	elseif createdCharacter.SpeciesName == "Moloch" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Molochblack" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Mudraptor" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Mudraptor_unarmored" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Portalguardian" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Spineling" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * 3)
	elseif createdCharacter.SpeciesName == "Spineling_giant" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Tigerthresher" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	elseif createdCharacter.SpeciesName == "Watcher" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	end
end)
