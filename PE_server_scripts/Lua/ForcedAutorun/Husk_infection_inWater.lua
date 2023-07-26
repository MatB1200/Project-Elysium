if CLIENT and Game.IsMultiplayer then return end

local delay = 10
local timer = 0
local huskInfection = AfflictionPrefab.Prefabs["huskinfection"]
local queue = {}
local stime = {}
math.randomseed(os.time())

function huskQueueAdd(character, startTime)
		for _, characterQueue in pairs(queue) do
			if character.DisplayName == characterQueue.DisplayName then return end
		end
		queue[#queue+1] = character
		stime[#stime+1] = startTime
		return
	end

Hook.Add("think", "huskofication", function()

	if Timer.GetTime() < timer then return end
	for _, character in pairs(Character.CharacterList) do
		if character.IsHuman then
			if character.IsDead then
				if character.InWater then
					huskQueueAdd(character, Timer.GetTime()+math.random(200, 550))
				end
			end
		end
	end
	
	for key, husk in pairs(queue) do
		if stime[key] < Timer.GetTime() then
			husk.Revive(true)
			husk.SetStun(100, true, true)
			husk.CharacterHealth.SetVitality(10)
			husk.CharacterHealth.ApplyAffliction(husk.AnimController.GetLimb(LimbType.Torso), huskInfection.Instantiate(100))
		end
	end
	
	for key, huskDel in pairs(queue) do
		if stime[key] < Timer.GetTime() then
			table.remove(queue, key)
			table.remove(stime, key)
		end
	end
	
	timer = Timer.GetTime() + delay
	
end)