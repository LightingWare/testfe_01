if not game:IsLoaded() then game.Loaded:Wait() end

_G["FE"] = true
_G["Active"] = true

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local plr = Players.LocalPlayer :: Player
local cam = workspace.CurrentCamera
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:FindFirstAncestorOfClass("Humanoid") :: Humanoid
local hrp = char:WaitForChild("HumanoidRootPart") :: BasePart

-- loops
local mainLoop

-- util functions
function SendMessage(msg: string, duration: number)
    pcall(Function()
        game:GetService("StarterGui"):SetCore(
            "SendNotification", 
            {
                Title = script.Name;
                Text = msg;
                Icon = "rbxassetid://00000000000"; -- icon ID
                Duration = duration or 2
            }
        )
    end)
end

function GetRootPosition()
    return hrp.Position
end

function GetRootCFrame()
    return hrp.CFrame
end

death = hum.Died:Connect(function()
    _G["Active"] = false
    SendMessage("FE now inactive.")
    mainLoop:Disconnect()
    death:Disconnect()
    mainLoop = nil
    death = nil

    for _index, loop in Loops do
        if loop then 
            loop:Disconnect()
            loop = nil
        end
    end
end)

mainLoop = RunService.Heartbeat:Connect(function(deltaTime)
    if not _G["Active"] then return end 
    
    
end)
