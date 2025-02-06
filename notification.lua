-- notification.lua

local Notification = {}

function Notification.new(options)
    local self = setmetatable({}, { __index = Notification })

    -- Default options
    self.text = options.text or "Notification"
    self.textColor = options.textColor or {1, 1, 1} -- White color
    self.backgroundColor = options.backgroundColor or {0, 0, 0} -- Black background
    self.transparency = options.transparency or 0.5 -- 50% transparency
    self.duration = options.duration or 5 -- 5 seconds
    self.requireClick = options.requireClick or false
    self.textSize = options.textSize or 14
    self.imageId = options.imageId or nil -- Roblox image ID

    -- Animation properties
    self.animationSpeed = options.animationSpeed or 1
    self.isAnimating = false

    return self
end

function Notification:setTextColor(color)
    if type(color) == "table" and #color == 3 then
        self.textColor = color
    else
        error("Invalid color format. Use {r, g, b}.")
    end
end

function Notification:setBackgroundColor(color)
    if type(color) == "table" and #color == 3 then
        self.backgroundColor = color
    else
        error("Invalid color format. Use {r, g, b}.")
    end
end

function Notification:setTransparency(transparency)
    if transparency >= 0 and transparency <= 1 then
        self.transparency = transparency
    else
        error("Transparency must be between 0 and 1.")
    end
end

function Notification:setTextSize(size)
    if type(size) == "number" and size > 0 then
        self.textSize = size
    else
        error("Text size must be a positive number.")
    end
end

function Notification:setImageId(imageId)
    self.imageId = imageId
end

function Notification:show()
    -- Placeholder for showing the notification
    print("Showing notification: " .. self.text)
    self:animateIn()
end

function Notification:hide()
    -- Placeholder for hiding the notification
    print("Hiding notification: " .. self.text)
    self:animateOut()
end

function Notification:animateIn()
    self.isAnimating = true
    -- Placeholder for animation logic
    print("Animating in...")
    self.isAnimating = false
end

function Notification:animateOut()
    self.isAnimating = true
    -- Placeholder for animation logic
    print("Animating out...")
    self.isAnimating = false
end

return Notification
