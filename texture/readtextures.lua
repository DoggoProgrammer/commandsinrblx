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
local Texturepackloading = Instance.new("Frame")
local Message = Instance.new("TextLabel")
local Materials = {"Brick", "Cobblestone", "Concrete", "CorrodedMetal", "DiamondPlate", "Fabric", "Foil", "ForceField", "Glass", "Granite", "Grass", "Ice", "Marble", "Metal", "Neon", "Pebble", "Plastic", "Sand", "Slate", "SmoothPlastic", "Wood", "WoodPlanks"}

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

Texturepackloading.Name = "Texturepackloading"
Texturepackloading.Parent = game.StarterGui.ScreenGui
Texturepackloading.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Texturepackloading.BorderColor3 = Color3.fromRGB(60, 60, 60)
Texturepackloading.Size = UDim2.new(0, 930, 0, 455)
Texturepackloading.Visible = false

Message.Name = "Message"
Message.Parent = Texturepackloading
Message.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Message.BorderColor3 = Color3.fromRGB(90, 90, 90)
Message.Position = UDim2.new(0.0516129024, 0, 0.292307705, 0)
Message.Size = UDim2.new(0, 837, 0, 199)
Message.Font = Enum.Font.SourceSansBold
Message.Text = "Loading Texturepack"
Message.TextColor3 = Color3.fromRGB(255, 255, 255)
Message.TextSize = 16.000
Message.TextWrapped = true
Message.TextTruncate = Enum.TextTruncate.AtEnd
Message.TextXAlignment = Enum.TextXAlignment.Left
Message.TextYAlignment = Enum.TextYAlignment.Top

function gtp(txt)
    local Facing = {"Back", "Bottom", "Front", "Left", "Right", "Top"}
    local http = game:GetService('HttpService')
    local output = ''
    if txt:sub(1, 1) == '/' then
        http = http:JSONDecode(readfile(txt))
    else
        http = http:JSONDecode(game:HttpGet(txt))
    end
    local function oa(ot)
        output = output .. ot
    end
 ------------------------------------------------------------- the decal method
    Texturepackloading.Visible = true
    Message.Text = 'Loading Texturepack'
    for _, v in pairs(Materials) do
        for _, i in pairs(game:GetDescendants()) do
            local success, errmsg = pcall(function()
                 print(i.Material)
            end)
            if success then
                for x = 1, 6 do
                    local Decal = Instance.new("Decal")
                    Decal.Parent = i
                    Decal.Face = Enum.NormalId[Facing[x]]
                    Decal.Texture = http[tostring(i.Material)]
                end
            end
        end
    end
    Message.Text = 'Texturepack Loaded'
    task.wait(3)
    Texturepackloading.Visible = false
end
-------------------------------------------------------------
Search.FocusLost:Connect(function()
     Search.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
     Search.PlaceholderText = 'Enter The Url or to search Files, type a / before the name'
     local txt = Search.Text
     local http = game:GetService('HttpService')
     if txt:sub(1, 1) == '/' then
         print('Chose File')
         if isfile(txt) then
             local notp = Nameoftexturepack:Clone()
             notp.Parent = Results
             notp.Text = ''
             notp.Nameofthecreator.Text = http:JSONDecode(readfile(txt)).creatorname
             notp.Use.MouseButton1Click:Connect(function()
                  gtp(txt)
             end)
         else
             print('File was not Found')
             Search.Text = ''
             Search.PlaceholderColor3 = Color3.fromRGB(170, 0, 0)
             Search.PlaceholderText = 'That File was not found in workspace.'
         end
     else
         local success, errmsg = pcall(function()
              game:HttpGet(txt)
         end)
         if success then
             print('Loading Texturepack')
             gtp(txt)
         else
             print('Error whilst getting Texturepack from web')
             Search.Text = ''
             Search.PlaceholderColor3 = Color3.fromRGB(170, 0, 0)
             Search.PlaceholderText = errrmsg
         end
     end
end)

