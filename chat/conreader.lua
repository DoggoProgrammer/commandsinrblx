local version = game:GetService('HttpService'):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/DoggoProgrammer/commandsinrblx/main/chat/version.json'))
local as_sfbc = true
if not isfile('startup_betterchat.txt') then
    as_sfbc = false
end
if not isfile('cur_connections_betterchat.txt') then
    writefile('cur_connections_betterchat.txt', 'None')
end
rconsolename('startup betterchat')
rconsoleclear()
rconsoleprint('Current Console Version: ' .. version.Console .. '\nCurrent Gui Version: ' .. version.Gui .. '\nCurrent Connections: ')
local connections = readfile('cur_connections_betterchat.txt')
rconsoleprint(connections .. '\n\n\nBetter Chat')
