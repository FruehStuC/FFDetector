--globals
    strngth ="bob"

-- name says all    
    function FreifunkFinden(t)

--sleeptime
    local sleeptime = 10000000
--because sometimes noones there
    if t ~= nil then
--need some metatable foo when FF not there

        local NoIndex = {
        __index = {["Freifunk"] = "0,-99,0"}
        }
        
        setmetatable(t, NoIndex)
        
        --print (t["Freifunk"])
        for token in string.gmatch(t["Freifunk"], ".,.(..).*") do
              strngth = token
        end
        --print (strngth)
        if tonumber(strngth) == 99 then
           ws2812.writergb(4, string.char(0, 0, 0))
           sleeptime = 10000000
        elseif (80 < tonumber(strngth)) and (tonumber(strngth) < 99) then
           ws2812.writergb(4, string.char(255, 0, 0))
           sleeptime = 3000000
        elseif (50 < tonumber(strngth)) and (tonumber(strngth) < 81) then
           ws2812.writergb(4, string.char(128, 128, 0))
           sleeptime = 3000000
        else
           ws2812.writergb(4, string.char(0, 255, 0))
           sleeptime = 3000000
        end
    end
    node.dsleep(sleeptime)
    end
        wifi.setmode(wifi.STATION)
        wifi.sta.getap(FreifunkFinden)
