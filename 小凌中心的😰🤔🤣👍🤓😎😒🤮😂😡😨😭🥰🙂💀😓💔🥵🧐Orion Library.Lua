local rs = game:GetService("ReplicatedStorage")
local hit = rs.EnemyGetHit

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/agreed69-scripts/scripts/refs/heads/main/pphud%20fix.lua", true))() -- Not made by me but I fixed it and added size option
local Flags = Library.Flags

local Window = Library:Window({
   Text = "❤",
   Size = UDim2.new(0, 250, 0, 150)
})

local Tab = Window:Tab({
   Text = "汉化版 真作者:Agreed69"
})

local Section = Tab:Section({
    Text = "汉化：小凌"
})

Section:Button({
    Text = "杀死全部",
    Callback = function()
        for _, enemy in ipairs(game.Workspace.Enemies.dungeon:GetChildren()) do
            hit:FireServer(enemy, 100, true, "item6_rarity1")
        end
    end
})

Section:Check({
    Text = "反复杀死全部",
    Callback = function(bool)
        _G.kill = bool
        while _G.kill do
            for _, enemy in ipairs(game.Workspace.Enemies.dungeon:GetChildren()) do
                hit:FireServer(enemy, 100, true, "item6_rarity1")
            end
            wait(0.1)
        end
    end
})

Tab:Select()