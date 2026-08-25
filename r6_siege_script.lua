-- Rainbow Six Siege Logitech Script
-- Dual Mouse Button Activation (Left + Right Click)
-- DPI: 800 | Multiplier: 0.00223 | Sensitivity: 53/53

local leftMousePressed = false
local rightMousePressed = false
local scriptActive = false

-- Settings
local DPI = 800
local MULTIPLIER = 0.00223
local SENSITIVITY = 53
local SENSITIVITY_ADS = 53  -- Aiming Down Sights sensitivity

function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- Left mouse button pressed
        leftMousePressed = true
        CheckScriptActivation()
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        -- Left mouse button released
        leftMousePressed = false
        scriptActive = false
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 3) then
        -- Right mouse button pressed
        rightMousePressed = true
        CheckScriptActivation()
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 3) then
        -- Right mouse button released
        rightMousePressed = false
        scriptActive = false
    elseif (event == "MOUSE_MOVE" and scriptActive) then
        -- Only apply custom sensitivity when both buttons are pressed
        ApplyCustomSensitivity(arg)
    end
end

function CheckScriptActivation()
    -- Script only activates when BOTH left and right mouse buttons are pressed
    if (leftMousePressed and rightMousePressed) then
        scriptActive = true
    end
end

function ApplyCustomSensitivity(movement)
    -- Apply the custom sensitivity multiplier
    -- This adjusts mouse movement based on your DPI and sensitivity settings
    local adjustedMovement = movement * MULTIPLIER
    
    -- Move mouse with adjusted sensitivity
    MoveMouseRelative(adjustedMovement, 0)
end
