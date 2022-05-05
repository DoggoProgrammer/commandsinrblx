local Maingui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Search = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Results = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Template = Instance.new("Folder")
local Nameoftexturepack = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Use = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Nameofthecreator = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")

Maingui.Name = "Maingui"
Maingui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Maingui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Maingui
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderColor3 = Color3.fromRGB(40, 40, 40)
Main.Position = UDim2.new(0.172043011, 0, 0.118681319, 0)
Main.Size = UDim2.new(0, 610, 0, 347)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Main

Search.Name = "Search"
Search.Parent = Main
Search.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Search.BorderColor3 = Color3.fromRGB(50, 50, 50)
Search.Position = UDim2.new(0.0189104974, 0, 0.0219901055, 0)
Search.Size = UDim2.new(0, 586, 0, 23)
Search.Font = Enum.Font.SourceSansBold
Search.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
Search.PlaceholderText = "Enter The Url or to search Files, type a / before the name"
Search.Text = ""
Search.TextColor3 = Color3.fromRGB(200, 200, 200)
Search.TextSize = 16.000
Search.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Search

Results.Name = "Results"
Results.Parent = Main
Results.Active = true
Results.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Results.BorderColor3 = Color3.fromRGB(50, 50, 50)
Results.Position = UDim2.new(0.0189104918, 0, 0.11146497, 0)
Results.Size = UDim2.new(0, 586, 0, 293)
Results.ScrollBarThickness = 5

UIListLayout.Parent = Results
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 25)

Template.Name = "Template"
Template.Parent = Main

Nameoftexturepack.Name = "Nameoftexturepack"
Nameoftexturepack.Parent = Template
Nameoftexturepack.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Nameoftexturepack.BorderColor3 = Color3.fromRGB(40, 40, 40)
Nameoftexturepack.Position = UDim2.new(0.0102389082, 0, 0.0129683046, 0)
Nameoftexturepack.Size = UDim2.new(0, 513, 0, 21)
Nameoftexturepack.Font = Enum.Font.SourceSansBold
Nameoftexturepack.Text = "Test"
Nameoftexturepack.TextColor3 = Color3.fromRGB(100, 100, 100)
Nameoftexturepack.TextSize = 16.000
Nameoftexturepack.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Nameoftexturepack

Use.Name = "Use"
Use.Parent = Nameoftexturepack
Use.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Use.BorderColor3 = Color3.fromRGB(40, 40, 40)
Use.Position = UDim2.new(1.01399589, 0, 0, 0)
Use.Size = UDim2.new(0, 38, 0, 21)
Use.Font = Enum.Font.SourceSansBold
Use.Text = "Use"
Use.TextColor3 = Color3.fromRGB(100, 100, 100)
Use.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Use

Nameofthecreator.Name = "Nameofthecreator"
Nameofthecreator.Parent = Nameoftexturepack
Nameofthecreator.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Nameofthecreator.BorderColor3 = Color3.fromRGB(40, 40, 40)
Nameofthecreator.Position = UDim2.new(0, 0, 1.10000002, 0)
Nameofthecreator.Size = UDim2.new(0, 59, 0, 21)
Nameofthecreator.Font = Enum.Font.SourceSansBold
Nameofthecreator.Text = "Test"
Nameofthecreator.TextColor3 = Color3.fromRGB(100, 100, 100)
Nameofthecreator.TextSize = 16.000
Nameofthecreator.TextXAlignment = Enum.TextXAlignment.Left

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = Nameofthecreator

function gtp(txt)
end
Search.FocusLost:Connect(function()
     Search.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
     Search.PlaceholderText = 'Enter The Url or to search Files, type a / before the name'
     local txt = Search.Text
     local http = game:GetService('HttpService')
     if txt:sub(1, 1) == '/' then
         if isfile(txt) then
             local notp = Nameoftexturepack:Clone()
             notp.Parent = Results
             notp.Text = ''
             notp.Nameofthecreator.Text = http:JSONDecode(readfile(txt)).creatorname
             notp.Use.MouseButton1Click:Connect(function()
                  gtp(txt)
             end)
         else
             Search.Text = ''
             Search.PlaceholderColor3 = Color3.fromRGB(170, 0, 0)
             Search.PlaceholderText = 'That File was not found in workspace.'
         end
     else
         local success, errmsg = pcall(function()
              game:HttpGet(txt)
         end)
         if success then
             gtp(txt)
         else
             Search.Text = ''
             Search.PlaceholderColor3 = Color3.fromRGB(170, 0, 0)
             Search.PlaceholderText = errrmsg
         end
     end
end)

