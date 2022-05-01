if not game:IsLoaded() then
  repeat
     print('Not Loaded!')
     task.wait(0.1)
  until game:IsLoaded()
end
local chat = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
rconsoleclear()
chat.ChildAdded:Connect(function(c)
     wait(0.5)
     rconsoleprint(c.TextLabel.TextButton.Text .. ' ' .. c.TextLabel.Text)
end)
