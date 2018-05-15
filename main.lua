local skynet = require "skynet"

skynet.start(function()
    print("======server start ======")
    skynet.newservice("im_service")
    skynet.exit()
end)
