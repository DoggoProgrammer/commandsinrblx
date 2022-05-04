local conreader = {}

function conreader.start(sb)
    if sb == '' then
        game.Players.LocalPlayers:Kick('Better Chat could not start.')
    end
    local found = false
    for x = 1, sb:len() do
        if string.sub(sb, x, x) == ' ' then
            found = true
        else
            found = false
        end
    end
    if found == true then
        game.Players.LocalPlayers:Kick('Better Chat could not start.')
    end
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
    if sb == 'js.bc;' then
        rconsoleprint(connections .. '\n\n\nBetter Chat\n\nThe Script Is Starting')
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DoggoProgrammer/commandsinrblx/main/chat/main.lua'))()
    else
        rconsoleprint(connections .. '\n\n\nBetter Chat\n\nThe Script Is Starting, started by ' .. sb)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DoggoProgrammer/commandsinrblx/main/chat/main.lua'))()
    end
end

return conreader
