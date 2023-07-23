if CLIENT and Game.IsMultiplayer then return end

Hook.Add("character.created", "test", function (createdCharacter)

	local multiplier = 2
	
	if createdCharacter.SpeciesName == "Bonethresher" then
	createdCharacter.CharacterHealth.SetVitality(1200) else
	if createdCharacter.SpeciesName == "Charybdis" then
	createdCharacter.CharacterHealth.SetVitality(12000) else
	if createdCharacter.SpeciesName == "Crawler" then
	createdCharacter.CharacterHealth.SetVitality(250) else
	if createdCharacter.SpeciesName == "Crawlerbroodmother" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Crawlerhusk" then
	createdCharacter.CharacterHealth.SetVitality(250) else
	if createdCharacter.SpeciesName == "Cyborgworm" then
	createdCharacter.CharacterHealth.SetVitality(15000) else
	if createdCharacter.SpeciesName == "Defensebot" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Endworm" then
	createdCharacter.CharacterHealth.SetVitality(12000) else
	if createdCharacter.SpeciesName == "Fractalguardian" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Fractalguardian2" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Fractalguardian_emp" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Hammerheadgold" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Hammerheadmatriarch" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Humanhusk" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Husk" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Latcher" then
	createdCharacter.CharacterHealth.SetVitality(10000) else
	if createdCharacter.SpeciesName == "Moloch" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Molochblack" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Mudraptor" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Mudraptor_unarmored" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Portalguardian" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Spineling" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * 3) else
	if createdCharacter.SpeciesName == "Spineling_giant" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Tigerthresher" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier) else
	if createdCharacter.SpeciesName == "Watcher" then
	createdCharacter.CharacterHealth.SetVitality(createdCharacter.Vitality * multiplier)
	end
end)
