-- its time to Troll kreek lol
local v_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Aaaaaaa/refs/heads/main/Old%20Vynixu%20Entity%20Spawner"))() -- Vynixu Entity Spawner deleted link
-- LMAO - say lsplash
local L_1_ = v_1.createEntity({
    CustomName = "A-60", -- his name
    Model = "https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/A60Troll.txt?raw=true", -- archived model: rbxassetid://unknown
    Speed = 200, -- his speed
    DelayTime = 0,
    HeightOffset = -1, -- Original A-60 Height Offset you can see his height offset in kreekcraft live
    CanKill = true, -- obviouslly
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- he don't flicker the lights
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- you wouldn't even notice if you weren't paying attention
        {1, 5, 0.1, 1}, -- original shake values
        90, -- omg
    },
    Jumpscare = {
        false, -- so, he don't have jumpcare? - no.
        {
            Image1 = "rbxassetid://0", -- Image1 url or id
            Image2 = "rbxassetid://0", -- Image2 url or id
            Shake = false,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Flashing = {
                false, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 0,
                Max = 0,
            },
        },
    },
    CustomDialog = {"You died to who you call A-60.", "You can only tell your presence by the sounds.", "Hide in a closet or go to an safe spot."}, -- original death message
})
 
-----[[ debug ]]-----
L_1_.Debug.OnEntitySpawned = function(entityTable)
local function L_2(GithubSnd,SoundName) -- New sound because the original sound id was deleted or archived (the sound is inside the model)
	local V_3_=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(V_3_))
	end
	local l_3=Instance.new("Sound")
	l_3.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return l_3
end -- my pastebin is HeitorGamer9743 (same name)
	local v_2 = L_2("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/A-60TrollSoundNotLoop.mp3?raw=true","A-60TrollSoundNotLoop") v_2.Parent = workspace["A-60"].RushNew
	v_2.RollOffMaxDistance = 180
	v_2.Volume = 10
	v_2.RollOffMode = "LinearSquare"
	v_2.Name = "Footsteps"
	v_2.Looped = true
	v_2:Play()
end
------------------------
 
-- kreek forgot to speak
v_1.runEntity(L_1_)
