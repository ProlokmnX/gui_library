-- main.lua

local Notification = require("notification")

local GUILibrary = {}

function GUILibrary.new()
    local self = setmetatable({}, { __index = GUILibrary })
    self.notifications = {}
    return self
end

function GUILibrary:createNotification(options)
    local notification = Notification.new(options)
    table.insert(self.notifications, notification)
    return notification
end

return GUILibrary
