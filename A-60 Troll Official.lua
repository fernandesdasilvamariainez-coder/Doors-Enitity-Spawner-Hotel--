-- Create Spawner (Original link is deleted so i made a new link and edited some stuff)
local v_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Aaaaaaa/refs/heads/main/Old%20Vynixu%20Entity%20Spawner"))() 
-- Create A-60 (Edited)
local v_2 = v_1.createEntity({
    CustomName = "A-60", -- Name
    Model = "https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/A60Troll.txt?raw=true", -- Entity (the model is deleted: rbxassetid://1383293729)
    Speed = 200, -- Speed (Original speed)
    DelayTime = 2, -- Time before starting moving (Original time)
    HeightOffset = -1, -- Entity off-set (Original you can see in Kreek video)
    CanKill = true, -- Obviously he kills you (Yes)
    KillRange = 40, -- Kill Range (Original)
    BreakLights = false, -- A-60 don't break the fucking lights (Sorry the profanity. but he don't break lights)
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Not flicker (In original)
        1.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Camera Shake (I didn't know it was shaking the camera, you can't even tell)
        {0.5, 10, 0.1, 1}, -- Shake values (i didn'n know)
        90, -- Shake start distance from A-60 to you (omg)
    },
    Jumpscare = {
        false, -- It dont have jumpcare
        {
            Image1 = "rbxassetid://10483855823", -- Image1 id or Url
            Image2 = "rbxassetid://10483999903", -- Image2 id or Url
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
-- I changed the link sound because the sound id was deleted and there isnt one and i changed completelly the A-60 debug
local function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end
	local v_3 = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/A-60TrollSoundNotLoop.mp3?raw=true","A-60TrollSoundNotLoop") v_3.Parent = workspace["A-60"].RushNew
	v_3.RollOffMaxDistance = 180
	v_3.Volume = 10
	v_3.RollOffMode = "LinearSquare"
	v_3.Playing = true
	v_3.Looped = true
	v_3.Name = "Footsteps"
end
------------------------
 
-- WTF A-60 IS HERE?? (yes)
v_1.runEntity(v_2)
