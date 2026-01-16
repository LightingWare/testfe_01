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

print("Initializing FE")
loadstring(game:HttpGet("https://raw.githubusercontent.com/LightingWare/testfe_01/refs/heads/main/main.lua"))()

SendMessage("Initializing FE")
