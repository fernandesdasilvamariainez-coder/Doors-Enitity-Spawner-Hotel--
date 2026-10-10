-- Create Spawner
local v_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Aaaaaaa/refs/heads/main/Old%20Vynixu%20Entity%20Spawner"))() 
-- Create entity
local v_2 = v_1.createEntity({
    CustomName = "A-60", -- Name
    Model = "https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/A60Troll.txt?raw=true", -- Entity
    Speed = 200, -- Speed
    DelayTime = 1, -- Time before starting moving
    HeightOffset = -1,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Not flicker
        1.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Camera Shake
        {1, 10, 0.1, 1}, -- Shake values (don't change if you don't know)
        90, -- Shake start distance (from A-60 to you)
    },
    Jumpscare = {
        false, -- It dont have jumpcare
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 2,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to A-60.", "This entity is unknown.", "It has a unique sound; if you hear it, hide!"}, -- Custom death message
})
 
-----[[ Advanced ]]-----
v_2.Debug.OnEntitySpawned = function(entityTable)
local function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end
	local A = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/A-60TrollSoundNotLoop.mp3?raw=true","A-60TrollSoundNotLoop") A.Parent = workspace["A-60"].RushNew
	A.RollOffMaxDistance = 180
	A.Volume = 10
	A.RollOffMode = "LinearSquare"
	A.Playing = true
	A.Looped = true
end
------------------------
 
-- Run A-60
v_1.runEntity(v_2)
