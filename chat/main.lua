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
