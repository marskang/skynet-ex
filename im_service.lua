local skynet = require "skynet"
local socket = require "skynet.socket"

ids = {}

local function echo(id)
    socket.start(id)
    table.insert(ids, 1)
    while true do
        local str = socket.read(id)
        if str then
            print(str)
        else
            socket.close(id)
            
            return
        end
    end
end

local function start(id, addr)
    echo(id)
end


skynet.start(function()
    print("======im service start======")
    local id = socket.listen("0.0.0.0", 8888)
    socket.start(id, start)
end)