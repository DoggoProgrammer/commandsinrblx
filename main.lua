if not rconsoleprint or not rconsoleinput or not rconsolename then
  game.Players.LocalPlayer:Kick('Your Executer does not support this Script.')
end
rconsolename('Murder Mystery 2 Commands')
rconsoleprint('@@LIGHT_BLUE@@')
rconsoleprint('Murder Mystery 2 Commands\n\nMade By DoggoProgammer#3317\n\nCommands:\n.tp <plr name> - Teleports you given Player\n.tell - Tells you the Murderer and the Sheriff\n._tpmurderer - Teleports you to the Murderer\n._tpsheriff - Teleports you to the Sheriff\n._tplobby - Teleports you to the Lobby\n._tpmap - Teleports you to the Map\n.getgun - gets the dropped gun for you\n.crashmurderer - Crashes the murderer (DOES NOT WORK YET)\n.crashsheriff - Crashes the sheriff (DOES NOT WORK YET)\n.getfakeknife - Gives you the knife from the current murderer\n.getfakegun - Gives you the gun from the current sheriff\n\nTYPE FIRST COMMAND HERE: ')
rconsoleprint('@@GRAY@@')
function round()
for _, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == 'Coin_Server' then
      return true
    end
  end
end
function tell()
  if round() then
    local murderer = ""
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer then
            for i ,v in pairs(v.Backpack:GetChildren()) do
                if v.Name == "Knife" then
                    murderer = v.Parent.Parent.Name
                    rconsoleprint(murderer .. " is Murderer\n")
                end
            end
            if v ~= game:GetService("Players").LocalPlayer then
                for i, v in pairs(v.Character:GetChildren()) do
                    if v.Name == "Knife" then
                        murderer = v.Parent.Name
                        rconsoleprint(v.Parent.Name .. " is Murderer\n")
                    end
                end
            end
        end
    end
    local sheriff = ""
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer then
            for i ,v in pairs(v.Backpack:GetChildren()) do
                if v.Name == "Gun" then
                    sheriff = v.Parent.Parent.Name
                    rconsoleprint(sheriff .. " is Sheriff\n")
                end
            end
            if v ~= game:GetService("Players").LocalPlayer then
                for i, v in pairs(v.Character:GetChildren()) do
                    if v.Name == "Gun" then
                        sheriff = v.Parent.Name
                        rconsoleprint(v.Parent.Name .. " is Sheriff\n")
                    end
                end
            end
        end
    end
  else
    rconsolewarn('The Round did not start yet')
  end
end
---------------------------------------------------------------------------------------------
game:GetService('RunService').RenderStepped:Connect(function()
    local inp = tostring(rconsoleinput())
    if inp:sub(1, 3) == '.tp' then
      local found = false
      for _, v in pairs(game.Players:GetPlayers()) do
          if v.Name == inp:sub(5, inp:len()) then
              game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = v.Character:WaitForChild('HumanoidRootPart').CFrame
              found = true
          end
      end
      if found == false then
          rconsolewarn(inp:sub(5, inp:len()) .. ' - That Player could not be found')
      end
    elseif inp == '.tell' then
      tell()
    elseif inp == '._tpmurderer' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Knife" then
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players:FindFirstChild(v.Parent.Parent.Name).Character:WaitForChild('HumanoidRootPart').CFrame
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Knife" then
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players:FindFirstChild(v.Parent.Parent.Name).Character:WaitForChild('HumanoidRootPart').CFrame
                        end
                    end
                end
            end
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '._tpsheriff' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Gun" then
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players:FindFirstChild(v.Parent.Parent.Name).Character:WaitForChild('HumanoidRootPart').CFrame
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Gun" then
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players:FindFirstChild(v.Parent.Parent.Name).Character:WaitForChild('HumanoidRootPart').CFrame
                        end
                    end
                end
            end
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '._tplobby' then
      game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Workspace.Lobby.Spawns.Spawn.CFrame
    elseif inp == '._tpmap' then
      if round() then
        for _, v in pairs(game.Workspace:GetDescendants()) do
          if v.Name == 'Coin_Server' then
            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = v.Parent.Parent.Spawns.Spawn.CFrame
          end
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.getgun' then
      if round() then
        local found = false
        for _, v in pairs(game.Workspace:GetDescendants()) do
          if v.Name == 'GunDrop' then
            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = v.CFrame
            found = true
          end
        end
        if found == false then
          rconsolewarn('The Gun is not dropped yet')
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.getfakeknife' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Knife" then
                        v:Clone().Parent = game.Players.LocalPlayer.Character
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Knife" then
                            v:Clone().Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            end
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.getfakegun' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Gun" then
                        v:Clone().Parent = game.Players.LocalPlayer.Character
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Gun" then
                            v:Clone().Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            end
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.crashmurderer' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Knife" then
                        v:Clone().Parent = game.Players.LocalPlayer.Character
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Knife" then
                            v:Clone().Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            end
        end
        rconsoleprint('The Crash will begin in 2 Seconds, please equip the Fake Knife\n')
        task.wait(1)
        rconsoleprint('The Crash will begin in 1 Second, please equip the Fake Knife\n')
        task.wait(1)
        for x = 1, 9999 do
            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame * CFrame.new(0, -900, 0)
            task.wait(0.1)
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.crashsheriff' then
      if round() then
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            if v ~= game:GetService("Players").LocalPlayer then
                for i ,v in pairs(v.Backpack:GetChildren()) do
                    if v.Name == "Gun" then
                        v:Clone().Parent = game.Players.LocalPlayer.Character
                    end
                end
                if v ~= game:GetService("Players").LocalPlayer then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v.Name == "Gun" then
                            v:Clone().Parent = game.Players.LocalPlayer.Character
                        end
                    end
                end
            end
        end
        rconsoleprint('The Crash will begin in 2 Seconds, please equip the Fake Gun\n')
        task.wait(1)
        rconsoleprint('The Crash will begin in 1 Second, please equip the Fake Gun\n')
        task.wait(1)
        for x = 1, 9999 do
            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame * CFrame.new(0, -900, 0)
            task.wait(0.1)
        end
      else
        rconsolewarn('The Round did not start yet')
      end
    elseif inp == '.rejoin' then
      game:GetService('TeleportService'):Teleport(game.PlaceId)
    elseif inp == '.clear' then
      rconsoleclear()
    elseif inp == '.killall' then
      rconsoleprint('Please equip the Knife - Starting in 3 seconds\n')
      task.wait(3)
      for _, v in pairs(game.Players:GetPlayers()) do
          local cfr = v.Character:WaitForChild('HumanoidRootPart').CFrame
          v.Character:WaitForChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
          mouse1click()
          wait(0.2)
          mouse1click()
          v.Character:WaitForChild('HumanoidRootPart').CFrame = cfr
      end
    elseif inp == '.rejoin' then
      game:GetService('TeleportService'):Teleport(game.PlaceId)
    else
      rconsolewarn('That Command was not found')
    end
    
    
    
    
    
    
    
    ---------------------
    task.wait(1)
end)
