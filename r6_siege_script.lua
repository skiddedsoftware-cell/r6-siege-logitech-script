-- Rainbow Six Siege Logitech Script
-- Dual Mouse Button Activation (Left + Right Click)
-- DPI: 800 | Multiplier: 0.00223 | Sensitivity: 53/53

EnableScript = true
MULTIPLIER = 0.00223
SENSITIVITY = 2 -- Adjust for smoothness
DelayRate = 5 -- Lower delay = smoother movement
HORIZONTAL = 1 -- Adjust this value to pull right more or less

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    if EnableScript ~= false then
        if IsMouseButtonPressed(3) then -- Right mouse button
            repeat
                if IsMouseButtonPressed(1) then -- Left mouse button
                    MoveMouseRelative(HORIZONTAL, SENSITIVITY) -- Move RIGHT and DOWN for recoil control
                    Sleep(DelayRate)
                else
                    Sleep(5)
                end
            until not IsMouseButtonPressed(3)
        end
    end
end
