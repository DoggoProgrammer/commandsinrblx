while task.wait(60) do
    if not isfile('usesmm2cmdsmadebydoggo_3317_donotchangecontent.txt') then
        writefile('usesmm2cmdsmadebydoggo_3317_donotchangecontent', '')
    end
    if readfile('usesmm2cmdsmadebydoggo_3317_donotchangecontent') == '' then
        appendfile('usesmm2cmdsmadebydoggo_3317_donotchangecontent', '1')
    else
        local m = readfile('usesmm2cmdsmadebydoggo_3317_donotchangecontent')
        local r = m + 1
        writefile('usesmm2cmdsmadebydoggo_3317_donotchangecontent', r)
    end
end
