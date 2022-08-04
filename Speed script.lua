--Created by Gilejc
local plrHum = game.Players.LocalPlayer.Character.Humanoid
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")
local TextButton3 = Instance.new("TextButton")
local TextButton4 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
sure = true
if sure then
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255,0,0)
Frame.BorderSizePixel = 100
Frame.Position = UDim2.new(0.174980634, 0, 0.500232868, 0)
Frame.Size = UDim2.new(0, 233, 0, 150)
Frame.Style = Enum.FrameStyle.DropShadow
Frame2.Parent = ScreenGui
Frame2.Position = UDim2.new(0.08,0,0.1,0)
Frame2.Size = UDim2.new(0,50,0,50)
Frame2.Style = Enum.FrameStyle.DropShadow


TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(120, 255, 120)
TextButton.Position = UDim2.new(0.0308252871, 0, 0.2307133197, 0)
TextButton.Size = UDim2.new(0, 200, 0, 40)
--TextButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "x2 speed"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.fromRGB(120, 255, 120)
TextButton2.Position = UDim2.new(0.0308252871, 0, 0.6017133197, 0)
TextButton2.Size = UDim2.new(0, 200, 0, 40)
--TextButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "/2 speed"
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.TextScaled = true
TextButton2.TextSize = 14.000
TextButton2.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Made by Gilejc"
TextLabel.Position = UDim2.new(0.21,0,0.95,0)
TextLabel.TextColor3 = Color3.fromRGB(200,200,200)

TextLabel2.Parent = Frame
TextLabel2.BackgroundTransparency = 1
TextLabel2.Text = "Speed: " .. plrHum.WalkSpeed
TextLabel2.Position = UDim2.new(0.5,0,0.10,0)
TextLabel2.TextSize = 17.000
TextLabel2.TextColor3 = Color3.fromRGB(255,255,255)

TextButton3.Parent = Frame2
TextButton3.BackgroundColor3 = Color3.fromRGB(120,255,120)
TextButton3.Position = UDim2.new(0.08,0,0.1,0)
TextButton3.Size = UDim2.new(0,40,0,40)
TextButton3.Font = Enum.Font.SourceSans
TextButton3.Text = "Open"
TextButton3.TextScaled = true
TextButton3.TextSize = 14.000
TextButton3.TextWrapped = true
Frame.Visible = false



--Script part

local Script = Instance.new("BoolValue")
Script.Parent = TextButton3
local disabled = false
local player = game.Players.LocalPlayer
local plrChar = player.Character
local InfDisabled = Instance.new("BoolValue")
InfDisabled.Name = ("InfDisabled")
InfDisabled.Parent = player

TextButton3.MouseButton1Click:Connect( function() 
    if disabled == false then
        disabled = true
        InfDisabled.Value = true
        TextButton3.Text = "Close"
        Frame.Visible = true
        else
        disabled = false
        InfDisabled.Value = false
        TextButton3.Text = "Open"
        Frame.Visible = false
    end  
end)
local work = false
TextButton.MouseButton1Click:Connect( function() 
    if disabled and InfDisabled then
        plrHum.WalkSpeed = plrHum.WalkSpeed * 2
        TextLabel2.Text = "Speed: " .. plrHum.WalkSpeed
    end
end)
TextButton2.MouseButton1Click:Connect( function()
    if disabled and InfDisabled then
        plrHum.WalkSpeed = plrHum.WalkSpeed / 2
        TextLabel2.Text = "Speed: " .. plrHum.WalkSpeed
    end
end)




--wait(10)
--ScreenGui.Parent  = game.ReplicatedStorage
