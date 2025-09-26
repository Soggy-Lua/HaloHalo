local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

local popup = Instance.new("Frame")
popup.Size = UDim2.new(0, 400, 0, 200)
popup.Position = UDim2.new(0.5, -200, 0.5, -100)
popup.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
popup.BackgroundTransparency = 0.2
popup.BorderSizePixel = 0
popup.Parent = screenGui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 380, 0, 60)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Text = "Script"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 20
label.TextWrapped = true
label.Parent = popup

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 380, 0, 50)
button.Position = UDim2.new(0, 10, 0, 80)
button.Text = "Copy Script Link"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
button.TextSize = 18
button.BorderSizePixel = 0
button.Parent = popup

local ScriptLink = "https://work.ink/23h3/27owytry"

local function copyToClipboard()
    local success, message = pcall(function()
        setclipboard(ScriptLink)
    end)
    
    if success then
        print("Script link copied to clipboard!")
    else
        print("Failed to copy Script link.")
    end
end

button.MouseButton1Click:Connect(copyToClipboard)
