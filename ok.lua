getgenv().Version = "v1.0"
getgenv().AutoSpeed = false
getgenv().AutoFar = false
getgenv().AutoClick = false
getgenv().SelectedWorld = "1"

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Vapor Artworks ".. Version,
    LoadingTitle = "Loading Hub...",
    LoadingSubtitle = "by majestical",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "vaporartworks",
        FileName = "vaporlitefile"
    },
        Discord = {
            Enabled = true,
            Invite = "34tJXDPzvq",
            RememberJoins = false
        },
    KeySystem = false,
    KeySettings = {
        Title = "Vapor Artworks",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/34tJXDPzvq)",
        FileName = "vaporartworks_key",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = "https://pastebin.com/raw/kcEsdc3h" --tostring(KeyLol)
    }
})

local Op = Window:CreateTab("Overpowered", 7072716155) -- Title, Image
local OpSection = Op:CreateSection("Idk")

local a = Op:CreateButton({

    Name = "Insta Kill (must stand near)",
    Callback = function()

        for i = 1, 500 do

            game:GetService("ReplicatedStorage").System.SystemClick.Click:FireServer()
            
        end

    end,

})

local autoclick = Op:CreateToggle({
    Name = "Almost insta kill (Toggle)",
    CurrentValue = false,
    Flag = "almostinsta",
    Callback = function(Value)
        
        AutoClick = Value

        while AutoClick and task.wait() do

            game:GetService("ReplicatedStorage").System.SystemClick.Click:FireServer()
            
        end

    end,
})

local autospeed = Op:CreateToggle({
    Name = "Become Fast asf",
    CurrentValue = false,
    Flag = "fastasf",
    Callback = function(Value)
        
        AutoSpeed = Value

        while AutoSpeed and task.wait() do

            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
            
        end

    end,
})

local OpSection = Op:CreateSection("Autofarm")

local WorldSelection = Op:CreateDropdown({
	Name = "World to Autofarm",
	Options = {"1","2", "3", "4"},
	CurrentOption = "1",
	Flag = "WorldSelection", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)

        SelectedWorld = Option

	end,
})

local autofarmm = Op:CreateToggle({
    Name = "Start Autofarm [SOON]",
    CurrentValue = false,
    Flag = "autofarm",
    Callback = function(Value)
        
        AutoFar = Value

        --[[while AutoFar and task.wait() do

            for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do

                if v.Name == tostring(SelectedWorld) and v.Parent.Parent.Name == "Workspace" then

                    for _, vv in pairs(v.EnemyFolder:GetChildren()) do

                        repeat
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (vv.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                            wait()
                        until vv:FindFirstChild("Humanoid").Health == 0

                    end

                end

            end

        end]]

    end,
})

local PlrTab = Window:CreateTab("Player", 7072724538) -- Title, Image
    local PlrSection = PlrTab:CreateSection("Local Player")

    local WsSlider = PlrTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Walkspeed",
        CurrentValue = 16,
        Flag = "WsSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

        end,
    })

    local JsSlider = PlrTab:CreateSlider({
        Name = "JumpPower",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Jumpppeed",
        CurrentValue = 7.2,
        Flag = "JpSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value)

        end,
    })

    local fovSlider = PlrTab:CreateSlider({
        Name = "Field of View (FOV)",
        Range = {30, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = 70,
        Flag = "FovSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Workspace.Camera.FieldOfView = Value

        end,
    })
