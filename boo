local entity = Creator.createEntity({
    CustomName = "Boocifer", -- Custom name of your entity
    Model = "rbxassetid:/12638381467", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2.75, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 30,
    BreakLights = true,
    FlickerLights = {
        false, -- Enabled
        1.55, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1.55,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11442031143", -- Image1 url
            Image2 = "rbxassetid://11442031143", -- Image2 url
            Shake = true,
            Sound1 = {
                12349913498, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                12349913498, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(136, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"Bruh?", "You died to Boocifer?", "But he's not in the game!", "You are a dirty hacker aren't you?", "Yeah, get on outta here."}
})

-- Run the created entity
Creator.runEntity(entity)
end,
})
