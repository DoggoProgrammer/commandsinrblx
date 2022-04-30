if isfile('bcs_settings.json') ~= true then
    rconsoleprint('Hello, seems like this is your first time using this Script.\n\nWe will start with the configuring.\nPlease Select a color you want for the messages that ping you.\n')
    rconsoleprint('@@BLUE@@')
    rconsoleprint('example: YOURNAME do you want to play in a private server?\n')
    rconsoleprint('@@WHITE@@')
    rconsoleprint('Colors:\n') --// this was a bit of pain...
    rconsoleprint('@@BLACK@@')
    rconsoleprint('Black\n')
    rconsoleprint('@@BLUE@@')
    rconsoleprint('Blue\n')
    rconsoleprint('@@GREEN@@')
    rconsoleprint('Green\n')
    rconsoleprint('@@CYAN@@')
    rconsoleprint('Cyan\n')
    rconsoleprint('@@RED@@')
    rconsoleprint('Red\n')
    rconsoleprint('@@MAGENTA@@')
    rconsoleprint('Magenta\n')
    rconsoleprint('@@BROWN@@')
    rconsoleprint('Brown\n')
    rconsoleprint('@@LIGHT_GRAY@@')
    rconsoleprint('Light Gray\n')
    rconsoleprint('@@DARK_GRAY@@')
    rconsoleprint('Dark Gray\n')
    rconsoleprint('@@LIGHT_BLUE@@')
    rconsoleprint('Light Blue\n')
    rconsoleprint('@@LIGHT_CYAN@@')
    rconsoleprint('Light Cyan\n')
    rconsoleprint('@@LIGHT_RED@@')
    rconsoleprint('Light Red\n')
    rconsoleprint('@@LIGHT_MAGENTA@@')
    rconsoleprint('Light Magenta\n')
    rconsoleprint('@@YELLOW@@')
    rconsoleprint('Yellow\n')
    rconsoleprint('@@WHITE@@')
    rconsoleprint('White\n')
    while task.wait(0.1) do --// this was also a bit of pain...
         local inp = rconsoleinput()
         if inp == 'Black' then
          writefile('bcs_settings.json', '{"COLOR": "BLACK", ')
          break
    elseif inp == 'Blue' then
          writefile('bcs_settings.json', '{"COLOR": "BLUE", ')
          break
    elseif inp == 'Green' then
          writefile('bcs_settings.json', '{"COLOR": "GREEN", ')
          break
    elseif inp == 'Cyan' then
          writefile('bcs_settings.json', '{"COLOR": "CYAN", ')
          break
    elseif inp == 'Red' then
          writefile('bcs_settings.json', '{"COLOR": "RED", ')
          break
    elseif inp == 'Magenta' then
          writefile('bcs_settings.json', '{"COLOR": "Magenta", ')
          break
    elseif inp == 'Brown' then
          writefile('bcs_settings.json', '{"COLOR": "Brown", ')
          break
    elseif inp == 'Light Gray' then
          writefile('bcs_settings.json', '{"COLOR": "LIGHT_GRAY", ')
          break
    elseif inp == 'Dark Gray' then
          writefile('bcs_settings.json', '{"COLOR": "DARK_GRAY", ')
          break
    elseif inp == 'Light Blue' then
          writefile('bcs_settings.json', '{"COLOR": "LIGHT_BLUE", ')
          break
    elseif inp == 'Light Cyan' then
          writefile('bcs_settings.json', '{"COLOR": "LIGHT_CYAN", ')
          break
    elseif inp == 'Light Red' then
          writefile('bcs_settings.json', '{"COLOR": "LIGHT_RED", ')
          break
    elseif inp == 'Light Magenta' then
          writefile('bcs_settings.json', '{"COLOR": "LIGHT_MAGENTA", ')
          break
    elseif inp == 'Yellow' then
          writefile('bcs_settings.json', '{"COLOR": "YELLOW", ')
          break
    elseif inp == 'White' then
          writefile('bcs_settings.json', '{"COLOR": "WHITE", ')
          break
      else
      rconsoleprint('NO')
        end
    end
    local tf = messagebox('Do you want the Displayed Chat to be in the Console or in a Gui? Yes = Console, No = Gui', 'Better Chat', 4)
    if tf == 6 then
        appendfile('bcs_settings.json', '"DISPLAYED": "CONSOLE"}')
    elseif tf == 7 then
        appendfile('bcs_settings.json', '"DISPLAYED": "GUI"}')
    else
        appendfile('bcs_settings.json', '"DISPLAYED": "CONSOLE"')
        rconsoleprint('Something went wrong, it will be displayed in the console.\n')
    end
    rconsoleprint('\nThe Configuration is now Done! Script will startup.')
    local chat = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui').Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
    local plr = game:GetService('Players').LocalPlayer
    local pingcolor = game:GetService('HttpService'):JSONDecode(readfile('bcs_settings.json'))
    task.wait(1)
    chat.ChildAdded:Connect(function(child)
         if child.Text:find(plr.Name) then
             rconsoleprint('@@' .. pingcolor.COLOR .. '@@')
             rconsoleprint('[' .. child.TextButton.Text .. ']: ' .. child.Text)
             rconsoleprint('@@WHITE@@')
         else
             rconsoleprint('[' .. child.TextButton.Text .. ']: ' .. child.Text)
         end
    end)
else
    local chat = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui').Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
    local plr = game:GetService('Players').LocalPlayer
    local pingcolor = game:GetService('HttpService'):JSONDecode(readfile('bcs_settings.json'))
    task.wait(1)
    chat.ChildAdded:Connect(function(child)
         if child.Text:find(plr.Name) then
             rconsoleprint('@@' .. pingcolor.COLOR .. '@@')
             rconsoleprint('[' .. child.TextButton.Text .. ']: ' .. child.Text)
             rconsoleprint('@@WHITE@@')
         else
             rconsoleprint('[' .. child.TextButton.Text .. ']: ' .. child.Text)
         end
    end)
end
