if not game:IsLoaded() then
  repeat
     print('Not Loaded!')
     task.wait(0.1)
  until game:IsLoaded()
end
local ScreenGui = Instance.new("ScreenGui")
local Chat = Instance.new("Frame")
local Messagelog = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UICorner = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Settings = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

ScreenGui.Name = math.random(11, 99) .. math.random(11, 99) .. math.random(11, 99) .. math.random(11, 99) .. '-' .. math.random(11, 99) .. math.random(11, 99) .. math.random(11, 99) .. math.random(11, 99) .. '-' .. math.random(11, 99) .. math.random(11, 99)
ScreenGui.Parent = game.CoreGui

Chat.Name = "Chat"
Chat.Parent = ScreenGui
Chat.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Chat.BorderColor3 = Color3.fromRGB(30, 30, 30)
Chat.Position = UDim2.new(0.174193561, 0, 0.127472535, 0)
Chat.Size = UDim2.new(0, 605, 0, 338)
Chat.Active = true --// yes i was too lazy to do it the other way
Chat.Draggable = true --// yes yes i know i know

Messagelog.Name = "Messagelog"
Messagelog.Parent = Chat
Messagelog.Active = true
Messagelog.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Messagelog.BorderColor3 = Color3.fromRGB(30, 30, 30)
Messagelog.Position = UDim2.new(0.0174165089, 0, 0.0234946068, 0)
Messagelog.Size = UDim2.new(0, 583, 0, 304)
Messagelog.ScrollBarThickness = 5

UIListLayout.Parent = Messagelog
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

UICorner.Parent = Chat

Message.Name = "Message"
Message.Parent = Chat
Message.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Message.BorderColor3 = Color3.fromRGB(35, 35, 35)
Message.Position = UDim2.new(0.010291595, 0, 0.0177514683, 0)
Message.Size = UDim2.new(0, 567, 0, 20)
Message.Visible = false
Message.Font = Enum.Font.SourceSansBold
Message.TextColor3 = Color3.fromRGB(100, 100, 100)
Message.TextSize = 16.000
Message.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Message

Clear.Name = "Clear"
Clear.Parent = Chat
Clear.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Clear.BorderColor3 = Color3.fromRGB(40, 40, 40)
Clear.Position = UDim2.new(0.252892554, 0, 0.940654337, 0)
Clear.Size = UDim2.new(0, 107, 0, 14)
Clear.Font = Enum.Font.SourceSansBold
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(100, 100, 100)
Clear.TextSize = 16.000

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Clear

Settings.Name = "Settings"
Settings.Parent = Chat
Settings.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Settings.BorderColor3 = Color3.fromRGB(40, 40, 40)
Settings.Position = UDim2.new(0.596694171, 0, 0.940654337, 0)
Settings.Size = UDim2.new(0, 107, 0, 14)
Settings.Font = Enum.Font.SourceSansBold
Settings.Text = "Settings"
Settings.TextColor3 = Color3.fromRGB(100, 100, 100)
Settings.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Settings

local chat = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
rconsoleclear()
chat.ChildAdded:Connect(function(c)
     wait(1)
     local newtemp = Message:Clone()
     newtemp.Parent = Messagelog
     newtemp.Text = '   ' .. c.TextLabel.TextButton.Text .. ' ' .. c.TextLabel.Text
     newtemp.Visible = true
end)
Clear.MouseButton1Click:Connect(function()
    for _, v in pairs(Messagelog:GetChildren()) do
        if v.Name == 'Message' and v.ClassName == 'TextLabel' then
            v:Destroy()
        end
    end
end)
Settings.MouseButton1Click:Connect(function()
    Settings.Text = 'Not There Yet!'
    wait(5)
    Settings.Text = 'Settings'
end)

