if not jopod and getgenv().Version == 'Thai' then
    _G.Color = Color3.fromRGB(68, 202, 186)
    if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
    if getgenv().Version == 'Thai' then
        Thai_Version = true
    end
    if _G.Setting == nil then
        _G.Setting = {
            -- FPS Booster
            ['Black Screen'] = true,
            ['FPS Booster'] = true,
            ['Close Ui'] = false,
        
            -- 🌱 Level
            ['Auto Farm Level'] = false,
        
            --🩸 Sanguine Art
            ['Auto Buy Sanguine Art'] = false,
        
            -- 🌊 Leviathan
            ['Auto Get Leviathan Heart'] = false,
            ['Auto Farm Leviathan'] = false,
            ['Auto Reset Cooldown'] = false,
            ['Owner Beast Hunter'] = 'ZadeuixB06322',
        
            -- 🧩 Dark Fragment
            ['Auto Farm Darkbeard'] = false,
            ['Chest Order'] = 80,
        
            -- 🧩 Item cost to buy
            ['Auto Farm Demonic Wisps'] = false,
            ['Auto Farm Vampire Fangs'] = false,
        
            --🌀 Fox Lamp
            ['Auto Azure Random'] = false,
            ['Auto Farm Azure'] = false,
            ['Auto Hop Server Azure'] = false
        }
    end
    if _G.Setting['Chest Order'] == nil then
        _G.Setting['Chest Order'] = 80
    end
    if _G.Setting['Owner Beast Hunter'] == nil then
        _G.Setting['Owner Beast Hunter'] = '...'
    end
    
    local placeId = game.PlaceId
    if placeId == 2753915549 then
        Old_World = true
    elseif placeId == 4442272183 then
        New_World = true
    elseif placeId == 7449423635 then
        Three_World = true
    end
    
    local function click(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,false,a,1)
    end
    
    repeat wait(1)
        if game.Players.LocalPlayer.Team == nil and game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
            if _G.Setting['Select Team'] == 'Marines' then
                click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame)
            elseif _G.Setting['Select Team'] == 'Pirates' then
                click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame)
            else
                click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame)
            end
        end
    until game.Players.localPlayer.Neutral == false
    
    if Three_World then
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            FullMoon_X = "100%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            FullMoon_X = "75%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            FullMoon_X = "50%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            FullMoon_X = "25%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            FullMoon_X = "10%"
        else
            FullMoon_X = "0%"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Time : "..tostring(game:GetService("Lighting").TimeOfDay), 
            Text = " 🌕  Fullmoon "..FullMoon_X,
            Icon = "rbxassetid://17002601075",
            Duration = 5
        })
    end
    -- Save Setting
    game.Players.PlayerRemoving:Connect(function(player)
        if player == game.Players.LocalPlayer.Name and not TleP and _G.Setting['Rejoin'] then
            game:GetService('TeleportService'):Teleport(game.PlaceId)
            wait(50)
        end
    end)
    Save_Setting = tostring(game.Players.LocalPlayer.Name)
    
    getgenv()['JsonEncode'] = function(msg)
        return game:GetService("HttpService"):JSONEncode(msg)
    end
    getgenv()['JsonDecode'] = function(msg)
        return game:GetService("HttpService"):JSONDecode(msg)
    end
    getgenv()['Check_Setting'] = function(Name)
        if not _G.Dis and not isfolder('Switch Hub Pro') then
            makefolder('Switch Hub Pro')
        end
        if not _G.Dis and not isfile('Switch Hub Pro/'..Name..'.json') then
            writefile('Switch Hub Pro/'..Name..'.json',JsonEncode(_G.Setting))
        end
    end
    getgenv()['Get_Setting'] = function(Name)
        if not _G.Dis and isfolder('Switch Hub Pro') and isfile('Switch Hub Pro/'..Name..'.json') then
            _G.Setting = JsonDecode(readfile('Switch Hub Pro/'..Name..'.json'))
            return _G.Setting
        elseif not _G.Dis then
            Check_Setting(Name)
        end
    end
    getgenv()['Update_Setting'] = function(Name)
        if not _G.Dis and isfolder('Switch Hub Pro') and isfile('Switch Hub Pro/'..Name..'.json') then
            writefile('Switch Hub Pro/'..Name..'.json',JsonEncode(_G.Setting))
        elseif not _G.Dis then
            Check_Setting(Name)
        end
    end
    
    Check_Setting(Save_Setting)
    if _G.Save_Setting then
        Get_Setting(Save_Setting)
    end
    -- FPS Booster
    UserSettings():GetService("UserGameSettings").MasterVolume = 0
    UserSettings():GetService("UserGameSettings").SavedQualityLevel = 1
    spawn(function()
        while wait(5) do
            game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                if not Hop_S and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):TP(game.PlaceId)
                    wait(50)
                end
            end)
        end
    end)
    
    if _G.Setting['FPS Booster'] then
        --game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
        Succest = true
        shared.BC_1 = true
        shared.BC_2 = nil
    
        if shared.BC_1 and shared.BC_2 == nil then
            L_1 = game:GetService("Workspace");
            local L_2 = game:GetService("Lighting");
            L_3 = L_1.Terrain;
            L_4 = game:GetService("Players");
            L_5 = L_4.LocalPlayer.Character;
            
            L_3.WaterWaveSize = 0;L_3.WaterWaveSpeed = 0;L_3.WaterReflectance = 0;L_3.WaterTransparency = 0;
            L_2.GlobalShadows = false;L_2.FogEnd = tonumber(9e9);L_2.Brightness = 0;
            settings().Rendering.QualityLevel = "Level01";
            settings().Rendering.GraphicsMode = "NoGraphics";
            --sethiddenproperty(L_2, "Technology", "Compatibility");
            for i,v in pairs(L_1:GetDescendants()) do
                if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
                    v.Material = "Plastic";v.Reflectance = 0;v.CastShadow = false;
                elseif v.ClassName == "Decal" or v:IsA("Texture") then
                    v.Texture = 0;v.Transparency = 1;
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.LightInfluence = 0;v.Texture = 0;v.Lifetime = NumberRange.new(0);
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 0;v.BlastRadius = 0;
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false;
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic";v.Reflectance = 0;v.TextureId = 0;v.CastShadow = false;v.RenderFidelity = Enum.RenderFidelity.Performance;
                elseif v.ClassName == "SpecialMesh" then
                    v.TextureId = "rbxassetid://0";
                elseif v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                    v:Destroy();
                end
            end
            for i,v in pairs(L_2:GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false;
                end
            end
            for i,v in pairs(L_5:GetDescendants()) do
                if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                    v:Destroy();
                end
            end
    
            if game.PlaceId == 2753915549 or 4442272183 or 7449423635 then -- Blox Fruits
                if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("AirDash") then
                    --game:GetService("ReplicatedStorage").Effect.Container.Shared.AirDash:Destroy();
                end
                if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("LightningTP") then
                    --game:GetService("ReplicatedStorage").Effect.Container.Shared.LightningTP:Destroy();
                end
                if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Damage") then
                    --game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage:Destroy();
                end
                if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Confetti") then
                    --game:GetService("ReplicatedStorage").Effect.Container.Misc.Confetti:Destroy();
                end
                if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp") then
                    --game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy();
                end
            end
            shared.BC_2 = true
        end
    end
    
    -- Anti AFK
    spawn(function()
        while wait(150) do
            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
            wait(0.5)
            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
        end
     end)
     do
        local ui = game.CoreGui:FindFirstChild("Switch Hub")
        if ui then
            ui:Destroy()
        end
    end
    
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local tween = game:GetService("TweenService")
    local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
    local LogoButton = [[7040391851]]
    
    
    local function Tween(instance, properties,style,wa)
        if style == nil or "" then
            return Back
        end
        tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
    end
    
    local ActualTypes = {
        RoundFrame = "ImageLabel",
        Shadow = "ImageLabel",
        Circle = "ImageLabel",
        CircleButton = "ImageButton",
        Frame = "Frame",
        Label = "TextLabel",
        Button = "TextButton",
        SmoothButton = "ImageButton",
        Box = "TextBox",
        ScrollingFrame = "ScrollingFrame",
        Menu = "ImageButton",
        NavBar = "ImageButton"
    }
    
    local Properties = {
        RoundFrame = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554237731",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(3,3,297,297)
        },
        SmoothButton = {
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554237731",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(3,3,297,297)
        },
        Shadow = {
            Name = "Shadow",
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554236805",
            ScaleType = Enum.ScaleType.Slice,
            SliceCenter = Rect.new(23,23,277,277),
            Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
            Position = UDim2.fromOffset(-15,-15)
        },
        Circle = {
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5554831670"
        },
        CircleButton = {
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Image = "http://www.roblox.com/asset/?id=5554831670"
        },
        Frame = {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.fromScale(1,1)
        },
        Label = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5,0),
            Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        Button = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5,0),
            Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        Box = {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(5,0),
            Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        },
        ScrollingFrame = {
            BackgroundTransparency = 1,
            ScrollBarThickness = 0,
            CanvasSize = UDim2.fromScale(0,0),
            Size = UDim2.fromScale(1,1)
        },
        Menu = {
            Name = "More",
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Image = "http://www.roblox.com/asset/?id=5555108481",
            Size = UDim2.fromOffset(20,20),
            Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
        },
        NavBar = {
            Name = "SheetToggle",
            Image = "http://www.roblox.com/asset/?id=5576439039",
            BackgroundTransparency = 1,
            Size = UDim2.fromOffset(20,20),
            Position = UDim2.fromOffset(5,5),
            AutoButtonColor = false
        }
    }
    
    local Types = {
        "RoundFrame",
        "Shadow",
        "Circle",
        "CircleButton",
        "Frame",
        "Label",
        "Button",
        "SmoothButton",
        "Box",
        "ScrollingFrame",
        "Menu",
        "NavBar"
    }
    
    function FindType(String)
        for _, Type in next, Types do
            if Type:sub(1, #String):lower() == String:lower() then
                return Type
            end
        end
        return false
    end
    
    local Objects = {}
    
    function Objects.new(Type)
        local TargetType = FindType(Type)
        if TargetType then
            local NewImage = Instance.new(ActualTypes[TargetType])
            if Properties[TargetType] then
                for Property, Value in next, Properties[TargetType] do
                    NewImage[Property] = Value
                end
            end
            return NewImage
        else
            return Instance.new(Type)
        end
    end
    
    local function GetXY(GuiObject)
        local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
        local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
        return Px/Max, Py/May
    end
    
    local function CircleAnim(GuiObject, EndColour, StartColour)
        local PX, PY = GetXY(GuiObject)
        local Circle = Objects.new("Circle")
        Circle.Size = UDim2.fromScale(0,0)
        Circle.Position = UDim2.fromScale(PX,PY)
        Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
        Circle.ZIndex = 200
        Circle.Parent = GuiObject
        local Size = GuiObject.AbsoluteSize.X
        TweenService:Create(Circle, TweenInfo.new(0.2), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
        spawn(function()
            wait(0.5)
            Circle:Destroy()
        end)
    end
    
    
    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = nil
        local StartPosition = nil
    
        local function Update(input)
            local Delta = input.Position - DragStart
            local pos =
                UDim2.new(
                    StartPosition.X.Scale,
                    StartPosition.X.Offset + Delta.X,
                    StartPosition.Y.Scale,
                    StartPosition.Y.Offset + Delta.Y
                )
            local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
            Tween:Play()
        end
    
        topbarobject.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    DragStart = input.Position
                    StartPosition = object.Position
    
                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                Dragging = false
                            end
                        end
                    )
                end
            end
        )
    
        topbarobject.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
                then
                    DragInput = input
                end
            end
        )
    
        UserInputService.InputChanged:Connect(
            function(input)
                if input == DragInput and Dragging then
                    Update(input)
                end
            end
        )
    end
    
    library = {}
    
    function library:Window(text,text2,text3,logo,keybind)
        local uihide = false
        local abc = false
        local logo = logo or 0
        local currentpage = ""
        local keybind = keybind or Enum.KeyCode.RightControl
        local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
        
        local RippleHUBLIB = Instance.new("ScreenGui")
        RippleHUBLIB.Name = "Switch Hub"
        RippleHUBLIB.Parent = game.CoreGui
        RippleHUBLIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = RippleHUBLIB
        Main.ClipsDescendants = true
        Main.AnchorPoint = Vector2.new(0.5,0.5)
        Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Main.Size = UDim2.new(0, 0, 0, 0)
        
        Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
    
        local MCNR = Instance.new("UICorner")
        MCNR.Name = "MCNR"
        MCNR.Parent = Main
    
    
        local Top = Instance.new("Frame")
        Top.Name = "Top"
        Top.Parent = Main
        Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Top.Size = UDim2.new(0, 656, 0, 27)
    
        local TCNR = Instance.new("UICorner")
        TCNR.Name = "TCNR"
        TCNR.Parent = Top
    
        local Logo = Instance.new("ImageLabel")
        Logo.Name = "Logo"
        Logo.Parent = Top
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.Position = UDim2.new(0, 14, 0, 2)
        Logo.Size = UDim2.new(0, 23, 0, 23)
        Logo.Image = "rbxassetid://"..tostring(logo)
    
        local Name = Instance.new("TextLabel")
        Name.Name = "Name"
        Name.Parent = Top
        Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name.BackgroundTransparency = 1.000
        Name.Position = UDim2.new(0.0609756112, 5, 0, 0.5)
        Name.Size = UDim2.new(0, 61, 0, 27)
        Name.Font = Enum.Font.GothamSemibold
        Name.Text = text
        Name.TextColor3 = Color3.fromRGB(225, 225, 225)
        Name.TextSize = 16.000
    
        local Hub = Instance.new("TextLabel")
        Hub.Name = "Hub"
        Hub.Parent = Top
        Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hub.BackgroundTransparency = 1.000
        Hub.Position = UDim2.new(0, 105, 0, 0.5)
        Hub.Size = UDim2.new(0, 81, 0, 27)
        Hub.Font = Enum.Font.GothamSemibold
        Hub.Text = text2
        Hub.TextColor3 = _G.Color
        Hub.TextSize = 16.000
        Hub.TextXAlignment = Enum.TextXAlignment.Left
    
        local Ver = Instance.new("TextLabel")
        Ver.Name = "Ver"
        Ver.Parent = Top
        Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ver.BackgroundTransparency = 1.000
        Ver.Position = UDim2.new(0.880561002, 0, 0, 1)
        Ver.Size = UDim2.new(0, 47, 0, 27)
        Ver.Font = Enum.Font.GothamSemibold
        Ver.Text = text3
        Ver.TextColor3 = _G.Color
        Ver.TextSize = 15.000
        --[[
        local time = Instance.new("TextLabel")
        time.Name = "time"
        time.Parent = Top
        time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        time.BackgroundTransparency = 1.000
        time.Position = UDim2.new(0.647561002, 0, 0, 1)
        time.Size = UDim2.new(0, 47, 0, 27)
        time.Font = Enum.Font.GothamSemibold
        time.Text = ''
        time.TextColor3 = Color3.fromRGB(220, 220, 220)
        time.TextSize = 15.000
        time.TextTransparency = 0.5
        
        local timeserver = Instance.new("TextLabel")
        timeserver.Name = "timeserver"
        timeserver.Parent = Top
        timeserver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        timeserver.BackgroundTransparency = 1.000
        timeserver.Position = UDim2.new(0.447561002, 0, 0, 1)
        timeserver.Size = UDim2.new(0, 47, 0, 27)
        timeserver.Font = Enum.Font.GothamSemibold
        timeserver.Text = ''
        timeserver.TextColor3 = Color3.fromRGB(212,175,55)
        timeserver.TextSize = 15.000
        timeserver.TextTransparency = 0.5
    
        ]]
    
        local BindButton = Instance.new("TextButton")
        BindButton.Name = "BindButton"
        BindButton.Parent = Top
        BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BindButton.BackgroundTransparency = 1.000
        BindButton.Position = UDim2.new(0.227561002, 0, 0, 1)
        BindButton.Size = UDim2.new(0, 100, 0, 27)
        BindButton.Font = Enum.Font.GothamSemibold
        BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
        BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
        BindButton.TextSize = 11.000
        
        BindButton.MouseButton1Click:Connect(function ()
            BindButton.Text = "[ ... ]"
            local inputwait = game:GetService("UserInputService").InputBegan:wait()
            local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode
    
            if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
                BindButton.Text = "[ "..shiba.Name.." ]"
                yoo = shiba.Name
            end
        end)
    
        do  local ui =  game:GetService("CoreGui"):FindFirstChild("SWP")  if ui then ui:Destroy() end end
    
    
        local Luna = Instance.new("ScreenGui")
        local ToggleFrameUi = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local ToggleImgUi = Instance.new("ImageButton")
        local SearchStroke = Instance.new("UIStroke")
        
        
        Luna.Name = "SWP"
        Luna.Parent = game.CoreGui
        Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        ToggleFrameUi.Name = "ToggleFrameUiX"
        ToggleFrameUi.Parent = Luna
        ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        ToggleFrameUi.Position = UDim2.new(0.5, 0,-0.05, 0)
        ToggleFrameUi.Size = UDim2.new(0, 48, 0, 48)
        
        SearchStroke.Thickness = 1
        SearchStroke.Name = ""
        SearchStroke.Parent = ToggleFrameUi
        SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
        SearchStroke.Color = _G.Color
        SearchStroke.Transparency = 0
        
        UICorner.CornerRadius = UDim.new(0, 100)
        UICorner.Parent = ToggleFrameUi
        
        ToggleImgUi.Name = "ToggleImgUi"
        ToggleImgUi.Parent = ToggleFrameUi
        ToggleImgUi.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
        ToggleImgUi.BackgroundTransparency = 1
        ToggleImgUi.Position = UDim2.new(0, 0, 0, 0)-- UDim2.new(0.0454545468, 0, 0.125000313, 0)
        ToggleImgUi.Size = UDim2.new(0, 48, 0, 48)
        ToggleImgUi.Image = "http://www.roblox.com/asset/?id=17002601075"
        ToggleImgUi.ImageTransparency = 0
        ToggleFrameUi.BackgroundTransparency = 0
        SearchStroke.Transparency = 0
        
        ToggleImgUi.MouseButton1Click:Connect(function()
            if uihide == false then
                ToggleImgUi.ImageTransparency = 0.3
                uihide = true
                Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
                wait()
                ToggleImgUi.ImageTransparency = 0
            else
                ToggleImgUi.ImageTransparency = 0.3
                uihide = false
                Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.2,true)
                wait()
                ToggleImgUi.ImageTransparency = 0
            end
        end)
    
        UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode[yoo] then
                if uihide == false then
                    ToggleImgUi.ImageTransparency = 0.3
                    uihide = true
                    Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
                    wait()
                    ToggleImgUi.ImageTransparency = 0
                else
                    ToggleImgUi.ImageTransparency = 0.3
                    uihide = false
                    Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.2,true)
                    wait()
                    ToggleImgUi.ImageTransparency = 0
                end
            end
        end)
    
    do  local ui =  game:GetService("CoreGui"):FindFirstChild("RippleFPS")  if ui then ui:Destroy() end 
    local uix =  game:GetService("CoreGui"):FindFirstChild("Rippletime")  if uix then uix:Destroy() end end
    
        MakeDraggable(ToggleFrameUi,ToggleFrameUi)
        
    
        local Tab = Instance.new("Frame")
        Tab.Name = "Tab"
        Tab.Parent = Main
        Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Tab.Position = UDim2.new(0, 5, 0, 30)
        Tab.Size = UDim2.new(0, 150, 0, 265)
    
        local TCNR = Instance.new("UICorner")
        TCNR.Name = "TCNR"
        TCNR.Parent = Tab
    
        local ScrollTab = Instance.new("ScrollingFrame")
        ScrollTab.Name = "ScrollTab"
        ScrollTab.Parent = Tab
        ScrollTab.Active = true
        ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollTab.BackgroundTransparency = 1.000
        ScrollTab.Size = UDim2.new(0, 150, 0, 265)
        ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollTab.ScrollBarThickness = 0
    
        local PLL = Instance.new("UIListLayout")
        PLL.Name = "PLL"
        PLL.Parent = ScrollTab
        PLL.SortOrder = Enum.SortOrder.LayoutOrder
        PLL.Padding = UDim.new(0, 15)
    
        local PPD = Instance.new("UIPadding")
        PPD.Name = "PPD"
        PPD.Parent = ScrollTab
        PPD.PaddingLeft = UDim.new(0, 10)
        PPD.PaddingTop = UDim.new(0, 10)
    
        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Parent = Main
        Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Page.Position = UDim2.new(0.245426834, 0, 0, 30)
        Page.Size = UDim2.new(0, 490, 0, 265)
    
        local PCNR = Instance.new("UICorner")
        PCNR.Name = "PCNR"
        PCNR.Parent = Page
    
        local MainPage = Instance.new("Frame")
        MainPage.Name = "MainPage"
        MainPage.Parent = Page
        MainPage.ClipsDescendants = true
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Size = UDim2.new(0, 490, 0, 365)
    
        local PageList = Instance.new("Folder")
        PageList.Name = "PageList"
        PageList.Parent = MainPage
    
        local UIPageLayout = Instance.new("UIPageLayout")
    
        UIPageLayout.Parent = PageList
        UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
        UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
        UIPageLayout.FillDirection = Enum.FillDirection.Vertical
        UIPageLayout.Padding = UDim.new(0, 15)
        UIPageLayout.TweenTime = 0.400
        UIPageLayout.GamepadInputEnabled = false
        UIPageLayout.ScrollWheelInputEnabled = false
        UIPageLayout.TouchInputEnabled = false
        
        MakeDraggable(Top,Main)
    
        
        local uitab = {}
        
        function uitab:Tab(text,logo1)
            local TabButton = Instance.new("TextButton")
            TabButton.Parent = ScrollTab
            TabButton.Name = text.."Server"
            TabButton.Text = text
            TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabButton.BackgroundTransparency = 1.000
            TabButton.Size = UDim2.new(0, 130, 0, 23)
            TabButton.Font = Enum.Font.GothamSemibold
            TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
            TabButton.TextSize = 15.000
            TabButton.TextTransparency = 0.500
    
            local IDK = Instance.new("ImageLabel")
            IDK.Name = "LogoIDK"
            IDK.Parent = TabButton
            IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            IDK.BackgroundTransparency = 1.000
            IDK.Position = UDim2.new(0, 0, 0, 1)
            IDK.Size = UDim2.new(0, 20, 0, 20)
            IDK.Image = "rbxassetid://"..tostring(logo1)
    
    
            local MainFramePage = Instance.new("ScrollingFrame")
            MainFramePage.Name = text.."_Page"
            MainFramePage.Parent = PageList
            MainFramePage.Active = true
            MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MainFramePage.BackgroundTransparency = 1.000
            MainFramePage.BorderSizePixel = 0
            MainFramePage.Size = UDim2.new(0, 490, 0, 265)
            MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
            MainFramePage.ScrollBarThickness = 0
            local UICorner_2 = Instance.new("UICorner")
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = MainFramePage
            
            local UIPadding = Instance.new("UIPadding")
            local UIListLayout = Instance.new("UIListLayout")
            
            UIPadding.Parent = MainFramePage
            UIPadding.PaddingLeft = UDim.new(0, 10)
            UIPadding.PaddingTop = UDim.new(0, 10)
    
            UIListLayout.Padding = UDim.new(0,15)
            UIListLayout.Parent = MainFramePage
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            TabButton.MouseButton1Click:Connect(function()
                for i,v in next, ScrollTab:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                    TweenService:Create(
                        TabButton,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end
                for i,v in next, PageList:GetChildren() do
                    currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
                    if v.Name == currentpage then
                        UIPageLayout:JumpTo(v)
                    end
                end
            end)
    
            if abc == false then
                for i,v in next, ScrollTab:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(
                            v,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end
                    TweenService:Create(
                        TabButton,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end
                UIPageLayout:JumpToIndex(1)
                abc = true
            end
            
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
                    ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
                end)
            end)
    
            
            local main = {}
            function main:Button(text,callback)
                local Button = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextBtn = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local Black = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local IMGBUTTON = Instance.new("ImageLabel")
                
                Button.Name = "Button"
                Button.Parent = MainFramePage
                Button.BackgroundColor3 = _G.Color
                Button.Size = UDim2.new(0, 470, 0, 31)
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Button
                
    
                
                TextBtn.Name = "TextBtn"
                TextBtn.Parent = Button
                TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                TextBtn.Position = UDim2.new(0, 1, 0, 1)
                TextBtn.Size = UDim2.new(0, 468, 0, 29)
                TextBtn.AutoButtonColor = false
                TextBtn.Font = Enum.Font.GothamSemibold
                TextBtn.Text = text
                TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBtn.TextSize = 15.000
                TextBtn.ClipsDescendants = true
    
                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBtn
    
                IMGBUTTON.Name = "IconB"
                IMGBUTTON.Parent = TextBtn
                IMGBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                IMGBUTTON.BackgroundTransparency = 1.000
                IMGBUTTON.Position = UDim2.new(0, 10, 0, 5)
                IMGBUTTON.Size = UDim2.new(0, 20, 0, 20)
                IMGBUTTON.Image = "http://www.roblox.com/asset/?id=9606312215"
    
    
                Black.Name = "Black"
                Black.Parent = Button
                Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                Black.BackgroundTransparency = 1.000
                Black.BorderSizePixel = 0
                Black.Position = UDim2.new(0, 1, 0, 1)
                Black.Size = UDim2.new(0, 468, 0, 29)
                
                UICorner_3.CornerRadius = UDim.new(0, 5)
                UICorner_3.Parent = Black
    
                TextBtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Black,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.7}
                    ):Play()
                end)
                TextBtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Black,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 1}
                    ):Play()
                end)
                TextBtn.MouseButton1Click:Connect(function()
                    CircleAnim(TextBtn, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                    TextBtn.TextSize = 1
                    TweenService:Create(
                        TextBtn,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextSize = 15}
                    ):Play()
                    callback()
                end)
            end
            function main:Toggle(text,Imgidicon,config,callback,unlock)
                config = config or false
                unlock = unlock or false
                if config then
                    unlock = true
                end
                local toggled = config
                local Toggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Button = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local Label = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local Circle = Instance.new("Frame")
                local UICorner_4 = Instance.new("UICorner")
                local imgLabelIcon = Instance.new("ImageLabel")
                
                Toggle.Name = "Toggle"
                Toggle.Parent = MainFramePage
                Toggle.Size = UDim2.new(0, 470, 0, 31)
                Toggle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
                Toggle.BackgroundTransparency = 0
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Toggle
    
                Button.Name = "Button"
                Button.Parent = Toggle
                Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Button.Position = UDim2.new(0, 1, 0, 1)
                Button.Size = UDim2.new(0, 468, 0, 29)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.SourceSans
                Button.Text = ""
                Button.TextColor3 = Color3.fromRGB(0, 0, 0)
                Button.TextSize = 11.000
                Button.TextTransparency = 0
    
                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = Button
    
                Label.Name = "Label"
                Label.Parent = Toggle
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Position = UDim2.new(0, 1, 0, 1)
                Label.Size = UDim2.new(0, 468, 0, 29)
                Label.Font = Enum.Font.GothamSemibold
                Label.Text = text
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 15.000
                Label.TextTransparency = 0
    
                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                ToggleImage.Position = UDim2.new(0, 415, 0, 5)
                ToggleImage.Size = UDim2.new(0, 45, 0, 20)
                Toggle.BackgroundTransparency = 0
    
                UICorner_3.CornerRadius = UDim.new(0, 10)
                UICorner_3.Parent = ToggleImage
    
                Circle.Name = "Circle"
                Circle.Parent = ToggleImage
                Circle.BackgroundColor3 = Color3.fromRGB(255, 46, 46)
                Circle.Position = UDim2.new(0, 2, 0, 2)
                Circle.Size = UDim2.new(0, 16, 0, 16)
                Circle.BackgroundTransparency = 0
    
                UICorner_4.CornerRadius = UDim.new(0, 10)
                UICorner_4.Parent = Circle
                if not unlock then 
                    Imgidicon = '17017213730'
                end
                imgLabelIcon.Name = "Icon"
                imgLabelIcon.Parent = Toggle
                imgLabelIcon.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
                imgLabelIcon.Position = UDim2.new(0, 10, 0, 5)
                imgLabelIcon.Size = UDim2.new(0, 20, 0, 20)
                imgLabelIcon.BackgroundTransparency = 1
                imgLabelIcon.ImageColor3 = Color3.fromRGB(220, 220, 220)
                imgLabelIcon.Image = "http://www.roblox.com/asset/?id="..Imgidicon
                imgLabelIcon.ImageTransparency = 0
    
                if not unlock then
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(0, 470, 0, 31)
                    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- สีดำ (RGB: 0, 0, 0)
                    frame.BackgroundTransparency = 0.5 -- กำหนดความโปร่งใสของ Frame เป็น 0.5 (ไม่มืดเกินไปและไม่โปร่งใสเกินไป)
                    frame.Parent = Toggle -- กำหนด Parent ของ Frame ไปยัง Parent Gui ที่ต้องการ
                    local UICornerX = Instance.new("UICorner")
                    UICornerX.CornerRadius = UDim.new(0, 5)
                    UICornerX.Parent = frame
                    Imgidicon = '17017213730'
                end
                
                Button.MouseButton1Click:Connect(function()
                    if unlock then
                        if toggled == false then
                            toggled = true
                            Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                            TweenService:Create(
                                Toggle,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {BackgroundColor3 = _G.Color}
                            ):Play()
                            TweenService:Create(
                                Circle,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {BackgroundColor3 = _G.Color}
                            ):Play()
                        else
                            toggled = false
                            Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                            TweenService:Create(
                                Toggle,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
                            ):Play()
                            TweenService:Create(
                                Circle,
                                TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                                {BackgroundColor3 = Color3.fromRGB(255, 46, 46)}
                            ):Play()
                        end
                        pcall(callback,toggled)
                    end
                end)
    
                if config == true then
                    toggled = true
                    Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = _G.Color}
                    ):Play()
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = _G.Color}
                    ):Play()
                    pcall(callback,toggled)
                end
            end
            function main:Dropdown(text,old,option,callback)
                local isdropping = false
                local Dropdown = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local DropTitle = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local UIListLayout = Instance.new("UIListLayout")
                local UIPadding = Instance.new("UIPadding")
                local DropButton = Instance.new("TextButton")
                local DropImage = Instance.new("ImageLabel")
                
                Dropdown.Name = "Dropdown"
                Dropdown.Parent = MainFramePage
                Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Dropdown.ClipsDescendants = true
                Dropdown.Size = UDim2.new(0, 470, 0, 31)
                
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = Dropdown
                
                if type(old) == "string" then
                    DropTitle.Name = "DropTitle"
                    DropTitle.Parent = Dropdown
                    DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    DropTitle.BackgroundTransparency = 1.000
                    DropTitle.Size = UDim2.new(0, 470, 0, 31)
                    DropTitle.Font = Enum.Font.GothamSemibold
                    DropTitle.Text = text.. " : "..old
                    DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                    DropTitle.TextSize = 15.000
                else
                    DropTitle.Name = "DropTitle"
                    DropTitle.Parent = Dropdown
                    DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    DropTitle.BackgroundTransparency = 1.000
                    DropTitle.Size = UDim2.new(0, 470, 0, 31)
                    DropTitle.Font = Enum.Font.GothamSemibold
                    DropTitle.Text = text.. " : "
                    DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                    DropTitle.TextSize = 15.000
                end
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = DropTitle
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(0, 0, 0, 31)
                DropScroll.Size = UDim2.new(0, 470, 0, 100)
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
                DropScroll.ScrollBarThickness = 3
                
                UIListLayout.Parent = DropScroll
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 5)
                
                UIPadding.Parent = DropScroll
                UIPadding.PaddingLeft = UDim.new(0, 5)
                UIPadding.PaddingTop = UDim.new(0, 5)
                
                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdown
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 445, 0, 6)
                DropImage.Rotation = -90
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://6031090990"
                
                DropButton.Name = "DropButton"
                DropButton.Parent = Dropdown
                DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropButton.BackgroundTransparency = 1.000
                DropButton.Size = UDim2.new(0, 470, 0, 31)
                DropButton.Font = Enum.Font.SourceSans
                DropButton.Text = ""
                DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropButton.TextSize = 14.000
    
                for i,v in next,option do
                    local Item = Instance.new("TextButton")
    
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 460, 0, 26)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.Text = tostring(v)
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 13.000
                    Item.TextTransparency = 0.500
                    Item.ClipsDescendants = true
    
    
                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
    
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)
    
                    Item.MouseButton1Click:Connect(function()
                        CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = -90}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
                        callback(Item.Text)
                        DropTitle.Text = text.." : "..Item.Text
                    end)
                end
    
                DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
    
                DropButton.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
                    else
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = -90}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
                    end
                end)
    
                local dropfunc = {}
                function dropfunc:Add(t)
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 470, 0, 26)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.Text = tostring(t)
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 13.000
                    Item.TextTransparency = 0.500
                    Item.ClipsDescendants = true
    
                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
    
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)
    
                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        CircleAnim(Item, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
                        Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = -90}
                        ):Play()
                        DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
                        callback(Item.Text)
                        DropTitle.Text = text.." : "..Item.Text
                    end)
                end
                
                function dropfunc:Clear()
                    DropTitle.Text = tostring(text).." : "
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = -90}
                    ):Play()
                    for i,v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                return dropfunc
            end
    
            function main:Slider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local HAHA = Instance.new("Frame")
                local AHEHE = Instance.new("TextButton")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local slidervalue = Instance.new("Frame")
                local valuecorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")
    
                Slider.Name = "Slider"
                Slider.Parent = MainFramePage
                Slider.BackgroundColor3 = _G.Color
                Slider.BackgroundTransparency = 0
                Slider.Size = UDim2.new(0, 470, 0, 51)
    
                slidercorner.CornerRadius = UDim.new(0, 5)
                slidercorner.Name = "slidercorner"
                slidercorner.Parent = Slider
    
                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                sliderr.Position = UDim2.new(0, 1, 0, 1)
                sliderr.Size = UDim2.new(0, 468, 0, 49)
    
                sliderrcorner.CornerRadius = UDim.new(0, 5)
                sliderrcorner.Name = "sliderrcorner"
                sliderrcorner.Parent = sliderr
    
                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0, 15, 0, 0)
                SliderLabel.Size = UDim2.new(0, 180, 0, 26)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 16.000
                SliderLabel.TextTransparency = 0
                SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
    
                HAHA.Name = "HAHA"
                HAHA.Parent = sliderr
                HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HAHA.BackgroundTransparency = 1.000
                HAHA.Size = UDim2.new(0, 468, 0, 29)
    
                AHEHE.Name = "AHEHE"
                AHEHE.Parent = sliderr
                AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AHEHE.BackgroundTransparency = 1.000
                AHEHE.Position = UDim2.new(0, 10, 0, 35)
                AHEHE.Size = UDim2.new(0, 448, 0, 5)
                AHEHE.Font = Enum.Font.SourceSans
                AHEHE.Text = ""
                AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
                AHEHE.TextSize = 14.000
    
                bar.Name = "bar"
                bar.Parent = AHEHE
                bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                bar.Size = UDim2.new(0, 448, 0, 5)
    
                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = _G.Color
                bar1.BackgroundTransparency = 0
                bar1.Size = UDim2.new(set/max, 0, 0, 5)
    
                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Name = "bar1corner"
                bar1corner.Parent = bar1
    
                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Name = "barcorner"
                barcorner.Parent = bar
    
                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)
    
                UICorner.CornerRadius = UDim.new(0, 100)
                UICorner.Parent = circlebar
    
                slidervalue.Name = "slidervalue"
                slidervalue.Parent = sliderr
                slidervalue.BackgroundColor3 = _G.Color
                slidervalue.BackgroundTransparency = 0
                slidervalue.Position = UDim2.new(0, 395, 0, 5)
                slidervalue.Size = UDim2.new(0, 65, 0, 18)
    
                valuecorner.CornerRadius = UDim.new(0, 5)
                valuecorner.Name = "valuecorner"
                valuecorner.Parent = slidervalue
    
                TextBox.Parent = slidervalue
                TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                TextBox.Position = UDim2.new(0, 1, 0, 1)
                TextBox.Size = UDim2.new(0, 63, 0, 16)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBox.TextSize = 9.000
                TextBox.Text = set
                TextBox.TextTransparency = 0
    
                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox
    
                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
    
                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                AHEHE.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        TextBox.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        TweenService:Create(
                            bar1,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                        TweenService:Create(
                            circlebar,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                        --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            TweenService:Create(
                                bar1,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            --bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                            TweenService:Create(
                                circlebar,
                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {Position =  UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)} -- UDim2.new(0, 128, 0, 25)
                            ):Play()
                            --circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                        TextBox.Text = Value
                    end
                end)
    
                TextBox.FocusLost:Connect(function()
                    if tonumber(TextBox.Text) > max then
                        TextBox.Text  = max
                    end
                    bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
                    circlebar.Position = UDim2.new(1, -2, 0, -3)
                    TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
                    pcall(callback, TextBox.Text)
                end)
            end
    
            function main:Textbox(text,disappear,value,callback)
                local Textbox = Instance.new("Frame")
                local TextboxCorner = Instance.new("UICorner")
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxLabel = Instance.new("TextLabel")
                local txtbtn = Instance.new("TextButton")
                local RealTextbox = Instance.new("TextBox")
                local UICorner = Instance.new("UICorner")
    
                Textbox.Name = "Textbox"
                Textbox.Parent = MainFramePage
                Textbox.BackgroundColor3 = _G.Color
                Textbox.BackgroundTransparency = 0
                Textbox.Size = UDim2.new(0, 470, 0, 31)
    
                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.Parent = Textbox
    
                Textboxx.Name = "Textboxx"
                Textboxx.Parent = Textbox
                Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Textboxx.Position = UDim2.new(0, 1, 0, 1)
                Textboxx.Size = UDim2.new(0, 468, 0, 29)
    
                TextboxxCorner.CornerRadius = UDim.new(0, 5)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx
    
                TextboxLabel.Name = "TextboxLabel"
                TextboxLabel.Parent = Textbox
                TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxLabel.BackgroundTransparency = 1.000
                TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
                TextboxLabel.Text = text
                TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
                TextboxLabel.Font = Enum.Font.GothamSemibold
                TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextboxLabel.TextSize = 16.000
                TextboxLabel.TextTransparency = 0
                TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
    
                txtbtn.Name = "txtbtn"
                txtbtn.Parent = Textbox
                txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                txtbtn.BackgroundTransparency = 1.000
                txtbtn.Position = UDim2.new(0, 1, 0, 1)
                txtbtn.Size = UDim2.new(0, 468, 0, 29)
                txtbtn.Font = Enum.Font.SourceSans
                txtbtn.Text = ''
                txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                txtbtn.TextSize = 14.000
    
                RealTextbox.Name = "RealTextbox"
                RealTextbox.Parent = Textbox
                RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                RealTextbox.BackgroundTransparency = 0
                RealTextbox.Position = UDim2.new(0, 360, 0, 4)
                RealTextbox.Size = UDim2.new(0, 100, 0, 24)
                RealTextbox.Font = Enum.Font.GothamSemibold
                RealTextbox.Text = value
                RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                RealTextbox.TextSize = 11.000
                RealTextbox.TextTransparency = 0
    
                RealTextbox.FocusLost:Connect(function()
                    callback(RealTextbox.Text)
                    if disappear then
                        RealTextbox.Text = ""
                    end
                end)
                if value ~= '' then
                    callback(RealTextbox.Text)
                    RealTextbox.Text = value
                end
    
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = RealTextbox
            end
            function main:Label(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = MainFramePage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 470, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 16.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,0)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end
            function main:LabelX(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = MainFramePage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 470, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(218,165,32) --  68, 202, 186
                Label.TextSize = 15.500
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,0)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end
            function main:LabelP(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = MainFramePage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 470, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB( 68, 202, 186)
                Label.TextSize = 15.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
                Label.TextTransparency = 0.3
    
                PaddingLabel.PaddingLeft = UDim.new(0,25)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end
            function main:Seperator(text)
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = MainFramePage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 470, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = _G.Color
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 80, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 185, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = _G.Color
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 390, 0, 10)
                Sep3.Size = UDim2.new(0, 80, 0, 1)
            end
    
            function main:Line()
                local Linee = Instance.new("Frame")
                local Line = Instance.new("Frame")
                
                Linee.Name = "Linee"
                Linee.Parent = MainFramePage
                Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Linee.BackgroundTransparency = 1.000
                Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
                Linee.Size = UDim2.new(0, 470, 0, 20)
                
                Line.Name = "Line"
                Line.Parent = Linee
                Line.BackgroundColor3 = _G.Color
                Line.BorderSizePixel = 0
                Line.Position = UDim2.new(0, 0, 0, 10)
                Line.Size = UDim2.new(0, 470, 0, 1)
            end
            return main
        end
        return uitab
    end
    -- Ui
    local win = library:Window("Switch",[[Hub]],[[Version : Pro ]],"17002601075",Enum.KeyCode.RightControl)
    --local ui =  game:GetService("CoreGui"):FindFirstChild("RippleFPS")  if ui then ui:Destroy() end 
    --local uix =  game:GetService("CoreGui"):FindFirstChild("Rippletime")  if uix then uix:Destroy() end
    --local Quest_Tab = win:Tab("    Quest & Item",[[9606626859]])
    --local PvP_Tab = win:Tab("PvP",[[9606626034]])
    --local Raid_Tab = win:Tab("Raid",[[9606629300]])
    --local Shop_Tab = win:Tab("Shop",[[9606625251]])
    --local Island_Tab = win:Tab("Island",[[9606628205]])
    --local Setting_Tab = win:Tab("Setting",[[9606644121]])
    --local ----Status_Tab = win:Tab("Status",[[9613645002]])
    --local Esp_Tab = win:Tab("ESP",[[9606628205]])
    --local Hop_Tab = win:Tab("Hop",[[9608089732]])
    -- Elite Hunter 17360213573
    
    local General_Tab = win:Tab("ทั่วไป",[[7040391851]])
    local Material_Tab = win:Tab("ไอเทม",[[17840764957]])
    local Elite_Hunet_Tab = win:Tab("อีลิตฮันเตอร์",[[17360213573]])
    local Race_V4_Tab = win:Tab("เผ่าวี4",[[17017223013]])
    local Race_V3_Tab = win:Tab("เผ่าวี3",[[17236475826]])
    local Sanguine_Art_Tab = win:Tab("หมัดแวมไพร์",[[17002156992]])
    local Beast_Hunter_Tab = win:Tab("เรือดึงหัวใจ",[[17004318342]])
    local CDK_Tab = win:Tab("ดาบคู่",[[17892308749]])
    local Fox_Lamp_Tab = win:Tab("ฟ็อกแรม",[[17002474426]])
    local Shark_Anchor_Tab = win:Tab("สมอ",[[17002474426]])
    local Bounty_Tab = win:Tab("ล่าค่าหัว",[[17002202492]])
    local Raid_Tab = win:Tab("ลงดัน",[[9606629300]])
    local Shop_Tab = win:Tab("ร้านค้า",[[9606625251]])
    local Island_Tab = win:Tab("วาร์ป",[[9606628205]])
    local Setting_Tab = win:Tab("ตั้งค่า",[[9606644121]])
    -- Melee 17002156992
    -- Fruit 17002240711
    -- Sword 17002474426
    -- Quest 9606626859
    -- Pvp 17002202492
    -- boat 17004318342
    -- race 17017223013
    -- lock 17017213730
    -- race v3 17236475826
    -- Material 17840764957
    -- CDK 17892308749

    -- CDK
    CDK_Tab:Label("⚔️ ดาบคู่")
    CDK_Tab:Toggle("ออโต้ ฟามดาบคู่ (คลิกเดียว+ย้ายเซิฟ)","9606294253",_G.Setting['Auto Farm Cursed Dual Katana (One Click + Hop Server)'],function(vu)
        _G.Setting['Auto Farm Cursed Dual Katana (One Click + Hop Server)'] = vu
        Update_Setting(Save_Setting)
    end)
    CDK_Tab:LabelX('Tushita : ❌')
    CDK_Tab:LabelX('Yama : ❌')
    --[[
    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Setting['Auto Farm Cursed Dual Katana (One Click + Hop Server)'] then

                else
                    wait(2)
                end
            end)
        end
    end)
    ]]

    -- Tushita
    CDK_Tab:Label('🗡️ ทูชิต้า')
    CDK_Tab:Toggle("ออโต ฟามทูชิต้า (คลิกเดียว+ย้ายเซิฟ)","9606294253",_G.Setting['Auto Farm Tushita (One Click + Hop Server)'],function(vu)
        _G.Setting['Auto Farm Tushita (One Click + Hop Server)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    CDK_Tab:Toggle("ออโต้ ซื้อสีฮาคิรีเจนดารี","9606294253",_G.Setting['Auto Buy Color Legendary Buso Haki'],function(vu)
        _G.Setting['Auto Buy Color Legendary Buso Haki'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Quest_Tushita_S = CDK_Tab:LabelX('Quest Tushita : ')


    -- Yama 
    CDK_Tab:Label('🗡️ ยามะ')
    CDK_Tab:Toggle("ออโต้ ฟามยามะ (คลิกเดียว+ย้ายเซิฟ)","9606294253",_G.Setting['Auto Farm Yama (One Click + Hop Server)'],function(vu)
        _G.Setting['Auto Farm Yama (One Click + Hop Server)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local E_L_H_V = CDK_Tab:LabelX('Elite Hunters : 0/30')
    -- Material
    Material_Tab:Label("🧩 วัตถุดิบ")
    Material_Tab:Toggle("ออโต้ ฟามวัตถุดิบ","9606294253",_G.Setting['Auto Farm Material'],function(vu)
        _G.Setting['Auto Farm Material'] = vu
        Update_Setting(Save_Setting)
    end,true)
    if _G.Setting['Select Material'] == nil then
        _G.Setting['Select Material'] = '...'
    end
    local Material_List = {
        "Angel Wings","Leather","Magma Ore","Scrap Metal","Yeti Fur",
        "Bones","Ectpplasm","Fish Tail","Gunpowder","Mini Tusk","Mystic Droplet",
        "Radioactive Material","Vampire Fang","Candy","Conjured Cocoa","Demonic Wisp","Dragon Scale",
        "Meteorite"
    }
    function CheckMaterial(vu)
        -- First Sea
        if vu == "Angel Wings" then
            SelectMonster = "God's Guard"
            if not Old_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                wait(300)
            end
        elseif vu == "Leather" then
            SelectMonster = 'Marine Captain'
            if not Old_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                wait(300)
            end
        elseif vu == "Magma Ore" then
            SelectMonster = 'Military Spy'
            if not Old_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                wait(300)
            end
        elseif vu == "Scrap Metal" then
            SelectMonster = 'Pistol Billionaire'
            if not Old_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                wait(300)
            end
        elseif vu == "Fish Tail" then
            SelectMonster = 'Fishman Commando'
            if not Old_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                wait(300)
            end
        -- Second Sea
        elseif vu == "Ectpplasm" then
            SelectMonster = 'Ship Steward'
            if not New_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                wait(300)
            end
        elseif vu ==  "Mystic Droplet" then
            SelectMonster = 'Water Fighter'
            if not New_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                wait(300)
            end
        elseif vu == "Radioactive Material" then
            SelectMonster = 'Factory Staff'
            if not New_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                wait(300)
            end
        elseif vu == "Vampire Fang" then
            SelectMonster = 'Vampire'
            if not New_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                wait(300)
            end
        elseif vu == "Meteorite" then
            SelectMonster = 'Fajita'
            if not New_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                wait(300)
            end
        -- Third Sea
        elseif vu == "Bones" then 
            SelectMonster = 'Possessed Mummy'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        elseif vu == "Gunpowder" then
            SelectMonster = 'Pistol Billionaire'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        elseif vu == "Mini Tusk" then -- 2
            SelectMonster = 'Mythological Pirate'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        elseif vu == "Conjured Cocoa" then
            SelectMonster = 'Chocolate Bar Battler'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        elseif vu == "Demonic Wisp" then
            SelectMonster = 'Demonic Soul'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        elseif vu == "Dragon Scale" then
            SelectMonster = 'Dragon Crew Warrior'
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                wait(300)
            end
        end
    end
    Material_Tab:Dropdown("เลือกวัตถุดิบ",_G.Setting['Select Material'],Material_List,function(vu)
        if table.find(Material_List,vu) then
            Start_Farm_Material = true
        else
            Start_Farm_Material = false
        end
        _G.Setting['Select Material'] = vu
        Update_Setting(Save_Setting)
    end)
    local Material_Value = Material_Tab:LabelX('Select Material : ')
    Material_Tab:Label("🐟 วัตถุดิบทะเล")
    Material_Tab:Toggle("ออโต้ ฟามวัตถุดิบทะเล (คลิกเดียวได้ทั้งหมด)","9606294253",_G.Setting['Auto Farm Material Sea (All Material)'],function(vu)
        _G.Setting['Auto Farm Material Sea (All Material)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local E_W_Sx =  Material_Tab:LabelX("Electric Wings : 0")
    local M_T_T_Sx = Material_Tab:LabelX("Mutant Teeth : 0")
    local F_G_Sx = Material_Tab:LabelX("Fool's Golds : 0")
    local S_T_Sx = Material_Tab:LabelX("Shark Teeth : 0")
    local T_R_Ex = Material_Tab:LabelX("Terror Eyes : 0")
    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.Setting['Auto Farm Material Sea (All Material)'] and Three_World then
                    E_W_Sx:Set("Electric Wing : "..tostring(CheckItem_X('Electric Wing')))
                    M_T_T_Sx:Set("Mutant Tooth : "..tostring(CheckItem_X('Mutant Tooth')))
                    F_G_Sx:Set("Fool's Gold : "..tostring(CheckItem_X("Fool's Gold")))
                    S_T_Sx:Set("Shark Tooth : "..tostring(CheckItem_X('Shark Tooth')))
                    T_R_Ex:Set("Terror Eyes : "..tostring(CheckItem_X('Terror Eyes')))
                    wait(10)
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Race V3
    Race_V3_Tab:Label('🔥 อีโวเผ่า (มิงค์, สกายเปีย, เงือก, มนุษย์)')
    Race_V3_Tab:Toggle("ออโต้ อีโวเผ่าวี3","9606294253",_G.Setting['Evo Race V3 M'],function(vu)
        _G.Setting['Evo Race V3 M'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V3_Tab:Toggle("ออโต้ อีโวเผ่าวี2","9606294253",_G.Setting['Evo Race V2 M'],function(vu)
        _G.Setting['Evo Race V2 M'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V3_Tab:Toggle("ออโต้ อีโวเผ่าวี1","9606294253",_G.Setting['Evo Race V1 M'],function(vu)
        _G.Setting['Evo Race V1 M'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V3_Tab:Label('🌟 Evo Special Race (Ghoul, Cyborg)')
    Race_V3_Tab:Toggle("Auto Evo Race V3","9606294253",false,function(vu)
    
    end)
    Race_V3_Tab:Toggle("Auto Evo Race V2","9606294253",false,function(vu)
        
    end)
    Race_V3_Tab:Toggle("Auto Evo Race V1","9606294253",false,function(vu)
        
    end)
    Race_V3_Tab:Label('⚙️ ไซบอร์ก')
    Race_V3_Tab:Toggle("ออโต้ ทำเผ่าไซบอร์ก (คลิกเดียว+ย้ายเซิฟ)","9606294253",_G.Setting['Auto Cybrog'],function(vu)
        _G.Setting['Auto Cybrog'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Chest_Value = Race_V3_Tab:LabelX('จำนวนกล่อง :')
    Race_V3_Tab:Label('🩸 Ghoul')
    Race_V3_Tab:Toggle("Auto Farm Race Ghoul + Hop Server (One Click)","9606294253",false,function(vu)
    
    end)
    Race_V3_Tab:Label('💸 ร้านค้าเผ่า ')
    Race_V3_Tab:Button("สุ่มเผ่า (มิงค์, เงือก, มนุษย์, สกายเปีย)",function()
        local args = {
            [1] = "BlackbeardReward",
            [2] = "Reroll",
            [3] = "2"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    Race_V3_Tab:Button("ซื้อเผ่า กูล",function()
        local args = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    Race_V3_Tab:Button("ซื้อเผ่า ไซบอร์ก",function()
        local args = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
    
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    -- Island
    Island_Tab:Label('🌎 โลก')
    Island_Tab:Button("โดดไปโลก 1",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
    Island_Tab:Button("โดดไปโลก 2",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
    Island_Tab:Button("โดดไปโลก 3",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
    Island_Tab:Label('🏝️ ดินแดน')
    local Island_List = {}
    for i,v in pairs(game.Workspace.Map:GetChildren()) do
        if not table.find(Island_List,v.Name) then
            table.insert(Island_List,v.Name)
        end
    end
    if _G.Setting['Select Island'] == nil then
        _G.Setting['Select Island'] = ''
    end
    Island_Tab:Dropdown("เลือกดินแดน",_G.Setting['Select Island'],Island_List,function(vu)
        _G.Setting['Select Island'] = vu
        Update_Setting(Save_Setting)
    end)
    Island_Tab:Toggle("ออโต้ บินไปที่ดินแดน","9606294253",false,function(vu)
        Teleport_Is = vu
    end,true)
    spawn(function()
        while wait(.5) do
            if Teleport_Is then
                pcall(function()
                    if game:GetService("Workspace").Map:FindFirstChild(_G.Setting['Select Island']) then
                        local pointer = game:GetService("Workspace").Map:FindFirstChild(_G.Setting['Select Island']).WorldPivot
                        repeat wait(.3)
                            TP(pointer*CFrame.new(0,100,0))
                        until not Teleport_Is
                    end
                end)
            else
                wait(2)
            end
        end
    end)
    -- Shop
    Shop_Tab:Label('👊 หมัด')
    Shop_Tab:Button("Buy Superhuman",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)
    Shop_Tab:Button("Buy Death Step",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)
    Shop_Tab:Button("Buy Sharkman Karate",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)
    Shop_Tab:Button("Buy Electric Claw",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)
    Shop_Tab:Button("Buy Dragon Talon",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)
    Shop_Tab:Button("Buy Godhuman",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end)
    Shop_Tab:Button("Buy Sanguine Art",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end)
    Shop_Tab:Label('🗡️ ดาบ')
    Shop_Tab:Button("Buy Soul Cane",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)
    Shop_Tab:Button("Buy Bisento",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)
    Shop_Tab:Label('🔫 ปืน')
    Shop_Tab:Button("Buy SlingShot",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)
    Shop_Tab:Button("Buy Musket",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)
    Shop_Tab:Button("Buy FlintLock",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)
    Shop_Tab:Button("Buy Refined",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)
    Shop_Tab:Button("Buy Cannon",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)
    Shop_Tab:Button("Buy Kabucha",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end)
    Shop_Tab:Label('🍊 ผลปีศาจ')
    Shop_Tab:Button("สุ่ม ผลปีศาจ",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)
    Shop_Tab:Label('⚡ เผ่า')
    Shop_Tab:Button("สุ่มเผ่า",function()
        local args = {
            [1] = "BlackbeardReward",
            [2] = "Reroll",
            [3] = "2"
        }
        
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
    Shop_Tab:Label('💨 ความสามารถ')
    Shop_Tab:Button("ซื้อ ฮาคิ",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end)
    Shop_Tab:Button("ซื้อ ฮาคิสังเกต",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end)
    Shop_Tab:Button("ซื้อ โซรุ",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end)
    Shop_Tab:Button("ซื้อ เกปโปะ",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end)
    -- Setting 
    function HopFullMoon()
        pcall(function()
            function Hop()
                local HttpService = game:GetService("HttpService")
                local url = "http://116.204.183.71:25565/fullmoon" 
                local success, response = pcall(function()
                    return game:HttpGet(url)
                end)
                if success then
                    local data = HttpService:JSONDecode(response)
                    if geb_job_x == nil then
                        geb_job_x = {}
                    end
                    local check_it = nil
                    for i,v in pairs(data) do
                        if check_it == nil and not table.find(geb_job_x,i) and tostring(game.JobId) ~= i then
                            check_it = i
                            table.insert(geb_job_x,i)
                        end
                    end
                    if check_it == nil then
                    else
                        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", check_it)
                        local function bQ(v)
                            if v.Name == "ErrorPrompt" then
                                if v.Visible then
                                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                        HopLowServer()
                                        v.Visible = false
                                    end
                                end
                                v:GetPropertyChangedSignal("Visible"):Connect(
                                    function()
                                        if v.Visible then
                                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                                HopLowServer()
                                                v.Visible = false
                                            end
                                        end
                                    end
                                )
                            end
                        end
                        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                            bQ(v)
                        end
                    end
                else
                    warn("การดึงข้อมูลล้มเหลว: " .. response)
                end
            end
            while task.wait(0.1) do
                Hop()
            end
        end)
    end
    function HopMIrage()
        pcall(function()
            function Hop()
                local HttpService = game:GetService("HttpService")
                local url = "http://116.204.183.71:25565/mirage"  
                local success, response = pcall(function()
                    return game:HttpGet(url)
                end)
                if success then
                    local data = HttpService:JSONDecode(response)
                    if geb_job_x == nil then
                        geb_job_x = {}
                    end
                    local check_it = nil
                    for i,v in pairs(data) do
                        if check_it == nil and not table.find(geb_job_x,i) and tostring(game.JobId) ~= i then
                            check_it = i
                            table.insert(geb_job_x,i)
                        end
                    end
                    if check_it == nil then
                    else
                        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", check_it)
                        local function bQ(v)
                            if v.Name == "ErrorPrompt" then
                                if v.Visible then
                                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                        HopLowServer()
                                        v.Visible = false
                                    end
                                end
                                v:GetPropertyChangedSignal("Visible"):Connect(
                                    function()
                                        if v.Visible then
                                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                                HopLowServer()
                                                v.Visible = false
                                            end
                                        end
                                    end
                                )
                            end
                        end
                        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                            bQ(v)
                        end
                    end
                else
                    warn("การดึงข้อมูลล้มเหลว: " .. response)
                end
            end
            while task.wait(0.1) do
                Hop()
            end
        end)
    end
    
    function HopLowServer(bO)
        if _G.Setting['Hop Server Fullmoon (100%)'] then
            HopFullMoon()
        elseif _G.Setting['Hop Server Mirage Island (80%)'] then
            HopMIrage()
        else
            pcall(function()
                if not bO then
                    bO = 10
                end
                ticklon = tick()
                repeat
                    task.wait()
                until tick() - ticklon >= 1
                local function Hop()
                    for r = 1, math.huge do
                        if ChooseRegion == nil or ChooseRegion == "" then
                            ChooseRegion = "Singapore"
                        else
                            game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
                        end
                        local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
                        for k, v in pairs(bP) do
                            if k ~= game.JobId and v["Count"] < bO then
                                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                            end
                        end
                    end
                    return false
                end
                if not getgenv().Loaded then
                    local function bQ(v)
                        if v.Name == "ErrorPrompt" then
                            if v.Visible then
                                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                    HopLowServer()
                                    v.Visible = false
                                end
                            end
                            v:GetPropertyChangedSignal("Visible"):Connect(
                                function()
                                    if v.Visible then
                                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                            HopLowServer()
                                            v.Visible = false
                                        end
                                    end
                                end
                            )
                        end
                    end
                    for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                        bQ(v)
                    end
                    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
                    getgenv().Loaded = true
                end
                while task.wait(0.1) do
                    Hop()
                end
            end)
        end
    end


    function TP(Pos)
        local xps = game.Players.LocalPlayer and game.Players.LocalPlayer.Character.HumanoidRootPart and  game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        if xps then
            local Distance = (Pos.Position - xps).Magnitude
            pcall(function()
                Tween = game:GetService("TweenService"):Create(
                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                    TweenInfo.new(Distance/330, Enum.EasingStyle.Linear),
                    {CFrame = Pos}
                )
                Tween:Play()
                if Distance <= 300 then
                    Tween:Cancel()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
                end
            end)
        end
    end
    Setting_Tab:Label("💫 เซิฟ")
    Setting_Tab:Toggle('ย้ายไปที่เซิฟ ฟลูมูน (100%)',"9606294253",_G.Setting['Hop Server Fullmoon (100%)'],function(vu)
        _G.Setting['Hop Server Fullmoon (100%)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Setting_Tab:Toggle('ย้ายไปที่เซิฟ เกาะลับ (80%)',"9606294253",_G.Setting['Hop Server Mirage Island (80%)'],function(vu)
        _G.Setting['Hop Server Mirage Island (80%)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Setting_Tab:Button("ย้ายเซิฟ",function(vu)
        HopLowServer()
    end)
    Setting_Tab:Button("ย้ายเซิฟคนน้อย",function(vu)
        HopLowServer()
    end)
    Setting_Tab:Button("รีจอย",function(vu)
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end)
    Setting_Tab:Label("☄️ Job Id")
    Setting_Tab:Textbox("ใส่ Job Id",false,'',function(vu)
        Job_Id = vu
    end)
    if Job_Id == nil then
        Job_Id = 'nil'
    end
    Setting_Tab:Button("เข้าร่วมเซิฟเวอร์",function()
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",Job_Id)
    end)
    Setting_Tab:Label("⚙️ ตั้งค่า")
    --[[
    Setting_Tab:Toggle("Auto Rejon","9606294253",_G.Setting['Rejon'],function(vu)
        _G.Setting['Rejon'] = vu
        Update_Setting(Save_Setting)
    end,true)
    ]]
    Setting_Tab:Toggle("ออโต้ ปิดหน้าต่างสคริปต์","9606294253",_G.Setting['Close Ui'],function(vu)
        _G.Setting['Close Ui'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Setting_Tab:Toggle("ออโต้ FPS Booster","9606294253",_G.Setting['FPS Booster'],function(vu)
        _G.Setting['FPS Booster'] = vu
        if vu then
            if _G.Setting['FPS Booster'] and not Succest then
                --game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
                Succest = true
                shared.BC_1 = true
                shared.BC_2 = nil 
                
                if shared.BC_1 and shared.BC_2 == nil then
                    L_1 = game:GetService("Workspace");
                    L_2 = game:GetService("Lighting");
                    L_3 = L_1.Terrain;
                    L_4 = game:GetService("Players");
                    L_5 = L_4.LocalPlayer.Character;
                    
                    L_3.WaterWaveSize = 0;L_3.WaterWaveSpeed = 0;L_3.WaterReflectance = 0;L_3.WaterTransparency = 0;
                    L_2.GlobalShadows = false;L_2.FogEnd = tonumber(9e9);L_2.Brightness = 0;
                    settings().Rendering.QualityLevel = "Level01";
                    settings().Rendering.GraphicsMode = "NoGraphics";
                    --sethiddenproperty(L_2, "Technology", "Compatibility");
                    for i,v in pairs(L_1:GetDescendants()) do
                        if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
                            v.Material = "Plastic";v.Reflectance = 0;v.CastShadow = false;
                        elseif v.ClassName == "Decal" or v:IsA("Texture") then
                            v.Texture = 0;v.Transparency = 1;
                        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.LightInfluence = 0;v.Texture = 0;v.Lifetime = NumberRange.new(0);
                        elseif v:IsA("Explosion") then
                            v.BlastPressure = 0;v.BlastRadius = 0;
                        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                            v.Enabled = false;
                        elseif v:IsA("MeshPart") then
                            v.Material = "Plastic";v.Reflectance = 0;v.TextureId = 0;v.CastShadow = false;v.RenderFidelity = Enum.RenderFidelity.Performance;
                        elseif v.ClassName == "SpecialMesh" then
                            v.TextureId = "rbxassetid://0";
                        elseif v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                            v:Destroy();
                        end
                    end
                    for i,v in pairs(L_2:GetDescendants()) do
                        if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                            v.Enabled = false;
                        end
                    end
                    for i,v in pairs(L_5:GetDescendants()) do
                        if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
                            v:Destroy();
                        end
                    end
            
                    if game.PlaceId == 2753915549 or 4442272183 or 7449423635 then -- Blox Fruits
                        if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("AirDash") then
                            --game:GetService("ReplicatedStorage").Effect.Container.Shared.AirDash:Destroy();
                        end
                        if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("LightningTP") then
                            --game:GetService("ReplicatedStorage").Effect.Container.Shared.LightningTP:Destroy();
                        end
                        if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Damage") then
                            --game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage:Destroy();
                        end
                        if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Confetti") then
                            --game:GetService("ReplicatedStorage").Effect.Container.Misc.Confetti:Destroy();
                        end
                        if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp") then
                            --game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy();
                        end
                    end
                    shared.BC_2 = true
                end
            end 
        end
        Update_Setting(Save_Setting)
    end,true)
    Setting_Tab:Toggle("ออโต้ จอดำ (B)","9606294253",_G.Setting['Black Screen'],function(vu)
        _G.Setting['Black Screen'] = vu
        if vu then
            togle_up = true
            game.Lighting.ExposureCompensation = -10
        else
            togle_up = false
            game.Lighting.ExposureCompensation = 0
        end
        Update_Setting(Save_Setting)
    end,true)
    game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
        if not isTyping then
            if input.KeyCode == Enum.KeyCode.B then 
                if togle_up then
                    game.Lighting.ExposureCompensation = 0
                    togle_up = false
                else
                    game.Lighting.ExposureCompensation = -10
                    togle_up = true
                end
            end
        end
    end)
    
    -- General_Tab 
    General_Tab:Label("⌛ เวลา")
    local Time_Online_Tab = General_Tab:LabelP("Time Online :")
    local Time_Server_Tab = General_Tab:LabelP("Time Server :")
    spawn(function()
        while wait(1) do
            pcall(function()
                local scripttime=game.Workspace.DistributedGameTime
                local seconds = scripttime%60
                minutes = math.floor(scripttime/60%60)
                hours = math.floor(scripttime/3600)
                local tempo = string.format("%.0f Hr(s), %.0f Min(s), %.0f Sec(s)", hours ,minutes, seconds)
                Time_Online_Tab:Set('เวลาออนไลน์ : '..tempo)
                Time_Server_Tab:Set('เวลาในเซิฟ : '..tostring(game:GetService("Lighting").TimeOfDay))
            end)
        end
    end)
    General_Tab:Label("🏆 ข้อมูล")
    General_Tab:LabelP("ชื่อ : "..tostring(game.Players.LocalPlayer.Name))
    General_Tab:LabelP("เผ่า : "..tostring(game.Players.LocalPlayer.Data.Race.Value))
    
    if New_World or Three_World then
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
            Evo_Race_V1_H = true
        end
    end
    if New_World or Three_World then
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
            Evo_Race_V2_H = true
        end
    end
    if New_World or Three_World then
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
            Evo_Race_V3_H = true
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") == true then
            Pull_Lever_H = true
        end
    end 
    
    if Evo_Race_V3_H then
        if tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])) == 'nil' then
        else
            Evo_Race_V4_H = true
        end
    end
    if Evo_Race_V4_H then
        Race_Int = 'V4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]))
    elseif Evo_Race_V3_H then
        Race_Int = 'V3'
    elseif Evo_Race_V2_H then
        Race_Int = 'V2'
    elseif Evo_Race_V1_H then
        Race_Int = 'V1'
    else
        Race_Int = 'V0'
    end
    local Race_Value = General_Tab:LabelP("อีโวเผ่า : "..Race_Int)
    
    General_Tab:Label("🔔 แจ้งเตือน")
    local Full_Tab = General_Tab:LabelP("🌕 ฟลูมูน : ")
    local Mirage_Tab = General_Tab:LabelP("🏝️ เกาะลับ : ")
    
    General_Tab:Label("✨ ค่าสถานะ")
    General_Tab:Toggle("ออโต้อัพ (หมัด)","9606294253",_G.Setting['Auto_Stats_Melee'],function(vu)
        Auto_Stats_Melee = vu
        _G.Setting['Auto_Stats_Melee'] = vu
        Update_Setting(Save_Setting)
    end,true)
    General_Tab:Toggle("ออโต้อัพ (เลือด)","9606294253",_G.Setting['Auto_Stats_Defense'],function(vu)
        Auto_Stats_Defense = vu
        _G.Setting['Auto_Stats_Defense'] = vu
        Update_Setting(Save_Setting)
    end,true)
    General_Tab:Toggle("ออโต้อัพ (ดาบ)","9606294253",_G.Setting['Auto_Stats_Sword'],function(vu)
        Auto_Stats_Sword = vu
        _G.Setting['Auto_Stats_Sword'] = vu
        Update_Setting(Save_Setting)
    end,true)
    General_Tab:Toggle("ออโต้อัพ (ผลปีศาจ)","9606294253",_G.Setting['Auto_Stats_Fruit'],function(vu)
        Auto_Stats_Fruit = vu
        _G.Setting['Auto_Stats_Fruit'] = vu
        Update_Setting(Save_Setting)
    end,true)
    General_Tab:Toggle("ออโต้อัพ (ปืน)","9606294253",_G.Setting['Auto_Stats_Gun'],function(vu)
        Auto_Stats_Gun = vu
        _G.Setting['Auto_Stats_Gun'] = vu
        Update_Setting(Save_Setting)
    end,true)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Stats_Melee and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Melee"].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
                if Auto_Stats_Defense and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Defense"].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
                if Auto_Stats_Sword and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
                if Auto_Stats_Fruit and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
                if Auto_Stats_Gun and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value < 2550 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", game:GetService("Players").LocalPlayer.Data.Points.Value)
                end
                wait(5)
            end)
        end
    end)
    
    General_Tab:Label("🌱 เลเวล")
    General_Tab:Toggle("ออโต้ ฟามเลเวล","9606294253",_G.Setting['Auto Farm Level'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Level = vu
        _G.Setting['Auto Farm Level'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Geb_Melee = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
            table.insert(Geb_Melee,v.Name)
            _G.Setting['Weapon'] = v.Name
            Weapon = v.Name
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA('Tool') and not table.find(Geb_Melee,v.Name) then
            table.insert(Geb_Melee,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA('Tool') and not table.find(Geb_Melee,v.Name) then
            table.insert(Geb_Melee,v.Name)
        end
    end
    local waepon_list = General_Tab:Dropdown("เลือกอาวุธ",_G.Setting['Weapon'],Geb_Melee,function(vu)
        Weapon = vu
        _G.Setting['Weapon'] = vu
        Update_Setting(Save_Setting)
    end)
    General_Tab:Button('รีเฟรชอาวุธ',function()
        waepon_list:Clear()
        local Geb_Melee = {}
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA('Tool') and not table.find(Geb_Melee,v.Name) then
                waepon_list:Add(v.Name)
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA('Tool') and not table.find(Geb_Melee,v.Name) then
                waepon_list:Add(v.Name)
            end
        end
    end)
    General_Tab:Label("⭐ Mastery")
    General_Tab:Toggle("Auto Farm Mastery Melee","9606294253",false,function(vu)
        
        Update_Setting(Save_Setting)
    end)
    General_Tab:Toggle("Auto Farm Mastery Sword","9606294253",false,function(vu)
        
        Update_Setting(Save_Setting)
    end)
    General_Tab:Toggle("Auto Farm Mastery Gun","9606294253",false,function(vu)
        
        Update_Setting(Save_Setting)
    end)
    General_Tab:Toggle("Auto Farm Mastery Devil Fruit","9606294253",false,function(vu)
        
        Update_Setting(Save_Setting)
    end)
    -- Elite Hunter
    Elite_Hunet_Tab:Label('🧩 กระจกคาตาคุริ')
    Elite_Hunet_Tab:Toggle('ออโต้ ฟามกระจกคาตาคุริ (คลิกเดียว+ย้ายเซิฟ)',"9606294253",_G.Setting['Auto Mirror Fractal + Hop'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Mirror_Fractal_Hop = vu
        _G.Setting['Auto Mirror Fractal + Hop'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Elite_Hunet_Tab:Label('🎩 หมวกแอดมิน')
    Elite_Hunet_Tab:Toggle('ออโต้ ฟามหมวกแอดมิน (คลิกเดียว+ย้ายเซิฟ)',"9606294253",_G.Setting['Auto Valkyrie Helm + Hop'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        _G.Setting['Auto Valkyrie Helm + Hop'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Elite_Hunet_Tab:Toggle('ออโต้ ซื้อสีฮาคิรีเจนดารี',"9606294253",_G.Setting['Auto Buy Legendary Color Haki'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        _G.Setting['Auto Buy Legendary Color Haki'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Pure_Red_S = Elite_Hunet_Tab:LabelX(' 🔴 ฮาคิ (สีแดง) : ❌')
    local Snow_White_S = Elite_Hunet_Tab:LabelX(' ⚪ ฮาคิ (สีขาว) : ❌')
    local Winter_Sky_S = Elite_Hunet_Tab:LabelX(' 🌸 ฮาคิ (สีชมพู) : ❌')
    if Three_World then
        for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
            if v.HiddenName == 'Pure Red' and v.Unlocked == true then
                Pure_Red_H = true
                Pure_Red_S:Set(' 🔴 ฮาคิ (สีแดง) : ✅')
            elseif v.HiddenName == 'Snow White' and v.Unlocked == true then
                Snow_White = true
                Snow_White_S:Set(' ⚪ ฮาคิ (สีขาว) : ✅')
            elseif v.HiddenName == 'Winter Sky' and v.Unlocked == true then
                Winter_Sky = true
                Winter_Sky_S:Set(' 🌸 ฮาคิ (สีชมพู) : ✅')
            end
        end
    end
    -- Race V4
    Race_V4_Tab:Label('⚡ อีโวเผ่าวี4')
    Race_V4_Tab:Toggle("ออโต้ อีโวเผ่าวี4 (อีโวเผ่า)","9606294253",_G.Setting['Auto Evo Race V4 (Farming)'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Evo_Race_V4 = vu
        _G.Setting['Auto Evo Race V4 (Farming)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V4_Tab:Toggle("ออโต้ อีโวเผ่าวี4 (ผู้ช่วย2)","9606294253",_G.Setting['Auto Evo Race V4 (Helper2)'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Evo_Race_V4_H2 = vu
        _G.Setting['Auto Evo Race V4 (Helper2)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V4_Tab:Toggle("ออโต้ อีโวเผ่าวี4 (ผู้ช่วย1)","9606294253",_G.Setting['Auto Evo Race V4 (Helper1)'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Evo_Race_V4_H1 = vu
        _G.Setting['Auto Evo Race V4 (Helper1)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V4_Tab:Toggle("ออโต้ อีโวเผ่าวี4 (คลิกเดียว+คนเดียว+ย้ายเซิฟ)","9606294253",_G.Setting['Auto Evo Race V4 + Hop Server (Solo + One Click)'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Evo_Race_V4_Solo = vu
        _G.Setting['Auto Evo Race V4 + Hop Server (Solo + One Click)'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Full_Moon_V4 = Race_V4_Tab:LabelX("🌕 Full Moon : ")
    Race_V4_Tab:Label('🕹️ ดึงคันโยก')
    Race_V4_Tab:Toggle("ออโต้ ดึงคันโยก","9606294253",_G.Setting['Auto Pull Lever'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Pull_Lever = vu
        _G.Setting['Auto Pull Lever'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Race_V4_Tab:Toggle("ออโต้ ย้ายเซิฟ","9606294253",_G.Setting['Auto Hop Server Pull Lever'],function(vu)
        Auto_Pull_Lever_Hop = vu
        _G.Setting['Auto Hop Server Pull Lever'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Pull_Lever_S = Race_V4_Tab:LabelX('🕹️ ดึงคันโยก : not.')
    if Evo_Race_V3_H and Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") == true then
        Pull_Lever_H = true
        Pull_Lever_S:Set('🕹️ Pull Lever: ✅ ')
    end
    local Mirage_V4 = Race_V4_Tab:LabelX('🏝️ เกาะลับ : not spawn.')
    Race_V4_Tab:Label('🕐 ห้องกาลเวลา')
    Race_V4_Tab:Toggle("ออโต้ บินไปที่ (NPC Ancient One)","9606294253",false,function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Teleport_To_Gear = vu
    end,true)
    Race_V4_Tab:Toggle("ออโต้ บินไปที่ (ห้องกาลเวลา)","9606294253",false,function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Teleport_To_Temple = vu
    end,true)
    spawn(function()
        while wait(1) do
            pcall(function()
                if Three_World then
                    if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                        Full_Moon_V4:Set('🌕 Full Moon: 100% | '..tostring(game:GetService("Lighting").TimeOfDay))
                        Full_Tab:Set(tostring('🌕 Full Moon: 100%'))
                    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                        Full_Moon_V4:Set('🌕 Full Moon: 75% | '..tostring(game:GetService("Lighting").TimeOfDay))
                        Full_Tab:Set(tostring('🌕 Full Moon: 75%'))
                    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                        Full_Tab:Set(tostring('🌕 Full Moon: 50%'))
                        Full_Moon_V4:Set('🌕 Full Moon: 50% | '..tostring(game:GetService("Lighting").TimeOfDay))
                    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
                        Full_Tab:Set(tostring('🌕 Full Moon: 25%'))
                        Full_Moon_V4:Set('🌕 Full Moon: 25% | '..tostring(game:GetService("Lighting").TimeOfDay))
                    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
                        Full_Tab:Set(tostring('🌕 Full Moon: 15%'))
                        Full_Moon_V4:Set('🌕 Full Moon: 15% | '..tostring(game:GetService("Lighting").TimeOfDay))
                    else 
                        Full_Moon_V4:Set('🌕 Full Moon: 0% | '..tostring(game:GetService("Lighting").TimeOfDay))
                        Full_Tab:Set(tostring('🌕 Full Moon: 0%'))
                    end
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        Mirage_V4:Set('🏝️ Mirage Island: ✅ spawn.')
                        Mirage_Tab:Set('🏝️ Mirage Island: ✅ spawn.') 
                    else
                        Mirage_V4:Set('🏝️ Mirage Island: not spawn.')
                        Mirage_Tab:Set('🏝️ Mirage Island: Not spawn.') 
                    end
                    if not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2 then
                        wait(10)
                    end
                end
            end)
        end
    end)
    -- Sanguine Art
    Sanguine_Art_Tab:Label("🩸 หมัดแวมไพร์")
    Sanguine_Art_Tab:Toggle("ออโต้ซื้อ หมัดแวมไพร์","9606294253",_G.Setting['Auto Buy Sanguine Art'],function(vu)
        Auto_Buy_Sanguine_Art = vu
        _G.Setting['Auto Buy Sanguine Art'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Status_Sanguine_Art_S = Sanguine_Art_Tab:LabelX("Status : 0/4 (Need Leviathan Heart)")
    
    Sanguine_Art_Tab:Label("🌊 ลีเวียธาน")
    Sanguine_Art_Tab:Toggle("ออโต้ ดึงหัวใจลีเวียธาน","9606294253",_G.Setting['Auto Get Leviathan Heart'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Get_Leviathan = vu
        _G.Setting['Auto Get Leviathan Heart'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Sanguine_Art_Tab:Toggle("ออโต้ ฟามบอสลีเวียธาน","9606294253",_G.Setting['Auto Farm Leviathan'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Leviathan = vu
        _G.Setting['Auto Farm Leviathan'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Sanguine_Art_Tab:Toggle("ออโต้ รีเซ็ตคูลดาวบอสลีเวียธาน","9606294253",_G.Setting['Auto Reset Cooldown'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Reset_Cooldown_Leviathan = vu
        _G.Setting['Auto Reset Cooldown'] = vu
        Update_Setting(Save_Setting)
    end,true)
    if  _G.Setting['Owner Beast Hunter'] == nil then
        _G.Setting['Owner Beast Hunter'] = ''
    end
    Sanguine_Art_Tab:Textbox("ใส่ชื่อคนที่มีเรือดึงหัวใจ",false, _G.Setting['Owner Beast Hunter'],function(vu)
        _G.Setting['Owner Beast Hunter'] = vu
        Update_Setting(Save_Setting)
    end)
    local Leviathan_Heart_S = Sanguine_Art_Tab:LabelX("หัวใจลีเวียธาน : 0/1")
    
    Sanguine_Art_Tab:Label("🧩 แฟรกเมนต์สีดำ")
    Sanguine_Art_Tab:Toggle("ออโต้ ฟามแฟรกเมนส์สีดำ","9606294253",_G.Setting['Auto Farm Darkbeard'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Darkbeard = vu
        _G.Setting['Auto Farm Darkbeard'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Sanguine_Art_Tab:Slider("จำนวนกล่องที่ต้องการเก็บ",1,200,_G.Setting['Chest Order'],function(vu)
        Chest_Order = vu
        _G.Setting['Chest Order'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Garb_Chest_S = Sanguine_Art_Tab:LabelP("จำนวนกล่อง : 0/"..Chest_Order)
    local Dark_Fragment_S = Sanguine_Art_Tab:LabelX("แฟรกเมนต์สีดำ : 0/2")
    
    Sanguine_Art_Tab:Label("🧩 ไอเทมสำหรับใช้คาร์ฟ หมัดแวมไพร์")
    Sanguine_Art_Tab:Toggle("ออโต้ฟาม Demonic Wisps","9606294253",_G.Setting['Auto Farm Demonic Wisps'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Demonic_Wisps = vu
        _G.Setting['Auto Farm Demonic Wisps'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Sanguine_Art_Tab:Toggle("ออโต้ฟาม Vampire Fangs","9606294253",_G.Setting['Auto Farm Vampire Fangs'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Vampire_Fangs = vu
        _G.Setting['Auto Farm Vampire Fangs'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Demonic_Wisps_S = Sanguine_Art_Tab:LabelX("Demonic Wisps : 0/20")
    local Vampire_Fang_S = Sanguine_Art_Tab:LabelX("Vampire Fang : 0/20")
    
    -- Beast Hunter
    Beast_Hunter_Tab:Label("🚢 เรือดึงหัวใจ")
    Beast_Hunter_Tab:Toggle("ออโต้ซื้อ เรือดึงหัวใจ","9606294253",_G.Setting['Auto_Carft_Beast_Hunter'],function(vu)
        Auto_Carft_Beast_Hunter = vu
        _G.Setting['Auto_Carft_Beast_Hunter'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Quest_Beast_S = Beast_Hunter_Tab:LabelX("Status : Need Leviathan Scales")
    
    Beast_Hunter_Tab:Label("🌊 ลีเวียธาน")
    Beast_Hunter_Tab:Toggle("ออโต้ ดึงหัวใจลีเวียธาน","9606294253",_G.Setting['Auto_Farm_Leviathan_B'],function(vu)
        Auto_Farm_Leviathan_B = vu
        _G.Setting['Auto_Farm_Leviathan_B'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Beast_Hunter_Tab:Toggle("ออโต้ รีเซ็ตคูลดาวลีเวียธาน","9606294253",_G.Setting['Auto_Reset_Cooldown_Leviathan_B'],function(vu)
        Auto_Reset_Cooldown_Leviathan_B = vu
        _G.Setting['Auto_Reset_Cooldown_Leviathan_B'] = vu
        Update_Setting(Save_Setting)
    end,true)
    if _G.Setting['Owner Boat'] == nil then
        _G.Setting['Owner Boat'] = 'Switch Hub'
    end
    Beast_Hunter_Tab:Textbox("ใส่ชื่อคนที่ขับเรือ",_G.Setting['Owner Boat'],tostring(game.Players.LocalPlayer.Name),function(vu)
        _G.Setting['Owner Boat'] =vu
        Update_Setting(Save_Setting)
    end)
    local Leviathan_Scale_S = Beast_Hunter_Tab:LabelX("Leviathan Scales : 0/20")
    -- Electric Wings
    Beast_Hunter_Tab:Label("🧩 ไอเทมสำหรับใช้คาร์ฟ เรือดึงหัวใจ")
    Beast_Hunter_Tab:Toggle("ออโต้ฟาม Electric Wings","9606294253",_G.Setting['Auto_Farm_Electric_Wings'],function(vu)
        Auto_Farm_Electric_Wings = vu
        _G.Setting['Auto_Farm_Electric_Wings'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Beast_Hunter_Tab:Toggle("ออโต้ฟาม Mutant Teeth","9606294253",_G.Setting['Auto_Farm_Mutant_Teeth'],function(vu)
        Auto_Farm_Mutant_Teeth = vu
        _G.Setting['Auto_Farm_Mutant_Teeth'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Beast_Hunter_Tab:Toggle("ออโต้ฟาม Fool's Golds","9606294253",_G.Setting['Auto_Farm_Fool_Gold'],function(vu)
        Auto_Farm_Fool_Gold = vu
        _G.Setting['Auto_Farm_Fool_Gold'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Beast_Hunter_Tab:Toggle("ออโต้ฟาม Shark Teeth","9606294253",_G.Setting['Auto Farm Shark Teeth'],function(vu)
        Auto_Farm_Shark_Teeth = vu
        _G.Setting['Auto Farm Shark Teeth'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local E_W_S =  Beast_Hunter_Tab:LabelX("Electric Wings : 0/6")
    local M_T_T_S = Beast_Hunter_Tab:LabelX("Mutant Teeth : 0/2")
    local F_G_S = Beast_Hunter_Tab:LabelX("Fool's Golds : 0/30")
    local S_T_S = Beast_Hunter_Tab:LabelX("Shark Teeth : 0/6")
    -- Fox Lamp
    Fox_Lamp_Tab:Label("⚡ ฟ็อกแรม")
    Fox_Lamp_Tab:Toggle("ออโต้สุ่ม ไฟสีฟ้า","9606294253",_G.Setting['Auto Azure Random'],function(vu)
        Auto_Random_Azure = vu
        _G.Setting['Auto Azure Random'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Fox_Lamp_Tab:Toggle("ออโต้ ฟามเควส + เก็บไฟสีฟ้า (คลิกเดียว)","9606294253",_G.Setting['Auto Farm Azure'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Azure = vu
        _G.Setting['Auto Farm Azure'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Quest_Kitsune_S = Fox_Lamp_Tab:LabelX("เควสจิ้งจอก : ❌")
    local Azure_Embers_S = Fox_Lamp_Tab:LabelX("Azure Embers : 0/25")
    local Fox_Lamp_S = Fox_Lamp_Tab:LabelP("Fox Lamp : ")
    local Kitsune_Mask_S = Fox_Lamp_Tab:LabelP("Kitsune Mask : ")
    local Kitsune_Ribbon_S = Fox_Lamp_Tab:LabelP("Kitsune Ribbon : ")
    local Kitsune_Aura_Color_S = Fox_Lamp_Tab:LabelP("สีฮาคิจิ้งจอกฟ้า : ")
    Fox_Lamp_Tab:Toggle("ออโต้ย้ายเซิฟหาเซิฟฟลูมูน","9606294253",_G.Setting['Auto Hop Server Azure'],function(vu)
        Auto_Hop_Server_Fox_Lamp = vu
        _G.Setting['Auto Hop Server Azure'] = vu
        Update_Setting(Save_Setting)
    end,true)
    
    -- Shark Anchor
    Shark_Anchor_Tab:Label("⚓ สมอ")
    Shark_Anchor_Tab:Toggle("ออโต้ ทำสมอ (คลิกเดียว)","9606294253",_G.Setting['Auto Farm Shark Anchor'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Shark_Anchor = vu
        _G.Setting['Auto Farm Shark Anchor'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local Status_Shark_Anchor_S = Shark_Anchor_Tab:LabelX("Status: Farm Shark Tooth Nacklace")
    local Monster_Magnet_S = Shark_Anchor_Tab:LabelP('Monster Magnet :')
    local Terror_Jaw_S = Shark_Anchor_Tab:LabelP('Terror Jaw :')
    local Shark_Tooth_N_S = Shark_Anchor_Tab:LabelP('Shark Tooth Necklace :')
    
    -- Bounty_Tab
    Bounty_Tab:Label("⚔️ ล่าค่าหัว")
    local Select_Player_S = Bounty_Tab:LabelX("Select Player :")
    Bounty_Tab:Toggle("ออโต้ ล่าค่าหัว","9606294253",_G.Setting['Auto Farm Bounty'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Farm_Bounty = vu
        _G.Setting['Auto Farm Bounty'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Bounty_Tab:Toggle("ออโต้เลือกผู้เล่น","9606294253",_G.Setting['Auto Select All Player'],function(vu)
        Auto_Select_All_Player = vu
        _G.Setting['Auto Select All Player'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Bounty_Tab:Toggle("ออโต้ย้ายเซิฟ","9606294253",_G.Setting['Auto Hop Server Bounty'],function(vu)
        Auto_Hop_Bounty = vu
        _G.Setting['Auto Hop Server Bounty'] = vu
        Update_Setting(Save_Setting)
    end,true)
    --local Bounty_S = Bounty_Tab:LabelX("Total Bounty :")
    -- Raid
    Raid_Tab:Label('💰 ลงดัน')
    Raid_Tab:Toggle("ออโต้ อัพผลตื่น","9606294253",_G.Setting['Auto Awakening'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        _G.Setting['Auto Awakening'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Raid_Tab:Toggle("ออโต้ ใช้ชิปลงดัน","9606294253",_G.Setting['Auto Use Microchip'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Use_Microchip = vu 
        _G.Setting['Auto Use Microchip'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Raid_Tab:Toggle("ออโต้ คิวมอส์เตอร์","9606294253",_G.Setting['Auto Kill Aura'],function(vu)
        Auto_Kill_Aura = vu
        _G.Setting['Auto Kill Aura'] = vu 
        Update_Setting(Save_Setting)
    end,true)
    Raid_Tab:Toggle("ออโต้ บินไปที่เกาะต่อไป","9606294253",_G.Setting['Auto Next Island'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        _G.Setting['Auto Next Island'] = vu
        Auto_Next_Island = vu
        Update_Setting(Save_Setting)
    end,true)
    Raid_Tab:Toggle("ออโต้ ซื้อชิปลงดัน","9606294253",_G.Setting['Auto Buy Microchip'],function(vu)
        Auto_Buy_Microchip = vu
        _G.Setting['Auto Buy Microchip'] = vu
        Update_Setting(Save_Setting)
    end,true)
    Raid_Tab:Toggle("ออโต้ ดึงผล + ย้ายเซิฟ","9606294253",_G.Setting['Auto Bring Fruit + Hop Server'],function(vu)
        if Tween == nil then
        else
            TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Auto_Bring_Fruit_Hop = vu
        _G.Setting['Auto Bring Fruit + Hop Server'] = vu
        Update_Setting(Save_Setting)
    end,true)
    local List_Dungeon = {
        "Buddha","Flame","Quake","String","Light","Ice","Rumble","Magma","Sand","Dark"
    }
    if Select_Dungeon == nil then
        _G.Setting['Select Dungeon'] = 'Flame'
        Select_Dungeon = "Flame"
    end
    Raid_Tab:Dropdown("เลือกดันเจี้ยน",_G.Setting['Select Dungeon'],List_Dungeon,function(vu)
        Select_Dungeon = vu
        _G.Setting['Select Dungeon'] = vu
        Update_Setting(Save_Setting)
    end)
    local List_Chip = {
        "< 100K","< 500K","< 1M","< 10M"
    }
    if Select_Chip == nil then
        _G.Setting['Select Chip'] = '< 1M'
        Select_Chip = '< 1M'
        Select_Fruit_Use = 1000000
    end
    Raid_Tab:Dropdown("เลือกผลปีศาจที่ต้องการให้ใช้",_G.Setting['Select Chip'],List_Chip,function(vu)
        _G.Setting['Select_Chip'] = vu
        Select_Chip = vu
        if Select_Chip == "< 100K" then
            Select_Fruit_Use = 100000
        elseif Select_Chip == "< 500K" then
            Select_Fruit_Use = 500000
        elseif Select_Chip == "< 1M" then
            Select_Fruit_Use = 1000000
        elseif Select_Chip == "< 10M" then
            Select_Fruit_Use = 10000000
        end 
        Update_Setting(Save_Setting)
    end)
    --  Function
    function CheckItem_X(matname)
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v) == "table" then
                if v.Type == "Material" then
                    if v.Name == matname then
                        return v.Count
                    end
                end
            end
        end
        return 0
    end
    function GetItem(vu)
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
            if v["Name"] == vu then
                return true
            end
        end
        return false
    end
    spawn(function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg,false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" and PositionSkillMasteryDevilFruit ~= nil and Aimbot_On then
                if tostring(args[1]) == "RemoteEvent" then 
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if type(args[2]) == "vector" then 
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
            return old(...)
        end)
    end)
    local function CheckItem(matname)
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v) == "table" then
                if v.Type == "Material" then
                    if v.Name == matname then
                        return v.Count
                    end
                end
            end
        end
        return 0
    end
    function EquipWeapon(ToolSe)
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end)
    end
    function TPZ(p)
        local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 100 then
            Speed = 50
        elseif Distance < 400 then
            Speed = 400
        elseif Distance < 1000 then
            Speed = 300
        elseif Distance < 1500 then
            Speed = 260
        elseif Distance >= 1500 then
            Speed = 300
        end
        Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
        Tween:Play()
    end
    function GetSkill_C(NameW,Skill)
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
            if v.Name == NameW then
                if v:FindFirstChild(Skill) and tostring(v[Skill].Title.TextColor) == 'Institutional white' and v[Skill].Cooldown.AbsoluteSize.X == 0 then
                    return true
                end
            end
        end
        return false
    end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
            Weapon = v.Name
        end
    end
    function Stop_Boat()
        for i,v in pairs(game.Workspace.Boats:GetChildren()) do
            if v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                if TweenP == nil then
                else
                    TweenP:Cancel()
                end
                return
            end
        end
    end
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
        if v["Name"] == 'Valkyrie Helm' then
            Valkyrie_Helmet_H = true
        end
    end
    function TPX(RealTarget,hit)
        if hit == nil then
            hit = false
        end
        local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 100 then
            Speed = 1500
        elseif Distance < 200 then
            Speed = 1200
        elseif Distance < 500 then
            Speed = 515
        elseif Distance < 1000 then
            Speed = 315
        elseif Distance >= 1000 then
            Speed = 300
        end
        if Distance > 3000 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            if Valkyrie_Helmet_H and (Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875)-RealTarget.Position).Magnitude <= 2000 then 
                TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875))
                wait(1)
            elseif Valkyrie_Helmet_H and (Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)-RealTarget.Position).Magnitude <= 2000 then 
                TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125))
                wait(1) 
            elseif Valkyrie_Helmet_H and (Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)-RealTarget.Position).Magnitude <= 2000 then 
                TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
                wait(1)
            elseif Three_World and (Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)-RealTarget.Position).Magnitude <= 3000 then
                TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)
                }
    
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
            elseif Auto_Farm_Bounty then
                TP(RealTarget)
            elseif not hit then
                local xpta = game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart
                if xpta then
                    TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait(.2)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RealTarget)
                    --[[
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                    ]]
                    wait(7)
                end
            elseif hit then
                TP(RealTarget)
            end
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            TP(RealTarget)
        end
    end
    function TPBoat(p,boat,speedx,stop)
        if stop == nil then
            stop = false
        end
        local Distance = (p.Position - boat.Position).Magnitude
        Speed = speedx
        TweenP = game:GetService("TweenService"):Create(boat,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
        if stop == true then
            TweenP:Cancel()
        else
            TweenP:Play()
        end
    end
    local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
    local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
    CamShake:Stop()

    function Click()
        local CombatFramework = debug.getupvalues(Module)[2]
        if Auto_Farm_Bounty then
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 35
        elseif Auto_Evo_Race_V4_Solo then
            CombatFramework.activeController.hitboxMagnitude = 60
            CombatFramework.activeController.active = false
            CombatFramework.activeController.focusStart = 1655503339.0980349
            CombatFramework.activeController.increment = 1
            CombatFramework.activeController.blocking = false
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.humanoid.AutoRotate = true
        else
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 100
        end
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
    end
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if Auto_Farm_Leviathan or _G.Setting['Auto Farm Tushita (One Click + Hop Server)'] or _G.Setting['Auto Farm Yama (One Click + Hop Server)'] or _G.Setting['Auto Farm Material'] or _G.Setting['Auto Farm Material Sea (All Material)'] or Auto_Evo_Race_V4_Solo or _G.Setting['Evo Race V1 M'] or _G.Setting['Auto Cybrog'] or _G.Setting['Evo Race V2 M'] or _G.Setting['Evo Race V3 M'] or Teleport_Is or _G.Setting['Auto Valkyrie Helm + Hop'] or Auto_Mirror_Fractal_Hop or Auto_Farm_Leviathan_B or Auto_Reset_Cooldown_Leviathan_B or Auto_Pull_Lever or Auto_Evo_Race_V4 or Auto_Evo_Race_V4_H1 or Auto_Evo_Race_V4_H2 or Auto_Next_Island or Auto_Farm_Bounty or Auto_Farm_Shark_Anchor or Auto_Fox_Lamp or Auto_Farm_Level or Auto_Farm_Darkbeard or Auto_Farm_Demonic_Wisps or Auto_Farm_Vampire_Fangs or Auto_Reset_Cooldown_Leviathan or Auto_Get_Leviathan or Auto_Farm_Azure or Auto_Farm_Electric_Wings or Auto_Farm_Mutant_Teeth or Auto_Farm_Fool_Gold or Auto_Farm_Shark_Teeth then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local BodyVelocity = Instance.new("BodyVelocity")
                        BodyVelocity.Name = "BodyVelocity"
                        BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                        BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    end
                    if not Attack_Fa then
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false    
                            end
                        end
                    else
                        wait(.1)
                    end
                elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
                end
            end)
        end)
    end)
    local function GetMonster(vu)
        pcall(function()
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA('Model') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
                    Monster = v
                    return
                end
            end
        end)
    end
    Chest_Drop = nil
    function Get_Chest(vu)
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
            if v.Name:find("Chest") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
                Chest_Drop = v
                return
            end
        end
    end
    spawn(function()
        while task.wait() do
            pcall(function()
                if StatrMagnet then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 and not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                            v.HumanoidRootPart.CFrame = PosMon_X
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                --v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                else
                    wait(0.5)
                end
            end)
        end
    end)
    function CheckQuestBoss_L()
        if SelectBoss == "Saber Expert" then
            MsBoss = "Saber Expert"
            NameBoss = "Saber Expert"
            CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
        elseif SelectBoss == "The Saw" then
            MsBoss = "The Saw"
            NameBoss = "The Saw"
            CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
        elseif SelectBoss == "Greybeard" then
            MsBoss = "Greybeard"
            NameBoss = "Greybeard"
            CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
        elseif SelectBoss == "The Gorilla King" then
            MsBoss = "The Gorilla King"
            NameBoss = "The Gorilla King"
            NameQuestBoss = "JungleQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
            
        elseif SelectBoss == "Bobby" then
            MsBoss = "Bobby"
            NameBoss = "Bobby"
            NameQuestBoss = "BuggyQuest1"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
            
        elseif SelectBoss == "Yeti" then
            MsBoss = "Yeti"
            NameBoss = "Yeti"
            NameQuestBoss = "SnowQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
            CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
            
        elseif SelectBoss == "Mob Leader" then
            MsBoss = "Mob Leader"
            NameBoss = "Mob Leader"
            CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
        elseif SelectBoss == "Vice Admiral" then
            MsBoss = "Vice Admiral"
            NameBoss = "Vice Admiral"
            NameQuestBoss = "MarineQuest2"
            QuestLvBoss = 2
            CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
            CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
            
        elseif SelectBoss == "Warden" then
            MsBoss = "Warden"
            NameBoss = "Warden"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 1
            CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            
        elseif SelectBoss == "Chief Warden" then
            MsBoss = "Chief Warden"
            NameBoss = "Chief Warden"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 2
            CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            
        elseif SelectBoss == "Thunder God" then
            MsBoss = "Thunder God"
            NameBoss = "Swan"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
            CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            
        elseif SelectBoss == "Magma Admiral" then
            MsBoss = "Magma Admiral"
            NameBoss = "Magma Admiral"
            NameQuestBoss = "MagmaQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
            CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
            
        elseif SelectBoss == "Fishman Lord" then
            MsBoss = "Fishman Lord"
            NameBoss = "Fishman Lord"
            NameQuestBoss = "FishmanQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
            CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
            if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif SelectBoss == "Wysper" then
            MsBoss = "Wysper"
            NameBoss = "Wysper"
            NameQuestBoss = "SkyExp1Quest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
            CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
            if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif SelectBoss == "Thunder God" then
            MsBoss = "Thunder God"
            NameBoss = "Thunder God"
            NameQuestBoss = "SkyExp2Quest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
            CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
            
        elseif SelectBoss == "Cyborg" then
            MsBoss = "Cyborg"
            NameBoss = "Cyborg"
            NameQuestBoss = "FountainQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
            CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
            
        -- New World
        elseif SelectBoss == "Diamond" then
            MsBoss = "Diamond"
            NameBoss = "Diamond"
            NameQuestBoss = "Area1Quest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
            CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
            
        elseif SelectBoss == "Jeremy" then
            MsBoss = "Jeremy"
            NameBoss = "Jeremy"
            NameQuestBoss = "Area2Quest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
        elseif SelectBoss == "Fajita" then
            MsBoss = "Fajita"
            NameBoss = "Fajita"
            NameQuestBoss = "MarineQuest3"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
            CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
            
        elseif SelectBoss == "Don Swan" then
            MsBoss = "Don Swan"
            NameBoss = "Don Swan"
            CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
            
        elseif SelectBoss == "Smoke Admiral" then
            MsBoss = "Smoke Admiral"
            NameBoss = "Smoke Admiral"
            NameQuestBoss = "IceSideQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
            CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
            
        elseif SelectBoss == "Cursed Captain" then
            MsBoss = "Cursed Captain"
            NameBoss = "Cursed Captain"
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
        elseif SelectBoss == "Darkbeard" then
            MsBoss = "Darkbeard"
            NameBoss = "Darkbeard"
            CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
        elseif SelectBoss == "Order" then
            MsBoss = "Order"
            NameBoss = "Order"
            CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
        elseif SelectBoss == "Awakened Ice Admiral" then
            MsBoss = "Awakened Ice Admiral"
            NameBoss = "Awakened Ice Admiral"
            NameQuestBoss = "FrostQuest"
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
            CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
            
        elseif SelectBoss == "Tide Keeper" then
            MsBoss = "Tide Keeper"
            NameBoss = "Tide Keeper"
            NameQuestBoss = "ForgottenQuest"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
            CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
            
        -- Thire World
        elseif SelectBoss == "Stone" then
            MsBoss = "Stone"
            NameBoss = "Stone"
            NameQuestBoss = "PiratePortQuest"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-290, 44, 5577)
            CFrameBoss = CFrame.new(-1085, 40, 6779)
            
        elseif SelectBoss == "Island Empress" then
            MsBoss = "Island Empress"
            NameBoss = "Island Empress"
            NameQuestBoss = "AmazonQuest2"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(5443, 602, 752)
            CFrameBoss = CFrame.new(5659, 602, 244)
            
        elseif SelectBoss == "Kilo Admiral" then
            MsBoss = "Kilo Admiral"
            NameBoss = "Kilo Admiral"
            NameQuestBoss = "MarineTreeIsland"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(2178, 29, -6737)
            CFrameBoss =CFrame.new(2846, 433, -7100)
            
        elseif SelectBoss == "Captain Elephant" then
            MsBoss = "Captain Elephant"
            NameBoss = "Captain Elephant"
            NameQuestBoss = "DeepForestIsland"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-13232, 333, -7631)
            CFrameBoss = CFrame.new(-13221, 325, -8405)
            
        elseif SelectBoss == "Beautiful Pirate" then
            MsBoss = "Beautiful Pirate"
            NameBoss = "Beautiful Pirate"
            NameQuestBoss = "DeepForestIsland2"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-12686, 391, -9902)
            CFrameBoss = CFrame.new(5182, 23, -20)
            
        elseif SelectBoss == "rip_indra True Form" then
            MsBoss = "rip_indra True Form"
            NameBoss = "rip_indra True Form"
            CFrameBoss = CFrame.new(-5359, 424, -2735)
            
        elseif SelectBoss == "Longma" then
            MsBoss = "Longma"
            NameBoss = "Longma"
            CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
            
        elseif SelectBoss == "Soul Reaper" then
            MsBoss = "Soul Reaper"
            NameBoss = "Soul Reaper"
            CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
            
        elseif SelectBoss == "Cake Queen" then
            MsBoss = "Cake Queen"
            NameBoss = "Cake Queen"
            NameQuestBoss = "IceCreamIslandQuest"             
            QuestLvBoss = 3
            CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
            CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
            
        end
    end
    function CheckLevel2(vu)
        if not vu then
            SelectMonster = nil
        end
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        if Old_World then
            if game.Players.LocalPlayer.Data.Level.Value == 1 or game.Players.LocalPlayer.Data.Level.Value <= 9 or SelectMonster == "" then -- Bandit
                Ms = "Bandit"
                NameQuest = "BanditQuest1"
                QuestLv = 1
                NameMon = "Bandit"
                CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
                Next_Level_X = 10
            elseif game.Players.LocalPlayer.Data.Level.Value == 10 or game.Players.LocalPlayer.Data.Level.Value <= 100 then
                Ms = "Shanda"
                NameQuest = "SkyExp1Quest"
                QuestLv = 2
                NameMon = "Shanda"
                CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
                CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
    
                Next_Level_X = 75
            elseif game.Players.LocalPlayer.Data.Level.Value >= 60 and game.Players.LocalPlayer.Data.Level.Value <= 75-1 or SelectMonster == "Desert Bandit" then
                Ms = "Desert Bandit"
                NameQuest = "DesertQuest"
                QuestLv = 1
                NameMon = "Desert Bandit"
                CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
            elseif game.Players.LocalPlayer.Data.Level.Value >= 75 and game.Players.LocalPlayer.Data.Level.Value <= 90-1 or SelectMonster == "Desert Officer" then
                Ms = "Desert Officer"
                NameQuest = "DesertQuest"
                QuestLv = 2
                NameMon = "Desert Officer"
                CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
                
                SelectMonster = "Desert Bandit"
                Next_Level_X = 90
            elseif game.Players.LocalPlayer.Data.Level.Value >= 90 and game.Players.LocalPlayer.Data.Level.Value <= 100-1 or SelectMonster == "Snow Bandit" then -- Snow Bandits
                Ms = "Snow Bandit"
                NameQuest = "SnowQuest"
                QuestLv = 1
                NameMon = "Snow Bandit"
                CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
                
                if SelectMonster == "Snow Bandit" then
                else
                    Next_Level_X = 100
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 110 then
                    SelectBoss_P = "Yeti" 
                end
                
            elseif game.Players.LocalPlayer.Data.Level.Value == 100 or game.Players.LocalPlayer.Data.Level.Value <= 119 or SelectMonster == "Snowman" then -- Snowman
                Next_Level_X = 120
                Ms = "Snowman"
                NameQuest = "SnowQuest"
                QuestLv = 2
                NameMon = "Snowman"
                CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
                
                
                if game.Players.LocalPlayer.Data.Level.Value >= 110 then
                    SelectBoss_P = "Yeti" 
                end
                SelectMonster = "Snow Bandit"
            elseif game.Players.LocalPlayer.Data.Level.Value == 120 or game.Players.LocalPlayer.Data.Level.Value <= 174 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
                Ms = "Chief Petty Officer"
                NameQuest = "MarineQuest2"
                QuestLv = 1
                NameMon = "Chief Petty Officer"
                CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                
                
                if game.Players.LocalPlayer.Data.Level.Value >= 130 then
                    SelectBoss_P = "Vice Admiral"
                end
                if SelectMonster == "Chief Petty Officer" then
                else
                    Next_Level_X = 175
                end
            elseif SelectMonster == "Sky Bandit" then -- Sky Bandit
                Ms = "Sky Bandit"
                NameQuest = "SkyQuest"
                QuestLv = 1
                NameMon = "Sky Bandit"
                CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
                
                
            elseif game.Players.LocalPlayer.Data.Level.Value == 175 or game.Players.LocalPlayer.Data.Level.Value <= 190-1 or SelectMonster == "Dark Master" then -- Dark Master
                
                Ms = "Dark Master"
                NameQuest = "SkyQuest"
                QuestLv = 2
                NameMon = "Dark Master"
                CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
                
                SelectMonster = "Sky Bandit"
                if SelectMonster == "Dark Master" then
                else
                    Next_Level_X = 190
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 190 or game.Players.LocalPlayer.Data.Level.Value <= 209 or SelectMonster == "Prisoner" then
                
                Ms = "Prisoner"
                QuestLv = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                if game.Players.LocalPlayer.Data.Level.Value >= 220 then
                    SelectBoss_P = "Warden" 
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 232 then
                    SelectBoss_P = "Chief Warden"
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 242 then
                    SelectBoss_P = "Thunder God"
                end
                if SelectMonster == "Prisoner" then
                else
                    Next_Level_X = 210
                end
                Bypass_TP_Dis = true
            elseif game.Players.LocalPlayer.Data.Level.Value == 210 or game.Players.LocalPlayer.Data.Level.Value <= 249 or SelectMonster == "Dangerous Prisoner" then
                if game.Players.LocalPlayer.Data.Level.Value >= 220 then
                    SelectBoss_P = "Warden" 
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 232 then
                    SelectBoss_P = "Chief Warden"
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 242 then
                    SelectBoss_P = "Thunder God"
                end
                Ms = "Dangerous Prisoner"
                QuestLv = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                SelectMonster = "Prisoner"
                Next_Level_X = 250
                Bypass_TP_Dis = true
            elseif game.Players.LocalPlayer.Data.Level.Value == 250 or game.Players.LocalPlayer.Data.Level.Value <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
                
                Ms = "Toga Warrior"
                NameQuest = "ColosseumQuest"
                QuestLv = 1
                NameMon = "Toga Warrior"
                CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                
                if SelectMonster == "Toga Warrior" then
                else
                    Next_Level_X = 275
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 275 or game.Players.LocalPlayer.Data.Level.Value <= 299 or SelectMonster == "Gladiator" then -- Gladiato
                
                Ms = "Gladiator"
                NameQuest = "ColosseumQuest"
                QuestLv = 2
                NameMon = "Gladiator"
                CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                
                SelectMonster = "Toga Warrior"
                Next_Level_X = 300
            elseif game.Players.LocalPlayer.Data.Level.Value == 300 or game.Players.LocalPlayer.Data.Level.Value <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
                if game.Players.LocalPlayer.Data.Level.Value >= 350 then
                    SelectBoss_P = "Magma Admiral"
                end
                Ms = "Military Soldier"
                NameQuest = "MagmaQuest"
                QuestLv = 1
                NameMon = "Military Soldier"
                CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                
                if SelectMonster == "Military Soldier" then
                else
                    Next_Level_X = 325
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 325 or game.Players.LocalPlayer.Data.Level.Value <= 374 or SelectMonster == "Military Spy" then -- Military Spy
                if game.Players.LocalPlayer.Data.Level.Value >= 350 then
                    SelectBoss_P = "Magma Admiral"
                end
                Ms = "Military Spy"
                NameQuest = "MagmaQuest"
                QuestLv = 2
                NameMon = "Military Spy"
                CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                
                
                SelectMonster = "Military Soldier"
                Next_Level_X = 375
            elseif game.Players.LocalPlayer.Data.Level.Value == 375 or game.Players.LocalPlayer.Data.Level.Value <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
                if game.Players.LocalPlayer.Data.Level.Value >= 425 then
                    SelectBoss_P = "Fishman Lord"
                end
                Ms = "Fishman Warrior"
                NameQuest = "FishmanQuest"
                QuestLv = 1
                NameMon = "Fishman Warrior"
                CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                if SelectMonster == "Fishman Warrior" then
                else
                    Next_Level_X = 400
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 400 or game.Players.LocalPlayer.Data.Level.Value <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
                if game.Players.LocalPlayer.Data.Level.Value >= 425 then
                    SelectBoss_P = "Fishman Lord"
                end
                Ms = "Fishman Commando"
                NameQuest = "FishmanQuest"
                QuestLv = 2
                NameMon = "Fishman Commando"
                CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                CFrameMon = CFrame.new(61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, 0.594906271, 0, -0.803795099)
                if SelectMonster == "Fishman Commando" then
                else
                    Next_Level_X = 450
                end
                SelectMonster = "Fishman Warrior"
            elseif game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 or SelectMonster == "God's Guard" then 
                Ms = "God's Guard"
                NameQuest = "SkyExp1Quest"
                QuestLv = 1
                NameMon = "God's Guards"
                CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
                if SelectMonster == "God's Guard" then
                else
                    Next_Level_X = 475
                end
                SelectMonster = "Fishman Commando"
            elseif game.Players.LocalPlayer.Data.Level.Value == 475 or game.Players.LocalPlayer.Data.Level.Value <= 524 or SelectMonster == "Shanda" then
                Ms = "Shanda"
                NameQuest = "SkyExp1Quest"
                QuestLv = 2
                NameMon = "Shandas"
                CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
                CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
                if game.Players.LocalPlayer.Data.Level.Value >= 500 then
                    SelectBoss_P = "Wysper"
                end
                if SelectMonster == "Shanda" then
                else
                    Next_Level_X = 525
                end
                SelectMonster = "God's Guard"
            elseif game.Players.LocalPlayer.Data.Level.Value == 525 or game.Players.LocalPlayer.Data.Level.Value <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
                
                Ms = "Royal Squad"
                NameQuest = "SkyExp2Quest"
                QuestLv = 1
                NameMon = "Royal Squad"
                CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
                
                
                if SelectMonster == "Royal Squad" then
                else
                    Next_Level_X = 550
                end
                SelectMonster = "Shanda"
            elseif game.Players.LocalPlayer.Data.Level.Value == 550 or game.Players.LocalPlayer.Data.Level.Value <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
                if game.Players.LocalPlayer.Data.Level.Value >= 575 then
                    SelectBoss_P = "Thunder God"
                end
                Ms = "Royal Soldier"
                NameQuest = "SkyExp2Quest"
                QuestLv = 2
                NameMon = "Royal Soldier"
                CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
                
                
                if SelectMonster == "Royal Soldier" then
                else
                    Next_Level_X = 625
                end
                SelectMonster = "Royal Squad"
                
            elseif game.Players.LocalPlayer.Data.Level.Value == 625 or game.Players.LocalPlayer.Data.Level.Value <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
                
                Ms = "Galley Pirate"
                NameQuest = "FountainQuest"
                QuestLv = 1
                NameMon = "Galley Pirate"
                CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
                
                if SelectMonster == "Galley Pirate" then
                else
                    Next_Level_X = 650
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
                if game.Players.LocalPlayer.Data.Level.Value >= 675 then
                    SelectBoss_P = "Cyborg"
                end
                Ms = "Galley Captain"
                NameQuest = "FountainQuest"
                QuestLv = 2
                NameMon = "Galley Captain"
                CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
                
                
                
                SelectMonster = "Galley Pirate"
                Next_Level_X = 9999
            end
        end
        if New_World then
            if game.Players.LocalPlayer.Data.Level.Value == 700 or game.Players.LocalPlayer.Data.Level.Value <= 724 or SelectMonster == "Raider" then -- Raider
                Ms = "Raider" 
                NameQuest = "Area1Quest"
                QuestLv = 1
                NameMon = "Raider"
                CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                
                if SelectMonster == "Raider" then
                else
                    Next_Level_X = 725
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 725 or game.Players.LocalPlayer.Data.Level.Value <= 774 or SelectMonster == "Mercenary" then -- Mercenary
                if game.Players.LocalPlayer.Data.Level.Value >= 750 then
                    SelectBoss_P = "Diamond"
                end
                Ms = "Mercenary"
                NameQuest = "Area1Quest"
                QuestLv = 2
                NameMon = "Mercenary"
                CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
                
                if SelectMonster == "Mercenary" then
                else
                    Next_Level_X = 775
                end
                SelectMonster = "Raider"
            elseif game.Players.LocalPlayer.Data.Level.Value == 775 or game.Players.LocalPlayer.Data.Level.Value <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate
                Ms = "Swan Pirate"
                NameQuest = "Area2Quest"
                QuestLv = 1
                NameMon = "Swan Pirate"
                CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
                
                if SelectMonster == "Swan Pirate" then
                else
                    Next_Level_X = 800
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 800 or game.Players.LocalPlayer.Data.Level.Value <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff
                Ms = "Factory Staff"
                NameQuest = "Area2Quest"
                QuestLv = 2
                NameMon = "Factory Staff"
                CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
                
                if SelectMonster == "Factory Staff" then
                else
                    Next_Level_X = 875
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 850 then
                    SelectBoss_P = "Jeremy"
                end
                SelectMonster = "Swan Pirate"
            elseif game.Players.LocalPlayer.Data.Level.Value == 875 or game.Players.LocalPlayer.Data.Level.Value <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant
                Ms = "Marine Lieutenant"
                NameQuest = "MarineQuest3"
                QuestLv = 1
                NameMon = "Marine Lieutenant"
                CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
                
                if SelectMonster == "Marine Lieutenant" then
                else
                    Next_Level_X = 900
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 900 or game.Players.LocalPlayer.Data.Level.Value <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain
                Ms = "Marine Captain"
                NameQuest = "MarineQuest3"
                QuestLv = 2
                NameMon = "Marine Captain"
                CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
                if game.Players.LocalPlayer.Data.Level.Value >= 925 then
                    SelectBoss_P = "Fajita"
                end
                if SelectMonster == "Marine Captain" then
                else
                    Next_Level_X = 950
                end
                SelectMonster = "Marine Lieutenant"
            elseif game.Players.LocalPlayer.Data.Level.Value == 950 or game.Players.LocalPlayer.Data.Level.Value <= 974 or SelectMonster == "Zombie" then -- Zombie
                Ms = "Zombie"
                NameQuest = "ZombieQuest"
                QuestLv = 1
                NameMon = "Zombie"
                CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
                
                if SelectMonster == "Zombie" then
                else
                    Next_Level_X = 975
                end
                Bypass_TP_Dis = true
            elseif game.Players.LocalPlayer.Data.Level.Value == 975 or game.Players.LocalPlayer.Data.Level.Value <= 999 or SelectMonster == "Vampire" then -- Vampire
                Ms = "Vampire"
                NameQuest = "ZombieQuest"
                QuestLv = 2
                NameMon = "Vampire"
                CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                
                if SelectMonster == "Vampire" then
                else
                    Next_Level_X = 1000
                end
                Bypass_TP_Dis = true
                SelectMonster = "Zombie"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1000 or game.Players.LocalPlayer.Data.Level.Value <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper **
                Ms = "Snow Trooper"
                NameQuest = "SnowMountainQuest"
                QuestLv = 1
                NameMon = "Snow Trooper"
                CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
                
                if SelectMonster == "Snow Trooper" then
                else
                    Next_Level_X = 1050
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 1050 or game.Players.LocalPlayer.Data.Level.Value <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior
                Ms = "Winter Warrior"
                NameQuest = "SnowMountainQuest"
                QuestLv = 2
                NameMon = "Winter Warrior"
                CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
                
                if SelectMonster == "Winter Warrior" then
                else
                    Next_Level_X = 1100
                end
                SelectMonster = "Snow Trooper"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1100 or game.Players.LocalPlayer.Data.Level.Value <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate
                Ms = "Lab Subordinate"
                NameQuest = "IceSideQuest"
                QuestLv = 1
                NameMon = "Lab Subordinate"
                CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                
                if SelectMonster == "Lab Subordinate" then
                else
                    Next_Level_X = 1125
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 1125 or game.Players.LocalPlayer.Data.Level.Value <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior
                if game.Players.LocalPlayer.Data.Level.Value >= 1150 then
                    SelectBoss_P = "Smoke Admiral"
                end
                Ms = "Horned Warrior"
                NameQuest = "IceSideQuest"
                QuestLv = 2
                NameMon = "Horned Warrior"
                CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
                
                if SelectMonster == "Horned Warrior" then
                else
                    Next_Level_X = 1175
                end
    
                SelectMonster = "Lab Subordinate"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1175 or game.Players.LocalPlayer.Data.Level.Value <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja
                Ms = "Magma Ninja"
                NameQuest = "FireSideQuest"
                QuestLv = 1
                NameMon = "Magma Ninja"
                CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
                
                if SelectMonster == "Magma Ninja" then
                else
                    Next_Level_X = 1200
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 1200 or game.Players.LocalPlayer.Data.Level.Value <= 1249 or SelectMonster == "Lava Pirate" then 
                Ms = "Lava Pirate"
                NameQuest = "FireSideQuest"
                QuestLv = 2
                NameMon = "Lava Pirate"
                CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                
                if SelectMonster == "Lava Pirate" then
                else
                    Next_Level_X = 1250
                end
                SelectMonster = "Magma Ninja"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1250 or game.Players.LocalPlayer.Data.Level.Value <= 1274 or SelectMonster == "Ship Deckhand" then 
                Ms = "Ship Deckhand"
                NameQuest = "ShipQuest1"
                QuestLv = 1
                NameMon = "Ship Deckhand"
                CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                if SelectMonster == "Ship Deckhand" then
                else
                    Next_Level_X = 1275
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 1275 or game.Players.LocalPlayer.Data.Level.Value <= 1299 or SelectMonster == "Ship Engineer" then 
                Ms = "Ship Engineer"
                NameQuest = "ShipQuest1"
                QuestLv = 2
                NameMon = "Ship Engineer"
                CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
                if SelectMonster == "Ship Engineer" then
                else
                    Next_Level_X = 1300
                end
                SelectMonster = "Ship Deckhand"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1300 or game.Players.LocalPlayer.Data.Level.Value <= 1324 or SelectMonster == "Ship Steward" then 
                Ms = "Ship Steward"
                NameQuest = "ShipQuest2"
                QuestLv = 1
                NameMon = "Ship Steward"
                CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
                if SelectMonster == "Ship Steward" then
                else
                    Next_Level_X = 1325
                end
                SelectMonster = "Ship Deckhand"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1325 or game.Players.LocalPlayer.Data.Level.Value <= 1349 or SelectMonster == "Ship Officer" then 
                Ms = "Ship Officer"
                NameQuest = "ShipQuest2"
                QuestLv = 2
                NameMon = "Ship Officer"
                CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
                if SelectMonster == "Ship Officer" then
                else
                    Next_Level_X = 1350
                end
                SelectMonster = "Ship Steward"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1350 or game.Players.LocalPlayer.Data.Level.Value <= 1374 or SelectMonster == "Arctic Warrior" then 
                Ms = "Arctic Warrior"
                NameQuest = "FrostQuest"
                QuestLv = 1
                NameMon = "Arctic Warrior"
                CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
                
                if SelectMonster == "Arctic Warrior" then
                else
                    Next_Level_X = 1375
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 1375 or game.Players.LocalPlayer.Data.Level.Value <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker
                if game.Players.LocalPlayer.Data.Level.Value >= 1400 then
                    SelectBoss_P = "Awakened Ice Admiral"
                end
                Ms = "Snow Lurker"
                NameQuest = "FrostQuest"
                QuestLv = 2
                NameMon = "Snow Lurker"
                CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
                
                if SelectMonster == "Snow Lurker" then
                else
                    Next_Level_X = 1450
                end
            
                SelectMonster = "Arctic Warrior"
            elseif game.Players.LocalPlayer.Data.Level.Value == 1425 or game.Players.LocalPlayer.Data.Level.Value <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier
                Ms = "Sea Soldier"
                NameQuest = "ForgottenQuest"
                QuestLv = 1
                NameMon = "Sea Soldier"
                CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
                
                if SelectMonster == "Sea Soldier" then
                else
                    Next_Level_X = 1450
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter
                if game.Players.LocalPlayer.Data.Level.Value >= 1475 then
                    SelectBoss_P = "Tide Keeper"
                end
                Ms = "Water Fighter"
                NameQuest = "ForgottenQuest"
                QuestLv = 2
                NameMon = "Water Fighter"
                CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
                
                if SelectMonster == "Water Fighter" then
                else
                    Next_Level_X = 9999
                end
                SelectMonster = "Sea Soldier"
            end
        end
        if Three_World then
            if game.Players.LocalPlayer.Data.Level.Value >= 1500 and game.Players.LocalPlayer.Data.Level.Value <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire
                Ms = "Pirate Millionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 1
                NameMon = "Pirate Millionaire"
                CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                
                if SelectMonster == "Pirate Millionaire" then
                else
                    Next_Level_X = 1525
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1525 and game.Players.LocalPlayer.Data.Level.Value <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire
                if game.Players.LocalPlayer.Data.Level.Value >= 1550 then
                    SelectBoss_P = "Stone"
                end
                Ms = "Pistol Billionaire"
                NameQuest = "PiratePortQuest"
                QuestLv = 2
                NameMon = "Pistol Billionaire"
                CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                
                if SelectMonster == "Pistol Billionaire" then
                else
                    Next_Level_X = 1575 
                end
                
                SelectMonster = "Pirate Millionaire"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1575 and game.Players.LocalPlayer.Data.Level.Value <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior
                Ms = "Dragon Crew Warrior"
                NameQuest = "AmazonQuest"
                QuestLv = 1
                NameMon = "Dragon Crew Warrior"
                CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                
                if SelectMonster == "Dragon Crew Warrior" then
                else
                    Next_Level_X = 1600
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1600 and game.Players.LocalPlayer.Data.Level.Value <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer
                Ms = "Dragon Crew Archer"
                NameQuest = "AmazonQuest"
                QuestLv = 2
                NameMon = "Dragon Crew Archer"
                CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                
                if SelectMonster == "Dragon Crew Archer" then
                else
                    Next_Level_X = 1625
                end
                SelectMonster = "Dragon Crew Warrior"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1625 and game.Players.LocalPlayer.Data.Level.Value <= 1649 or SelectMonster == "Female Islander" then 
                Ms = "Female Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 1
                NameMon = "Female Islander"
                CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                
                if SelectMonster == "Female Islander" then
                else
                    Next_Level_X = 1650
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1650 and game.Players.LocalPlayer.Data.Level.Value <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander
                Ms = "Giant Islander"
                NameQuest = "AmazonQuest2"
                QuestLv = 2
                NameMon = "Giant Islander"
                CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                if game.Players.LocalPlayer.Data.Level.Value >= 1675 then
                    SelectBoss_P = "Island Empress"
                end
                if SelectMonster == "Giant Islander" then
                else
                    Next_Level_X = 1700
                end
            
                SelectMonster = "Female Islander"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1700 and game.Players.LocalPlayer.Data.Level.Value <= 1774 or SelectMonster == "Marine Commodore" then -- Marine Commodore
                Ms = "Marine Commodore"
                NameQuest = "MarineTreeIsland"
                QuestLv = 1
                NameMon = "Marine Commodore"
                CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                if game.Players.LocalPlayer.Data.Level.Value >= 1750 then
                    SelectBoss_P = "Kilo Admiral"
                end
                if SelectMonster == "Marine Commodore" then
                else
                    Next_Level_X = 1775
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1775 and game.Players.LocalPlayer.Data.Level.Value <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider
                Ms = "Fishman Raider"
                NameQuest = "DeepForestIsland3"
                QuestLv = 1
                NameMon = "Fishman Raider"
                CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                
                if SelectMonster == "Fishman Raider" then
                else
                    Next_Level_X = 1800
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game.Players.LocalPlayer.Data.Level.Value <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain
                Ms = "Fishman Captain"
                NameQuest = "DeepForestIsland3"
                QuestLv = 2
                NameMon = "Fishman Captain"
                CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                
                if SelectMonster == "Fishman Captain" then
                else
                    Next_Level_X = 1825
                end
                SelectMonster = "Fishman Raider"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1825 and game.Players.LocalPlayer.Data.Level.Value <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate
                Ms = "Forest Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 1
                NameMon = "Forest Pirate"
                CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                
                if SelectMonster == "Forest Pirate" then
                else
                    Next_Level_X = 1850
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1850 and game.Players.LocalPlayer.Data.Level.Value <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate
                Ms = "Mythological Pirate"
                NameQuest = "DeepForestIsland"
                QuestLv = 2
                NameMon = "Mythological Pirate"
                CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                if game.Players.LocalPlayer.Data.Level.Value >= 1875 then
                    SelectBoss_P = "Captain Elephant" 
                end
                if SelectMonster == "Mythological Pirate" then
                else
                    Next_Level_X = 1900
                end
            
                SelectMonster = "Forest Pirate"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1900 and game.Players.LocalPlayer.Data.Level.Value <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate
                Ms = "Jungle Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 1
                NameMon = "Jungle Pirate"
                CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                
                if SelectMonster == "Jungle Pirate" then
                else
                    Next_Level_X = 1925
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1925 and game.Players.LocalPlayer.Data.Level.Value <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate
                Ms = "Musketeer Pirate"
                NameQuest = "DeepForestIsland2"
                QuestLv = 2
                NameMon = "Musketeer Pirate"
                CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                
                if SelectMonster == "Musketeer Pirate" then
                else
                    Next_Level_X = 1975
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 1950 then
                    SelectBoss_P = "Beautiful Pirate"
                end
                SelectMonster = "Jungle Pirate"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1975 and game.Players.LocalPlayer.Data.Level.Value <= 1999 or SelectMonster == "Reborn Skeleton" then
                Ms = "Reborn Skeleton"
                NameQuest = "HauntedQuest1"
                QuestLv = 1
                NameMon = "Reborn Skeleton"
                CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
                
                if SelectMonster == "Reborn Skeleton" then
                elseif not LevelMax then
                    Next_Level_X = 2000
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2000 and game.Players.LocalPlayer.Data.Level.Value <= 2024 or SelectMonster == "Living Zombie" then
                Ms = "Living Zombie"
                NameQuest = "HauntedQuest1"
                QuestLv = 2
                NameMon = "Living Zombie"
                CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
                
                if SelectMonster == "Living Zombie" then
                elseif not LevelMax then
                    Next_Level_X = 2025
                end
                SelectMonster = "Reborn Skeleton"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2025 and game.Players.LocalPlayer.Data.Level.Value <= 2049  or  SelectMonster == "Demonic Soul" then
                Ms = "Demonic Soul"
                NameQuest = "HauntedQuest2"
                QuestLv = 1
                NameMon = "Demonic"
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
                
                if SelectMonster == "Demonic Soul" then
                else
                    Next_Level_X = 2050
                end
                SelectMonster = "Living Zombie"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2050 and game.Players.LocalPlayer.Data.Level.Value <= 2074 or SelectMonster == "Posessed Mummy" then
                Ms = "Posessed Mummy"
                NameQuest = "HauntedQuest2"
                QuestLv = 2
                NameMon = "Posessed Mummy"
                CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
                
                if SelectMonster == "Posessed Mummy" then
                else
                    Next_Level_X = 2075
                end
                SelectMonster = "Demonic Soul"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2075 and game.Players.LocalPlayer.Data.Level.Value <= 2099 or SelectMonster == "Peanut Scout" then
                Ms = "Peanut Scout"
                NameQuest = "NutsIslandQuest"
                QuestLv = 1
                NameMon = "Peanut Scout"
                CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
                
                if SelectMonster == "Peanut Scout" then
                else
                    Next_Level_X = 2100
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2100 and game.Players.LocalPlayer.Data.Level.Value <= 2124 or SelectMonster == "Peanut President" then
                Ms = "Peanut President"
                NameQuest = "NutsIslandQuest"
                QuestLv = 2
                NameMon = "Peanut President"
                CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
                SelectMonster = "Peanut Scout"
                
                if SelectMonster == "Peanut President" then
                else
                    Next_Level_X = 2125
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2125 and game.Players.LocalPlayer.Data.Level.Value <= 2149 or SelectMonster == "Ice Cream Chef" then
                Ms = "Ice Cream Chef"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 1
                NameMon = "Ice Cream Chef"
                CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
                CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
                
                if SelectMonster == "Ice Cream Chef" then
                else
                    Next_Level_X = 2150
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2150 and game.Players.LocalPlayer.Data.Level.Value <= 2199 or SelectMonster == "Ice Cream Commander" then 
                Ms = "Ice Cream Commander"
                NameQuest = "IceCreamIslandQuest"
                QuestLv = 2
                NameMon = "Ice Cream Commander"
                CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
                CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
                
                if SelectMonster == "Ice Cream Commander" then
                else
                    Next_Level_X = 2200
                end
                if game.Players.LocalPlayer.Data.Level.Value >= 2175 then
                    SelectBoss_P = "Cake Queen"
                end
                SelectMonster = "Ice Cream Chef"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2200 and game.Players.LocalPlayer.Data.Level.Value <= 2224 or SelectMonster == "Cookie Crafter" then 
                Ms = "Cookie Crafter"
                NameQuest = "CakeQuest1"
                QuestLv = 1
                NameMon = "Cookie Crafter"
                CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
                
                if SelectMonster == "Cookie Crafter" then
                elseif not LevelMax then
                    Next_Level_X = 2225
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2225 and game.Players.LocalPlayer.Data.Level.Value <= 2249 or SelectMonster == "Cake Guard" then 
                Ms = "Cake Guard"
                NameQuest = "CakeQuest1"
                QuestLv = 2
                NameMon = "Cake Guard"
                CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
                SelectMonster = "Cookie Crafter"
                
                if SelectMonster == "Cake Guard" then
                elseif not LevelMax then
                    Next_Level_X = 2250
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2250 and game.Players.LocalPlayer.Data.Level.Value < 2300 or SelectMonster == "Baking Staff" then 
                Ms = "Baking Staff"
                NameQuest = "CakeQuest2"
                QuestLv = 1
                NameMon = "Baking Staff"
                CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
                
                if SelectMonster == "Baking Staff" then
                elseif not LevelMax then
                    Next_Level_X = 2300
                end
                
                SelectMonster = "Cookie Crafter"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2300 and game.Players.LocalPlayer.Data.Level.Value < 2325 or SelectMonster == "Cocoa Warrior" then 
                Ms = "Cocoa Warrior"
                NameQuest = "ChocQuest1"
                QuestLv = 1
                NameMon = "Cocoa Warrior"
                CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
                CFrameMon = CFrame.new(24.617475509643555, 24.734342575073242, -12227.267578125)
                if SelectMonster == "Cocoa Warrior" then
                else
                    Next_Level_X = 2325
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2325 and game.Players.LocalPlayer.Data.Level.Value < 2350 or SelectMonster == "Chocolate Bar Battler" then 
                Ms = "Chocolate Bar Battler"
                NameQuest = "ChocQuest1"
                QuestLv = 2
                NameMon = "Chocolate Bar Battler"
                CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
                CFrameMon = CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375)
                if SelectMonster == "Chocolate Bar Battler" then
                else
                    Next_Level_X = 2350
                end
                SelectMonster = "Cocoa Warrior"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2350 and game.Players.LocalPlayer.Data.Level.Value < 2375 or SelectMonster == "Sweet Thief" then 
                Ms = "Sweet Thief"
                NameQuest = "ChocQuest2"
                QuestLv = 1
                NameMon = "Sweet Thief"
                CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
                CFrameMon = CFrame.new(51.61184310913086, 24.79380989074707, -12574.873046875)
                if SelectMonster == "Sweet Thief" then
                else
                    Next_Level_X = 2375
                end
                SelectMonster = "Chocolate Bar Battler"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2375 and game.Players.LocalPlayer.Data.Level.Value < 2400 or SelectMonster == "Candy Rebel" then 
                Ms = "Candy Rebel" 
                NameQuest = "ChocQuest2"
                QuestLv = 2
                NameMon = "Candy Rebel"
                CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
                CFrameMon = CFrame.new(28.345605850219727, 24.79380226135254, -12949.5029296875)
                if SelectMonster == "Candy Rebel" then
                else
                    Next_Level_X = 2400
                end
                SelectMonster = "Sweet Thief"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2400 and game.Players.LocalPlayer.Data.Level.Value < 2425 or SelectMonster == "Candy Pirate"  then
                Ms = "Candy Pirate" 
                NameQuest = "CandyQuest1"
                QuestLv = 1
                NameMon = "Candy Pirate"
                CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
                CFrameMon = CFrame.new(-1333.9425048828125, 16.907636642456055, -14424.8447265625)
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2425 and game.Players.LocalPlayer.Data.Level.Value < 2450 or SelectMonster == "Snow Demon" then
                Ms = "Snow Demon"
                NameQuest = "CandyQuest1"
                QuestLv = 2
                NameMon = "Snow Demon"
                CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
                CFrameMon = CFrame.new(-963.0213012695312, 16.1071834564209, -14289.576171875)
                if SelectMonster == "Candy Pirate" then
                else
                    Next_Level_X = 2450
                end
                SelectMonster = "Candy Pirate"
            elseif game.Players.LocalPlayer.Data.Level.Value == 2450 or game.Players.LocalPlayer.Data.Level.Value <= 2474 or SelectMonster == "Isle Outlaw" then
                Ms = "Isle Outlaw"
                QuestLv = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQ = CFrame.new(-16545.9355, 55.6863556, -173.230499)
                CFrameMon = CFrame.new(-16120.6035, 116.520554, -103.038849)
                if SelectMonster == "Isle Outlaw" then
                else
                    Next_Level_X = 2475
                end
            elseif game.Players.LocalPlayer.Data.Level.Value == 2475 or game.Players.LocalPlayer.Data.Level.Value <= 2524 or SelectMonster == "Island Boy" then
                Ms = "Island Boy"
                QuestLv = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQ = CFrame.new(-16545.9355, 55.6863556, -173.230499)
                CFrameMon = CFrame.new(-16751.3125, 121.226219, -264.015015)
                if SelectMonster == "Island Boy" then
                else
                    Next_Level_X = 2525
                end
                SelectMonster = "Isle Outlaw"
            elseif game.Players.LocalPlayer.Data.Level.Value >= 2525 then
                Ms = "Isle Champion"
                QuestLv = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQ = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16933.2129, 93.3503036, 999.450989)
                SelectMonster = "Island Boy"
            end
        end
    end
    
    -- Attack
    --local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
    --Camera:Stop()
    
    function GetCurrentBlade() 
        local plr = game and game.Players.LocalPlayer
        local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
        local CbFw2 = CbFw[2]
        local p13 = CbFw2.activeController
        local ret = p13.blades[1]
        if not ret then return end
        while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
        return ret
    end
    local time_all_x = 0
    local time_all_p = 0
    local time_x = 0
    function getAllBladeHits(Sizes)
        local Hits = {}
        local Client = game.Players.LocalPlayer
        local Enemies = game:GetService("Workspace").Enemies:GetChildren()
        for i=1,#Enemies do local v = Enemies[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Farm_Attack and Human and Human.RootPart and Human.Health < Human.MaxHealth and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 or not Farm_Attack and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        return Hits
    end
    function AttackNoCDZ()
        pcall(function()
            if AttackPlayers == nil then
                AttackPlayers = 'None'
            end
            local plr = game and game.Players.LocalPlayer
            local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
            local CbFw2 = CbFw[2]
            local AC = CbFw2.activeController
            for i = 1, 1 do 
                --[[ 
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    plr.Character,
                    {plr.Character.HumanoidRootPart},
                    60
                )
                ]]
                local cac = {}
                for k,v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and tostring(v.Name) == AttackPlayers then
                        table.insert(cac, v.HumanoidRootPart)
                    end
                end
                --[[
                for k, v in pairs(bladehit) do
                    if v.Parent:FindFirstChild("HumanoidRootPart") and (v.Parent:FindFirstChild("HumanoidRootPart").Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and v.Parent:FindFirstChild("Humanoid").Health > 0 and string.find(tostring(v.Parent),'Lv') and not hash[v.Parent] then
                        table.insert(cac, v.Parent.HumanoidRootPart)
                        hash[v.Parent] = true
                    end
                end
                ]]
                bladehit = cac
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
                    end
                end
            end
        end)
    end
    function AttackNoXOO()
        pcall(function()
            if AttackPlayers == nil then
                AttackPlayers = 'None'
            end
            local plr = game and game.Players.LocalPlayer
            local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
            local CbFw2 = CbFw[2]
            local AC = CbFw2.activeController
            for i = 1, 1 do 
                --[[ 
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    plr.Character,
                    {plr.Character.HumanoidRootPart},
                    60
                )
                ]]
                local L_88_ = game.Players.LocalPlayer
                local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                    L_88_.Character, {
                    L_88_.Character.HumanoidRootPart
                }, 30)
                --[[
                for k, v in pairs(bladehit) do
                    if v.Parent:FindFirstChild("HumanoidRootPart") and (v.Parent:FindFirstChild("HumanoidRootPart").Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and v.Parent:FindFirstChild("Humanoid").Health > 0 and string.find(tostring(v.Parent),'Lv') and not hash[v.Parent] then
                        table.insert(cac, v.Parent.HumanoidRootPart)
                        hash[v.Parent] = true
                    end
                end
                ]]
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
                    end
                end
            end
        end)
    end
    function AttackNoCD()
        pcall(function()
            if FarmPlayer and Farm_P_ATTK then
                if AttackPlayers == nil then
                    AttackPlayers = 'None'
                end
                local plr = game and game.Players.LocalPlayer
                local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
                local CbFw2 = CbFw[2]
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    --[[ 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    ]]
                    local cac = {}
                    for k,v in pairs(game.Workspace.Characters:GetChildren()) do
                        if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and tostring(v.Name) == AttackPlayers then
                            table.insert(cac, v.HumanoidRootPart)
                        end
                    end
                    --[[
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and (v.Parent:FindFirstChild("HumanoidRootPart").Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and v.Parent:FindFirstChild("Humanoid").Health > 0 and string.find(tostring(v.Parent),'Lv') and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    ]]
                    bladehit = cac
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        if time_all_p == 0 then
                            wait(2)
                        end
                        time_x = time_x+1
                        time_all_p = time_all_p+1
                        if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                            AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                            if time_x >= 2 and time_all_p >= 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                time_x = 0
                            end
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
                        end
                    end
                end
            else
                local plr = game and game.Players.LocalPlayer
    local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]
                local AC = CbFw2.activeController
                for i = 1, 1 do 
                    bladehit = getAllBladeHits(80)
                    if #bladehit > 0 then
                        local u8 = debug.getupvalue(AC.attack, 5)
                        local u9 = debug.getupvalue(AC.attack, 6)
                        local u7 = debug.getupvalue(AC.attack, 4)
                        local u10 = debug.getupvalue(AC.attack, 7)
                        local u12 = (u8 * 798405 + u7 * 727595) % u9
                        local u13 = u7 * 798405
                        (function()
                            u12 = (u12 * u9 + u13) % 1099511627776
                            u8 = math.floor(u12 / u9)
                            u7 = u12 - u8 * u9
                        end)()
                        u10 = u10 + 1
                        debug.setupvalue(AC.attack, 5, u8)
                        debug.setupvalue(AC.attack, 6, u9)
                        debug.setupvalue(AC.attack, 4, u7)
                        debug.setupvalue(AC.attack, 7, u10)
                        time_x = time_x+1
                        time_all_x = time_all_x+1
                        if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                            AC.animator.anims.basic[1]:Play(0.1,0.1,0.1)
                            if time_x >= 2 then
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                                time_x = 0
                            end
                            game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
                        end
                    end
                end
            end
        end)
    end
    spawn(function()
        while task.wait() do
            pcall(function()
                if Attack_Aura then
                    AttackNoXOO()
                    wait(0.05)
                elseif _G.Setting['Auto Farm Material'] or _G.Setting['Auto Farm Tushita (One Click + Hop Server)'] or _G.Setting['Auto Farm Yama (One Click + Hop Server)'] or _G.Setting['Auto Farm Material Sea (All Material)'] or Race_Attack or _G.Setting['Evo Race V1 M'] or _G.Setting['Evo Race V2 M'] or _G.Setting['Evo Race V3 M'] or Auto_Farm_Azure or Attack or Auto_Reset_Cooldown_Leviathan or Auto_Reset_Cooldown_Leviathan_B or Auto_Farm_Level or Auto_Get_Leviathan or Auto_Farm_Shark_Anchor or Auto_Farm_Electric_Wings or Auto_Farm_Mutant_Teeth or Auto_Farm_Fool_Gold or Auto_Farm_Shark_Teeth then
                    if not Attack_FaX and game.Players.LocalPlayer.Character.Stun.Value == 0 then
                        AttackNoCD()
                        game:GetService("RunService").Stepped:wait()
                        if time_all_x >= 20 then
                            if time_all_x >= 22 then
                                wait()
                                time_all_x = 0
                            end
                        end
                    else
                        wait(2)
                    end
                elseif Auto_Farm_Bounty then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                    wait(.05)
                else
                    wait(.1)
                end
            end)
        end
    end)
    CheckMonSpawn = {}
    function FarmLevel()
        if FarmPlayer then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
                local xp = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                result = {}
                local regex = ("([^%s]+)"):format(" ")
                for each in xp:gmatch(regex) do
                    table.insert(result, each)
                end
                if game.Workspace.Characters:FindFirstChild(result[2]) then
                    for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                        if v.Name == result[2] then
                            time_all_p = 0
                            AttackPlayers = result[2]
                            Farm_P_ATTK = true
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                            repeat wait(.1)
                                RandomFarm = math.random(1,5)
                                if RandomFarm == 1 then
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                elseif RandomFarm == 2 then
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35))
                                elseif RandomFarm == 3 then
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -35))
                                elseif RandomFarm == 4 then
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0))
                                elseif RandomFarm == 5 then
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(-35, 1, 0))
                                else
                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                end
                                EquipWeapon(Weapon)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                end
                                if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                                    time_all_p = 0
                                end
                            until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not Auto_Farm_Level
                            AttackPlayers = 'None'
                            Farm_P_ATTK = false
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'font') then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                        end
                    end
                elseif not game.Workspace.Characters:FindFirstChild(result[2]) then
                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                end
            elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                FarmPlayer = false
            end
        elseif FarmBoss_L then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game.Workspace.Enemies:FindFirstChild(SelectBoss) or game.ReplicatedStorage:FindFirstChild(SelectBoss) then
                    if game.Workspace.Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == SelectBoss and v.Humanoid.Health > 0 then
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                Attack  = true
                                repeat wait()
                                    TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                    EquipWeapon(Weapon)
                                until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Level
                                if not v.Parent or v.Humanoid.Health <= 0 then
                                    v:Destroy()
                                end
                                Attack  = false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild(SelectBoss) then
                        TPX(game.ReplicatedStorage:FindFirstChild(SelectBoss).HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                    end
                elseif not game.Workspace.Enemies:FindFirstChild(SelectBoss) and not game.ReplicatedStorage:FindFirstChild(SelectBoss) then
                    FarmBoss_L = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
            elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                FarmBoss_L = false
            end
        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and Ms ~= nil then
            if game.Players.LocalPlayer.Data.Level.Value <= 100 then
                if game.Players.LocalPlayer.Data.Level.Value >= Next_Level_X then
                    SelectMonster = nil
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
            end
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            end
            if not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
                if game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:FindFirstChild(NameMon) then
                    for i,v in next,game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren() do
                        if v.Name == NameMon and not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
                            repeat wait(.1)
                                TPX(v.CFrame*CFrame.new(0,15,0))
                            until Start_Farm_Mastery_Gun or (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 or game.Workspace.Enemies:FindFirstChild(Ms) or game.ReplicatedStorage:FindFirstChild(Ms) or not Auto_Farm_Level
                        end
                    end
                else
                    TPX(CFrameMon*CFrame.new(0,10,0))
                end
            end
            if game.Workspace.Enemies:FindFirstChild(Ms) then
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == Ms and v.Humanoid.Health > 0 then
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                        v:SetPrimaryPartCFrame(v.HumanoidRootPart.CFrame*CFrame.new(0,-3,0))
                        PosMon_X = v.HumanoidRootPart.CFrame
                        StatrMagnet = true
                        Attack  = true
                        Farm_Attack = true
                        repeat wait()
                            if v.Humanoid.Health == v.Humanoid.MaxHealth then
                                Click()
                                wait(.1)
                            end
                            if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 23 then
                                TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            end
                            EquipWeapon(Weapon)
                        until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not Auto_Farm_Level
                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    end
                end
                Farm_Attack = false
                StatrMagnet = false
                Attack = false
            elseif game.ReplicatedStorage:FindFirstChild(Ms) then
                TPX(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame*CFrame.new(0,20,0))
            end
        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
            Check_Level = false
            SelectBoss = nil
            if Old_World then
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                local x = "Yeti"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 110 and game.Players.LocalPlayer.Data.Level.Value < 160 then
                        SelectBoss = x
                    end
                end
                local x = "Vice Admiral"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 130 and game.Players.LocalPlayer.Data.Level.Value < 180 then
                        SelectBoss = x
                    end
                end
                local x = "Warden"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 220 and game.Players.LocalPlayer.Data.Level.Value < 270 then
                        SelectBoss = x
                    end
                end
                local x = "Chief Warden"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 230 and game.Players.LocalPlayer.Data.Level.Value < 280 then
                        SelectBoss = x
                    end
                end
                local x = "Thunder God"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 240 and game.Players.LocalPlayer.Data.Level.Value < 290 then
                        SelectBoss = x
                    end
                end
                local x = "Magma Admiral"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 350 and game.Players.LocalPlayer.Data.Level.Value < 400 then
                        SelectBoss = x
                    end
                end
                local x = "Fishman Lord"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 425 and game.Players.LocalPlayer.Data.Level.Value < 475 then
                        SelectBoss = x
                    end
                end
                local x = "Wysper"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 500 and game.Players.LocalPlayer.Data.Level.Value < 550 then
                        SelectBoss = x
                    end
                end
                local x = "Thunder God"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 575 and game.Players.LocalPlayer.Data.Level.Value < 625 then
                        SelectBoss = x
                    end
                end
                local x = "Cyborg"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 675 then
                        SelectBoss = x
                    end
                end
            elseif New_World then
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                local x = "Diamond"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 750 and game.Players.LocalPlayer.Data.Level.Value < 800 then
                        SelectBoss = x
                    end
                end
                local x = "Jeremy"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 850 and game.Players.LocalPlayer.Data.Level.Value < 900 then
                        SelectBoss = x
                    end
                end
                local x = "Fajita"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 925 and game.Players.LocalPlayer.Data.Level.Value < 975 then
                        SelectBoss = x
                    end
                end
                local x = "Smoke Admiral"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 1150 and game.Players.LocalPlayer.Data.Level.Value < 1200 then
                        SelectBoss = x
                    end
                end
            elseif Three_World then
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                local x = "Stone"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 1550 and game.Players.LocalPlayer.Data.Level.Value < 1600 then
                        SelectBoss = x
                    end
                end
                local x = "Kilo Admiral"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 1750 and game.Players.LocalPlayer.Data.Level.Value < 1800 then
                        SelectBoss = x
                    end
                end
                local x = "Captain Elephant"
                if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
                    if game.Players.LocalPlayer.Data.Level.Value >= 1875 and game.Players.LocalPlayer.Data.Level.Value < 1925 then
                        SelectBoss = x
                    end
                end
            end
            if SelectBoss ~= nil then
                if game.Workspace.Enemies:FindFirstChild(SelectBoss) or game.ReplicatedStorage:FindFirstChild(SelectBoss) then
                    CFrameQBoss = nil
                    CheckQuestBoss_L()
                    if CFrameQBoss ~= nil then
                        repeat wait(.1)
                            TPX(CFrameQBoss)
                            if (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
                                FarmBoss_L = true
                            end
                        until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true 
                    elseif CFrameQBoss == nil then
                        SelectBoss = nil
                    end
                end
            end
            if Old_World and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                if game.Players.LocalPlayer.Data.Level.Value >= 100 and game.Players.LocalPlayer.Data.Level.Value < 650 and #game.Players:GetPlayers() > 5 then
                    if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")),'We') then
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            local at_time = 0
                            FarmPlayer = false
                            repeat wait()
                                local xp = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                result = {}
                                local regex = ("([^%s]+)"):format(" ")
                                for each in xp:gmatch(regex) do
                                    table.insert(result, each)
                                end
                                if #result >= 2 then
                                    if game.Players:FindFirstChild(result[2]) and game.Players[result[2]].Data.Level.Value >= 20 and game.Players[result[2]].Data.Level.Value <= game.Players.LocalPlayer.Data.Level.Value+200 then
                                        FarmPlayer = true
                                        at_time = 5
                                    else
                                        if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")),'We') then
                                            at_time = at_time+1
                                        end
                                    end
                                end
                            until at_time >= 5
                            if not FarmPlayer and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                        end
                    end
                end
            end
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                local Lv = game.Players.LocalPlayer.Data.Level.Value
                if game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 100 then
                    CheckLevel2()
                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text = NameMon
                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible = true
                else
                    CheckLevel2()
                    if not First_Quest then
                        if SelectMonster ~= nil then
                            First_Quest = true
                        end
                    else
                        SelectMonster = nil
                        First_Quest = false
                    end
                    repeat wait(.1)
                        TPX(CFrameQ)
                        if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
                    until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true
                end
            end
        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
    end
    local function GetMonster(vu)
        pcall(function()
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA('Model') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
                    Monster = v
                    return
                end
            end
        end)
    end
    function FarmMastery()
        pcall(function()
            local xp = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            if Three_World then
                xp = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            elseif New_World then
                xp = CFrame.new(-3212.99683, 263.809296, -10551.8799)
            elseif Old_World then
                xp = CFrame.new(5782.90186, 94.5326462, 4716.78174)
            end	
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude >= 2000 then
                repeat wait()
                    TPX(xp)
                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude <= 3 
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude < 2000 then
                Monster = nil
                for i=1500,0,-300 do
                    GetMonster(i)
                end 
                if Monster ~= nil and Monster.Humanoid.Health > 0 then
                    PosMon_X = Monster.HumanoidRootPart.CFrame
                    StatrMagnet = true
                    Attack = true
                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                    repeat wait()
                        TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                        EquipWeapon(Weapon)
                    until not Monster.Parent or Monster.Humanoid.Health <= 0 
                    StatrMagnet = false
                    Attack = false
                elseif Monster == nil then
                    for i=1500,0,-300 do
                        GetMonster(i)
                    end
                    if Monster == nil then
                        TPX(xp)
                    end
                end
            end
        end)
    end
    Leviathan_Quest = -1
    spawn(function()
        while wait(.5) do
            if Auto_Reset_Cooldown_Leviathan or Auto_Reset_Cooldown_Leviathan_B then
                pcall(function()
                    if not Attack_Fa then
                        if Leviathan_Quest == 5 or _G.Setting['Owner Beast Hunter'] ~= nil and _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) or _G.Setting['Owner Boat'] ~= nil and _G.Setting['Owner Boat'] == tostring(game.Players.LocalPlayer.Name) then
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                game:GetService("Workspace").Map:FindFirstChild("MysticIsland"):Destroy()
                            end
                            for ixz,vxz in pairs(workspace:GetChildren()) do
                                if vxz.Name == 'MediumFlat' or vxz.Name == 'Largest' or vxz.Name == 'Large' or vxz.Name == 'SmallGroup' or vxz.Name == 'MediumGroup' or vxz.Name == 'SmallCluster' then
                                    if vxz:FindFirstChildOfClass('Part') then
                                        vxz:FindFirstChildOfClass('Part').CFrame = vxz:FindFirstChildOfClass('Part').CFrame*CFrame.new(0,100,0)
                                    elseif vxz:FindFirstChildOfClass('BasePart') then
                                        vxz:FindFirstChildOfClass('BasePart').CFrame = vxz:FindFirstChildOfClass('BasePart').CFrame*CFrame.new(0,100,0)
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end)
            else
                wait(1.5)
            end
        end
    end)
    spawn(function()
        while wait(1) do
            if Auto_Reset_Cooldown_Leviathan and Three_World or Auto_Reset_Cooldown_Leviathan_B and Three_World then
                pcall(function()
                    if not game.Workspace.SeaBeasts:FindFirstChild('Leviathan') and not Attack_Fa and not bit_zaz then
                        if tostring(game.Players.LocalPlayer.Name) ~= _G.Setting['Owner Beast Hunter'] or _G.Setting['Owner Boat'] ~= tostring(game.Players.LocalPlayer.Name) then
                            for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                                if v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == _G.Setting['Owner Beast Hunter'] or v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == _G.Setting['Owner Boat'] then
                                    if (v.VehicleSeat.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude >= 2500 then
                                        Leviathan_Quest = 5
                                        bit_zaz = true
                                    end
                                end
                            end
                        end
                        Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                        wait(15)
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Get_Leviathan then
                    if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true)) == 'You lack a cold heart...' then
                    else
                        Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 1/1")
                    end
                end
                if Auto_Farm_Electric_Wings or Auto_Farm_Mutant_Teeth or Auto_Farm_Fool_Gold or Auto_Farm_Shark_Teeth then
                    E_W_S:Set("Electric Wings : "..CheckItem_X('Electric Wings')..'/6')
                    M_T_T_S:Set("Mutant Teeth : "..CheckItem_X('Mutant Teeth')..'/2')
                    F_G_S:Set("Fool's Golds : "..CheckItem_X("Fool's Golds")..'/30')
                    S_T_S:Set("Shark Teeth : "..CheckItem_X("Shark Teeth")..'/6')
                end
                if Auto_Farm_Darkbeard then
                    Dark_Fragment_S:Set("แฟรกเมนต์สีดำ : "..CheckItem_X('Dark Fragment')..'/2')
                end
                if Auto_Farm_Demonic_Wisps then
                    Demonic_Wisps_S:Set("Demonic Wisps : "..CheckItem_X('Demonic Wisps')..'/20')
                end
                if Auto_Farm_Vampire_Fangs then
                    Vampire_Fang_S:Set("Vampire Fangs : "..CheckItem_X('Vampire Fangs')..'/20')
                end
                if Auto_Farm_Azure or Auto_Random_Azure then
                    Azure_Embers_S:Set("Azure Embers : "..CheckItem_X('Azure Embers')..'/25')
                    if GetItem('Fox Lamp') then
                        Fox_Lamp_S:Set("Fox Lamp : ✅")
                    end
                    if GetItem('Kitsune Mask') then
                        Kitsune_Mask_S:Set("Kitsune Mask : ✅")
                    end
                    if GetItem('Kitsune Ribbon') then
                        Kitsune_Ribbon_S:Set("Kitsune Ribbon : ✅")
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
                        if tostring(v.HiddenName) == 'Kitsune' and v.Unlocked == true then
                            Kitsune_Aura_Color_S:Set("สีฮาคิจิ้งจอกฟ้า : ✅")
                        end
                    end
                end
                wait(15)
            end)
        end
    end)
    --[[
    spawn(function()
        while wait(5) do
            pcall(function()
                if Go_Tpls and Auto_Get_Leviathan then
                    if game.Workspace.Map:FindFirstChild('Great Tree') then
                        game.Workspace.Map:FindFirstChild('Great Tree'):Destroy()
                    end
                    if game.Workspace.Map:FindFirstChild('Hydra Island') then
                        game.Workspace.Map:FindFirstChild('Hydra Island'):Destroy()
                    end
                end
            end)
        end
    end)
    ]]
    if Auto_Reset_Cooldown_Leviathan or Auto_Farm_Leviathan or Auto_Get_Leviathan then
        if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true)) == 'You lack a cold heart...' then
        else
            Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 1/1")
            Leviathan_H = true
        end
    end
    if Auto_Farm_Darkbeard then
        if CheckItem_X('Dark Fragment') >= 2 then
            Dark_Fragment_H = true
        end
    end
    if Auto_Farm_Demonic_Wisps then
        if CheckItem('Demonic Wisp') >= 20 then
            Demonic_Wisps_H = true
        end
    end
    if Auto_Farm_Vampire_Fangs then
        if CheckItem('Vampire Fang') >= 20 then
            Auto_Farm_Vampire_Fangs = false
        end
    end
    if Auto_Buy_Sanguine_Art then
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true) == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true) == 2 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
            Weapon = 'Sanguine Art'
            Sanguine_Art_H = true
            if not Three_World then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                TleP = true
                wait(50)
            end
        end
    end
    -- Beast Hunter
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Reset_Cooldown_Leviathan_B then
                    Delta = false
                    Quest_Beast_S:Set("Status : Reset Cooldown Leviathan")
                    if not Three_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                    if not Status_H then
                        if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value <= 2000 then
                            local I = {
                                Point = game:GetService("Players").LocalPlayer.Data.Points.Value
                            }
                            if not refunx and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
                                    if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                    else
                                        Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Need Fragments Reset Stats)")
                                    end
                                else
                                    refunx = true
                                end
                                if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
                                    Status_H = true
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
                            Status_H = true
                        end
                        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                        for i,v in pairs(Inventory) do
                            if v.Type == "Sword" then
                                if v["Name"] == 'Hallow Scythe' then
                                    Hallow_Scryte_H = true
                                    if v.Mastery >= 350 then
                                        Hallow_Scryte_Mas = true
                                    end
                                end
                                if v["Name"] == 'Saber' then
                                    Saber_H = true
                                    if v.Mastery >= 125 then
                                        Saber_Mas = true
                                    end
                                end
                            end
                        end
                        if Hallow_Scryte_Mas then
                            Mastery_Max = true
                            Weapon_Sword = 'Hallow Scythe'
                        elseif Saber_Mas then
                            Weapon_Sword = 'Saber'
                        elseif Hallow_Scryte_H then
                            Farm_Mastery_Sword = true
                            Weapon_Sword = 'Hallow Scythe'
                            Mastery_X = 350
                        elseif Saber_H then
                            Farm_Mastery_Sword = true
                            Weapon_Sword = 'Saber'
                            Mastery_X = 125
                        end
                    elseif Farm_Mastery_Sword and not Mastery_Max then
                        Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Farming Mastery Sword)")
                        Weapon = Weapon_Sword
                        if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                            if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                local args = {
                                    [1] = "LoadItem",
                                    [2] = Weapon_Sword
                                }
            
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                        FarmMastery()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v:IsA('Tool') and v.Name == Weapon_Sword then
                                if v.Level.Value >= Mastery_X then
                                    Mastery_Max = true
                                end
                            end
                        end
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA('Tool') and v.Name == Weapon_Sword then
                                if v.Level.Value >= Mastery_X then
                                    Mastery_Max = true
                                end
                            end
                        end
                    elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                        ----Status_Win:Set('Status: Finding Frozen Dimension')
                        if _G.Setting['Owner Boat'] ~= nil and _G.Setting['Owner Boat'] == tostring(game.Players.LocalPlayer.Name) then 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("OpenLeviathanGate")
                        end
                        Auto_Reset_Cooldown_Leviathan_B = false
                    else
                        if Leviathan_Quest == 5 or _G.Setting['Owner Boat'] == tostring(game.Players.LocalPlayer.Name) then
                            Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Quest Leviathan 5)")
                            Body_V = true
                            local Farming_Tril = false
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' or v.Name == 'Fish Crew Member' then
                                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                        ----Status_Win:Set('Status: Kill Monster')
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Attack = false
                                        if v.Name == 'Terrorshark' then
                                            Attack_Fa = true
                                        end
                                        repeat wait(.1)
                                            --AttackNoCDX(v)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not Auto_Reset_Cooldown_Leviathan_B or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                        if v.Name == 'Terrorshark' then
                                            Attack_Fa = false
                                        end
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                    end
                                end
                            end
                            if not Farming_Tril then
                                if _G.Setting['Owner Boat'] ~= nil then
                                    if _G.Setting['Owner Boat'] == tostring(game.Players.LocalPlayer.Name) then
                                        ----Status_Win:Set('Status: Owner') 
                                        local check_boat_xp = false
                                        for i,v in pairs(game.workspace.Boats:GetChildren()) do
                                            if v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                if v:FindFirstChild('Seat') then
                                                    v.Seat:Destroy()
                                                end
                                                position_boat = CFrame.new(-17353.1016, 9.88468075, -42615.5, 0.874905348, -0.0352381393, 0.483010232, 0.0402438864, 0.999189913, 1.35374534e-09, -0.482618958, 0.0194382071, 0.875614703)
                                                check_boat_xp = true
                                                local get_player= {}
                                                for ix,vx in pairs(game.Workspace.Characters:GetChildren()) do
                                                    if not table.find(get_player,vx.Name) and vx:FindFirstChild('HumanoidRootPart') and (vx.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude <= 500 then
                                                        table.insert(get_player,vx.Name)
                                                    end
                                                end
                                                if #get_player >= 5 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.Visible == true and tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.TextLabel.Text) >= 5 then
                                                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true and (position_boat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or Check_Vit and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                        else
                                                            ----Status_Win:Set('Status: Start Boat')
                                                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation > 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation <= -150 then
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                                            else
                                                                repeat wait(.1)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                                                    wait(0.1)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                                                until not Auto_Reset_Cooldown_Leviathan_B or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation >= 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation <= -150 or game.Players.LocalPlayer.Character.Humanoid.Sit == false
                                                            end
                                                            Check_Vit = true
                                                            v:FindFirstChild("VehicleSeat").MaxSpeed = 270
                                                        end
                                                    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                            Stop_Boat()
                                                        else
                                                            ----Status_Win:Set('Status: Start Boat')
                                                            TPBoat(position_boat,v.VehicleSeat,260)
                                                        end
                                                    else
                                                        Stop_Boat()
                                                        TP(v.VehicleSeat.CFrame) 
                                                    end
                                                elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                                                    Stop_Boat()
                                                    TP(v.VehicleSeat.CFrame) 
                                                else
                                                    Stop_Boat()
                                                end
                                            end
                                        end
                                        if not check_boat_xp then
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude <= 10 then
                                                local args = {
                                                    [1] = "BuyBoat",
                                                    [2] = 'Beast Hunter'
                                                }
                    
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                Check_Vit = false
                                                wait(1)
                                                for i,v in pairs(game.workspace.Boats:GetChildren()) do
                                                    if v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                        if v:FindFirstChild('Seat') then
                                                            v.Seat:Destroy()
                                                        end
                                                    end
                                                end
                                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude > 10 then
                                                TPX(CFrame.new(-16209.931640625, 9.185903549194336, 473.4875183105469))
                                            end
                                        end
                                    else
                                        ----Status_Win:Set('Status: Set Postion')
                                        local check_boat_xp = false
                                        for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                            if vx.Name == 'PirateBrigade' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                vx:Destroy()
                                            end
                                        end
                                        repeat wait(.1)
                                            check_boat_xp = false
                                            Farming_Tril = false
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' or v.Name == 'Fish Crew Member' then
                                                    Farming_Tril = true
                                                end
                                            end
                                            for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                                if vx.Name == 'Beast Hunter' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == _G.Setting['Owner Boat'] then
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.Visible == true and tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.TextLabel.Text) >= 6 then
                                                        TP(vx.VehicleSeat.CFrame*CFrame.new(0,100,0))
                                                    else
                                                        if game.Players.LocalPlayer.Character.Humanoid.Sit == false and (vx.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                                                            for i,v in pairs(vx:GetChildren()) do
                                                                if v.Name == 'Cannon' and v:FindFirstChild('Seat') and game.Players.LocalPlayer.Character.Humanoid.Sit == false and Auto_Reset_Cooldown_Leviathan_B then
                                                                    TP(v.Seat.CFrame)
                                                                    wait(.5)
                                                                end
                                                            end
                                                        end
                                                        check_boat_xp = true
                                                        if (vx.VehicleSeat.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude <= 150 then
                                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                                            TPX(CFrame.new(-16209.931640625, 9.185903549194336, 473.4875183105469))
                                                        elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                                                            TP(vx.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                                        end
                                                    end
                                                end
                                            end
                                        until game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') or check_boat_xp == false or Farming_Tril or not Auto_Reset_Cooldown_Leviathan_B
                                    end
                                end
                            end
                        elseif Leviathan_Quest == -1 then
                            Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Quest Leviathan -1)")
                            local Farming_Tril = false
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                        ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        Attack = false
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        repeat wait(.1)
                                            --AttackNoCDX(v)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                        Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                                    end
                                end
                            end
                            if CheckItem("Fool's Gold") < 30 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                                        if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                            Stop_Boat()
                                            ----Status_Win:Set('Status: Farm '..v.Name)
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            Weapon = 'Sharkman Karate'
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                                local args = {
                                                    [1] = "LoadItem",
                                                    [2] = Weapon_Sword
                                                }
                            
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            Aimbot_On = true
                                            Weapon2 = Weapon_Sword
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            Weapon_Att = Weapon
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon2)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon2 then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                        Weapon_Z = true
                                                    end
                                                    if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                        Weapon_X = true
                                                    end
                                                    if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                        Weapon_C = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                            end)
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                        Weapon2_Z = true
                                                    end
                                                    if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                        Weapon2_X = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                            end)
                                            spawn(function()
                                                repeat wait()
                                                    TP(v.VehicleSeat.CFrame*CFrame.new(0,20,0))
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                            end)
                                            repeat wait()
                                                if Weapon_Z then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon_Z = false
                                                elseif Weapon_X then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon_X = false
                                                elseif Weapon_C then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    Weapon_C = false
                                                elseif Weapon2_Z then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon2_Z = false
                                                elseif Weapon2_X then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon2_X = false
                                                end
                                            until not v.Parent or v.Health.Value <= 0 or not Auto_Reset_Cooldown_Leviathan_B
                                            Aimbot_On = false
                                        end
                                    end
                                end
                            end
                            if not Farming_Tril then
                                local Check_Boat_H = false 
                                for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                                    if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                        Check_Boat_H = true
                                        if position_boat == nil then
                                            position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                        end
                                        if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                            ----Status_Win:Set('Status: Reset Cooldown')
                                            TPBoat(position_boat,v.VehicleSeat,280)
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,100,100))
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        else
                                            ----Status_Win:Set('Status: Find Boss Reset Cooldown')
                                            if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                                Stop_Boat()
                                                if Monster_Magnet_H then
                                                    if (position_boat.Position-Vector3.new(-38887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-48887.2265625, 40.741893768310547, -658.2794799804688)
                                                    elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                                    else
                                                        position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                                    end
                                                else
                                                    if (position_boat.Position-Vector3.new(-35887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-42887.2265625, 40.741893768310547, -658.2794799804688)
                                                    elseif (position_boat.Position-Vector3.new(-42887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                                    else
                                                        position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                                    end
                                                end
                                                wait(0.5)
                                            elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                    wait(0.5)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                else
                                                    TPBoat(position_boat,v.VehicleSeat,230)
                                                end
                                            else
                                                Stop_Boat()
                                                TP(v.VehicleSeat.CFrame,150) 
                                            end
                                        end
                                    end
                                end
                                if not Check_Boat_H then
                                    ----Status_Win:Set('Status: Get boat.')
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                        ----Status_Win:Set('Status: Buy Boat.')
                                        wait(1)
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = 'PirateBrigade'
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                        TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                                    end
                                end
                            end
                        elseif Leviathan_Quest >= 1 then
                            ----Status_Win:Set('Status: Ready')
                            TPX(CFrame.new(-16467.830078125, 527.8790283203125, 538.0357055664062))
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16467.830078125, 527.8790283203125, 538.0357055664062)).Magnitude <= 5 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                                wait(.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","2")
                            end
                        end
                    end
                elseif Auto_Farm_Leviathan_B then
                    bit_zaz = false
                    Quest_Beast_S:Set("Status : Kill Leviathan")
                    if not Three_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                    if game.Workspace.Map:FindFirstChild('FrozenHeart') or game.Workspace.SeaBeasts:FindFirstChild('Leviathan') and game.Workspace.SeaBeasts:FindFirstChild('Leviathan').Health.Value <= 0 then
                        Auto_Farm_Leviathan_B = false
                    elseif game.Workspace.SeaBeasts:FindFirstChild('Leviathan') or Leviathan_Attack then
                        Leviathan_Quest = -1
                        Leviathan_Attack = false
                        local Leviathan_check = false
                        --Delta = true
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan Segment' and tonumber(v.Health.Value) > 0 then
                                if v:FindFirstChild('Humanoid') then
                                    v.Humanoid:Destroy()
                                end
                                Leviathan_check = true
                                Attack_FaX = true
                                Attack_Fa = true
                                check_tail = true
                                Farming_Tril = true
                                ----Status_Win:Set('Status: Farm Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                wait(.3)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                wait(.5)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                wait(.3)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Weapon = 'Sharkman Karate'
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                    local args = {
                                        [1] = "LoadItem",
                                        [2] = Weapon_Sword
                                    }
                
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                Aimbot_On = true
                                Weapon2 = Weapon_Sword
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                Weapon_Att = Weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon2)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon2 then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                            Weapon_Z = true
                                        end
                                        if not Weapon_X and GetSkill_C(Weapon,'X') then
                                            Weapon_X = true
                                        end
                                        if not Weapon_C and GetSkill_C(Weapon,'C') then
                                            Weapon_C = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                            Weapon2_Z = true
                                        end
                                        if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                            Weapon2_X = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                spawn(function()
                                    repeat wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                        wait(.3)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                        wait(12)
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                spawn(function()
                                    repeat task.wait()
                                        local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                        local percent = (health / maxhealth) * 100
                                        if percent <= 30 then
                                            local xptz = math.random(0,300)
                                            repeat wait(.2)
                                                local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                local percent = (health / maxhealth) * 100
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,xptz))
                                            until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                        else
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                repeat wait(.1)
                                    local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                    local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    if Distance <= 20 then
                                        if Weapon_Z then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon_Z = false
                                        elseif Weapon_X then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon_X = false
                                        elseif Weapon_C then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            Weapon_C = false
                                        elseif Weapon2_Z then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon2_Z = false
                                        elseif Weapon2_X then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon2_X = false
                                        end
                                    end
                                until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                Attack_Fa = false
                                Aimbot_On = false
                                Attack_FaX = false
                            end
                        end
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan Tail' and tonumber(v.Health.Value) > 0 then
                                if v:FindFirstChild('Humanoid') then
                                    v.Humanoid:Destroy()
                                end
                                Leviathan_check = true
                                Attack_FaX = true
                                Attack_Fa = true
                                check_tail = true
                                Farming_Tril = true
                                ----Status_Win:Set('Status: Farm Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Weapon = 'Sharkman Karate'
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                    local args = {
                                        [1] = "LoadItem",
                                        [2] = Weapon_Sword
                                    }
                
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                Aimbot_On = true
                                Weapon2 = Weapon_Sword
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                Weapon_Att = Weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon2)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon2 then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                            Weapon_Z = true
                                        end
                                        if not Weapon_X and GetSkill_C(Weapon,'X') then
                                            Weapon_X = true
                                        end
                                        if not Weapon_C and GetSkill_C(Weapon,'C') then
                                            Weapon_C = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                            Weapon2_Z = true
                                        end
                                        if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                            Weapon2_X = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                spawn(function()
                                    repeat wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                        wait(.3)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                        wait(12)
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                spawn(function()
                                    repeat wait()
                                        local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                        local percent = (health / maxhealth) * 100
                                        if percent <= 30 then
                                            local xptz = math.random(0,300)
                                            repeat wait(.2)
                                                local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                local percent = (health / maxhealth) * 100
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,xptz))
                                            until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                        else
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                end)
                                repeat wait(.1)
                                    local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                    local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    if Distance <= 20 then
                                        if Weapon_Z then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon_Z = false
                                        elseif Weapon_X then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon_X = false
                                        elseif Weapon_C then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            Weapon_C = false
                                        elseif Weapon2_Z then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon2_Z = false
                                        elseif Weapon2_X then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon2_X = false
                                        end
                                    end
                                until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                Attack_Fa = false
                                Aimbot_On = false
                                Attack_FaX = false
                            end
                        end
                        if not Leviathan_check then
                            for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                                if v.Name == 'Leviathan' and tonumber(v.Health.Value) > 0 then
                                    if v:FindFirstChild('Humanoid') then
                                        v.Humanoid:Destroy()
                                    end
                                    Leviathan_check = true
                                    Attack_FaX = true
                                    Attack_Fa = true
                                    check_tail = true
                                    Farming_Tril = true
                                    ----Status_Win:Set('Status: Farm Leviathan')
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                        local args = {
                                            [1] = "LoadItem",
                                            [2] = Weapon_Sword
                                        }
                    
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    Aimbot_On = true
                                    Weapon2 = Weapon_Sword
                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                    Weapon_Att = Weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon2)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon2 then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    spawn(function()
                                        repeat wait(.1)
                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                Weapon_Z = true
                                            end
                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                Weapon_X = true
                                            end
                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                Weapon_C = true
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                    end)
                                    spawn(function()
                                        repeat wait(.1)
                                            if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                Weapon2_Z = true
                                            end
                                            if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                Weapon2_X = true
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                    end)
                                    spawn(function()
                                        repeat wait()
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                            wait(.3)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                            wait(12)
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                    end)
                                    local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                    spawn(function()
                                        repeat wait()
                                            local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                            local percent = (health / maxhealth) * 100
                                            if percent <= 30 then
                                                repeat wait(.2)
                                                    local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                    local percent = (health / maxhealth) * 100
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,100))
                                                until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                            else
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                    end)
                                    repeat wait(.1)
                                        local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                        local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if Distance <= 20 then
                                            if Weapon_Z then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                Weapon_Z = false
                                            elseif Weapon_X then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                Weapon_X = false
                                            elseif Weapon_C then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                Weapon_C = false
                                            elseif Weapon2_Z then
                                                EquipWeapon(Weapon2)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                Weapon2_Z = false
                                            elseif Weapon2_X then
                                                EquipWeapon(Weapon2)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                Weapon2_X = false
                                            end
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan_B
                                    Attack_Fa = false
                                    Aimbot_On = false
                                    Attack_FaX = false
                                end
                            end
                        end
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan' then
                                Leviathan_Attack = true
                            end
                        end
                    elseif not game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and not game.Workspace.SeaBeasts:FindFirstChild('Leviathan') then
                        Auto_Reset_Cooldown_Leviathan = true
                        Auto_Farm_Leviathan_B = true
                    end
                elseif Auto_Farm_Electric_Wings or Auto_Farm_Mutant_Teeth or Auto_Farm_Fool_Gold or Auto_Farm_Shark_Teeth then
                    if jopoktg then
                        if Auto_Farm_Electric_Wings or Auto_Farm_Mutant_Teeth or Auto_Farm_Fool_Gold or Auto_Farm_Shark_Teeth then
                            E_W_S:Set("Electric Wings : "..CheckItem_X('Electric Wings')..'/6')
                            M_T_T_S:Set("Mutant Teeth : "..CheckItem_X('Mutant Teeth')..'/2')
                            F_G_S:Set("Fool's Golds : "..CheckItem_X("Fool's Golds")..'/30')
                            S_T_S:Set("Shark Teeth : "..CheckItem_X("Shark Teeth")..'/6')
                        end
                        jopoktg = true
                    end
                    Quest_Beast_S:Set("Status : Farm Item")
                    local Farming_Tril = false
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                            if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                Farming_Tril = true
                                Attack = false
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                        Weapon = vz.Name
                                    end
                                end
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                repeat wait(.1)
                                    --AttackNoCDX(v)
                                    EquipWeapon(Weapon)
                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Electric_Wings and not Auto_Farm_Mutant_Teeth and not Auto_Farm_Fool_Gold and not Auto_Farm_Shark_Teeth
                                Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                            end
                        end
                    end
                    if CheckItem("Fool's Gold") < 30 then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                                if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                    Stop_Boat()
                                    ----Status_Win:Set('Status: Farm '..v.Name)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                        local args = {
                                            [1] = "LoadItem",
                                            [2] = Weapon_Sword
                                        }
                    
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    Aimbot_On = true
                                    Weapon2 = Weapon_Sword
                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                    Weapon_Att = Weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon2)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon2 then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    spawn(function()
                                        repeat wait(.2)
                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                Weapon_Z = true
                                            end
                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                Weapon_X = true
                                            end
                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                Weapon_C = true
                                            end
                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Electric_Wings and not Auto_Farm_Mutant_Teeth and not Auto_Farm_Fool_Gold and not Auto_Farm_Shark_Teeth
                                    end)
                                    spawn(function()
                                        repeat wait(.2)
                                            if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                Weapon2_Z = true
                                            end
                                            if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                Weapon2_X = true
                                            end
                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Electric_Wings and not Auto_Farm_Mutant_Teeth and not Auto_Farm_Fool_Gold and not Auto_Farm_Shark_Teeth
                                    end)
                                    spawn(function()
                                        repeat wait()
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,20,0))
                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Electric_Wings and not Auto_Farm_Mutant_Teeth and not Auto_Farm_Fool_Gold and not Auto_Farm_Shark_Teeth
                                    end)
                                    repeat wait()
                                        if Weapon_Z then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon_Z = false
                                        elseif Weapon_X then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon_X = false
                                        elseif Weapon_C then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            Weapon_C = false
                                        elseif Weapon2_Z then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon2_Z = false
                                        elseif Weapon2_X then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon2_X = false
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Electric_Wings and not Auto_Farm_Mutant_Teeth and not Auto_Farm_Fool_Gold and not Auto_Farm_Shark_Teeth
                                    Aimbot_On = false
                                end
                            end
                        end
                    end
                    if not Farming_Tril then
                        local Check_Boat_H = false 
                        for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                            if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                Check_Boat_H = true
                                if position_boat == nil then
                                    position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                end
                                if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                    ----Status_Win:Set('Status: Reset Cooldown')
                                    TPBoat(position_boat,v.VehicleSeat,280)
                                    TP(v.VehicleSeat.CFrame*CFrame.new(0,100,100))
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                else
                                    ----Status_Win:Set('Status: Find Boss Reset Cooldown')
                                    if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                        Stop_Boat()
                                        if Monster_Magnet_H then
                                            if (position_boat.Position-Vector3.new(-38887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-48887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        else
                                            if (position_boat.Position-Vector3.new(-35887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-42887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-42887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        end
                                        wait(0.5)
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                        else
                                            TPBoat(position_boat,v.VehicleSeat,230)
                                        end
                                    else
                                        Stop_Boat()
                                        TP(v.VehicleSeat.CFrame,150) 
                                    end
                                end
                            end
                        end
                        if not Check_Boat_H then
                            ----Status_Win:Set('Status: Get boat.')
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                ----Status_Win:Set('Status: Buy Boat.')
                                wait(1)
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = 'PirateBrigade'
                                }
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                            end
                        end
                    end
                elseif Auto_Carft_Beast_Hunter then
                    TPX(CFrame.new(-16280.296875, 73.10208129882812, 260.85650634765625))
                elseif _G.Setting['Auto Farm Material Sea (All Material)'] then
                    local Farming_Tril = false
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                            if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                Farming_Tril = true
                                Attack = false
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                        Weapon = vz.Name
                                    end
                                end
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                repeat wait(.1)
                                    --AttackNoCDX(v)
                                    EquipWeapon(Weapon)
                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Farm Material Sea (All Material)']
                                --Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                            end
                        end
                    end
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                            if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                Stop_Boat()
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Weapon = 'Sharkman Karate'
                                for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                        Weapon_Sword = vx.Name
                                    end
                                end
                                for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                        Weapon_Sword = vx.Name
                                    end
                                end
                                Aimbot_On = true
                                Weapon2 = Weapon_Sword
                                PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                Weapon_Att = Weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon2)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon2 then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                spawn(function()
                                    repeat wait(.2)
                                        if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                            Weapon_Z = true
                                        end
                                        if not Weapon_X and GetSkill_C(Weapon,'X') then
                                            Weapon_X = true
                                        end
                                        if not Weapon_C and GetSkill_C(Weapon,'C') then
                                            Weapon_C = true
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not _G.Setting['Auto Farm Material Sea (All Material)']
                                end)
                                spawn(function()
                                    repeat wait(.2)
                                        if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                            Weapon2_Z = true
                                        end
                                        if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                            Weapon2_X = true
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not _G.Setting['Auto Farm Material Sea (All Material)']
                                end)
                                spawn(function()
                                    repeat wait()
                                        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        else
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,20,0))
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not _G.Setting['Auto Farm Material Sea (All Material)']
                                end)
                                repeat wait()
                                    if Weapon_Z then
                                        EquipWeapon(Weapon)
                                        PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                        Weapon_Z = false
                                    elseif Weapon_X then
                                        EquipWeapon(Weapon)
                                        PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                        Weapon_X = false
                                    elseif Weapon_C then
                                        EquipWeapon(Weapon)
                                        PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                        Weapon_C = false
                                    elseif Weapon2_Z then
                                        EquipWeapon(Weapon2)
                                        PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                        Weapon2_Z = false
                                    elseif Weapon2_X then
                                        EquipWeapon(Weapon2)
                                        PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                        Weapon2_X = false
                                    end
                                until not v.Parent or v.Health.Value <= 0 or not _G.Setting['Auto Farm Material Sea (All Material)']
                                Aimbot_On = false
                            end
                        end
                    end
                    if not Farming_Tril then
                        local Check_Boat_H = false 
                        for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                            if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                Check_Boat_H = true
                                if position_boat == nil then
                                    position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                end
                                if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                    ----Status_Win:Set('Status: Reset Cooldown')
                                    TPBoat(position_boat,v.VehicleSeat,280)
                                    TP(v.VehicleSeat.CFrame*CFrame.new(0,100,100))
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                else
                                    ----Status_Win:Set('Status: Find Boss Reset Cooldown')
                                    if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                        Stop_Boat()
                                        if Monster_Magnet_H then
                                            if (position_boat.Position-Vector3.new(-38887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-48887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        else
                                            if (position_boat.Position-Vector3.new(-35887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-42887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-42887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        end
                                        wait(0.5)
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                        else
                                            TPBoat(position_boat,v.VehicleSeat,230)
                                        end
                                    else
                                        Stop_Boat()
                                        TP(v.VehicleSeat.CFrame,150) 
                                    end
                                end
                            end
                        end
                        if not Check_Boat_H then
                            ----Status_Win:Set('Status: Get boat.')
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                ----Status_Win:Set('Status: Buy Boat.')
                                wait(1)
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = 'PirateBrigade'
                                }
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    
    -- Sanguine Art
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Reset_Cooldown_Leviathan and not Leviathan_H and not Sanguine_Art_H or Auto_Reset_Cooldown_Leviathan and _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then 
                    Delta = false
                    Status_Sanguine_Art_S:Set("Status : 0/4 (Reset Cooldown Leviathan)")
                    if not Three_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                    if not Status_H then
                        if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value <= 2000 then
                            local I = {
                                Point = game:GetService("Players").LocalPlayer.Data.Points.Value
                            }
                            if not refunx and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
                                    if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                    else
                                        Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Need Fragments Reset Stats)")
                                    end
                                else
                                    refunx = true
                                end
                                if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
                                    Status_H = true
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
                            Status_H = true
                        end
                        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                        for i,v in pairs(Inventory) do
                            if v.Type == "Sword" then
                                if v["Name"] == 'Hallow Scythe' then
                                    Hallow_Scryte_H = true
                                    if v.Mastery >= 350 then
                                        Hallow_Scryte_Mas = true
                                    end
                                end
                                if v["Name"] == 'Saber' then
                                    Saber_H = true
                                    if v.Mastery >= 125 then
                                        Saber_Mas = true
                                    end
                                end
                            end
                        end
                        if Hallow_Scryte_Mas then
                            Mastery_Max = true
                            Weapon_Sword = 'Hallow Scythe'
                        elseif Saber_Mas then
                            Weapon_Sword = 'Saber'
                        elseif Hallow_Scryte_H then
                            Farm_Mastery_Sword = true
                            Weapon_Sword = 'Hallow Scythe'
                            Mastery_X = 350
                        elseif Saber_H then
                            Farm_Mastery_Sword = true
                            Weapon_Sword = 'Saber'
                            Mastery_X = 125
                        end
                    elseif Farm_Mastery_Sword and not Mastery_Max then
                        Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Farming Mastery Sword)")
                        Weapon = Weapon_Sword
                        if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                            if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                local args = {
                                    [1] = "LoadItem",
                                    [2] = Weapon_Sword
                                }
            
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                        FarmMastery()
                        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v:IsA('Tool') and v.Name == Weapon_Sword then
                                if v.Level.Value >= Mastery_X then
                                    Mastery_Max = true
                                end
                            end
                        end
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA('Tool') and v.Name == Weapon_Sword then
                                if v.Level.Value >= Mastery_X then
                                    Mastery_Max = true
                                end
                            end
                        end
                    elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                        ----Status_Win:Set('Status: Finding Frozen Dimension')
                        if _G.Setting['Owner Beast Hunter'] ~= nil and _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("OpenLeviathanGate")
                        end
                        Auto_Reset_Cooldown_Leviathan = false
                    else
                        if Leviathan_Quest == 5 or _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                            Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Quest Leviathan 5)")
                            Body_V = true
                            local Farming_Tril = false
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' or v.Name == 'Fish Crew Member' then
                                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                        ----Status_Win:Set('Status: Kill Monster')
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Attack = false
                                        if v.Name == 'Terrorshark' then
                                            Attack_Fa = true
                                        end
                                        repeat wait(.1)
                                            --AttackNoCDX(v)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not Auto_Reset_Cooldown_Leviathan or not v.Parent or v.Humanoid.Health <= 0 or not Auto_Reset_Cooldown_Leviathan
                                        if v.Name == 'Terrorshark' then
                                            Attack_Fa = false
                                        end
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                    end
                                end
                            end
                            if not Farming_Tril then
                                if _G.Setting['Owner Beast Hunter'] ~= nil then
                                    if _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                                        ----Status_Win:Set('Status: Owner') 
                                        local check_boat_xp = false
                                        for i,v in pairs(game.workspace.Boats:GetChildren()) do
                                            if v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                if v:FindFirstChild('Seat') then
                                                    v.Seat:Destroy()
                                                end
                                                position_boat = CFrame.new(-17353.1016, 9.88468075, -42615.5, 0.874905348, -0.0352381393, 0.483010232, 0.0402438864, 0.999189913, 1.35374534e-09, -0.482618958, 0.0194382071, 0.875614703)
                                                check_boat_xp = true
                                                local get_player= {}
                                                for ix,vx in pairs(game.Workspace.Characters:GetChildren()) do
                                                    if not table.find(get_player,vx.Name) and vx:FindFirstChild('HumanoidRootPart') and (vx.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude <= 500 then
                                                        table.insert(get_player,vx.Name)
                                                    end
                                                end
                                                if #get_player >= 5 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.Visible == true and tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.TextLabel.Text) >= 5 then
                                                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true and (position_boat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or Check_Vit and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                        else
                                                            ----Status_Win:Set('Status: Start Boat')
                                                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation > 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation <= -150 then
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                                            else
                                                                repeat wait(.1)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                                                    wait(0.1)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                                                until not Auto_Reset_Cooldown_Leviathan or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation >= 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Guide.LeftFrame.IconFrame.GuideIcon.Rotation <= -150 or game.Players.LocalPlayer.Character.Humanoid.Sit == false
                                                            end
                                                            Check_Vit = true
                                                            v:FindFirstChild("VehicleSeat").MaxSpeed = 270
                                                        end
                                                    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                            Stop_Boat()
                                                        else
                                                            ----Status_Win:Set('Status: Start Boat')
                                                            TPBoat(position_boat,v.VehicleSeat,260)
                                                        end
                                                    else
                                                        Stop_Boat()
                                                        TP(v.VehicleSeat.CFrame) 
                                                    end
                                                elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                                                    Stop_Boat()
                                                    TP(v.VehicleSeat.CFrame) 
                                                else
                                                    Stop_Boat()
                                                end
                                            end
                                        end
                                        if not check_boat_xp then
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude <= 10 then
                                                local args = {
                                                    [1] = "BuyBoat",
                                                    [2] = 'Beast Hunter'
                                                }
                    
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                Check_Vit = false
                                                wait(1)
                                                for i,v in pairs(game.workspace.Boats:GetChildren()) do
                                                    if v.Name == 'Beast Hunter' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                        if v:FindFirstChild('Seat') then
                                                            v.Seat:Destroy()
                                                        end
                                                    end
                                                end
                                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude > 10 then
                                                TPX(CFrame.new(-16209.931640625, 9.185903549194336, 473.4875183105469))
                                            end
                                        end
                                    else
                                        ----Status_Win:Set('Status: Set Postion')
                                        local check_boat_xp = false
                                        for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                            if vx.Name == 'PirateBrigade' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                                vx:Destroy()
                                            end
                                        end
                                        repeat wait(.1)
                                            check_boat_xp = false
                                            Farming_Tril = false
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' or v.Name == 'Fish Crew Member' then
                                                    Farming_Tril = true
                                                end
                                            end
                                            for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                                if vx.Name == 'Beast Hunter' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == _G.Setting['Owner Beast Hunter'] then
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.Visible == true and tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.ExploreBoost.TextLabel.Text) >= 6 then
                                                        TP(vx.VehicleSeat.CFrame*CFrame.new(0,100,0))
                                                    else
                                                        if game.Players.LocalPlayer.Character.Humanoid.Sit == false and (vx.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                                                            for i,v in pairs(vx:GetChildren()) do
                                                                if v.Name == 'Cannon' and v:FindFirstChild('Seat') and game.Players.LocalPlayer.Character.Humanoid.Sit == false and Auto_Reset_Cooldown_Leviathan then
                                                                    TP(v.Seat.CFrame)
                                                                    wait(.5)
                                                                end
                                                            end
                                                        end
                                                        check_boat_xp = true
                                                        if (vx.VehicleSeat.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude <= 150 then
                                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                                            TPX(CFrame.new(-16209.931640625, 9.185903549194336, 473.4875183105469))
                                                        elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
                                                            TP(vx.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                                        end
                                                    end
                                                end
                                            end
                                        until game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') or check_boat_xp == false or Farming_Tril or not Auto_Reset_Cooldown_Leviathan
                                    end
                                end
                            end
                        elseif Leviathan_Quest == -1 then
                            Leviathan_Heart_S:Set("หัวใจลีเวียธาน : 0/1 (Quest Leviathan -1)")
                            local Farming_Tril = false
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                        ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        Attack = false
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        repeat wait(.1)
                                            --AttackNoCDX(v)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Reset_Cooldown_Leviathan
                                        Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                                    end
                                end
                            end
                            if CheckItem("Fool's Gold") < 30 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                                        if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                            Stop_Boat()
                                            ----Status_Win:Set('Status: Farm '..v.Name)
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            Weapon = 'Sharkman Karate'
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                                local args = {
                                                    [1] = "LoadItem",
                                                    [2] = Weapon_Sword
                                                }
                            
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            Aimbot_On = true
                                            Weapon2 = Weapon_Sword
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            Weapon_Att = Weapon
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon2)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon2 then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                        Weapon_Z = true
                                                    end
                                                    if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                        Weapon_X = true
                                                    end
                                                    if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                        Weapon_C = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan
                                            end)
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                        Weapon2_Z = true
                                                    end
                                                    if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                        Weapon2_X = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan
                                            end)
                                            spawn(function()
                                                repeat wait()
                                                    TP(v.VehicleSeat.CFrame*CFrame.new(0,20,0))
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Reset_Cooldown_Leviathan
                                            end)
                                            repeat wait()
                                                if Weapon_Z then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon_Z = false
                                                elseif Weapon_X then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon_X = false
                                                elseif Weapon_C then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    Weapon_C = false
                                                elseif Weapon2_Z then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon2_Z = false
                                                elseif Weapon2_X then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon2_X = false
                                                end
                                            until not v.Parent or v.Health.Value <= 0 or not Auto_Reset_Cooldown_Leviathan
                                            Aimbot_On = false
                                        end
                                    end
                                end
                            end
                            if not Farming_Tril then
                                local Check_Boat_H = false 
                                for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                                    if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                        Check_Boat_H = true
                                        if position_boat == nil then
                                            position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                        end
                                        if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                            ----Status_Win:Set('Status: Reset Cooldown')
                                            TPBoat(position_boat,v.VehicleSeat,280)
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,100,100))
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        else
                                            ----Status_Win:Set('Status: Find Boss Reset Cooldown')
                                            if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                                Stop_Boat()
                                                if Monster_Magnet_H then
                                                    if (position_boat.Position-Vector3.new(-38887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-48887.2265625, 40.741893768310547, -658.2794799804688)
                                                    elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                                    else
                                                        position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
                                                    end
                                                else
                                                    if (position_boat.Position-Vector3.new(-35887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-42887.2265625, 40.741893768310547, -658.2794799804688)
                                                    elseif (position_boat.Position-Vector3.new(-42887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                        position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                                    else
                                                        position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
                                                    end
                                                end
                                                wait(0.5)
                                            elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                    wait(0.5)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                else
                                                    TPBoat(position_boat,v.VehicleSeat,230)
                                                end
                                            else
                                                Stop_Boat()
                                                TP(v.VehicleSeat.CFrame,150) 
                                            end
                                        end
                                    end
                                end
                                if not Check_Boat_H then
                                    ----Status_Win:Set('Status: Get boat.')
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                        ----Status_Win:Set('Status: Buy Boat.')
                                        wait(1)
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = 'PirateBrigade'
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                        TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                                    end
                                end
                            end
                        elseif Leviathan_Quest >= 1 then
                            ----Status_Win:Set('Status: Ready')
                            TPX(CFrame.new(-16467.830078125, 527.8790283203125, 538.0357055664062))
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16467.830078125, 527.8790283203125, 538.0357055664062)).Magnitude <= 5 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                                wait(.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","2")
                            end
                        end
                    end
                elseif Auto_Farm_Leviathan and not Leviathan_H and not Sanguine_Art_H or Auto_Farm_Leviathan and _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                    bit_zaz = false
                    Status_Sanguine_Art_S:Set("Status : 0/4 (Leviathan Heart)")
                    if not Three_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                    if game.Workspace.Map:FindFirstChild('FrozenHeart') then
                        Auto_Farm_Leviathan = false
                    elseif game.Workspace.SeaBeasts:FindFirstChild('Leviathan') or Leviathan_Attack then
                        Leviathan_Quest = -1
                        Leviathan_Attack = false
                        local Leviathan_check = false
                        --Delta = true
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan Segment' and tonumber(v.Health.Value) > 0 then
                                if v:FindFirstChild('Humanoid') then
                                    v.Humanoid:Destroy()
                                end
                                Leviathan_check = true
                                Attack_FaX = true
                                Attack_Fa = true
                                check_tail = true
                                Farming_Tril = true
                                ----Status_Win:Set('Status: Farm Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                wait(.3)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                wait(.5)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                wait(.3)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Weapon = 'Sharkman Karate'
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                    local args = {
                                        [1] = "LoadItem",
                                        [2] = Weapon_Sword
                                    }
                
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                Aimbot_On = true
                                Weapon2 = Weapon_Sword
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                Weapon_Att = Weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon2)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon2 then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                            Weapon_Z = true
                                        end
                                        if not Weapon_X and GetSkill_C(Weapon,'X') then
                                            Weapon_X = true
                                        end
                                        if not Weapon_C and GetSkill_C(Weapon,'C') then
                                            Weapon_C = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                            Weapon2_Z = true
                                        end
                                        if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                            Weapon2_X = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                spawn(function()
                                    repeat wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                        wait(.3)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                        wait(12)
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                spawn(function()
                                    repeat task.wait()
                                        local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                        local percent = (health / maxhealth) * 100
                                        if percent <= 30 then
                                            local xptz = math.random(0,300)
                                            repeat wait(.2)
                                                local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                local percent = (health / maxhealth) * 100
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,xptz))
                                            until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                        else
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                repeat wait(.1)
                                    local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                    local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    if Distance <= 20 then
                                        if Weapon_Z then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon_Z = false
                                        elseif Weapon_X then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon_X = false
                                        elseif Weapon_C then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            Weapon_C = false
                                        elseif Weapon2_Z then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon2_Z = false
                                        elseif Weapon2_X then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon2_X = false
                                        end
                                    end
                                until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                Attack_Fa = false
                                Aimbot_On = false
                                Attack_FaX = false
                            end
                        end
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan Tail' and tonumber(v.Health.Value) > 0 then
                                if v:FindFirstChild('Humanoid') then
                                    v.Humanoid:Destroy()
                                end
                                Leviathan_check = true
                                Attack_FaX = true
                                Attack_Fa = true
                                check_tail = true
                                Farming_Tril = true
                                ----Status_Win:Set('Status: Farm Leviathan')
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Weapon = 'Sharkman Karate'
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                    local args = {
                                        [1] = "LoadItem",
                                        [2] = Weapon_Sword
                                    }
                
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                Aimbot_On = true
                                Weapon2 = Weapon_Sword
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                Weapon_Att = Weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                repeat wait()
                                    EquipWeapon(Weapon2)
                                    for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                        if vy.Name == Weapon2 then
                                            check_weapon = true
                                        end
                                    end
                                until check_weapon
                                local check_weapon = false
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                            Weapon_Z = true
                                        end
                                        if not Weapon_X and GetSkill_C(Weapon,'X') then
                                            Weapon_X = true
                                        end
                                        if not Weapon_C and GetSkill_C(Weapon,'C') then
                                            Weapon_C = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                spawn(function()
                                    repeat wait(.1)
                                        if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                            Weapon2_Z = true
                                        end
                                        if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                            Weapon2_X = true
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                spawn(function()
                                    repeat wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                        wait(.3)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                        wait(12)
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                spawn(function()
                                    repeat wait()
                                        local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                        local percent = (health / maxhealth) * 100
                                        if percent <= 30 then
                                            local xptz = math.random(0,300)
                                            repeat wait(.2)
                                                local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                local percent = (health / maxhealth) * 100
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,xptz))
                                            until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                        else
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                end)
                                repeat wait(.1)
                                    local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                    local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                    if Distance <= 20 then
                                        if Weapon_Z then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon_Z = false
                                        elseif Weapon_X then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon_X = false
                                        elseif Weapon_C then
                                            EquipWeapon(Weapon)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            Weapon_C = false
                                        elseif Weapon2_Z then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            Weapon2_Z = false
                                        elseif Weapon2_X then
                                            EquipWeapon(Weapon2)
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            Weapon2_X = false
                                        end
                                    end
                                until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                Attack_Fa = false
                                Aimbot_On = false
                                Attack_FaX = false
                            end
                        end
                        if not Leviathan_check then
                            for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                                if v.Name == 'Leviathan' and tonumber(v.Health.Value) > 0 then
                                    if v:FindFirstChild('Humanoid') then
                                        v.Humanoid:Destroy()
                                    end
                                    Leviathan_check = true
                                    Attack_FaX = true
                                    Attack_Fa = true
                                    check_tail = true
                                    Farming_Tril = true
                                    ----Status_Win:Set('Status: Farm Leviathan')
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Weapon_Sword) and not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon_Sword) then
                                        local args = {
                                            [1] = "LoadItem",
                                            [2] = Weapon_Sword
                                        }
                    
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    Aimbot_On = true
                                    Weapon2 = Weapon_Sword
                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                    Weapon_Att = Weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon2)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon2 then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    spawn(function()
                                        repeat wait(.1)
                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                Weapon_Z = true
                                            end
                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                Weapon_X = true
                                            end
                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                Weapon_C = true
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                    end)
                                    spawn(function()
                                        repeat wait(.1)
                                            if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                Weapon2_Z = true
                                            end
                                            if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                Weapon2_X = true
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                    end)
                                    spawn(function()
                                        repeat wait()
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                            wait(.3)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                            wait(12)
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                    end)
                                    local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                    spawn(function()
                                        repeat wait()
                                            local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                            local percent = (health / maxhealth) * 100
                                            if percent <= 30 then
                                                repeat wait(.2)
                                                    local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                    local percent = (health / maxhealth) * 100
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,900,100))
                                                until percent >= 35 or  not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                            else
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,150,0))
                                            end
                                        until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                    end)
                                    repeat wait(.1)
                                        local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
                                        local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if Distance <= 20 then
                                            if Weapon_Z then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                Weapon_Z = false
                                            elseif Weapon_X then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                Weapon_X = false
                                            elseif Weapon_C then
                                                EquipWeapon(Weapon)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                Weapon_C = false
                                            elseif Weapon2_Z then
                                                EquipWeapon(Weapon2)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                Weapon2_Z = false
                                            elseif Weapon2_X then
                                                EquipWeapon(Weapon2)
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                Weapon2_X = false
                                            end
                                        end
                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Farm_Leviathan
                                    Attack_Fa = false
                                    Aimbot_On = false
                                    Attack_FaX = false
                                end
                            end
                        end
                        for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                            if v.Name == 'Leviathan' then
                                Leviathan_Attack = true
                            end
                        end
                    elseif not game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and not game.Workspace.SeaBeasts:FindFirstChild('Leviathan') then
                        Auto_Reset_Cooldown_Leviathan = true
                        Auto_Farm_Leviathan = true
                    end
                elseif Auto_Get_Leviathan and not Leviathan_H and not Sanguine_Art_H or Auto_Get_Leviathan and _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                    Status_Sanguine_Art_S:Set("Status : 0/4 (Get Leviathan Heart)")
                    if not Three_World then
                        TleP = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        wait(50)
                    end
                    if game.Workspace.Map:FindFirstChild('FrozenHeart') then
                        if Go_Tpls and Admin then
                            if compassGuix ~= nil then
                                compassGuix:Destroy()
                            end
                            if not okpdkf then
                                okpdkf = true
                                -- สร้าง ScreenGui เพื่อใส่ Compass Needle
                                compassGui = Instance.new("ScreenGui")
                                compassGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                            
                                -- สร้าง Compass Needle เป็น ImageLabel
                                compassNeedle = Instance.new("ImageLabel")
                                compassNeedle.Name = "CompassNeedle"
                                compassNeedle.Size = UDim2.new(0, 15, 0, 45) -- ขนาดของ Compass Needle
                                compassNeedle.Position = UDim2.new(0.5, 0, 0.2, 0) -- ตำแหน่งตรงกลางภายใน ScreenGui
                                compassNeedle.Image = "http://www.roblox.com/asset/?id=8934096355" -- ID ของภาพ Compass Needle ที่ใช้
                                compassNeedle.BackgroundTransparency = 1
                                compassNeedle.ImageColor3 = Color3.fromRGB(255,255,0)
                                compassNeedle.Parent = compassGui
                            
                                -- Function สำหรับอัพเดตการหมุนของ Compass Needle ตามทิศทางที่ผู้เล่นหันหน้า
                                local function updateCompassRotation(player)
                                    local camera = workspace.CurrentCamera
                                    local playerPos = player.Character and player.Character.PrimaryPart.Position
                            
                                    if playerPos then
                                        local compassPos = Vector3.new(-16077.865234375, 33.61135482788086, 436.07489013671875) -- ตำแหน่งของ Compass
                                        local direction = (compassPos - playerPos).unit
                            
                                        -- คำนวณทิศทางที่ผู้เล่นหันหน้า
                                        local lookDirection = camera.CFrame.LookVector
                                        local angle = math.atan2(direction.X, direction.Z) - math.atan2(lookDirection.X, lookDirection.Z)
                                        
                                        -- ปรับตำแหน่งของ Compass Needle ตามทิศทางที่ผู้เล่นหันหน้า
                                        compassNeedle.Rotation = math.deg(angle)
                                    end
                                end
                            
                                -- เชื่อมต่อ Function ในการอัพเดต Compass Needle ตามการหมุนของผู้เล่น
                                game:GetService("RunService").Stepped:Connect(function()
                                    local player = game.Players.LocalPlayer
                                    updateCompassRotation(player)
                                end)
                            
                            end
                            -- -11807.1494140625, 25.776561737060547, 238.4027099609375  Start
                            local xp = nil
                            for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                if vx.Name == 'Beast Hunter' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == _G.Setting['Owner Beast Hunter'] then
                                    if _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                                        xp = vx
                                    end
                                end
                            end
                            if game.Players.LocalPlayer.Character.Humanoid.Sit == true and xp ~= nil then
                                if (xp.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                    wait(.5)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    wait(.5)
                                elseif compassNeedle ~= nil and (Vector3.new(-16077.865234375, 33.61135482788086, 436.07489013671875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20 then
                                    C_Position = {
                                        [1] = nil
                                    }
                                    spawn(function()
                                        repeat wait(.1)
                                            local time_check_back = 0
                                            C_Position[1] = xp.VehicleSeat.Position
                                            repeat wait(1)
                                                print(time_check_back)
                                                time_check_back = time_check_back + 1
                                            until time_check_back >= 3 or (xp.VehicleSeat.Position-C_Position[1]).Magnitude >= 5
                                            if time_check_back >= 3 then
                                                Break_J = true
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                                repeat wait(.5)
                                                until not Break_J
                                            end
                                        until game.Players.LocalPlayer.Character.Humanoid.Sit == false or (Vector3.new(-16077.865234375, 33.61135482788086, 436.07489013671875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20
                                    end)
                                    repeat wait(.1)
                                        if Break_J then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
                                            wait(6)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
                                            wait(.3)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                            wait(2)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                            wait(.3)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            wait(6)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                            Break_J = false
                                        elseif compassNeedle.Rotation >= -5 and compassNeedle.Rotation <= 5 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            wait(1)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                        elseif compassNeedle.Rotation >= -80 and compassNeedle.Rotation <= 5 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "D", false, game)
                                            wait(0.15)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "D", false, game)
                                        elseif compassNeedle.Rotation < 80 and compassNeedle.Rotation >= -5 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                            wait(0.15)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                        else
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "A", false, game)
                                            wait(0.15)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "A", false, game)
                                        end
                                    until game.Players.LocalPlayer.Character.Humanoid.Sit == false or (Vector3.new(-16077.865234375, 33.61135482788086, 436.07489013671875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20
                                    wait(1)
                                    --compassGui:Destroy()
                                    --kpokdf = true
                                end
                            elseif xp ~= nil then
                                TPZ(xp.VehicleSeat.CFrame)
                                wait(.3)
                            end
                        elseif position_math == nil then
                            position_math = game.workspace.Map.FrozenHeart.Cube.CFrame
                            repeat wait(.5)
                                TP(game.workspace.Map.FrozenHeart.Cube.CFrame*CFrame.new(0,50,0))
                            until (game.workspace.Map.FrozenHeart.Cube.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70
                        else
                            local xp = nil
                            for ix,vx in pairs(game.workspace.Boats:GetChildren()) do
                                if vx.Name == 'Beast Hunter' and vx:FindFirstChild('Owner') and tostring(vx.Owner.Value) == _G.Setting['Owner Beast Hunter'] then
                                    if _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) then
                                        xp = vx
                                    end
                                end
                            end
                            if _G.Setting['Owner Beast Hunter'] == tostring(game.Players.LocalPlayer.Name) and xp ~= nil then
                                local selectedPart = game.workspace.Map.FrozenHeart.Cube -- ปรับเป็นชื่อ Part ที่ต้องการเลือก
                                local targetPosition = selectedPart.Position
                                local selectedPartx = CFrame.new(selectedPart.Position.X,xp.VehicleSeat.Position.Y,selectedPart.Position.Z+260)
                                if (selectedPartx.Position-xp.VehicleSeat.Position).Magnitude <= 3 then
                                    if not okpdkfy then
                                        okpdkfy = true
                                        -- สร้าง ScreenGui เพื่อใส่ Compass Needle
                                        compassGuix = Instance.new("ScreenGui")
                                        compassGuix.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                                    
                                        -- สร้าง Compass Needle เป็น ImageLabel
                                        compassNeedlex = Instance.new("ImageLabel")
                                        compassNeedlex.Name = "CompassNeedlex"
                                        compassNeedlex.Size = UDim2.new(0, 15, 0, 45) -- ขนาดของ Compass Needle
                                        compassNeedlex.Position = UDim2.new(0.5, 0, 0.2, 0) -- ตำแหน่งตรงกลางภายใน ScreenGui
                                        compassNeedlex.Image = "http://www.roblox.com/asset/?id=8934096355" -- ID ของภาพ Compass Needle ที่ใช้
                                        compassNeedlex.BackgroundTransparency = 1
                                        compassNeedlex.ImageColor3 = Color3.fromRGB(255,255,0)
                                        compassNeedlex.Parent = compassGuix
                                    
                                        -- Function สำหรับอัพเดตการหมุนของ Compass Needle ตามทิศทางที่ผู้เล่นหันหน้า
                                        local function updateCompassRotationx(player)
                                            local camera = workspace.CurrentCamera
                                            local playerPos = player.Character and player.Character.PrimaryPart.Position
                                    
                                            if playerPos then
                                                local compassPos = game.workspace.Map.FrozenHeart.Cube.Position -- ตำแหน่งของ Compass
                                                local direction = (compassPos - playerPos).unit
                                    
                                                -- คำนวณทิศทางที่ผู้เล่นหันหน้า
                                                local lookDirection = camera.CFrame.LookVector
                                                local angle = math.atan2(direction.X, direction.Z) - math.atan2(lookDirection.X, lookDirection.Z)
                                                
                                                -- ปรับตำแหน่งของ Compass Needle ตามทิศทางที่ผู้เล่นหันหน้า
                                                compassNeedlex.Rotation = math.deg(angle)
                                            end
                                        end
                                    
                                        -- เชื่อมต่อ Function ในการอัพเดต Compass Needle ตามการหมุนของผู้เล่น
                                        game:GetService("RunService").Stepped:Connect(function()
                                            local player = game.Players.LocalPlayer
                                            updateCompassRotationx(player)
                                        end)
                                    
                                    end
                                    if compassNeedlex ~= nil then
                                        if compassNeedlex.Rotation >= -3 and compassNeedlex.Rotation <= 3 then
                                            repeat wait(.1)
                                                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                    wait(.3)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                    wait(.3)
                                                else
                                                    TPZ(xp.Harpoon.Seat.CFrame)
                                                    wait(.3)
                                                end
                                            until (xp.Harpoon.Seat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and game.Players.LocalPlayer.Character.Humanoid.Sit == true
                                            if (xp.Harpoon.Seat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                for ix,v in pairs(game.workspace.Boats:GetChildren()) do
                                                    if v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) and not Go_Tpls then
                                                        if v:FindFirstChild('Harpoon') then
                                                            if not v.Harpoon:FindFirstChild('Cooldown') then
                                                                wait(1)
                                                                local args = {
                                                                    [1] = "FireHarpoon",
                                                                    [2] = 0.7853981633974483,
                                                                    [3] = 0,
                                                                    [4] = workspace.Boats:FindFirstChild("Beast Hunter").Harpoon,
                                                                    [5] = 1712131472.829294
                                                                }
                                            
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                wait(1)
                                                                if v.Harpoon:FindFirstChild('Cooldown') then
                                                                    local time_nub = 0
                                                                    repeat wait(1)
                                                                        --print('Keep : '..time_nub)
                                                                        time_nub = time_nub+1
                                                                    until not v.Harpoon:FindFirstChild('Cooldown') or time_nub >= 10
                                                                    if time_nub >= 10 then
                                                                        Go_Tpls = true
                                                                        print('Succes')
                                                                    end
                                                                end
                                                            else
                                                                local time_nub = 0
                                                                repeat wait(1)
                                                                    --print('Keep : '..time_nub)
                                                                    time_nub = time_nub+1
                                                                until not v.Harpoon:FindFirstChild('Cooldown') or time_nub >= 10
                                                                if time_nub >= 10 then
                                                                    Go_Tpls = true
                                                                end
                                                            end
                                                        end
                                                    end
                                                end 
                                            elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(.3)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                wait(.3)
                                            else
                                                TPZ(xp.Harpoon.Seat.CFrame)
                                                wait(.3)
                                            end
                                        else
                                            if game.Players.LocalPlayer.Character.Humanoid.Sit == true and (xp.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                                local check_tix = false
                                                repeat wait(0.1)
                                                    for _, part in ipairs(xp:GetDescendants()) do
                                                        if part:IsA("BasePart") then
                                                            local targetPositionx = CFrame.new(targetPosition.X,xp.VehicleSeat.Position.Y,targetPosition.Z)
                                                            local direction = (targetPositionx.Position - part.Position).unit
                                                            local newCFrame = CFrame.new(part.Position, part.Position + direction)
                                                            part.CFrame = newCFrame
                                                        end
                                                    end
                                                    if compassNeedlex.Rotation >= -3 and compassNeedlex.Rotation <= 3 then
                                                        wait(.5)
                                                        if compassNeedlex.Rotation >= -3 and compassNeedlex.Rotation <= 3 then
                                                            check_tix = true
                                                        end
                                                    end
                                                until check_tix
                                            elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(.3)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                wait(.3)
                                            else
                                                TPZ(xp.VehicleSeat.CFrame)
                                                wait(.3)
                                            end
                                        end
                                    end
                                else
                                    TP(xp.VehicleSeat.CFrame*CFrame.new(0,100,0))
                                    TPBoat(selectedPartx,xp.VehicleSeat,280)
                                end
                            elseif _G.Setting['Owner Beast Hunter'] ~= tostring(game.Players.LocalPlayer.Name) then
                                local Farming_Tril = false
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                                        if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                            ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                            Farming_Tril = true
                                            Attack = false
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                    Weapon = vz.Name
                                                end
                                            end
                                            v.Humanoid:ChangeState(14)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                            repeat wait(.1)
                                                --AttackNoCDX(v)
                                                EquipWeapon(Weapon)
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                            until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Get_Leviathan
                                            --Leviathan_Quest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1")
                                        end
                                    end
                                end
                                if not Farming_Tril then
                                    TP(game.workspace.Map.FrozenHeart.Cube.CFrame*CFrame.new(0,100,0))
                                end 
                            end
                        end
                    elseif not game.Workspace.Map:FindFirstChild('FrozenHeart') then
                        wait(2)
                        if not game.Workspace.Map:FindFirstChild('FrozenHeart') then
                            if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true)) == 'You lack a cold heart...' then
                                Auto_Get_Leviathan = true
                                Auto_Farm_Leviathan = true
                                Auto_Reset_Cooldown_Leviathan = true
                            else
                                if Admin then
                                    Auto_Get_Leviathan = false
                                    HopLowServer()
                                    wait(300)
                                end
                            end
                        end
                    end
                elseif Auto_Farm_Darkbeard and not Dark_Fragment_H and not Sanguine_Art_H then
                    Status_Sanguine_Art_S:Set("Status : 1/4 (Dark Fragment)")
                    if not New_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        TleP = true
                        wait(50)
                    elseif game.Workspace.Enemies:FindFirstChild('Darkbeard') or game.ReplicatedStorage:FindFirstChild('Darkbeard') then
                        if game.Workspace.Enemies:FindFirstChild('Darkbeard') then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Darkbeard' and v.Humanoid.Health > 0 then
                                    Attack = true
                                    -- ----Status_Win:Set('Status: Kill Darkbeard')
                                    repeat wait(.1)
                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        EquipWeapon(Weapon)
                                    until not v.Parent or v.Humanoid.Health <= 0
                                    Attack = false
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild('Darkbeard') then
                            TP(game.ReplicatedStorage:FindFirstChild('Darkbeard').HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') or game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') then
                        -- ----Status_Win:Set('Status: Use Fist of Darkness')
                        repeat wait(.5)
                            EquipWeapon("Fist of Darkness")
                            TP(CFrame.new(3778.0603, 15.0511189, -3499.95801, -0.0148028014, 1.28971422e-07, -0.999890447, 3.63752335e-08, 1, 1.28447041e-07, 0.999890447, -3.44698741e-08, -0.0148028014))
                        until game.Workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or not game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') and not game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness')
                        wait(2)
                    else
                        -- ----Status_Win:Set('Status: finding chest')
                        if chest_chane == nil then
                            chest_chane = 0
                            Garb_Chest_S:Set('จำนวนกล่อง: 0/'..Chest_Order)
                        end 
                        if chest_chane >= Chest_Order then
                            HopLowServer()
                            wait(250)
                        elseif chest_chane < Chest_Order then
                            Chest_Drop = nil
                            for i = 10000,0,-500 do
                                Get_Chest(i)
                            end
                            if Chest_Drop ~= nil then
                                repeat wait(.1)
                                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                        wait(.2)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    end 
                                    TP(Chest_Drop.CFrame)
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                    if (Chest_Drop.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                        wait(.2)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    end
                                until not Chest_Drop.Parent or not Chest_Drop
                                chest_chane = chest_chane+1
                                Garb_Chest_S:Set('จำนวนกล่อง: '..chest_chane..'/'..Chest_Order)
                            else
                                TP(CFrame.new(638.43811, 151.769989, 918.282898))
                            end
                        end
                    end
                    if Admin then
                        if CheckItem_X('Dark Fragment') >= 2 then
                            Auto_Farm_Darkbeard = false
                        end
                    end
                elseif Auto_Farm_Demonic_Wisps and not Demonic_Wisps_H and not Sanguine_Art_H then
                    Status_Sanguine_Art_S:Set("Status : 2/4 (Demonic Wisp")
                    if CheckItem('Demonic Wisp') < 20 then
                        ----Status_Win:Set('Status: Farm Demonic Wisps')
                        if not Three_World then
                            TleP = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            wait(50)
                        else
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)).Magnitude <= 2500 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'Demonic Soul' and v.Humanoid.Health > 0 then
                                        Attack = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        until not v.Parent or v.Humanoid.Health <= 0
                                        Attack = false
                                    end
                                end
                                TP(CFrame.new(-9712.03125, 204.69589233398, 6193.322265625))
                            else
                                TPX(CFrame.new(-9712.03125, 204.69589233398, 6193.322265625))
                            end
                        end
                    elseif CheckItem('Demonic Wisp') >= 20 then
                        Auto_Farm_Demonic_Wisps = false
                    end
                elseif Auto_Farm_Vampire_Fangs and not Vampire_Fang_H and not Sanguine_Art_H then
                    Status_Sanguine_Art_S:Set("Status : 3/4 (Vampire Fang")
                    if CheckItem('Vampire Fang') < 20 then
                        ----Status_Win:Set('Status: Farm Vampire Fangs')
                        if not New_World then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            TleP = true
                            wait(50)
                        else
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-6030.32031, 0.4377408, -1313.5564)).Magnitude <= 2500 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'Vampire' and v.Humanoid.Health > 0 then
                                        Attack = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        until not v.Parent or v.Humanoid.Health <= 0
                                        Attack = false
                                    end
                                end
                                TP(CFrame.new(-6030.32031, 0.4377408, -1313.5564))
                            else
                                TPX(CFrame.new(-6030.32031, 0.4377408, -1313.5564))
                            end
                        end
                    elseif CheckItem('Vampire Fang') >= 20 then
                        Auto_Farm_Vampire_Fangs = false
                    end
                elseif Auto_Buy_Sanguine_Art and not Sanguine_Art_H then
                    if not Three_World then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                    if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true)) == 'You lack a cold heart...' then
                    else
                        Status_Sanguine_Art_S:Set("Status : 4/4 (Ready Buy)")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
                        Weapon = 'Sanguine Art'
                        Auto_Buy_Sanguine_Art = false
                    end
                elseif Auto_Farm_Level then
                    FarmLevel()
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Fox Lamp
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Farm_Azure then
                    if game.Workspace.Map:FindFirstChild('KitsuneIsland') then
                        Quest_Kitsune_S:Set("เควสจิ้งจอก : Ready")
                        if CheckItem('Azure Ember') >= 25 and Auto_Random_Azure then
                            TP(workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame)
                            if (workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                                wait(3)
                                if Auto_Hop_Server_Fox_Lamp then
                                    HopLowServer()
                                    wait(250)
                                end
                            end
                        elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                            for i,v in pairs(workspace:GetChildren()) do
                                if v.Name == 'EmberTemplate' then
                                    TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait(0.3)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                    wait(1)
                                end
                            end
                            TP(workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame*CFrame.new(0,50,0))
                        else
                            TP(workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame)
                            if (workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/TouchKitsuneStatue"):FireServer()
                                wait(3)
                            end
                        end
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        --Stop_Boat()
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == -1 then
                        Quest_Kitsune_S:Set("เควสจิ้งจอก : Framing Quest Kitsune")
                        local Farming_Tril = false
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                                if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                    ----Status_Win:Set('Status: Reset Cooldown Leviathan')
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    Farming_Tril = true
                                    Attack = true
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                        if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                            Weapon = vz.Name
                                        end
                                    end
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    repeat wait(0.1)
                                        EquipWeapon(Weapon)
                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                    until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Azure
                                    Attack = false
                                end
                            end
                        end
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
                                if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                    Stop_Boat()
                                    ----Status_Win:Set('Status: Farm '..v.Name)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    Weapon2 = 'Sharkman Karate'
                                    if game.Players.LocalPlayer.Data.Stats['Demon Fruit'].Level.Value >= 2000 then
                                        Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    elseif game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    end
                                    Aimbot_On = true
                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                    Weapon_Att = Weapon
                                    repeat wait(.1)
                                        if tonumber(v.Health.Value) > 0 then 
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                        end
                                        if GetSkill_C(Weapon_Att,'Z') and tonumber(v.Health.Value) > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            wait()
                                            if tonumber(v.Health.Value) > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'X') and tonumber(v.Health.Value) > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            wait()
                                            if tonumber(v.Health.Value) > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'C') and tonumber(v.Health.Value) > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            wait()
                                            if tonumber(v.Health.Value) > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'V') and tonumber(v.Health.Value) > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                            wait()
                                            if tonumber(v.Health.Value) > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        end
                                        if Weapon_Att == Weapon then
                                            Weapon_Att = Weapon2
                                            EquipWeapon(Weapon2)
                                        elseif Weapon_Att == Weapon2 then
                                            Weapon_Att = Weapon
                                            EquipWeapon(Weapon)
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Azure
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    Aimbot_On = false
                                end
                            end
                        end
                        if not Farming_Tril then
                            local Check_Boat_H = false 
                            for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                                if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                    Check_Boat_H = true
                                    if position_boat == nil then
                                        position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                    end
                                    if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                        ----Status_Win:Set('Status: Reset Cooldown')
                                        TPBoat(position_boat,v.VehicleSeat,280)
                                        TP(position_boat)
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    else
                                        ----Status_Win:Set('Status: Find Boss Reset Cooldown')
                                        if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                            Stop_Boat()
                                            if Monster_Magnet_H then
                                                if (position_boat.Position-Vector3.new(-40887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                    position_boat = CFrame.new(-45887.2265625, 40.741893768310547, -658.2794799804688)
                                                elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                    position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                                else
                                                    position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                                end
                                            else
                                                if (position_boat.Position-Vector3.new(-37887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                    position_boat = CFrame.new(-50887.2265625, 40.741893768310547, -658.2794799804688)
                                                elseif (position_boat.Position-Vector3.new(-50887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                    position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                                else
                                                    position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                                end
                                            end
                                            wait(0.5)
                                        elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                            if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(0.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            else
                                                TPBoat(position_boat,v.VehicleSeat,230)
                                            end
                                        else
                                            Stop_Boat()
                                            TP(v.VehicleSeat.CFrame) 
                                        end
                                    end
                                end
                            end
                            if not Check_Boat_H then
                                ----Status_Win:Set('Status: Get boat.')
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                    ----Status_Win:Set('Status: Buy Boat.')
                                    wait(1)
                                    local args = {
                                        [1] = "BuyBoat",
                                        [2] = 'PirateBrigade'
                                    }
                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                    TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                                end
                            end
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") >= 0 then
                            Quest_Kitsune_S:Set("เควสจิ้งจอก : ✅")
                        end
                    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" or game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                        local result = {}
                        local x = tostring(game:GetService("Lighting").TimeOfDay)
                        local regex = ("([^%s]+)"):format(":")
                        for each in x:gmatch(regex) do
                            table.insert(result, each)
                        end
                        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and tonumber(result[1]) >= 0 and tonumber(result[1]) < 5 or game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and tonumber(result[1]) >= 15 and tonumber(result[1]) <= 23 then
                            local Farming_Tril = false
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                        ----Status_Win:Set('Status: Kill Monster')
                                        Stop_Boat()
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        Attack = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Azure
                                        Attack = false
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Terrorshark' and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                    ----Status_Win:Set('Status: Kill Boss')
                                    Stop_Boat()
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                        Farming_Tril = true
                                        Attack = true
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        for iz,vz in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vz:IsA('Tool') and tostring(vz.ToolTip) == 'Melee' then
                                                Weapon = vz.Name
                                            end
                                        end
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Azure
                                        Attack = false
                                end
                            end
                            if not Farming_Tril then
                                ----Status_Win:Set('Status: Owner')
                                local check_boat_xp = false
                                for i,v in pairs(game.workspace.Boats:GetChildren()) do
                                    if v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                        if position_boat == nil then
                                            position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                        end
                                        check_boat_xp = true 
                                        if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                            Stop_Boat()
                                            if (position_boat.Position-Vector3.new(-40887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-50887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-50887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                            if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                Stop_Boat()
                                            else
                                                ----Status_Win:Set('Status: Start Boat')
                                                TPBoat(position_boat,v.VehicleSeat,250)
                                            end
                                        else
                                            Stop_Boat()
                                            TP(v.VehicleSeat.CFrame) 
                                        end
                                    end
                                end
                                if not check_boat_xp then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude <= 10 then
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = 'PirateBrigade'
                                        }
            
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-16209.931640625, 9.185903549194336, 473.4875183105469)).Magnitude > 10 then
                                        TPX(CFrame.new(-16209.931640625, 9.185903549194336, 473.4875183105469))
                                    end
                                end
                            end
                        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                            local result = {}
                            local x = tostring(game:GetService("Lighting").TimeOfDay)
                            local regex = ("([^%s]+)"):format(":")
                            for each in x:gmatch(regex) do
                                table.insert(result, each)
                            end
                            if tonumber(result[1]) >= 13 or tonumber(result[1]) <= 6 then
                                HopLowServer()
                                wait(250)
                            else
                                Quest_Kitsune_S:Set("เควสจิ้งจอก : ✅ Wait fullmoon and night")
                            end
                        else
                            Quest_Kitsune_S:Set("เควสจิ้งจอก : ✅ Wait fullmoon and night")
                            ----Status_Win:Set('Status: wait time.')
                        end
                    else
                        if Auto_Hop_Server_Fox_Lamp then
                            wait(2)
                            if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" or game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                            else
                                HopLowServer()
                                wait(250)
                            end
                        end
                    end
                elseif Auto_Random_Azure then
                    if game.Workspace.Map:FindFirstChild('KitsuneIsland') then
                        if CheckItem('Azure Ember') >= 20 then
                            TP(workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame)
                            if (workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                                wait(3)
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Bouaty
    function CheckPlayer(vu)
        for i,v in pairs(game.Workspace.Characters:GetChildren()) do
            if v.Name ~= Select_Player_Tog and not table.find(Get_Player,v.Name) and v:FindFirstChild('Humanoid') and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
                Select_Player_Tog = v.Name
                print(v.Name..' : '..tostring((v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude))
                return
            end
        end
    end
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Farm_Bounty then
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyGyro') then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyGyro'):Destroy()
                    end
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyPosition') then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyPosition'):Destroy()
                    end
                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                        for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                            if v:FindFirstChild('VehicleSeat') then
                                v:Destroy()
                            end
                        end
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                        wait(0.5)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Farm_Bounty then
                    if Auto_Select_All_Player then
                        if Get_Player == nil then
                            Get_Player = {}
                            table.insert(Get_Player,tostring(game.Players.LocalPlayer.Name))
                        end
                        if Player_Select == nil then
                            Select_Player_Tog = nil
                            for i=15000,0,-1000 do
                                CheckPlayer(i)
                            end
                        end
                        if Select_Player_Tog == nil then
                            wait(1)
                            for i=15000,0,-1000 do
                                CheckPlayer(i)
                            end
                            if Select_Player_Tog == nil then
                                repeat wait(.1)
                                    TPX(CFrame.new(-5079.44677734375, 333.7293395996094, -3051.065185546875))
                                until (Vector3.new(-5079.44677734375, 333.7293395996094, -3051.065185546875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30
                                wait(1)
                                for i=15000,0,-1000 do
                                    CheckPlayer(i)
                                end
                                if Select_Player_Tog == nil then
                                    TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,12000,0))
                                    HopLowServer()
                                    wait(300)
                                end
                            end
                        else
                            Player_Select = Select_Player_Tog
                            Select_Player_S:Set("Select Player :"..Player_Select)
                            local Auto_Detect = false
                            for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                if v.Name == Player_Select and not Auto_Detect then
                                    Aimbot_On = true
                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                    for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                        if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Melee' then
                                            Weapon = v2.Name
                                        end
                                    end
                                    for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                        if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Melee' then
                                            Weapon = v2.Name
                                        end
                                    end
                                    local Sword_Add = false
                                    if game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value > 1000 then
                                        for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Sword' then
                                                Weapon2 = v2.Name
                                            end
                                        end
                                        for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Sword' then
                                                Weapon2 = v2.Name
                                            end
                                        end
                                        Sword_Add = true
                                    elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value > 1000 then
                                        for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Gun' then
                                                Weapon2 = v2.Name
                                            end
                                        end
                                        for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if v2:IsA('Tool') and tostring(v2.ToolTip) == 'Gun' then
                                                Weapon2 = v2.Name
                                            end
                                        end
                                        Sword_Add = true 
                                    else
                                        Sword_Add = true
                                        Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    end
                                    repeat wait()
                                        EquipWeapon(Weapon)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    repeat wait()
                                        EquipWeapon(Weapon2)
                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                            if vy.Name == Weapon2 then
                                                check_weapon = true
                                            end
                                        end
                                    until check_weapon
                                    local check_weapon = false
                                    spawn(function()
                                        repeat wait(.1)
                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                Weapon_Z = true
                                            end
                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                Weapon_X = true
                                            end
                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                Weapon_C = true
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                    end)
                                    App2 = true
                                    if Sword_Add then
                                        spawn(function()
                                            repeat wait(.1)
                                                if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                    Weapon2_Z = true
                                                end
                                                if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                    Weapon2_X = true
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                        end)
                                    end
                                    spawn(function()
                                        repeat wait(.5)
                                            local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,2,2)
                                            local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if Distance <= 20 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                wait(.3)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                wait(3)
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
                                                wait(.3)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                local args = {
                                                    [1] = "Ken",
                                                    [2] = true
                                                }
    
                                                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                                            end
                                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                    end)
                                    local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                    spawn(function()
                                        repeat task.wait()
                                            local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                            local percent = (health / maxhealth) * 100
                                            if percent <= 30 then
                                                repeat wait()
                                                    local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                    local percent = (health / maxhealth) * 100
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,500,0)
                                                until percent >= 35 or not v.Parent or v.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                            elseif Weapon_C or Weapon_Z or Weapon_X or Weapon2_C or Weapon2_X or Weapon2_Z then
                                                TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,2,2))
                                            else
                                                TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,10,20))
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end)
                                    local time_check_pvp = 0
                                    repeat wait(.1)
                                        local bitxz = game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart
                                        if bitxz then
                                            local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,2,2)
                                            local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                            if Distance <= 3 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay') then
                                                    time_check_pvp = time_check_pvp+1
                                                    if time_check_pvp >= 2 then
                                                        wait(1)
                                                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false and v.Humanoid.Health == v.Humanoid.MaxHealth then
                                                            Auto_Detect = true
                                                        end
                                                    end 
                                                end
                                                if Weapon_C and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                    wait(.3)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    wait(.1)
                                                    Weapon_C = false
                                                elseif Weapon2_Z and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    if Weapon2 == 'Cursed Dual Katana' then
                                                        wait(.5)
                                                    else
                                                        wait(.1)
                                                    end
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    wait(.1)
                                                    Weapon2_Z = false
                                                elseif Weapon_Z then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    if Weapon == 'Electric Claw' then
                                                        wait(.4)
                                                    else
                                                        wait(0.3)
                                                    end
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    wait(.1)
                                                    Weapon_Z = false
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay') or v.Humanoid.Health == v.Humanoid.MaxHealth then
                                                        time_check_pvp = time_check_pvp+1
                                                        if time_check_pvp >= 2 then
                                                            wait(1)
                                                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false and v.Humanoid.Health == v.Humanoid.MaxHealth then
                                                                Auto_Detect = true
                                                            end
                                                        end 
                                                    end
                                                elseif Weapon2_X and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.3)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    wait(.1)
                                                    Weapon2_X = false
                                                elseif Weapon_X and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.3)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    wait(.1)
                                                    Weapon_X = false
                                                elseif Weapon2_C and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                    wait(.3)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    wait(.1)
                                                    Weapon2_C = false
                                                else 
                                                    EquipWeapon(Weapon)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                            elseif Distance <= 40 then
                                                EquipWeapon(Weapon)
                                                Click()
                                            end
                                        end
                                    until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or Auto_Detect or not Auto_Farm_Bounty or v.Name ~= Player_Select
                                    table.insert(Get_Player,v.Name)
                                    Player_Select = nil
                                    if Auto_Detect then
                                        game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate"):Destroy()
                                    end
                                    repeat wait(.5)
                                    until game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                    --game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('Switch Hub hohoho',"All")
                                end
                            end
                            if not game.Workspace.Characters:FindFirstChild(Player_Select) then
                                Player_Select = nil
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Raid
    local function GetRaid(vu,mag)
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if v:IsA('Part') or v:IsA('BasePart') then
                if v.Name == vu and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= mag then
                    return v
                end
            end
        end
        return nil
    end
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Next_Island or Auto_Buy_Microchip or Auto_Use_Microchip then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if Auto_Next_Island then
                            if Select_Dungeon == "Magma" then
                                for i,v in pairs(game.Workspace:GetDescendants()) do
                                    if v.Name == "Lava" then
                                        v:Destroy()
                                    end
                                end
                            end
                            repeat wait(.1)
                                if GetRaid('Island 5',2500) ~= nil then
                                    TP(GetRaid('Island 5',2500).CFrame*CFrame.new(0,15,0))
                                elseif GetRaid('Island 4',2500) ~= nil then
                                    if Select_Dungeon == "Magma" then
                                        TP(GetRaid('Island 4',2500).CFrame*CFrame.new(0,120,0))
                                    else
                                        TP(GetRaid('Island 4',2500).CFrame*CFrame.new(0,15,0))
                                    end
                                elseif GetRaid('Island 3',2500) ~= nil then
                                    TP(GetRaid('Island 3',2500).CFrame*CFrame.new(0,15,0))
                                elseif GetRaid('Island 2',2500) ~= nil then
                                    TP(GetRaid('Island 2',2500).CFrame*CFrame.new(0,15,0))
                                elseif GetRaid('Island 1',2500) ~= nil then
                                    TP(GetRaid('Island 1',2500).CFrame*CFrame.new(0,15,0))
                                end
                            until game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false or Auto_Next_Island
                            if _G.Setting['Auto Awakening'] then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= '' then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                                end
                            end
                        end
                    elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if Auto_Use_Microchip and game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') or Auto_Use_Microchip and game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
                            if New_World then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1)
                                local pt = 0
                                repeat 
                                    pt = pt+1
                                    wait(1)
                                until pt >= 20 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true
                            elseif Three_World then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1)
                                local pt = 0
                                repeat 
                                    pt = pt+1
                                    wait(1)
                                until pt >= 20 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true
                            end
                        elseif Auto_Buy_Microchip and not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') and not game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Dungeon) == 1 then
                                wait(.5)
                            else
                                local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                                local chip = {}
                                for i,v in pairs(fruit)do
                                    if v['Price'] < Select_Fruit_Use then
                                        table.insert(chip,v['Price'])
                                    end
                                end
                                if #chip > 0 then
                                    local fruit_select = math.min(unpack(chip))
                                    for i,v in pairs(fruit)do
                                        if v['Price'] == fruit_select then
                                            result = {}
                                            local regex = ("([^%s]+)"):format("-")
                                            for each in v["Name"]:gmatch(regex) do
                                                table.insert(result, each)
                                            end
                                            NameFruit = result[2] .. " Fruit"
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                                            wait(.5)
                                        end
                                    end
                                elseif Auto_Bring_Fruit_Hop then
                                    local Fruit_Spawn = false
                                    for i,v in pairs(game.Workspace:GetChildren()) do
                                        if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
                                            Fruit_Spawn = true
                                            repeat wait(.1)
                                                if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2550 then
                                                    TPX(v.Handle.CFrame*CFrame.new(0,0,80))
                                                elseif (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                                    TPZ(v.Handle.CFrame)
                                                end
                                            until (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                                            wait(3)
                                            for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
                                                    result = {} 
                                                    local regex = ("([^%s]+)"):format(" ")
                                                    for each in v2.Name:gmatch(regex) do
                                                        table.insert(result, each)
                                                    end
                                                    local x = result[1].."-"..result[1]
                                                    if v2.Name == 'Bird: Phoenix Fruit' then
                                                        x = 'Bird-Bird: Phoenix' 
                                                    end
                                                    if v2.Name == "Bird: Falcon Fruit" then
                                                        x = "Bird-Bird: Falcon"
                                                    end
                                                    local time_check = 0
                                                    repeat wait(.1)
                                                        EquipWeapon(v2.Name)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
                                                        wait(.5)
                                                        time_check = time_check+1
                                                    until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
                                                end
                                            end
                                            for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
                                                    result = {} 
                                                    local regex = ("([^%s]+)"):format(" ")
                                                    for each in v2.Name:gmatch(regex) do
                                                        table.insert(result, each)
                                                    end
                                                    local x = result[1].."-"..result[1]
                                                    if v2.Name == 'Bird: Phoenix Fruit' then
                                                        x = 'Bird-Bird: Phoenix' 
                                                    end
                                                    if v2.Name == "Bird: Falcon Fruit" then
                                                        x = "Bird-Bird: Falcon"
                                                    end
                                                    local time_check = 0
                                                    repeat wait(.1)
                                                        EquipWeapon(v2.Name)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
                                                        wait(.5)
                                                        time_check = time_check+1
                                                    until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
                                                end
                                            end
                                        end
                                    end
                                    if not Fruit_Spawn then
                                        wait(1)
                                        for i,v in pairs(game.Workspace:GetChildren()) do
                                            if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
                                                Fruit_Spawn = true
                                            end
                                        end
                                        if not Fruit_Spawn then
                                            HopLowServer()
                                            wait(320)
                                        end
                                    end
                                end
                            end 
                        end 
                    else
                        wait(2)
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Kill_Aura then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false or not Auto_Kill_Aura
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end) 
    -- Shark Anchor
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Farm_Shark_Anchor then
                    local Shark_Tooth_I = CheckItem_X('Shark Tooth')
                    local Fool_Gold_I = CheckItem_X("Fool's Gold")
                    local Mutant_Tooth_I = CheckItem_X('Mutant Tooth')
                    local Terror_Eye_I = CheckItem_X('Terror Eyes')
                    local Electric_Wings_I = CheckItem_X('Electric Wing')
                    if Shark_Tooth_Necklace_H then
                        Shark_Tooth_N_S:Set('Shark Tooth Necklace : ✅')
                    elseif not Shark_Tooth_Necklace_H then
                        if Mutant_Tooth_I >= 1 and Shark_Tooth_I >= 5 then
                            local args = {
                                [1] = "CraftItem",
                                [2] = "PossibleHardcode",
                                [3] = "SharkAnchor"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Check",
                                [3] = "ToothNecklace"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Craft",
                                [3] = "ToothNecklace"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            wait(1)
                        end
                        if GetItem('Shark Tooth Necklace') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
                            Shark_Tooth_Necklace_H = true
                            Shark_Tooth_N_S:Set('Shark Tooth Necklace : ✅')
                            wait(1)
                        end
                    end
                    if Terror_Jaw_H then
                        Auto_Farm_Terror_Jaw = false
                        Terror_Jaw_S:Set('Terror Jaw : ✅')
                    elseif not Terror_Jaw_H then
                        if Shark_Tooth_I >= 5 and Fool_Gold_I >= 10 and Mutant_Tooth_I >= 2 and Terror_Eye_I >= 1 then
                            local args = {
                                [1] = "CraftItem",
                                [2] = "PossibleHardcode",
                                [3] = "SharkAnchor"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Check",
                                [3] = "TerrorJaw"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Craft",
                                [3] = "TerrorJaw"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            wait(1)
                        end
                        if GetItem('Terror Jaw') then
                            Terror_Jaw_H = true
                            Terror_Jaw_S:Set('Terror Jaw : ✅')
                            wait(1)
                        end
                    end
                    if CheckItem_X('Monster Magnet') >= 1 then
                        Monster_Magnet_H = true
                        Monster_Magnet_S:Set('Monster Magnet : ✅')
                        Auto_Farm_Monster_Magnet = false
                        wait(1)
                    elseif CheckItem_X('Monster Magnet') == 0 then
                        Monster_Magnet_H = false
                        Monster_Magnet_S:Set('Monster Magnet : ')
                        Auto_Farm_Monster_Magnet = true
                        if Terror_Eye_I >= 2 and Electric_Wings_I >= 8 and Fool_Gold_I >= 20 and Shark_Tooth_I >= 10 then 
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Check",
                                [3] = "SharkAnchor"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "CraftItem",
                                [2] = "Craft",
                                [3] = "SharkAnchor"
                            }
                            
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            wait(1)
                            if CheckItem_X('Monster Magnet') >= 1 then
                                Monster_Magnet_H = true
                                Monster_Magnet_S:Set('Monster Magnet : ✅')
                                wait(1)
                            end
                        end
                    end
                    if not Shark_Tooth_Necklace_H then
                        if GetItem('Shark Tooth Necklace') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
                            Shark_Tooth_Necklace_H = true
                            Shark_Tooth_N_S:Set('Shark Tooth Necklace : ✅')
                            wait(1)
                        end
                    end
                    wait(10)
                else
                    wait(2)
                end
            end)
        end
    end)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if Auto_Farm_Shark_Anchor then
                    if not kmldgf and Shark_Tooth_Necklace_H and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
                        local args = {
                            [1] = "LoadItem",
                            [2] = "Shark Tooth Necklace"
                        }
    
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        kmldgf = true
                    end
                    local Farming_Tril = false
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
                            if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                --Status_Win:Set('Status: Farm '..v.Name)
                                Status_Shark_Anchor_S:Set("Status: Farm "..tostring(v.Name))
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                wait(0.5)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                Farming_Tril = true
                                Attack = true
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                postis = 30
                                postx = 20
                                if v.Name == 'Terrorshark' then
                                    postis = 30
                                    postx = 50
                                end
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                        Weapon = v.Name
                                    end
                                end
                                if v.Name == 'Terrorshark' then
                                    spawn(function()
                                        local time_hos = 0
                                        repeat wait(1)
                                            time_hos = time_hos+1
                                            if Evo_Race_V3_H and time_hos >= 4 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                wait(0.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                            end
                                            if time_hos >= 4 then
                                                time_hos = 0
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
                                    end)
                                end
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,postx,30))
                                until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
                                Attack = false
                            end
                        end
                    end
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == 'Terrorshark' then
                            if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                --Status_Win:Set('Status: Farm '..v.Name)
                                Status_Shark_Anchor_S:Set("Status: Farm "..tostring(v.Name))
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                wait(0.5)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                Farming_Tril = true
                                Attack = true
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                postis = 30
                                postx = 20
                                if v.Name == 'Terrorshark' then
                                    postis = 30
                                    postx = 50
                                end
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                        Weapon = v.Name
                                    end
                                end
                                if v.Name == 'Terrorshark' then
                                    spawn(function()
                                        local time_hos = 0
                                        repeat wait(1)
                                            time_hos = time_hos+1
                                            if Evo_Race_V3_H and time_hos >= 4 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                wait(0.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                            end
                                            if time_hos >= 4 then
                                                time_hos = 0
                                            end
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
                                    end)
                                end
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,postx,30))
                                until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
                                Attack = false
                            end
                        end
                    end
                    if CheckItem_X("Fool's Gold") <= 19 then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == 'FishBoat' and not Monster_Magnet_H then
                                if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                    Stop_Boat()
                                    --Status_Win:Set('Status: Farm '..v.Name)
                                    Status_Shark_Anchor_S:Set("Status: Farm "..tostring(v.Name))
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    Weapon2 = 'Sharkman Karate'
                                    if game.Players.LocalPlayer.Data.Stats['Demon Fruit'].Level.Value >= 2000 then
                                        Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    elseif game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    end
                                    Aimbot_On = true
                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                    Weapon_Att = Weapon
                                    repeat wait(.1)
                                        if v.Health.Value > 0 then 
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                        end
                                        if GetSkill_C(Weapon_Att,'Z') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'X') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'C') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'V') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        end
                                        if Weapon_Att == Weapon then
                                            Weapon_Att = Weapon2
                                            EquipWeapon(Weapon2)
                                        elseif Weapon_Att == Weapon2 then
                                            Weapon_Att = Weapon
                                            EquipWeapon(Weapon)
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                    Aimbot_On = false
                                    --[[
                                    -- Aimbot
                                    if TweenP == nil then
                                    else
                                        TweenP:Cancel()
                                    end
                                    wait(1)
                                    --Status_Win:Set('Status: Farm '..v.Name)
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                    wait(0.5)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    wait(0.5)
                                    Farming_Tril = true
                                    Attack = true
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                    local get_pless = true
                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                    local check_1 = nil
                                    local check_2 = nil
                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild(_G.Setting['Melee']) and not game.Players.LocalPlayer.Character:FindFirstChild(_G.Setting['Melee']) then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                        wait(1)
                                        Weapon = 'Sharkman Karate'
                                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sharkman Karate') or game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate') then
                                        Weapon = 'Sharkman Karate'
                                    end
                                    spawn(function()
                                        repeat wait(.1)
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
                                    end)
                                    local get_skill = {}
                                    repeat wait(.2)
                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(0.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            end
                                            EquipWeapon(Weapon)
                                            if v.Health.Value > 0 and GetSkill_C(Weapon,'Z') then
                                                PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                wait()
                                            end
                                            if v.Health.Value > 0 and GetSkill_C(Weapon,'X') then
                                                PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                wait()
                                            end
                                            if v.Health.Value > 0 and GetSkill_C(Weapon,'C') then
                                                PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                wait(.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                wait()
                                            end
                                            if v.Health.Value > 0 and GetSkill_C(Weapon,'V') then
                                                PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                wait(.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                wait()
                                            end
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
                                    Attack = false
                                    ]]
                                elseif (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 800 then
                                    Stop_Boat()
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == 'FishBoat' and not Monster_Magnet_H or v.Name == 'PirateGrandBrigade' and not Monster_Magnet_H or v.Name == 'PirateBrigade' and not Monster_Magnet_H then
                                if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                    Stop_Boat()
                                    --Status_Win:Set('Status: Farm '..v.Name)
                                    Status_Shark_Anchor_S:Set("Status: Farm "..tostring(v.Name))
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    Weapon = 'Sharkman Karate'
                                    Weapon2 = 'Sharkman Karate'
                                    if game.Players.LocalPlayer.Data.Stats['Demon Fruit'].Level.Value >= 2000 then
                                        Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                    elseif game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value >= 2000 then
                                        for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                        for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                            if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
                                                Weapon2 = vx.Name
                                            end
                                        end	
                                    end
                                    Aimbot_On = true
                                    PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                    Weapon_Att = Weapon
                                    repeat wait(.1)
                                        if v.Health.Value > 0 then 
                                            TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                        end
                                        if GetSkill_C(Weapon_Att,'Z') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'X') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'C') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        elseif GetSkill_C(Weapon_Att,'V') and v.Health.Value > 0 then
                                            PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            wait(.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                            wait()
                                            if v.Health.Value > 0 then 
                                                TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
                                            end
                                        end
                                        if Weapon_Att == Weapon then
                                            Weapon_Att = Weapon2
                                            EquipWeapon(Weapon2)
                                        elseif Weapon_Att == Weapon2 then
                                            Weapon_Att = Weapon
                                            EquipWeapon(Weapon)
                                        end
                                    until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                    Aimbot_On = false
                                elseif (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 800 then
                                    Stop_Boat()
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        end
                    end
                    if not Farming_Tril then
                        local Check_Boat_H = false 
                        for i,v in pairs(game.Workspace.Boats:GetChildren()) do
                            if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                                Check_Boat_H = true
                                if position_boat == nil then
                                    position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                end
                                --Status_Win:Set('Status: Go to monster.')
                                if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
                                    TPBoat(position_boat,v.VehicleSeat,280)
                                    TP(position_boat)
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                else
                                    if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
                                        Stop_Boat()
                                        if Monster_Magnet_H then
                                            if (position_boat.Position-Vector3.new(-40887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-45887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        else
                                            if (position_boat.Position-Vector3.new(-37887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-50887.2265625, 40.741893768310547, -658.2794799804688)
                                            elseif (position_boat.Position-Vector3.new(-50887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
                                                position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                            else
                                                position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
                                            end
                                        end
                                        wait(0.5)
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                        if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            wait(0.5)
                                        else
                                            TPBoat(position_boat,v.VehicleSeat,230)
                                        end
                                    else
                                        Stop_Boat()
                                        TP(v.VehicleSeat.CFrame,150) 
                                    end
                                end
                            end
                        end
                        if not Check_Boat_H then
                            if not Farming_Tril then
                                if not Check_Boat_H then
                                    --Status_Win:Set('Status: Get boat.')
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
                                        wait(1)
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = 'PirateBrigade'
                                        }
                                        
                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
                                        TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait(.5) do
            pcall(function()
                if Auto_Teleport_To_Temple then
                    TPX(CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875))
                elseif Auto_Teleport_To_Gear then
                    TPX(CFrame.new(28985.736328125, 14889.6328125, -98.37586975097656))
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Evo Race V4
    spawn(function()
        while wait(.2) do
            if An_One_On then
                pcall(function()
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
                    else
                        wait(1)
                    end
                end)
            else
                wait(2)
            end
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Evo_Race_V4 or Auto_Evo_Race_V4_H1 or Auto_Evo_Race_V4_H2 then
                    if Farm_Sword then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                    if Saber_H and not Saber_Mas then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild('Saber') and not game.Players.LocalPlayer.Character:FindFirstChild('Saber') then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Saber'))
                                        end
                                    elseif Buddy_H and not Buddy_Mas then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild('Buddy Sword') and not game.Players.LocalPlayer.Character:FindFirstChild('Buddy Sword') then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Buddy Sword'))
                                        end
                                    end
                                    PosMon_X = v.HumanoidRootPart.CFrame
                                    StatrMagnet = true
                                    if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                        wait(1)
                                        if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                        end
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    end
                                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                        if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
                                            Weapon = v.Name
                                            if v.Name == 'Saber' and v.Level.Value >= 125 then
                                                Farm_Sword = false
                                            end
                                            if v.Name == 'Buddy Sword' and v.Level.Value >= 300 then
                                                Farm_Sword = false
                                            end
                                        end
                                    end
                                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                        if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
                                            Weapon = v.Name
                                            if v.Name == 'Saber' and v.Level.Value >= 125 then
                                                Farm_Sword = false
                                            end
                                            if v.Name == 'Buddy Sword' and v.Level.Value >= 300 then
                                                Farm_Sword = false
                                            end
                                        end
                                    end
                                    Attack = true
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(Weapon)
                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                    until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.RaceTransformed.Value == true or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                    StatrMagnet = false
                                    Attack = false
                                end
                            end
                            TP(CFrame.new(-9486.0126953125, 202.1048126220703, 6163.451171875))
                        else
                            TPX(CFrame.new(-9486.0126953125, 172.1048126220703, 6163.451171875))
                        end
                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' and not Check_Sword then
                        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                        for i,v in pairs(Inventory) do
                            if v.Type == "Sword" then
                                if v["Name"] == 'Saber' then 
                                    if v.Mastery < 125 then
                                        Saber_H = true
                                        Saber_Mastery = v.Mastery
                                        Saber_Mas = false
                                    elseif v.Mastery >= 125 then
                                        Saber_H = true
                                        Saber_Mastery = v.Mastery
                                        Saber_Mas = true
                                        Check_Sword = true
                                    end
                                end
                            end
                        end
                        if not Check_Sword then
                            if Saber_H then
                                if not Saber_Mas then
                                    Farm_Sword = true
                                end
                            end
                        end
                    elseif An_One_On then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                            if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                                repeat wait(1)
                                    TP(CFrame.new(-9785.28515625, 309.4622802734375, 5625.89013671875))
                                until game.Players.LocalPlayer.Character.RaceTransformed.Value == false
                                if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) >= 3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
                                    wait(1)
                                    if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) <= 2 then
                                        An_One_On = false
                                        Race_Int = 'V4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]))
                                        Race_Value:Set("Evo Race : "..Race_Int)
                                        if Auto_Evo_Race_V4 then
                                            if tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])) == '10' then
                                                Auto_Evo_Race_V4 = false
                                            end
                                        end
                                    end
                                end
                            else
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(-9785.28515625, 309.4622802734375, 5625.89013671875)).Magnitude <= 2000 and game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                                        PosMon_X = v.HumanoidRootPart.CFrame
                                        StatrMagnet = true
                                        if Weapon == nil then
                                            for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Melee' then
                                                    Weapon = vx.Name
                                                end
                                            end
                                        end
                                        Farm_Attack = true
                                        Attack = true
                                        repeat wait(.2)
                                            if v.Humanoid.Health == v.Humanoid.MaxHealth then
                                                Click()
                                            end 
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2 or game.Players.LocalPlayer.Character.RaceTransformed.Value == true
                                        StatrMagnet = false
                                        Attack = false
                                        Farm_Attack = false
                                    end
                                end
                                TP(CFrame.new(-9486.0126953125, 202.1048126220703, 6163.451171875))
                            end
                        else
                            TPX(CFrame.new(-9486.0126953125, 172.1048126220703, 6163.451171875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) < tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) == tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) == 9 and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) == 8 then
                        An_One_On = true
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Teleport") == nil then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear5",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear4",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear3",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear2",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear1",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            --Race_S:Set('Race: '..tostring(game.Players.LocalPlayer.Data.Race.Value)..' 4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])))
                            join_trial = false
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                            repeat wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                                    if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
                                        local posit = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                        }
                                        repeat wait(.5)
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-posit[1].Position).Magnitude <= 100 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = posit[1]*CFrame.new(0,-40,0)
                                                wait(3)
                                            end
                                        until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
                                        local xp = game:GetService("Workspace").SeaBeasts:GetChildren()
                                        if #xp > 0 then
                                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                                if v:FindFirstChild('HumanoidRootPart') and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 and v.Health.Value > 0 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                                    Weapon = 'Sharkman Karate'
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Saber'))
                                                    wait(1)
                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Saber') or game.Players.LocalPlayer.Character:FindFirstChild('Saber') then
                                                        Weapon2 = 'Saber'
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    Aimbot_On = true
                                                    local check_weapon = false
                                                    repeat wait()
                                                        EquipWeapon(Weapon)
                                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                            if vy.Name == Weapon then
                                                                check_weapon = true
                                                            end
                                                        end
                                                    until check_weapon
                                                    local check_weapon = false
                                                    repeat wait()
                                                        EquipWeapon(Weapon2)
                                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                            if vy.Name == Weapon2 then
                                                                check_weapon = true
                                                            end
                                                        end
                                                    until check_weapon
                                                    local check_weapon = false
                                                    spawn(function()
                                                        repeat wait(.2)
                                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                                Weapon_Z = true
                                                            end
                                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                                Weapon_X = true
                                                            end
                                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                                Weapon_C = true
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                    end)
                                                    spawn(function()
                                                        repeat wait(.2)
                                                            if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                                Weapon2_Z = true
                                                            end
                                                            if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                                Weapon2_X = true
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                    end)
                                                    spawn(function()
                                                        repeat wait(.5)
                                                            local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,5,0)
                                                            local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                            if Distance <= 10 then
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                                wait(.3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                                wait(3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
                                                                wait(.3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                                local args = {
                                                                    [1] = "Ken",
                                                                    [2] = true
                                                                }
                    
                                                                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                    end)
                                                    spawn(function()
                                                        repeat wait()
                                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,5,0))
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                    end)
                                                    repeat wait()
                                                        if Weapon_Z then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                            Weapon_Z = false
                                                        elseif Weapon_X then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                            Weapon_X = false
                                                        elseif Weapon_C then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                            Weapon_C = false
                                                        elseif Weapon2_Z then
                                                            EquipWeapon(Weapon2)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                            Weapon2_Z = false
                                                        elseif Weapon2_X then
                                                            EquipWeapon(Weapon2)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                            Weapon2_X = false
                                                        end
                                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                    Aimbot_On = false
                                                end 
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
                                        local xp = game.Workspace.Enemies:GetChildren()
                                        if #xp > 0 then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                                    repeat wait(.1)
                                                        Click()
                                                        EquipWeapon(Weapon)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
                                        for i,v in pairs(game.Workspace.Map:GetChildren()) do
                                            if v.Name == 'SkyTrial' and v:FindFirstChild('Model') and v.Model:FindFirstChild('FinishPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame
                                                wait(2)
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,5,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,10,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,15,0)
                                                    wait(2)
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
                                        local xp = game.Workspace.Enemies:GetChildren()
                                        if #xp > 0 then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                                    repeat wait(.1)
                                                        Click()
                                                        EquipWeapon(Weapon)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false or not Auto_Evo_Race_V4 and not Auto_Evo_Race_V4_H1 and not Auto_Evo_Race_V4_H2
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
                                        for i,v in pairs(game.Workspace.Map:GetChildren()) do
                                            if v.Name == 'MinkTrial' and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
                                                wait(2)
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,5,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame
                                                    wait(2)
                                                end
                                            end
                                        end
                                    end
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false and Auto_Evo_Race_V4_H1 and Auto_Evo_Race_V4_H2 then
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                Race_Reset = true
                                wait(7)
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false and Auto_Evo_Race_V4 then
                                local time_check_delay = 0
                                repeat
                                    wait(1)
                                    time_check_delay = time_check_delay+1
                                until time_check_delay >= 30 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil 
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil  then
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                                    repeat wait(.1)
                                        for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                            if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    if Auto_Evo_Race_V4 or Auto_Evo_Race_V4_H1 or Auto_Evo_Race_V4_H2 then
                                                        Click()
                                                        EquipWeapon(Weapon)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,0,3))
                                                    end
                                                until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil or not v.Parent or v.Humanoid.Health <= 0 
                                            end
                                        end
                                    until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil
                                end
                            end
                        else
                            if not Race_Reset then
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                Race_Reset = true
                                wait(6)
                            else
                                if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
                                    CFrame_Door_Race = CFrame.new(28492,14895,-422)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
                                    CFrame_Door_Race = CFrame.new(28223.1348, 14890.6328, -211.410782)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
                                    CFrame_Door_Race = CFrame.new(28673,14890,453)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
                                    CFrame_Door_Race = CFrame.new(28967.779296875, 14919.28125, 233.46749877929688)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
                                    CFrame_Door_Race = CFrame.new(29237.6191, 14890.6328, -206.426422)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
                                    CFrame_Door_Race = CFrame.new(29020.6875, 14891.0586, -381.287872)
                                end
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude >= 2500 then
                                    if (workspace.Map["Temple of Time"].Lever.Mid.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                        repeat wait(1)
                                            local args = {
                                                [1] = "requestEntrance",
                                                [2] = Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)
                                            }
                            
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
                                    end
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrame_Door_Race.Position).Magnitude <= 5 then
                                    if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                                        local result = {}
                                        local x = tostring(game:GetService("Lighting").TimeOfDay)
                                        local regex = ("([^%s]+)"):format(":")
                                        for each in x:gmatch(regex) do
                                            table.insert(result, each)
                                        end
                                        if tonumber(result[1]) >= 0 and tonumber(result[1]) < 5 or tonumber(result[1]) >= 18 and tonumber(result[1]) <= 23 then
                                            if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                                wait(1)
                                                if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                                end
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                            end
                                            local gebteam ={}
                                            for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                                if not table.find(gebteam,v.Name) and v.Humanoid.Health > 0 then
                                                    if (v.HumanoidRootPart.Position-Vector3.new(28492.1504, 14895.6328, -421.197174)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28223.1348, 14890.6328, -211.410782)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28967.6445, 14919.2812, 234.292908)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28673.75, 14890.334, 455.096802)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(29237.6191, 14890.6328, -206.426422)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(29020.6875, 14891.0586, -381.287872)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    end
                                                end
                                            end
                                            if #gebteam >= 3 then
                                                local check_member = {}
                                                for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                                    if table.find(gebteam,v.Name) and not table.find(check_member,v.Name) and v.Humanoid.Health > 0 then
                                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude <= 5 then
                                                            table.insert(check_member,v.Name)
                                                        end
                                                    end
                                                end
                                                if tonumber(#check_member) < tonumber(#gebteam) then
                                                    local check_pop = tonumber(#gebteam) - tonumber(#check_member)
                                                    if check_pop >= 2 then
                                                        local time_check_x = 0
                                                        Race_Reset = false
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                        wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                        repeat
                                                            time_check_x = time_check_x + 1
                                                            wait(1)
                                                        until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true or time_check_x >= 19
                                                    end
                                                end
                                            end
                                        end
                                    end
                                else
                                    TP(CFrame_Door_Race)
                                end
                            end
                        end
                    end
                elseif Auto_Evo_Race_V4_Solo then
                    if Farm_Sword then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                                    if Tween == nil then
                                    else
                                        TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    end
                                    if Saber_H and not Saber_Mas then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild('Saber') and not game.Players.LocalPlayer.Character:FindFirstChild('Saber') then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Saber'))
                                        end
                                    elseif Buddy_H and not Buddy_Mas then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild('Buddy Sword') and not game.Players.LocalPlayer.Character:FindFirstChild('Buddy Sword') then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Buddy Sword'))
                                        end
                                    end
                                    PosMon_X = v.HumanoidRootPart.CFrame
                                    StatrMagnet = true
                                    if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                        wait(1)
                                        if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                        end
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                    end
                                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                        if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
                                            Weapon = v.Name
                                            if v.Name == 'Saber' and v.Level.Value >= 125 then
                                                Farm_Sword = false
                                            end
                                            if v.Name == 'Buddy Sword' and v.Level.Value >= 300 then
                                                Farm_Sword = false
                                            end
                                        end
                                    end
                                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                        if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
                                            Weapon = v.Name
                                            if v.Name == 'Saber' and v.Level.Value >= 125 then
                                                Farm_Sword = false
                                            end
                                            if v.Name == 'Buddy Sword' and v.Level.Value >= 300 then
                                                Farm_Sword = false
                                            end
                                        end
                                    end
                                    Attack = true
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        EquipWeapon(Weapon)
                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                    until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Character.RaceTransformed.Value == true or not Auto_Evo_Race_V4_Solo
                                    StatrMagnet = false
                                    Attack = false
                                end
                            end
                            TP(CFrame.new(-9486.0126953125, 202.1048126220703, 6163.451171875))
                        else
                            TPX(CFrame.new(-9486.0126953125, 172.1048126220703, 6163.451171875))
                        end
                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' and not Check_Sword then
                        local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                        for i,v in pairs(Inventory) do
                            if v.Type == "Sword" then
                                if v["Name"] == 'Saber' then 
                                    if v.Mastery < 125 then
                                        Saber_H = true
                                        Saber_Mastery = v.Mastery
                                        Saber_Mas = false
                                    elseif v.Mastery >= 125 then
                                        Saber_H = true
                                        Saber_Mastery = v.Mastery
                                        Saber_Mas = true
                                        Check_Sword = true
                                    end
                                end
                            end
                        end
                        if not Check_Sword then
                            if Saber_H then
                                if not Saber_Mas then
                                    Farm_Sword = true
                                end
                            end
                        end
                    elseif An_One_On then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
                            if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                                repeat wait(1)
                                    TP(CFrame.new(-9785.28515625, 309.4622802734375, 5625.89013671875))
                                until game.Players.LocalPlayer.Character.RaceTransformed.Value == false
                                if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) >= 3 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
                                    wait(1)
                                    if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) <= 2 then
                                        An_One_On = false
                                        Race_Int = 'V4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]))
                                        Race_Value:Set("Evo Race : "..Race_Int)
                                        if Auto_Evo_Race_V4 then
                                            if tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])) == '10' then
                                                Auto_Evo_Race_V4 = false
                                            end
                                        end
                                    end
                                end
                            else
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(-9785.28515625, 309.4622802734375, 5625.89013671875)).Magnitude <= 2000 and game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                                        PosMon_X = v.HumanoidRootPart.CFrame
                                        StatrMagnet = true
                                        if Weapon == nil then
                                            for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Melee' then
                                                    Weapon = vx.Name
                                                end
                                            end
                                        end
                                        Farm_Attack = true
                                        Attack = true
                                        repeat wait(.2)
                                            if v.Humanoid.Health == v.Humanoid.MaxHealth then
                                                Click()
                                            end 
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Evo_Race_V4_Solo or game.Players.LocalPlayer.Character.RaceTransformed.Value == true
                                        StatrMagnet = false
                                        Attack = false
                                        Farm_Attack = false
                                    end
                                end
                                TP(CFrame.new(-9486.0126953125, 202.1048126220703, 6163.451171875))
                            end
                        else
                            TPX(CFrame.new(-9486.0126953125, 172.1048126220703, 6163.451171875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) < tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) == tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) == 9 and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) == 8 then
                        An_One_On = true
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Teleport") == nil then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear5",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear4",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear3",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear2",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] == true then
                                local args = {
                                    [1] = "TempleClock",
                                    [2] = "SpendPoint",
                                    [3] = "Gear1",
                                    [4] = "Omega"
                                    }
                                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            --Race_S:Set('Race: '..tostring(game.Players.LocalPlayer.Data.Race.Value)..' 4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])))
                            join_trial = false
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                            repeat wait(.1)
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                                    if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
                                        local posit = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                        }
                                        repeat wait(.5)
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-posit[1].Position).Magnitude <= 100 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = posit[1]*CFrame.new(0,-40,0)
                                                wait(3)
                                            end
                                        until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
                                        local xp = game:GetService("Workspace").SeaBeasts:GetChildren()
                                        if #xp > 0 then
                                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                                if v:FindFirstChild('HumanoidRootPart') and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 and v.Health.Value > 0 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                                    Weapon = 'Sharkman Karate'
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring('Saber'))
                                                    wait(1)
                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Saber') or game.Players.LocalPlayer.Character:FindFirstChild('Saber') then
                                                        Weapon2 = 'Saber'
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    Aimbot_On = true
                                                    local check_weapon = false
                                                    repeat wait()
                                                        EquipWeapon(Weapon)
                                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                            if vy.Name == Weapon then
                                                                check_weapon = true
                                                            end
                                                        end
                                                    until check_weapon
                                                    local check_weapon = false
                                                    repeat wait()
                                                        EquipWeapon(Weapon2)
                                                        for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                            if vy.Name == Weapon2 then
                                                                check_weapon = true
                                                            end
                                                        end
                                                    until check_weapon
                                                    local check_weapon = false
                                                    spawn(function()
                                                        repeat wait(.2)
                                                            if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                                Weapon_Z = true
                                                            end
                                                            if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                                Weapon_X = true
                                                            end
                                                            if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                                Weapon_C = true
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4_Solo
                                                    end)
                                                    spawn(function()
                                                        repeat wait(.2)
                                                            if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                                Weapon2_Z = true
                                                            end
                                                            if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                                Weapon2_X = true
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4_Solo
                                                    end)
                                                    spawn(function()
                                                        repeat wait(.5)
                                                            local Levia = v.HumanoidRootPart.CFrame*CFrame.new(0,5,0)
                                                            local Distance = (Levia.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                                            if Distance <= 10 then
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                                wait(.3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                                wait(3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
                                                                wait(.3)
                                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game)
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                            end
                                                            if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                                local args = {
                                                                    [1] = "Ken",
                                                                    [2] = true
                                                                }
                    
                                                                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                                                            end
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4_Solo
                                                    end)
                                                    spawn(function()
                                                        repeat wait()
                                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,5,0))
                                                        until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Evo_Race_V4_Solo
                                                    end)
                                                    repeat wait()
                                                        if Weapon_Z then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                            Weapon_Z = false
                                                        elseif Weapon_X then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                            Weapon_X = false
                                                        elseif Weapon_C then
                                                            EquipWeapon(Weapon)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                            Weapon_C = false
                                                        elseif Weapon2_Z then
                                                            EquipWeapon(Weapon2)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                            Weapon2_Z = false
                                                        elseif Weapon2_X then
                                                            EquipWeapon(Weapon2)
                                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                            wait(.1)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                            Weapon2_X = false
                                                        end
                                                    until not v.Parent or v.Health.Value <= 0 or not Auto_Evo_Race_V4_Solo
                                                    Aimbot_On = false
                                                end 
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
                                        local xp = game.Workspace.Enemies:GetChildren()
                                        if #xp > 0 then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                                    repeat wait(.1)
                                                        Click()
                                                        EquipWeapon(Weapon)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false or not Auto_Evo_Race_V4_Solo
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
                                        for i,v in pairs(game.Workspace.Map:GetChildren()) do
                                            if v.Name == 'SkyTrial' and v:FindFirstChild('Model') and v.Model:FindFirstChild('FinishPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame
                                                wait(2)
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,5,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,10,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 2000 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,15,0)
                                                    wait(2)
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
                                        local xp = game.Workspace.Enemies:GetChildren()
                                        if #xp > 0 then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                    Weapon = v.Name
                                                end
                                            end
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                                    repeat wait(.1)
                                                        Click()
                                                        EquipWeapon(Weapon)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false or not Auto_Evo_Race_V4_Solo
                                                end
                                            end
                                        end
                                    elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
                                        for i,v in pairs(game.Workspace.Map:GetChildren()) do
                                            if v.Name == 'MinkTrial' and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
                                                wait(2)
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,5,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
                                                    wait(2)
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild('Floor') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1500 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame
                                                    wait(2)
                                                end
                                            end
                                        end
                                    end
                                end
                            until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                                local time_check_delay = 0
                                repeat
                                    wait(1)
                                    time_check_delay = time_check_delay+1
                                until time_check_delay >= 30 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil 
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil  then
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                                    repeat wait(.1)
                                        for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                            if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                                Attack_Aura = true
                                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                    if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                        Weapon = v.Name
                                                    end
                                                end
                                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                    if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
                                                        Weapon = v.Name
                                                    end
                                                end
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                Aimbot_On = true
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                        local args = {
                                                            [1] = "Ken",
                                                            [2] = true
                                                        }
            
                                                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                                                    end
                                                    EquipWeapon(Weapon)
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,5,5))
                                                    if GetSkill_C(Weapon,'Z') then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    elseif GetSkill_C(Weapon,'X') then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    elseif GetSkill_C(Weapon,'C') then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end
                                                until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil or not v.Parent or v.Humanoid.Health <= 0 
                                                Aimbot_On = false
                                                Attack_Aura = false
                                            end
                                        end
                                    until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock","Check")['HadPoint'] ~= nil
                                end
                            end
                        else
                            if not Race_Reset then
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                                Race_Reset = true
                                wait(6)
                            else
                                if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
                                    CFrame_Door_Race = CFrame.new(28492,14895,-422)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
                                    CFrame_Door_Race = CFrame.new(28223.1348, 14890.6328, -211.410782)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
                                    CFrame_Door_Race = CFrame.new(28673,14890,453)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
                                    CFrame_Door_Race = CFrame.new(28967.779296875, 14919.28125, 233.46749877929688)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
                                    CFrame_Door_Race = CFrame.new(29237.6191, 14890.6328, -206.426422)
                                elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
                                    CFrame_Door_Race = CFrame.new(29020.6875, 14891.0586, -381.287872)
                                end
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude >= 2500 then
                                    if (workspace.Map["Temple of Time"].Lever.Mid.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                        repeat wait(1)
                                            local args = {
                                                [1] = "requestEntrance",
                                                [2] = Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)
                                            }
                            
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
                                    end
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrame_Door_Race.Position).Magnitude <= 5 then
                                    if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                                        local result = {}
                                        local x = tostring(game:GetService("Lighting").TimeOfDay)
                                        local regex = ("([^%s]+)"):format(":")
                                        for each in x:gmatch(regex) do
                                            table.insert(result, each)
                                        end
                                        if tonumber(result[1]) >= 0 and tonumber(result[1]) < 5 or tonumber(result[1]) >= 18 and tonumber(result[1]) <= 23 then
                                            if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
                                                wait(1)
                                                if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
                                                end
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                                wait(1)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
                                            end
                                            local gebteam ={}
                                            for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                                if not table.find(gebteam,v.Name) and v.Humanoid.Health > 0 then
                                                    if (v.HumanoidRootPart.Position-Vector3.new(28492.1504, 14895.6328, -421.197174)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28223.1348, 14890.6328, -211.410782)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28967.6445, 14919.2812, 234.292908)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(28673.75, 14890.334, 455.096802)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(29237.6191, 14890.6328, -206.426422)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    elseif (v.HumanoidRootPart.Position-Vector3.new(29020.6875, 14891.0586, -381.287872)).Magnitude <= 5 then
                                                        table.insert(gebteam,v.Name)
                                                    end
                                                end
                                            end
                                            if #gebteam >= 3 then
                                                local check_member = {}
                                                for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                                    if table.find(gebteam,v.Name) and not table.find(check_member,v.Name) and v.Humanoid.Health > 0 then
                                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude <= 5 then
                                                            table.insert(check_member,v.Name)
                                                        end
                                                    end
                                                end
                                                if tonumber(#check_member) < tonumber(#gebteam) then
                                                    local check_pop = tonumber(#gebteam) - tonumber(#check_member)
                                                    if check_pop >= 2 then
                                                        local time_check_x = 0
                                                        Race_Reset = false
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                        wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                        repeat
                                                            time_check_x = time_check_x + 1
                                                            wait(1)
                                                        until game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true or time_check_x >= 19
                                                    end
                                                end
                                            end
                                        elseif tonumber(result[1]) >= 5 and tonumber(result[1]) < 13 then
                                            HopLowServer()
                                            wait(500)
                                        end
                                    else
                                        HopLowServer()
                                        wait(500)
                                    end
                                else
                                    TP(CFrame_Door_Race)
                                end
                            end
                        end
                    end
                elseif Auto_Pull_Lever then
                    if Three_World then
                        if not ExSeb then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 1 then
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Check"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Begin"
                                }
                                
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 2 then
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Check"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                repeat wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2959.87231, 2282.42139, -7216.23193)
                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Teleport"
                                    }
                                    
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 3 then
                                ExSeb = true
                                if not ujihfdg then
                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Check"
                                    }
                                    
                                   print( game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
                                    wait(1)
    
                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Continue"
                                    }
    
                                    print(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    
                                    ujihfdg = true
                                end
                            elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 4 then
                                ExSeb = true
                            end
                        else
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    wait(0.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
                                    wait(1)
                                else
                                    local pointer = game:GetService("Workspace").Map:FindFirstChild("MysticIsland").WorldPivot*CFrame.new(0,500,0)
                                    if (pointer.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 25 then
                                        if not Pull_Lever_H then
                                            wait(1)
                                            local result = {}
                                            local x = tostring(game:GetService("Lighting").TimeOfDay)
                                            local regex = ("([^%s]+)"):format(":")
                                            for each in x:gmatch(regex) do
                                                table.insert(result, each)
                                            end
                                            local load_tag = false
                                            if tonumber(result[1]) >= 18 and tonumber(result[1]) < 20 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(256.224945, 10.0014305, 7402.05225, -0.86680156, -0.285385847, -0.408913255, 0, 0.820035219, -0.57231313, 0.498653352, -0.496081918, -0.710807681)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 20 and tonumber(result[1]) < 23 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(-43350.9219, 487.257751, 2705.42944, -0.745072305, -0.331525415, -0.578755736, 0, 0.867720962, -0.497051716, 0.756593585, -0.387542158, -0.646514833)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 23 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(280.220398, 10.0163631, 7398.78711, -0.99949348, 0.0149384635, 0.028100336, 9.31322464e-10, 0.882983506, -0.469404191, -0.0318243057, -0.469166428, -0.882536292)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 0 and tonumber(result[1]) < 2 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(187.110519, 311.094543, 7251.67285, -0.983385324, 0.120902099, 0.135410622, -7.4505806e-09, 0.745938301, -0.666015029, -0.181530595, -0.654949427, -0.733544707)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 2 and tonumber(result[1]) <= 5 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                
                                                workspace.CurrentCamera.CFrame = CFrame.new(17.9850445, 541.176575, 6902.08154, -0.866957009, 0.111039586, 0.485855788, 0, 0.974864244, -0.222799659, -0.498383105, -0.193157732, -0.845165253)
                                                load_tag = true
                                            end
                                            if load_tag then
                                                wait(1)
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                wait(1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                wait(17)
                                                for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                                    if v.ClassName == 'MeshPart' and v.Name == 'Part' and v.Transparency == 0 then
                                                        repeat wait(.2)
                                                            TP(v.CFrame)
                                                            wait(0.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(0.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                        until v.Transparency == 1
                                                        wait(0.5)
                                                        if Evo_Race_V3_H and Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") == true then
                                                            Pull_Lever_H = true
                                                            Pull_Lever_S:Set('🕹️ Pull Lever: ✅ ')
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        TP(pointer)
                                    end
                                end
                            elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                if Auto_Pull_Lever_Hop then
                                    HopLowServer()
                                    wait(250)
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        TleP = true
                        wait(50)
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Mirror_Fractal_Hop then
                    if Three_World then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                            EquipWeapon('Red Key')
                            TP(CFrame.new(-2681.51099, 64.3663483, -12852.7773))
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist","Check") == true then
                                Auto_Mirror_Fractal_Hop = false
                            end
                        elseif game.Workspace.Enemies:FindFirstChild('Dough King') or game.ReplicatedStorage:FindFirstChild('Dough King') then
                            if game.Workspace.Enemies:FindFirstChild('Dough King') then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'Dough King' and v.Humanoid.Health > 0 then
                                        Attack = true
                                        repeat wait(.1)
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,-30,0))
                                            EquipWeapon(Weapon)
                                        until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Mirror_Fractal_Hop
                                        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
                                            if v.Type == 'Material' then
                                                if v.Name == 'Mirror Fractal' then
                                                    Mirror_Fractal_H = true
                                                end
                                            end
                                        end
                                        Attack = false
                                    end
                                end
                            elseif game.ReplicatedStorage:FindFirstChild('Dough King') then
                                TP(game.ReplicatedStorage:FindFirstChild('Dough King').HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude >= 1800 then
                                repeat wait()
                                    TP(CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375))
                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude <= 3
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude < 1800 then
                                Monster = nil
                                for i=1500,0,-300 do
                                    GetMonster(i)
                                end
                                if Monster ~= nil and Monster.Humanoid.Health > 0 then
                                    PosMon_X = Monster.HumanoidRootPart.CFrame
                                    StatrMagnet = true
                                    Attack = true
                                    local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                                    repeat wait(.05)
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                        local percent = (health / maxhealth) * 100
                                        if percent <= 50 then
                                            repeat wait(.2)
                                                local health = game.Players.LocalPlayer.Character.Humanoid.Health
                                                local percent = (health / maxhealth) * 100
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,500,0)
                                            until percent >= 55 or not v.Parent or v.Health.Value <= 0 or not Auto_Mirror_Fractal_Hop
                                        end
                                        TP(Monster.HumanoidRootPart.CFrame*CFrame.new(0,-17,0))
                                        EquipWeapon(Weapon)
                                    until not Monster.Parent or Monster.Humanoid.Health <= 0 or not Auto_Mirror_Fractal_Hop
                                    StatrMagnet = false
                                    Attack = false
                                    local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
                                    if Lp == 'nil' or Lp == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                                    end
                                elseif Monster == nil then
                                    for i=1500,0,-300 do
                                        GetMonster(i)
                                    end
                                    if Monster == nil then
                                        TP(CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375))
                                    end
                                end
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            if CheckItem('Conjured Cocoa') >= 10 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                            elseif CheckItem('Conjured Cocoa') < 10 then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude >= 1800 then
                                    repeat wait()
                                        TP(CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375))
                                    until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude <= 3
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude < 1800 then
                                    Monster = nil
                                    for i=1500,0,-300 do
                                        GetMonster(i)
                                    end
                                    if Monster ~= nil and Monster.Humanoid.Health > 0 then
                                        PosMon_X = Monster.HumanoidRootPart.CFrame
                                        StatrMagnet = true
                                        Attack = true
                                        repeat wait()
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            TP(Monster.HumanoidRootPart.CFrame*CFrame.new(0,-17,0))
                                            EquipWeapon(Weapon)
                                        until not Monster.Parent or Monster.Humanoid.Health <= 0 or not Auto_Mirror_Fractal_Hop
                                        StatrMagnet = false
                                        Attack = false
                                    elseif Monster == nil then
                                        for i=1500,0,-300 do
                                            GetMonster(i)
                                        end
                                        if Monster == nil then
                                            TP(CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375))
                                        end
                                    end
                                end
                            end	
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            local Select_Farm = nil
                            if game.Workspace.Enemies:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Deandre") then
                                Select_Farm = 'Deandre'
                            end
                            if game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Diablo") then
                                Select_Farm = 'Diablo'
                            end
                            if game.Workspace.Enemies:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Urban") then
                                Select_Farm = 'Urban'
                            end
                            if Select_Farm == nil then
                                wait(2)
                                if game.Workspace.Enemies:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Deandre") then
                                    Select_Farm = 'Deandre'
                                end
                                if game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Diablo") then
                                    Select_Farm = 'Diablo'
                                end
                                if game.Workspace.Enemies:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Urban") then
                                    Select_Farm = 'Urban'
                                end
                                if Select_Farm == nil then
                                    HopLowServer()
                                    wait(300)
                                end
                            else
                                if game.Workspace.Enemies:FindFirstChild(Select_Farm) then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == Select_Farm and v.Humanoid.Health > 0 then
                                            Attack = true
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                EquipWeapon(Weapon)
                                                TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                            until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Mirror_Fractal_Hop
                                            Attack = false
                                            wait(1)
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild(Select_Farm) then
                                    TPX(game.ReplicatedStorage:FindFirstChild(Select_Farm).HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        wait(200)
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Valkyrie Helm
    spawn(function()
        while wait() do
            if _G.Setting['Auto Valkyrie Helm + Hop'] then
                pcall(function()
                    if Three_World then
                        if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') or game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
                            if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'rip_indra True Form' and v.Humanoid.Health > 0 then
                                        Attack = true
                                        repeat wait(.1)
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,-30,0))
                                            EquipWeapon(Weapon)
                                        until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Valkyrie Helm + Hop']
                                        Attack = false
                                    end
                                end
                            elseif game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
                                TP(game.ReplicatedStorage:FindFirstChild('rip_indra True Form').HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            Oyster_H = false
                            Hot_pink_H = false
                            Really_red_H = false
                            for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' and tostring(v.Part.BrickColor) == 'Lime green' then
                                    Oyster_H = true
                                end
                            end
                            for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' and tostring(v.Part.BrickColor) == 'Lime green' then
                                    Hot_pink_H = true
                                end
                            end
                            for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' and tostring(v.Part.BrickColor) == 'Lime green' then
                                    Really_red_H = true
                                end
                            end
                            if Snow_White and not Oyster_H then
                                for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' then
                                        if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                                            wait(1)
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                            until  tostring(v.Part.BrickColor) == 'Lime green'
                                            Oyster_H = true
                                        end
                                    end
                                end
                            end 
                            if Pure_Red_H and not Really_red_H then
                                for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' then
                                        if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                                            wait(1)
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                            until  tostring(v.Part.BrickColor) == 'Lime green'
                                            Really_red_H = true
                                        end
                                    end
                                end
                            end 
                            if Winter_Sky and not Hot_pink_H then
                                for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' then
                                        if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                                            wait(1)
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                            until  tostring(v.Part.BrickColor) == 'Lime green'
                                            Hot_pink_H = true
                                        end
                                    end
                                end
                            end
                            EquipWeapon("God's Chalice")
                            TP(CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, 0.952628076, 0.000226983335, 0.999996245, 0.00273981248, -0.952631414, 0.00104948215, -0.304125458))
                            if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
                                TimeLoaderx = tick()
                                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I have God Chalice. I Can't Spawn Boss Admin","All")
                            end
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            local Select_Farm = nil
                            if game.Workspace.Enemies:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Deandre") then
                                Select_Farm = 'Deandre'
                            end
                            if game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Diablo") then
                                Select_Farm = 'Diablo'
                            end
                            if game.Workspace.Enemies:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Urban") then
                                Select_Farm = 'Urban'
                            end
                            if Select_Farm == nil then
                                wait(2)
                                if game.Workspace.Enemies:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Deandre") then
                                    Select_Farm = 'Deandre'
                                end
                                if game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Diablo") then
                                    Select_Farm = 'Diablo'
                                end
                                if game.Workspace.Enemies:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Urban") then
                                    Select_Farm = 'Urban'
                                end
                                if Select_Farm == nil then
                                    HopLowServer()
                                    wait(300)
                                end
                            else
                                if game.Workspace.Enemies:FindFirstChild(Select_Farm) then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == Select_Farm and v.Humanoid.Health > 0 then
                                            Attack = true
                                            repeat wait()
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                EquipWeapon(Weapon)
                                                TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                            until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Valkyrie Helm + Hop']
                                            Attack = false
                                            wait(1)
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild(Select_Farm) then
                                    TPX(game.ReplicatedStorage:FindFirstChild(Select_Farm).HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        wait(200)
                    end
                end)
            else
                wait(2)
            end
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Setting['Auto Buy Legendary Color Haki'] or _G.Setting['Auto Buy Color Legendary Buso Haki'] then
                    if game.Players.LocalPlayer.Data.Fragments.Value >= 7500 then
                        if not Pure_Red_H and string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1"),'Pure Red') or not Snow_White and string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1"),'Snow White') or not Winter_Sky and string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1"),'Winter Sky') then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
                            for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
                                if v.HiddenName == 'Pure Red' and v.Unlocked == true then
                                    Pure_Red_H = true
                                    Pure_Red_S:Set(' 🔴 ฮาคิ (สีแดง) : ✅')
                                elseif v.HiddenName == 'Snow White' and v.Unlocked == true then
                                    Snow_White = true
                                    Snow_White_S:Set(' ⚪ ฮาคิ (สีขาว) : ✅')
                                elseif v.HiddenName == 'Winter Sky' and v.Unlocked == true then
                                    Winter_Sky = true
                                    Winter_Sky_S:Set(' 🌸 ฮาคิ (สีชมพู) : ✅')
                                end
                            end
                        end
                    else
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Your Fragments are not enough.", 
                            Text = tostring(game.Players.LocalPlayer.Data.Fragments.Value)..'/7500',
                            Icon = "rbxassetid://17002601075",
                            Duration = 3
                        })
                    end
                    wait(10)
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Evo Race V3 M
    function GetQuestTo(vu)
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
            if v.Name:find("Chest") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
                Chest_Drop = v
                return
            end
        end
    end
    time_xeg = 0
    function AttackNoCDX()
        pcall(function()
            local plr = game and game.Players.LocalPlayer
            local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
            local CbFw2 = CbFw[2]
            local AC = CbFw2.activeController
            for i = 1, 1 do 
                local cac = {}
                for k,v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70 then
                        table.insert(cac, v.HumanoidRootPart)
                    end
                end
                bladehit = cac
                if #bladehit > 0 then
                    local u8 = debug.getupvalue(AC.attack, 5)
                    local u9 = debug.getupvalue(AC.attack, 6)
                    local u7 = debug.getupvalue(AC.attack, 4)
                    local u10 = debug.getupvalue(AC.attack, 7)
                    local u12 = (u8 * 798405 + u7 * 727595) % u9
                    local u13 = u7 * 798405
                    (function()
                        u12 = (u12 * u9 + u13) % 1099511627776
                        u8 = math.floor(u12 / u9)
                        u7 = u12 - u8 * u9
                    end)()
                    u10 = u10 + 1
                    debug.setupvalue(AC.attack, 5, u8)
                    debug.setupvalue(AC.attack, 6, u9)
                    debug.setupvalue(AC.attack, 4, u7)
                    debug.setupvalue(AC.attack, 7, u10)
                    time_xeg = time_xeg +1
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        if time_xeg >= 50 then
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        end
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
                    end
                end
            end
        end)
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Setting['Evo Race V1 M'] or _G.Setting['Evo Race V2 M'] or _G.Setting['Evo Race V3 M'] then
                    if New_World then
                        if not Evo_Race_V1_H and _G.Setting['Evo Race V1 M'] then
                            if Start_Quest_Evo_V1 then
                                local xp = game:GetService("Lighting").TimeOfDay
                                local result = {}
                                local regex = ("([^%s]+)"):format(":")
                                for each in xp:gmatch(regex) do
                                    table.insert(result, each)
                                end
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 3') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 3') then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                Attack = true
                                                repeat wait(.1)
                                                    EquipWeapon(Weapon)
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                                until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 3') or game.Players.LocalPlayer.Character:FindFirstChild('Flower 3')
                                                Attack = false
                                            end
                                        end
                                    else
                                        TP(CFrame.new(976.467651, 111.174057, 1229.1084))
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 2') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 2') then
                                    if game:GetService("Workspace"):FindFirstChild('Flower2') then
                                        TP(game:GetService("Workspace").Flower2.CFrame)
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").Flower2.Position).Magnitude <= 5 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                        end
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 1') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    TP(game:GetService("Workspace").Flower1.CFrame)
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").Flower1.Position).Magnitude <= 5 and game:GetService("Workspace").Flower1.Transparency == 0 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    end
                                    wait(1)
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                                    wait(1)
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then
                                        Evo_Race_V1_H = true
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                                    Start_Quest_Evo_V1 = true
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif not Evo_Race_V2_H and _G.Setting['Evo Race V2 M'] then
                            if not game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                TPX(CFrame.new(2288.802, 15.1870775, 863.034607))
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil then
                                Evo_Race_V2_H = true
                            end
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    repeat wait()
                                        TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        EquipWeapon(Weapon)
                                    until not v.Parent or v.Humanoid.Health <= 0 
                                end
                            end
                        elseif not Evo_Race_V3_H and _G.Setting['Evo Race V3 M'] then
                            if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
                                if Quest_Start_Evo_Mink_V3 then
                                    Chest_Drop = nil
                                    for i=8000,0,-500 do
                                        GetQuestTo(i)
                                    end
                                    if kpoethkrt == nil then
                                        kpoethkrt = 0
                                    end
                                    if Chest_Drop ~= nil then
                                        repeat wait(.1)
                                            TP(Chest_Drop.CFrame)
                                            if (Chest_Drop.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(0.5)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            end
                                        until not Chest_Drop.Parent or not Chest_Drop
                                        kpoethkrt = kpoethkrt+1
                                    end
                                    if kpoethkrt >= 30 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
                                        wait(1)
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                            Evo_Race_V3_H = true
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
                                                    Evo_Race_V1_H = true
                                                end
                                            end
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
                                                    Evo_Race_V2_H = true
                                                end
                                            end
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                    Evo_Race_V3_H = true
                                                end
                                            end
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Mink_V3 = true
                                    end
                                end
                            elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
                                if Quest_Start_Evo_Human_V3 then
                                    if Kill_Jeremy and Kill_Diamond and Kill_Fajita then
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                            Evo_Race_V3_H = true
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
                                                    Evo_Race_V1_H = true
                                                end
                                            end
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
                                                    Evo_Race_V2_H = true
                                                end
                                            end
                                            if New_World or Three_World then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                    Evo_Race_V3_H = true
                                                end
                                            end 
                                        end
                                    end
                                    if game.Workspace.Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") or game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") then
                                        if game.Workspace.Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == 'Fajita [Lv. 925] [Boss]' and v.Humanoid.Health > 0 then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    repeat wait(.1)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                                        EquipWeapon(Weapon)
                                                    until not v.Parent or v.Humanoid.Health <= 0
                                                    Kill_Diamond = true
                                                end
                                            end
                                        elseif game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") then
                                            TP(game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        end
                                    elseif game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") or game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == 'Jeremy [Lv. 850] [Boss]' and v.Humanoid.Health > 0 then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    repeat wait(.1)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                                        EquipWeapon(Weapon)
                                                    until not v.Parent or v.Humanoid.Health <= 0
                                                    Kill_Jeremy = true
                                                end
                                            end
                                        elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                            TP(game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        end
                                    elseif game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") or game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") then
                                        if game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == 'Diamond [Lv. 750] [Boss]' and v.Humanoid.Health > 0 then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    repeat wait(.1)
                                                        TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                                        EquipWeapon(Weapon)
                                                    until not v.Parent or v.Humanoid.Health <= 0
                                                    Kill_Fajita = true
                                                end
                                            end
                                        elseif game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") then
                                            TP(game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        end
                                    else
                                        TP(CFrame.new(-358.2200927734375, 155.2202911376953, 308.691650390625))
                                        wait(1)
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Human_V3 = true
                                    end
                                end
                            elseif game.Players.LocalPlayer.Data.Race.Value == 'Fishman' then
                                if Quest_Start_Evo_Fishman_V3 then
                                    local check_seabest = false
                                    local check_boat = false
                                    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                        if v:FindFirstChild('HumanoidRootPart') and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 and v.Health.Value > 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                            Weapon = 'Sharkman Karate'
                                            wait(1)
                                            for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                    Weapon2 = vx.Name
                                                end
                                            end
                                            for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
                                                    Weapon2 = vx.Name
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                            Aimbot_On = true
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            repeat wait()
                                                EquipWeapon(Weapon2)
                                                for iy,vy in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
                                                    if vy.Name == Weapon2 then
                                                        check_weapon = true
                                                    end
                                                end
                                            until check_weapon
                                            local check_weapon = false
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon_Z and GetSkill_C(Weapon,'Z') then
                                                        Weapon_Z = true
                                                    end
                                                    if not Weapon_X and GetSkill_C(Weapon,'X') then
                                                        Weapon_X = true
                                                    end
                                                    if not Weapon_C and GetSkill_C(Weapon,'C') then
                                                        Weapon_C = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 
                                            end)
                                            spawn(function()
                                                repeat wait(.2)
                                                    if not Weapon2_Z and GetSkill_C(Weapon2,'Z') then
                                                        Weapon2_Z = true
                                                    end
                                                    if not Weapon2_X and GetSkill_C(Weapon2,'X') then
                                                        Weapon2_X = true
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 
                                            end)
                                            spawn(function()
                                                repeat wait(.5)
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                                        local args = {
                                                            [1] = "Ken",
                                                            [2] = true
                                                        }
            
                                                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                                                    end
                                                until not v.Parent or tonumber(v.Health.Value) <= 0
                                            end)
                                            spawn(function()
                                                repeat wait()
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,5,0))
                                                until not v.Parent or tonumber(v.Health.Value) <= 0 
                                            end)
                                            repeat wait()
                                                if Weapon_Z then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon_Z = false
                                                elseif Weapon_X then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon_X = false
                                                elseif Weapon_C then
                                                    EquipWeapon(Weapon)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    Weapon_C = false
                                                elseif Weapon2_Z then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    Weapon2_Z = false
                                                elseif Weapon2_X then
                                                    EquipWeapon(Weapon2)
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                    wait(.1)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    Weapon2_X = false
                                                end
                                            until not v.Parent or v.Health.Value <= 0 
                                            Aimbot_On = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
                                            wait(1)
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                Evo_Race_V3_H = true 
                                                if New_World or Three_World then
                                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
                                                        Evo_Race_V1_H = true
                                                    end
                                                end
                                                if New_World or Three_World then
                                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
                                                        Evo_Race_V2_H = true
                                                    end
                                                end
                                                if New_World or Three_World then
                                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                        Evo_Race_V3_H = true
                                                    end
                                                end 
                                            end
                                        end 
                                    end
                                    if not check_seabest then
                                        for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                            if v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                                                check_boat = true
                                                if (Vector3.new(3017.20068359375, -4.25, -2686.33251953125)-v.VehicleSeat.Position).Magnitude >= 30 then
                                                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then	
                                                        TPBoat(CFrame.new(3017.20068359375, -4.25, -2686.33251953125),v.VehicleSeat,230)
                                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude >= 10 then
                                                        Boat = nil
                                                        TP(v.VehicleSeat.CFrame)
                                                    else
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame*CFrame.new(0,2,0)
                                                        wait(1)
                                                    end
                                                else
                                                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then	
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                                                        wait(1)
                                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude >= 10 then
                                                        TP(v.VehicleSeat.CFrame)
                                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude >= 3000 then
                                                        v:Destroy()
                                                        check_boat = false
                                                    else
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame*CFrame.new(0,2,0)
                                                        wait(1)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    if not check_boat and not check_seabest then
                                        TP(CFrame.new(-1967.2530517578125, 9.2692289352417, -2579.33154296875))
                                        if (Vector3.new(-1967.2530517578125, 9.2692289352417, -2579.33154296875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBrigade")
                                            wait(1)
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Fishman_V3 = true
                                    end
                                end
                            elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
                                if Quest_Start_Evo_Skypiea_V3 then
                                    local select_attack = nil
                                    for i,v in pairs(game.Players:GetChildren()) do
                                        if v:FindFirstChild('Data') and v.Name ~= 'Bitx' and v.Data.Race.Value == 'Skypiea' and v.Name ~= tostring(game.Players.LocalPlayer.Name) then
                                            select_attack = v.Name
                                            v.Name = 'Bitx'
                                        end
                                    end
                                    if select_attack == nil then
                                    else
                                        for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                            if v.Name == select_attack then
                                                AttackPlayers = v.Name
                                                time_xeg = 0
                                                Attack_FaX = true
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    RandomFarm = math.random(1,5)
                                                    if RandomFarm == 1 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                                        AttackNoCDX()
                                                    elseif RandomFarm == 2 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35))
                                                        AttackNoCDX()
                                                    elseif RandomFarm == 3 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -35))
                                                        AttackNoCDX()
                                                    elseif RandomFarm == 4 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0))
                                                        AttackNoCDX()
                                                    elseif RandomFarm == 5 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(-35, 1, 0))
                                                        AttackNoCDX()
                                                    else
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                                        AttackNoCDX()
                                                    end
                                                    EquipWeapon(Weapon)
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                    end
                                                until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay')
                                                Attack_FaX = false
                                            end
                                        end
                                    end
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                        Evo_Race_V3_H = true 
                                        if New_World or Three_World then
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
                                                Evo_Race_V1_H = true
                                            end
                                        end
                                        if New_World or Three_World then
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
                                                Evo_Race_V2_H = true
                                            end
                                        end
                                        if New_World or Three_World then
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                Evo_Race_V3_H = true
                                            end
                                        end 
                                    end
                                    TP(CFrame.new(638.43811, 71.769989, 918.282898))
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                    end
                                    if not Evo_Race_V3_H then
                                        local select_attack = nil
                                        for i,v in pairs(game.Players:GetChildren()) do
                                            if v:FindFirstChild('Data') and v.Name ~= 'Bitx' and v.Data.Race.Value == 'Skypiea' and v.Name ~= tostring(game.Players.LocalPlayer.Name) then
                                                select_attack = v.Name
                                                v.Name = 'Bitx'
                                            end
                                        end
                                        if select_attack == nil then
                                            HopLowServer()
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Skypiea_V3 = true
                                    end
                                end
                            elseif game.Players.LocalPlayer.Data.Race.Value == 'Ghoul' then
                                --[[
                                    if Quest_Start_Evo_Skypiea_V3 then
                                    if not get_player_banned then 
                                        get_player_banned = {''}
                                    end
                                    for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                        if v.Level.Value >= 750 and not table.find(get_player_banned,v.Name) then
                                            time_delay = 150
                                            time_all_p = 0
                                            AttackPlayers = result[2]
                                            Farm_P_ATTK = true
                                            repeat wait(.1)
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                RandomFarm = math.random(1,5)
                                                if RandomFarm == 1 then
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                                elseif RandomFarm == 2 then
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35))
                                                elseif RandomFarm == 3 then
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -35))
                                                elseif RandomFarm == 4 then
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0))
                                                elseif RandomFarm == 5 then
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(-35, 1, 0))
                                                else
                                                    TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
                                                end
                                                EquipWeapon(Weapon)
                                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                end
                                                if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                                                    time_all_p = 0
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay')
                                            if game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay') then
                                                table.insert(get_player_banned,v.Name)
                                            end
                                            AttackPlayers = 'None'
                                            Farm_P_ATTK = false
                                            if not v.Parent or v.Humanoid.Health <= 0 then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
                                                wait(1)
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
                                                    Evo_Race_V3_H = true 
                                                end
                                            end
                                        end
                                    end
                                    TP(CFrame.new(638.43811, 71.769989, 918.282898))
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                    end
                                    if not Evo_Race_V3_H then
                                        if #get_player_banned >= 9 then
                                            HopLowServer()
                                            wait(50)
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Skypiea_V3 = true
                                    end
                                end
                                ]]
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        wait(50)
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Setting['Auto Cybrog'] then
                    if New_World then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer","Check") == nil then
                            if game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') or game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') then
                                EquipWeapon('Fist of Darkness')
                                fireclickdetector(game.workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector, 1)
                            else
                                if chest_chane == nil then
                                    chest_chane = 0
                                    Chest_Value:Set('จำนวนกล่อง: 0/'..Chest_Order)
                                end 
                                if chest_chane >= Chest_Order then
                                    HopLowServer()
                                    wait(250)
                                elseif chest_chane < Chest_Order then
                                    Chest_Drop = nil
                                    for i = 10000,0,-500 do
                                        Get_Chest(i)
                                    end
                                    if Chest_Drop ~= nil then
                                        repeat wait(.1)
                                            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(.2)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            end 
                                            TP(Chest_Drop.CFrame)
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            if (Chest_Drop.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                wait(.2)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                            end
                                        until not Chest_Drop.Parent or not Chest_Drop
                                        chest_chane = chest_chane+1
                                        Chest_Value:Set('จำนวนกล่อง: '..chest_chane..'/'..Chest_Order)
                                    else
                                        TP(CFrame.new(638.43811, 151.769989, 918.282898))
                                    end
                                end
                            end 
                        else
                            if game.Players.LocalPlayer.Backpack:FindFirstChild('Core Brain') or game.Players.LocalPlayer.Character:FindFirstChild('Core Brain') then
                                local args = {
                                    [1] = "CyborgTrainer",
                                    [2] = "Buy"
                                }
                            
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif game.Workspace.Enemies:FindFirstChild("Order") or game.ReplicatedStorage:FindFirstChild("Order") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == 'Order' and v.Humanoid.Health > 0 then
                                        Attack = true
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,40,0))
                                        until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Cybrog']
                                        Attack = false
                                        wait(1)
                                    end
                                end
                            elseif not game.Workspace.Enemies:FindFirstChild("Order") and not game.ReplicatedStorage:FindFirstChild("Order") then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") then
                                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector, 1)
                                    local time_add = 0
                                    repeat wait(1)
                                        time_add = time_add+1
                                    until time_add >= 10 or game.Workspace.Enemies:FindFirstChild("Order") or game.ReplicatedStorage:FindFirstChild("Order")
                                elseif New_World then
                                    local args = {
                                        [1] = "BlackbeardReward",
                                        [2] = "Microchip",
                                        [3] = "2"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    wait(1)
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        wait(20)
                    end
                else
                    wait(3)
                end
            end)
        end
    end)
    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Setting['Auto Farm Cursed Dual Katana (One Click + Hop Server)'] then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor") == 'opened' then
                        local CheckQuest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")
                        if CheckQuest['Good'] == 0 or CheckQuest['Good'] == -3 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 3/10')
                            CDK_Q_S_C = 3
                            if CheckQuest['Good'] == 0 then
                                GetQuest('Good')
                            elseif CheckQuest['Good'] == -3 then
                                repeat wait()
                                    TP(CFrame.new(-4600.37, 15.1245, -2881.18))
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4600.37, 15.1245, -2881.18)).Magnitude <= 3 then
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                        wait(0.5)
                                        Q_Boat_1 = true
                                    end 
                                until Q_Boat_1
                                repeat wait()
                                    TP(CFrame.new(-2068.63, 3.37222, -9887.08))
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2068.63, 3.37222, -9887.08)).Magnitude <= 3 then
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                        wait(0.5)
                                        Q_Boat_2 = true
                                    end 
                                until Q_Boat_2
                                repeat wait()
                                    TP(CFrame.new(-9531.19, 5.91675, -8377.75))
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9531.19, 5.91675, -8377.75)).Magnitude <= 3 then
                                        wait(1)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                                        wait(0.5)
                                        Q_Boat_3 = true
                                    end 
                                until Q_Boat_3
                                Q_Boat_1 = false
                                Q_Boat_2 = false
                                Q_Boat_3 = false
                            end
                        elseif CheckQuest['Evil'] == 0 or CheckQuest['Evil'] == -3 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 4/10')
                            CDK_Q_S_C = 4
                            if CheckQuest['Evil'] == 0 then
                                GetQuest('Evil')
                            elseif CheckQuest['Evil'] == -3 then
                                Stop_Fast_Attack = true
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild('HumanoidRootPart') and (v.HumanoidRootPart.Position-Vector3.new(-13347.6982, 332.378143, -7652.27783)).Magnitude > 10 then
                                        v.HumanoidRootPart.CFrame = CFrame.new(-13347.6982, 332.378143, -7652.27783)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    end
                                end
                                TPX(CFrame.new(-13347.6982, 332.378143, -7652.27783, -0.97929436, 4.50812898e-08, -0.202441484, 4.58302409e-08, 1, 9.8789521e-10, 0.202441484, -8.31050162e-09, -0.97929436))
                            end
                        elseif CheckQuest['Evil'] == 1 or CheckQuest['Evil'] == -4 then
                            Stop_Fast_Attack = false
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 5/10')
                            CDK_Q_S_C = 5
                            if CheckQuest['Evil'] == 1 then
                                GetQuest('Evil')
                            elseif CheckQuest['Evil'] == -4 then
                                if game:GetService("Players").LocalPlayer:FindFirstChild('QuestHaze') then
                                    if Quest_Kill == nil then
                                        for i,v in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                            if tonumber(v.Value) > 0 and Quest_Kill == nil then
                                                SelectMonster = v.Name
                                                CFrameMon = nil
                                                CheckLevel2()
                                                if CFrameMon ~= nil then
                                                    Quest_Kill = v.Name
                                                end
                                            end
                                        end
                                    elseif game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill) and tonumber(game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill).Value) <= 0 then
                                        Quest_Kill = nil
                                    elseif game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill) and tonumber(game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill).Value) > 0 then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v:FindFirstChild('HazeESP') then
                                                repeat wait(.1)
                                                    Click()
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
                                                    EquipWeapon(Weapon)
                                                until not v.Parent or v.Humanoid.Health <= 0 
                                            end
                                        end
                                        TPX(CFrameMon)
                                    else
                                        Quest_Kill = nil
                                    end
                                end
                            end
                        elseif CheckQuest['Good'] == 1 or CheckQuest['Good'] == -4 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 6/10')
                            CDK_Q_S_C = 6
                            if CheckQuest['Good'] == 1 then
                                GetQuest('Good')
                            elseif CheckQuest['Good'] == -4 then
                                TPX(CFrame.new(-5543.08056640625, 313.7655029296875, -2969.484619140625))
                                if (Vector3.new(-5543.08056640625, 313.7655029296875, -2969.484619140625)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                                            repeat wait(.3)
                                                Click()
                                                EquipWeapon(Weapon)
                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                            until not v.Parent or v.Humanoid.Health <= 0 
                                        end
                                    end
                                end
                            end
                        elseif CheckQuest['Good'] == 2 or CheckQuest['Good'] == -5 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 7/10')
                            CDK_Q_S_C = 7
                            Cake_Quest = true
                            if CheckQuest['Good'] == 2 then
                                GetQuest('Good')
                            elseif CheckQuest['Good'] == -5 then
                                if not Kill_Boss_Cake then
                                    if game:GetService("Workspace").Enemies:FindFirstChild('Cake Queen') then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == 'Cake Queen' and v.Humanoid.Health > 0 and not Kill_Boss_Cake then
                                                repeat wait(.3)
                                                    Click()
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    EquipWeapon(Weapon)
                                                until not v.Parent or v.Humanoid.Health <= 0
                                                Kill_Boss_Cake = true
                                            end
                                        end
                                    else
                                        TPX(CFrame.new(-714.643066, 381.565613, -11021.0566))
                                    end
                                else
                                    if game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
                                        if not Ceyma_HeavenlyDimension then
                                            repeat wait(.1)
                                                TP(game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot)
                                            until (game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
                                            wait(1)
                                            Ceyma_HeavenlyDimension = true
                                        elseif Ceyma_HeavenlyDimension then
                                            EquipWeapon(Weapon)
                                            if game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and (game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot.Position-v.HumanoidRootPart.Position).Magnitude <= 1000 then
                                                        if v.Humanoid.Health > 0 then
                                                            repeat wait()
                                                                Click()
                                                                TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                                EquipWeapon(Weapon)
                                                            until not v.Parent or v.Humanoid.Health <= 0
                                                        end
                                                    end
                                                end
                                            elseif not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                GetTorch('Torch1')
                                                if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                    GetTorch('Torch2')
                                                    if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                        GetTorch('Torch3')
                                                        if not game.Workspace.Enemies:FindFirstChildOfClass('Model') and game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
                                                            game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                            wait(1)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    elseif not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
                                        wait(5)
                                        if not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
                                            Kill_Boss_Cake = false
                                        end
                                    end
                                end
                            end
                        elseif CheckQuest['Evil'] == 2 or CheckQuest['Evil'] == -5 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 8/10')
                            CDK_Q_S_C = 8
                            if CheckQuest['Evil'] == 2 then
                                GetQuest('Evil')
                            elseif CheckQuest['Evil'] == -5 then
                                if game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
                                    if (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
                                        repeat wait(.1)
                                            TP(game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot)
                                        until (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                                        wait(1)
                                    elseif (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
                                        EquipWeapon(Weapon)
                                        if game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-v.HumanoidRootPart.Position).Magnitude <= 1000 then
                                                    if v.Humanoid.Health > 0 then
                                                        repeat wait()
                                                            Click()
                                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                            EquipWeapon(Weapon)
                                                        until not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                end
                                            end
                                        elseif not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                            GetTorchX('Torch1')
                                            if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                GetTorchX('Torch2')
                                                if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
                                                    GetTorchX('Torch3')
                                                    if not game.Workspace.Enemies:FindFirstChildOfClass('Model') and game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
                                                        game:GetService("Workspace").Map.HellDimension.Exit.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                        wait(1)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                elseif not game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
                                    if game.Workspace.Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                        Stop_Fast_Attack = true
                                        if not game.Workspace.Enemies:FindFirstChild("Soul Reaper") and game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                            repeat wait(.2)
                                                TP(game.ReplicatedStorage:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                            until game.Workspace.Enemies:FindFirstChild("Soul Reaper")
                                            wait(1)
                                        end
                                        if game.Workspace.Enemies:FindFirstChild("Soul Reaper") then
                                            TP(game.Workspace.Enemies:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,0,2))
                                            wait(1)
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") > 0 and CheckItem('Bones') > 500 then
                                        repeat wait(.2)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                        until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") == 0
                                        wait(1)
                                        if not Dragon_Talon_Q then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
                                                Set_Status_X(' Status : Use Fire Essence')
                                                repeat 
                                                    EquipWeapon("Fire Essence")
                                                    wait(.5)
                                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                                until not game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
                                                if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'heart') then
                                                    Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
                                                    Dragon_Talon_Q = true
                                                end
                                            end
                                        end
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                            Set_Status_X(' Status : Use Hallow Essence')
                                            repeat wait(1)
                                                EquipWeapon("Hallow Essence")
                                                TP(CFrame.new(-8932.86, 143.258, 6063.31))
                                            until not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence")
                                        end
                                    elseif not game.Workspace.Enemies:FindFirstChild("Soul Reaper") and not game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                        if Check_Raid and not Old_World and CheckItem('Bones') >= 500 then
                                            if Quest_Dough_Awaken_EX and game.Players.LocalPlayer.Data.Fragments.Value >= 6000 then
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
                                                    Raid_Dough_Down = true
                                                    List.Raid = true
                                                    wait(.5)
                                                elseif _G.Quest['Fast Dough Awaken'] then
                                                    if not iojdijfgo and GetFruitOneM() == true then
                                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
                                                            Raid_Dough_Down = true
                                                            List.Raid = true
                                                            wait(.5)
                                                        end
                                                    elseif not iojdijfgo then
                                                        iojdijfgo = true
                                                    end
                                                end
                                            else
                                                if game.Players.LocalPlayer.Data.Level.Value >= 1100 then
                                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') and not game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
                                                        if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then 
                                                            Select_Map = "Dark"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
                                                            Select_Map = "Sand"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
                                                            Select_Map = "Magma"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
                                                            Select_Map = "Rumble"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
                                                            Select_Map = "Flame"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
                                                            Select_Map = "Ice"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
                                                            Select_Map = "Light"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
                                                            Select_Map = "String"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
                                                            Select_Map = "Quake"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
                                                            Select_Map = "Buddha"
                                                        else
                                                            Select_Map = "Flame"
                                                        end
                                                        if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
                                                            List.Raid = true
                                                            wait(.5)
                                                        end
                                                    end
                                                    if not List.Raid then
                                                        GetFruit()
                                                        if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then
                                                            Select_Map = "Dark"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
                                                            Select_Map = "Sand"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
                                                            Select_Map = "Magma"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
                                                            Select_Map = "Rumble"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
                                                            Select_Map = "Flame"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
                                                            Select_Map = "Ice"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
                                                            Select_Map = "Light"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
                                                            Select_Map = "String"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
                                                            Select_Map = "Quake"
                                                        elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
                                                            Select_Map = "Buddha"
                                                        else
                                                            Select_Map = "Flame"
                                                        end
                                                        if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
                                                            List.Raid = true
                                                            wait(.5)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if not List.Raid then
                                            if List.Fruit and _G.Main['Bring Fruit'] and not Koko_Quest and Quest_Istand ~= 'God Dough Awaken' and not Not_Farm_Boss and not game:GetService("Workspace").Map:FindFirstChild('HellDimension') and not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
                                                Set_Status_X(' Status : Bring Fruit')
                                                iojdijfgo = false
                                                for i,v in pairs(game.Workspace:GetChildren()) do
                                                    if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') and not List.Raid then
                                                        repeat wait(.1)
                                                            if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2550 then
                                                                TPX(v.Handle.CFrame*CFrame.new(0,0,80))
                                                            elseif (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                                                TPZ(v.Handle.CFrame)
                                                            end
                                                        until (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                                                        wait(3)
                                                        for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                                            if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
                                                                result = {} 
                                                                local regex = ("([^%s]+)"):format(" ")
                                                                for each in v2.Name:gmatch(regex) do
                                                                    table.insert(result, each)
                                                                end
                                                                local x = result[1].."-"..result[1]
                                                                if v2.Name == 'Bird: Phoenix Fruit' then
                                                                    x = 'Bird-Bird: Phoenix' 
                                                                end
                                                                if v2.Name == "Bird: Falcon Fruit" then
                                                                    x = "Bird-Bird: Falcon"
                                                                end
                                                                local time_check = 0
                                                                repeat wait(.1)
                                                                    EquipWeapon(v2.Name)
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
                                                                    wait(.5)
                                                                    time_check = time_check+1
                                                                until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
                                                                if time_check >= 3 then
                                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
                                                                        if New_World or Three_World then
                                                                            if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
                                                                                List.Raid = true
                                                                                Buy_Chip()
                                                                            else
                                                                                v2:Destroy()
                                                                            end
                                                                        elseif Old_World then
                                                                            v2:Destroy()
                                                                            wait(0.5)
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                        for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                                            if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
                                                                result = {} 
                                                                local regex = ("([^%s]+)"):format(" ")
                                                                for each in v2.Name:gmatch(regex) do
                                                                    table.insert(result, each)
                                                                end
                                                                local x = result[1].."-"..result[1]
                                                                if v2.Name == 'Bird: Phoenix Fruit' then
                                                                    x = 'Bird-Bird: Phoenix' 
                                                                end
                                                                if v2.Name == "Bird: Falcon Fruit" then
                                                                    x = "Bird-Bird: Falcon"
                                                                end
                                                                local time_check = 0
                                                                repeat wait(.1)
                                                                    EquipWeapon(v2.Name)
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
                                                                    wait(1)
                                                                    time_check = time_check+1
                                                                until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
                                                                if time_check >= 3 then
                                                                    if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
                                                                        if New_World or Three_World then
                                                                            if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
                                                                                List.Raid = true
                                                                                Buy_Chip()
                                                                            else
                                                                                v2:Destroy()
                                                                            end
                                                                        elseif Old_World then
                                                                            v2:Destroy()
                                                                            wait(0.5)
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                        v:Destroy()
                                                    end
                                                end
                                                List.Fruit = false
                                                for i,v in pairs(game.Workspace:GetChildren()) do
                                                    if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
                                                        List.Fruit = true
                                                    end
                                                end
                                                -- Eat Fruit
                                                if game.Players.LocalPlayer.Data.Level.Value >= 1100 and game.Players.LocalPlayer.Data.DevilFruit.Value == '' then
                                                    Eat_Fruit = nil
                                                    Fruit_Check = nil
                                                    local fruitx = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                                                    for i,v in next,fruitx do
                                                        Check_Fruit(v.Name)
                                                    end
                                                    if Fruit_Check ~= nil then
                                                        result = {}
                                                        local regex = ("([^%s]+)"):format("-")
                                                        local xp = Fruit_Check
                                                        for each in xp:gmatch(regex) do
                                                            table.insert(result, each)
                                                        end
                                                        Eat_Fruit = result[2] .. " Fruit"
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",Fruit_Check)
                                                        if Eat_Fruit ~= nil then
                                                            wait(.5)
                                                            if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
                                                                repeat wait()
                                                                    EquipWeapon(Eat_Fruit)
                                                                until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
                                                                if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
                                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                                                                    wait(3)
                                                                    Eat_Fruitx = true
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            Stop_Fast_Attack = false
                                            Start_Farm_Bone = true
                                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude >= 3000 then
                                                repeat wait()
                                                    TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
                                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude <= 3
                                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude < 3000 then
                                                Monster = nil
                                                for i=1500,0,-300 do
                                                    GetMonster(i)
                                                end
                                                if Monster ~= nil and Monster.Humanoid.Health > 0 then
                                                    PosMon_X = Monster.HumanoidRootPart.CFrame
                                                    StatrMagnet = true
                                                    repeat wait()
                                                        TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                                        EquipWeapon(Weapon)
                                                    until not Monster.Parent or Monster.Humanoid.Health <= 0
                                                    StatrMagnet = false
                                                elseif Monster == nil then
                                                    for i=1500,0,-300 do
                                                        GetMonster(i)
                                                    end
                                                    if Monster == nil then
                                                        TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
                                                    end
                                                end
                                            end
                                            Start_Farm_Bone = false
                                        end
                                    end
                                end
                            end
                        elseif CheckQuest['Evil'] == 3 then
                            repeat wait()
                                TP(CFrame.new(-12392.2637, 603.319763, -6503.27832))
                            until (Vector3.new(-12392.2637, 603.319763, -6503.27832)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
                            if game:GetService("CoreGui"):FindFirstChild("     ") then
                                game:GetService("CoreGui")["     "].Enabled = false
                            end	
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                            wait(1)
                            click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
                        elseif CheckQuest['Good'] == 3 then
                            repeat wait()
                                TP(CFrame.new(-12392.5068, 603.319763, -6596.00586))
                            until (Vector3.new(-12392.5068, 603.319763, -6596.00586)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
                            if game:GetService("CoreGui"):FindFirstChild("     ") then
                                game:GetService("CoreGui")["     "].Enabled = false
                            end	
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                            wait(1)
                            click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
                        elseif CheckQuest['Good'] == 4 and CheckQuest['Evil'] == 4 and game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.Position.Y > 584 then
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 9/10')
                            EquipWeapon(Weapon)
                            repeat wait(.1)
                                TP(CFrame.new(-12359.1719, 603.319702, -6550.59717, 0.481593847, 0, -0.87639451, 0, 1, 0, 0.87639451, 0, 0.481593847))
                            until (Vector3.new(-12359.1719, 603.319702, -6550.59717)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                            if game:GetService("CoreGui"):FindFirstChild("     ") then
                                game:GetService("CoreGui")["     "].Enabled = false
                            end	
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                            wait(1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                            wait(1)
                            click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
                        elseif game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.Position.Y <= 584 then
                            if game:GetService("CoreGui"):FindFirstChild("     ") then
                                game:GetService("CoreGui")["     "].Enabled = true
                            end	
                            local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                            for i,v in pairs(Inventory) do
                                if v.Type == "Sword" then
                                    if v.Name == 'Cursed Dual Katana' then
                                        Cursed_Dual_Katana_H = true
                                        List.Quest = false
                                    end
                                end
                            end
                            Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 10/10')
                            CDK_Q_S_C = 10
                            if (Vector3.new(-12297.5605, 598.726013, -6532.96436)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                repeat wait()
                                    TPX(CFrame.new(-12379.1406, 601.433167, -6543.60742))
                                until Boss_Extant or (Vector3.new(-12379.1406, 601.433167, -6543.60742)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                                repeat wait()
                                    TPZX(CFrame.new(-12330.197265625, 603.31982421875, -6549.11865234375))
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Cursed Skeleton Boss" then
                                            Boss_Extant = true
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,30,0)
                                        end
                                    end
                                until Boss_Extant or (Vector3.new(-12330.197265625, 603.31982421875, -6549.11865234375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 
                                wait(1)
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss" then
                                        repeat wait(.1)
                                            Click()
                                            Get_Item_Inventory('Tushita')
                                            EquipWeapon('Tushita')
                                            TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                        until not v.Parent or v.Humanoid.Health <= 0
                                        for i,v in pairs(Inventory) do
                                            if v.Type == "Sword" then
                                                if v.Name == 'Cursed Dual Katana' then
                                                    Cursed_Dual_Katana_H = true
                                                    List.Quest = false
                                                    CDK_Q_S_C = 11
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif (Vector3.new(-12297.5605, 598.726013, -6532.96436)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                                TPX(CFrame.new(-12297.5605, 598.726013, -6532.96436))
                            end	
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor",true)
                    end
                elseif _G.Setting['Auto Farm Yama (One Click + Hop Server)'] then
                    if TimeLoader == nil or tick() - TimeLoader > 20 then
                        TimeLoader = tick()
                        Elite_Hunter_Value = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") 
                        E_L_H_V:Set('Elite Hunters : '..tostring(Elite_Hunter_Value)..'/30')
                    end
                    if Elite_Hunter_Value >= 30 then
                        if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                            if game.Workspace.Enemies:FindFirstChild("Ghost") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Ghost" and v.Humanoid.Health > 0 then
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        Attack_FaX = true
                                        repeat wait(.1)
                                            EquipWeapon(Weapon)
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,15,0))
                                            Click()
                                        until not v.Parent or v.Humanoid.Health <= 0 
                                    end
                                end
                                Attack_FaX = false
                            elseif game.ReplicatedStorage:FindFirstChild("Ghost") then
                                TPX(game.ReplicatedStorage:FindFirstChild("Ghost").HumanoidRootPart.CFrame)
                            elseif not game.Workspace.Enemies:FindFirstChild("Ghost") and not game.ReplicatedStorage:FindFirstChild("Ghost") then
                                TPX(game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v:IsA('Tool') then
                                        v.Parent = game.Players.LocalPlayer.Backpack
                                    end
                                end
                                fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector, 1)
                                for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                                    _G.Setting['Auto Farm Yama (One Click + Hop Server)'] = false
                                end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') or game.Players.LocalPlayer.Character:FindFirstChild('Yama') then
                                    _G.Setting['Auto Farm Yama (One Click + Hop Server)'] = false
                                end
                            end
                        else
                            TPX(game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                        end
                    else
                        local SelectMonster_X = nil
                        if game.Workspace.Enemies:FindFirstChild('Deandre') or game.ReplicatedStorage:FindFirstChild('Deandre') then
                            SelectMonster_X = 'Deandre'
                        elseif game.Workspace.Enemies:FindFirstChild('Urban') or game.ReplicatedStorage:FindFirstChild('Urban') then
                            SelectMonster_X = 'Urban'
                        elseif game.Workspace.Enemies:FindFirstChild('Diablo') or game.ReplicatedStorage:FindFirstChild('Diablo') then
                            SelectMonster_X = 'Diablo'
                        end
                        if SelectMonster_X == nil then
                            wait(2)
                            if game.Workspace.Enemies:FindFirstChild('Deandre') or game.ReplicatedStorage:FindFirstChild('Deandre') then
                                SelectMonster_X = 'Deandre'
                            elseif game.Workspace.Enemies:FindFirstChild('Urban') or game.ReplicatedStorage:FindFirstChild('Urban') then
                                SelectMonster_X = 'Urban'
                            elseif game.Workspace.Enemies:FindFirstChild('Diablo') or game.ReplicatedStorage:FindFirstChild('Diablo') then
                                SelectMonster_X = 'Diablo'
                            end
                            if SelectMonster_X == nil then
                                HopLowServer()
                                wait(300)
                            end
                        else
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game.Workspace.Enemies:FindFirstChild(SelectMonster_X) then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == SelectMonster_X and v.Humanoid.Health > 0 then
                                            repeat wait(.1)
                                                EquipWeapon(Weapon)
                                                TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                            until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Farm Yama (One Click + Hop Server)']
                                            Elite_Hunter_Value = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") 
                                            E_L_H_V:Set('Elite Hunters : '..tostring(Elite_Hunter_Value)..'/30')
                                        end
                                    end
                                elseif game.ReplicatedStorage:FindFirstChild(SelectMonster_X) then
                                    TPX(game.ReplicatedStorage:FindFirstChild(SelectMonster_X).HumanoidRootPart.CFrame*CFrame.new(0,10,0))
                                end
                            else
                                TPX(CFrame.new(-5417.73828125, 313.781982421875, -2824.616455078125))
                                if (Vector3.new(-5417.73828125, 313.781982421875, -2824.616455078125)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                            end
                        end
                    end 
                elseif _G.Setting['Auto Farm Tushita (One Click + Hop Server)'] then
                    if TimeLoader == nil or tick() - TimeLoader > 20 then
                        TimeLoader = tick()
                        local Q_Tushita = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
                        if Q_Tushita['OpenedDoor'] == false then
                            Quest_Tushita_S:Set('Quest Tushtia : ❌')
                            Quest_Tushita_H = false
                        elseif Q_Tushita['OpenedDoor'] == true then
                            Quest_Tushita_S:Set('Quest Tushtia : ✅')
                            Quest_Tushita_H = true
                        end
                    end
                    if Quest_Tushita_H then
                        if game.Workspace.Enemies:FindFirstChild('Longma') then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == 'Longma' and v.Humanoid.Health > 0 then
                                    repeat wait(.1)
                                        EquipWeapon(Weapon)
                                        TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                    until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Farm Tushita (One Click + Hop Server)']
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild('Longma') then
                            TPX(game.ReplicatedStorage:FindFirstChild('Longma').HumanoidRootPart.CFrame*CFrame.new(0,10,10))
                        elseif not game.Workspace.Enemies:FindFirstChild('Longma') and not game.ReplicatedStorage:FindFirstChild('Longma') then
                            HopLowServer()
                        end
                    elseif not Quest_Tushita_H then
                        if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                                EquipWeapon("Holy Torch")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
                                spawn(function()
                                    repeat wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                        wait(0.3)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") or not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form")
                                end)
                                repeat wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5148.7265625, 141.91177368164062, 910.8010864257812)
                                until game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") or not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form")
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                                    EquipWeapon("Holy Torch")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
                                end
                            elseif not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
                                local Q_Tushita = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
                                if Q_Tushita['OpenedDoor'] == false then
                                    Quest_Tushita_S:Set('Quest Tushtia : ❌')
                                    Quest_Tushita_H = false
                                    HopLowServer()
                                    wait(200)
                                elseif Q_Tushita['OpenedDoor'] == true then
                                    Quest_Tushita_S:Set('Quest Tushtia : ✅')
                                    Quest_Tushita_H = true
                                end
                            end
                        elseif not game.ReplicatedStorage:FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                Oyster_H = false
                                Hot_pink_H = false
                                Really_red_H = false
                                for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' and tostring(v.Part.BrickColor) == 'Lime green' then
                                        Oyster_H = true
                                    end
                                end
                                for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' and tostring(v.Part.BrickColor) == 'Lime green' then
                                        Hot_pink_H = true
                                    end
                                end
                                for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                    if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' and tostring(v.Part.BrickColor) == 'Lime green' then
                                        Really_red_H = true
                                    end
                                end
                                if Snow_White and not Oyster_H then
                                    for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                        if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' then
                                            if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                                                wait(1)
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                                until  tostring(v.Part.BrickColor) == 'Lime green'
                                                Oyster_H = true
                                            end
                                        end
                                    end
                                end 
                                if Pure_Red_H and not Really_red_H then
                                    for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                        if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' then
                                            if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                                                wait(1)
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                                until  tostring(v.Part.BrickColor) == 'Lime green'
                                                Really_red_H = true
                                            end
                                        end
                                    end
                                end 
                                if Winter_Sky and not Hot_pink_H then
                                    for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
                                        if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' then
                                            if tostring(v.Part.BrickColor) ~= 'Lime green' then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                                                wait(1)
                                                repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                                                until  tostring(v.Part.BrickColor) == 'Lime green'
                                                Hot_pink_H = true
                                            end
                                        end
                                    end
                                end
                                EquipWeapon("God's Chalice")
                                TP(CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, 0.952628076, 0.000226983335, 0.999996245, 0.00273981248, -0.952631414, 0.00104948215, -0.304125458))
                                if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
                                    TimeLoaderx = tick()
                                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I have God Chalice. I Can't Spawn Boss Admin","All")
                                end
                            elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                                local SelectMonster_X = nil
                                if game.Workspace.Enemies:FindFirstChild('Deandre') or game.ReplicatedStorage:FindFirstChild('Deandre') then
                                    SelectMonster_X = 'Deandre'
                                elseif game.Workspace.Enemies:FindFirstChild('Urban') or game.ReplicatedStorage:FindFirstChild('Urban') then
                                    SelectMonster_X = 'Urban'
                                elseif game.Workspace.Enemies:FindFirstChild('Diablo') or game.ReplicatedStorage:FindFirstChild('Diablo') then
                                    SelectMonster_X = 'Diablo'
                                end
                                if SelectMonster_X == nil then
                                    wait(2)
                                    if game.Workspace.Enemies:FindFirstChild('Deandre') or game.ReplicatedStorage:FindFirstChild('Deandre') then
                                        SelectMonster_X = 'Deandre'
                                    elseif game.Workspace.Enemies:FindFirstChild('Urban') or game.ReplicatedStorage:FindFirstChild('Urban') then
                                        SelectMonster_X = 'Urban'
                                    elseif game.Workspace.Enemies:FindFirstChild('Diablo') or game.ReplicatedStorage:FindFirstChild('Diablo') then
                                        SelectMonster_X = 'Diablo'
                                    end
                                    if SelectMonster_X == nil then
                                        HopLowServer()
                                        wait(300)
                                    end
                                else
                                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                        if game.Workspace.Enemies:FindFirstChild(SelectMonster_X) then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == SelectMonster_X and v.Humanoid.Health > 0 then
                                                    repeat wait(.1)
                                                        EquipWeapon(Weapon)
                                                        TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
                                                    until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Farm Tushita (One Click + Hop Server)']
                                                    wait(4)
                                                end
                                            end
                                        elseif game.ReplicatedStorage:FindFirstChild(SelectMonster_X) then
                                            TPX(game.ReplicatedStorage:FindFirstChild(SelectMonster_X).HumanoidRootPart.CFrame*CFrame.new(0,10,0))
                                        end
                                    else
                                        TPX(CFrame.new(-5417.73828125, 313.781982421875, -2824.616455078125))
                                        if (Vector3.new(-5417.73828125, 313.781982421875, -2824.616455078125)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Setting['Auto Farm Material'] then
                    if Start_Farm_Material then
                        CheckMaterial(_G.Setting['Select Material']) 
                        if SelectMonster ~= nil then
                            CheckLevel2(true)
                            Material_Value:Set(_G.Setting['Select Material']..' : '..tostring(CheckItem_X(_G.Setting['Select Material'])))
                        end
                        if Ms ~= nil then
                            if (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild('Humanoid') and (CFrameMon.Position-v.HumanoidRootPart.Position).Magnitude <= 1800 then
                                        repeat wait(.1)
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
                                            end
                                            EquipWeapon(Weapon)
                                            TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0),true)
                                        until not v.Parent or v.Humanoid.Health <= 0 or not _G.Setting['Auto Farm Material']
                                    end
                                end
                                Material_Value:Set(_G.Setting['Select Material']..' : '..tostring(CheckItem_X(_G.Setting['Select Material'])))
                            else
                                TPX(CFrameMon,true)
                            end
                        end
                    end
                else
                    wait(2)
                end
            end)
        end
    end)
    -- Close Ui
    if _G.Setting['Close Ui'] then
        if tostring(game:GetService("CoreGui")["Switch Hub"].Main.Size.X) == '0, 0' then
        else
            repeat wait()
                game:service('VirtualInputManager'):SendKeyEvent(true, "RightControl", false, game)
                wait(.5)
                game:service('VirtualInputManager'):SendKeyEvent(false, "RightControl", false, game)
                wait(.5)
            until tostring(game:GetService("CoreGui")["Switch Hub"].Main.Size.X) == '0, 0'
        end
    end
    print('SUc')
    -- Webhook
    function SendFullMoon(vux)
        local Mystic = nil
        local FullMoon_X = nil
        if MysticIsland_S then
            Mystic = "✅ Mystic Island spawn.🌴"  
        else
            Mystic = "❌ Mystic Island not spawn."
        end
    
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            FullMoon_X = tostring("5/5".." | ".."Full Moon 🌕 | "..tostring(game:GetService("Lighting").TimeOfDay))
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            FullMoon_X = tostring("4/5".." | ".."75% | "..tostring(game:GetService("Lighting").TimeOfDay))
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            FullMoon_X = tostring("3/5".." | ".."50% | "..tostring(game:GetService("Lighting").TimeOfDay))
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            FullMoon_X = tostring("2/5".." | ".."25% | "..tostring(game:GetService("Lighting").TimeOfDay))
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            FullMoon_X = tostring("1/5".." | ".."15% | "..tostring(game:GetService("Lighting").TimeOfDay))
        else
            FullMoon_X = tostring("0/5".." | ".."0% | "..tostring(game:GetService("Lighting").TimeOfDay))
        end
        local get_player_x = {}
        for i,v in pairs(game.Players:GetChildren()) do
            if not table.find(get_player_x,v.Name) then
                table.insert(get_player_x,v.Name)
            end
        end
        local url = vux
        local data = {
            ["embeds"] = {
                {
                    ["color"] = tonumber(0xffffff);
                    ["fields"] = {
                        {
                            ["name"] = "Server Id";
                            ["value"] = "```yaml\n"..tostring(game.JobId).."\n```";
                            ["inline"] = false;
                        }, {
                            ["name"] = "Full Moon";
                            ["value"] = "```yaml\n"..FullMoon_X.."\n```";
                            ["inline"] = true};
                        {
                            ["name"] = "Player";
                            ["value"] = "```yaml\n"..tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
                            ["inline"] = true;
                        },
                        {
                            ["name"] = "Mirage Island";
                            ["value"] = "```yaml\n"..tostring(Mystic).."\n```";
                            ["inline"] = false;
                        }
                    };
                    ["description"] = "**Join Script**\n```lua\n"..tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
                    ["author"] = {
                        ["name"] = "Switch Hub (Notification)";
                        ["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
                    };
                    ["thumbnail"] = {
                        ["url"] = "https://pbs.twimg.com/media/FDsZOHhVkAUsFeJ.jpg";
                    };
                    ["footer"] = {
                        ["text"] = "By Switch Hub";
                        ["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
                    };
                    ["timestamp"] = DateTime.now():ToIsoDate()
                }
            },
        }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
    
        local headers = {
            ["content-type"] = "application/json"
        }
        local request = http_request or request or HttpPost 
        local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(R)
    end
    function SendBoss(vux,bossname)
        local get_player_x = {}
        for i,v in pairs(game.Players:GetChildren()) do
            if not table.find(get_player_x,v.Name) then
                table.insert(get_player_x,v.Name)
            end
        end
        local health_x = 100
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == bossname then
                local health = v.Humanoid.Health
                local maxhealth = v.Humanoid.MaxHealth
                local percent = (health / maxhealth) * 100
                health_x = percent
            end
        end
        local xpt = bossname.." | "..tostring(game:GetService("Lighting").TimeOfDay)..' | '..health_x.."%"
        local url = vux
        local data = {
            ["embeds"] = {
                {
                    ["color"] = tonumber(0xffffff);
                    ["fields"] = {
                        {
                            ["name"] = "Server Id";
                            ["value"] = "```yaml\n"..tostring(game.JobId).."\n```";
                            ["inline"] = false;
                        }, {
                            ["name"] = "Boss";
                            ["value"] = "```yaml\n"..xpt.."\n```";
                            ["inline"] = true};
                        {
                            ["name"] = "Player";
                            ["value"] = "```yaml\n"..tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
                            ["inline"] = true;
                        }
                    };
                    ["description"] = "**Join Script**\n```lua\n"..tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
                    ["author"] = {
                        ["name"] = "Switch Hub (Notification)";
                        ["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
                    };
                    ["thumbnail"] = {
                        ["url"] = "https://pbs.twimg.com/media/FDsZOHhVkAUsFeJ.jpg";
                    };
                    ["footer"] = {
                        ["text"] = "By Switch Hub";
                        ["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
                    };
                    ["timestamp"] = DateTime.now():ToIsoDate()
                }
            },
        }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
    
        local headers = {
            ["content-type"] = "application/json"
        }
        local request = http_request or request or HttpPost 
        local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(R)
    end
    if _G.Keep_Job == nil then
        _G.Keep_Job = {}
    end
    if _G.Keep_JobX == nil then
        _G.Keep_JobX = {}
    end
    if Three_World then
        spawn(function()
            while wait(1) do
                pcall(function()
                    if Three_World then
                        MysticIsland_S = false
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            MysticIsland_S = true
                        end
                        FullMoon_S = false
                        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and #game.Players:GetChildren() <= 7 then
                            FullMoon_S = true
                        end
                        if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') or game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
                            if #game.Players:GetChildren() <= 9 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
                                table.insert(_G.Keep_JobX,tostring(game.JobId))
                                SendBoss('https://discord.com/api/webhooks/1221652773091807264/N-tNF6oN_ISWQIkcaveueLDDPUz8erLg0gkga7n2fH1L0GD8FdfdUGs9kDgv_H2eR2Rx','rip_indra True Form')
                            end
                        end
                        if #game.Players:GetChildren() <= 3 then
                            SendFullMoon('https://discord.com/api/webhooks/1221652705513046087/4ur0toVQ-hLOk1ceKZpDql2PBKoCrBGETwy4doN9-a4PfuExB5juZ9zaHxYvTzndiAGS')
                        end
                        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" and #game.Players:GetChildren() <= 9 then
                            local result = {}
                            local x = tostring(game:GetService("Lighting").TimeOfDay)
                            local regex = ("([^%s]+)"):format(":")
                            for each in x:gmatch(regex) do
                                table.insert(result, each)
                            end
                            if tonumber(result[1]) >= 0 and tonumber(result[1]) < 12 then
                                SendFullMoon('https://discord.com/api/webhooks/1221652726337896559/Oh6DerE386fvwmsezJC6g61N9eeEAt5DX0VP6DH6OZn61PE-to82F6lIJoedksEChVpL')
                            end
                        end
                        if FullMoon_S and MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
                            table.insert(_G.Keep_Job,tostring(game.JobId))
                            SendFullMoon('https://discord.com/api/webhooks/1215929211055771708/clo4RKpsZATTpTh1z2QxaZm26SpwcpGanx_Rri7WPvQfrpuXZkGMldMDqHJwDutYFGEQ')
                            return
                        elseif FullMoon_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
                            table.insert(_G.Keep_Job,tostring(game.JobId))
                            SendFullMoon('https://discord.com/api/webhooks/1215929162569617418/eOsglix-5u-gtUDn8wT_BclQuXSflRCT2E3qL9wlJx6eI3umzO2TXCVezCWBwydh-uYR')
                            return
                        elseif MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) then
                            table.insert(_G.Keep_Job,tostring(game.JobId))
                            SendFullMoon('https://discord.com/api/webhooks/1215929078532542535/7ykd5BrmfvV7ewPwZ1rXilB-5u1qOMKBPr8P2eKXpzmGnejQ7hji13V4Et7eV64tACun')
                            return
                        end	
                        wait(10)
                    end
                end)
            end
        end)
    elseif New_World then
        spawn(function()
            while wait(1) do
                pcall(function()
                    if game.Workspace.Enemies:FindFirstChild('Cursed Captain') or game.ReplicatedStorage:FindFirstChild('Cursed Captain') then
                        if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
                            table.insert(_G.Keep_JobX,tostring(game.JobId))
                            SendBoss('https://discord.com/api/webhooks/1221652750186713211/lx8EsPYmqEeswOLC0Mc6B6XkyDd9npXQ7Jq45PFeVjEaNMEWsqSSqwfh3qe5UJINPFhC','Cursed Captain')
                        end
                    end
                    if game.Workspace.Enemies:FindFirstChild('Darkbeard') or game.ReplicatedStorage:FindFirstChild('Darkbeard') then
                        if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
                            table.insert(_G.Keep_JobX,tostring(game.JobId))
                            SendBoss('https://discord.com/api/webhooks/1221652796277915751/PoTljiAd5tS62T0QiKLogngm2uieZTdo1RtHzJXDEsA7aETLBvHBKNPfSNEVw1xYsKG-','Darkbeard')
                        end
                    end
                end)
            end
        end)
    end
    print('Load Script Succes')
end
