if not readfile or not writefile or not isfile then
    game.Players.LocalPlayer:Kick('Your Executer does not support Texturepacks')
    return
end
local Startup = Instance.new('ScreenGui')
local Main = Instance.new('Frame')
local UICorner = Instance.new('UICorner')
local Infoholder = Instance.new('ScrollingFrame')
local Info = Instance.new('TextLabel')
local UICorner_2 = Instance.new('UICorner')
local Enter = Instance.new('TextBox')
local UICorner_3 = Instance.new('UICorner')
local Restoredecals = Instance.new('Folder')

Startup.Name = 'Startup'
Startup.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
Startup.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = 'Main'
Main.Parent = Startup
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderColor3 = Color3.fromRGB(40, 40, 40)
Main.Position = UDim2.new(0.179487184, 0, 0.131868139, 0)
Main.Size = UDim2.new(0, 576, 0, 335)

UICorner.Parent = Main

Infoholder.Name = 'Infoholder'
Infoholder.Parent = Main
Infoholder.Active = true
Infoholder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Infoholder.BorderColor3 = Color3.fromRGB(20, 20, 20)
Infoholder.Position = UDim2.new(0.015625, 0, 0.0350318551, 0)
Infoholder.Size = UDim2.new(0, 558, 0, 281)
Infoholder.ScrollBarThickness = 5

Info.Name = 'Info'
Info.Parent = Infoholder
Info.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Info.BorderColor3 = Color3.fromRGB(20, 20, 20)
Info.Position = UDim2.new(0.0123767918, 0, -0.00979396235, 0)
Info.Size = UDim2.new(0, 543, 0, 275)
Info.Font = Enum.Font.Code
Info.TextColor3 = Color3.fromRGB(0, 85, 0)
Info.TextSize = 16.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Info

Enter.Name = 'Enter'
Enter.Parent = Main
Enter.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Enter.BorderColor3 = Color3.fromRGB(20, 20, 20)
Enter.Position = UDim2.new(0.015625, 0, 0.900085568, 0)
Enter.Size = UDim2.new(0, 558, 0, 26)
Enter.ClearTextOnFocus = false
Enter.Font = Enum.Font.Code
Enter.Text = '
Enter.PlaceholderColor3 = Color3.fromRGB(0, 85, 0)
Enter.PlaceholderText = 'Enter Here'
Enter.TextColor3 = Color3.fromRGB(0, 85, 0)
Enter.TextSize = 16.000
Enter.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Enter

Restoredecals.Parent = game.CoreGui
local Data
local success, errmsg = pcall(function()
     Data = game:GetService('HttpService'):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/DoggoProgrammer/commandsinrblx/main/chat/version.json'))
end)
if success then
    Info.Text = '>>> VERSION: ' .. Data.Texturepack .. ' - Destroying Decals - WARNING: THIS MAY DELETE DECALS FOR THE GAME, IF SO, TYPE /restore TO RESTORE THE DECALS'
    for _, v in pairs(game:GetDescendants()) do
        if v.Name == 'DELETED_DECALS_TEXTUREPACK' then
            v:Destroy()
            return
        end
    end
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA('Decal') then
            v:Clone().Parent = Restoredecals
            v:Destroy()
            return
        end
    end
    
else
    Info.Text = '>>> ERROR: Could not get Version: ' .. errmsg .. ' - Sorry! Please Try again in a few minutes.'
    task.wait(5)
    Startup:Destroy()
end


