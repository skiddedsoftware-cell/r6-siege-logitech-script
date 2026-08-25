-- Rainbow Six Siege Logitech Script
-- Dual Mouse Button Activation (Left + Right Click)
-- DPI: 800 | Multiplier: 0.00223 | Sensitivity: 53/53

EnableScript = true
MULTIPLIER = 0.00223
SENSITIVITY = 53
DelayRate = 7 -- in milliseconds

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    if EnableScript ~= false then
        if IsMouseButtonPressed(3) then -- Right mouse button (arg 3)
            repeat
                if IsMouseButtonPressed(1) then -- Left mouse button (arg 1)
                    repeat
                        MoveMouseRelative(0, SENSITIVITY) -- Move DOWN for recoil control
                        Sleep(DelayRate)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
end
