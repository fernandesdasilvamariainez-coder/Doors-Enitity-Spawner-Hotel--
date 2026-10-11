local C = loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Aaaaaaa/refs/heads/main/Old%20Vynixu%20Entity%20Spawner"))() 
-- Create entity
local v1 = C.createEntity({
    CustomName = "Rush", -- Custom name of your entity
    Model = "https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/Rush.txt?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {1.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        90, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
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
                Color3.fromRGB(180, 180, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 2,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush.", "He can make the lights flicker when he is coming.", "Hide in a closet or go to a safe spot. "}, -- Custom death message
})
 
-----[[ Advanced ]]-----
v1.Debug.OnEntitySpawned = function(entityTable)
    print("Rushed")
end
------------------------
 
-- Run the created entity
C.runEntity(v1)
