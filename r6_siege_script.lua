-- Rainbow Six Siege Logitech Script
-- Dual Mouse Button Activation (Left + Right Click)
-- DPI: 800 | Multiplier: 0.00223 | Sensitivity: 53/53

local leftMouseDown = false
local rightMouseDown = false

function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" then
        if arg == 1 then
            leftMouseDown = true
        elseif arg == 3 then
            rightMouseDown = true
        end
    elseif event == "MOUSE_BUTTON_RELEASED" then
        if arg == 1 then
            leftMouseDown = false
        elseif arg == 3 then
            rightMouseDown = false
        end
    elseif event == "MOUSE_MOVE" then
        if leftMouseDown and rightMouseDown then
            -- Both buttons pressed - apply movement
            local x, y = arg, 0
            MoveMouseRelative(x, y)
        end
    end
end
