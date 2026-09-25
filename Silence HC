local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Aaaaaaa/refs/heads/main/Old%20Vynixu%20Entity%20Spawner"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Silence", -- Custom name of your entity
    Model = "rbxassetid://11535812658", -- Can be GitHub file or rbxassetid
    Speed = 60, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled/Disabled
        80, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {5, 40, 0.1, 1}, -- Shake values (don't change if you don't know)
        90, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://0", -- Image1 url
            Image2 = "rbxassetid://0", -- Image2 url
            Shake = false,
            Sound1 = {
                103879029437685, -- SoundId
                { Volume = 0.9 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.9 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(48, 25, 52), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 2,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Silence", "He is quiet, so he never warns when he is coming.", "Stay quiet to hear him. Hide in a closet or stay away from him."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnDeath = function(entityTable)
    warn("dead")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
