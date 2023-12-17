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
		click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame)
	end
until game.Players.localPlayer.Neutral == false

-- Gui
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Figger-2007/SwitchBF/main/xxpt.lua"))()

local PepsisWorld = library:CreateWindow({
	Name = "Switch Hub [ Premium ]",
	Themeable = {	
	}
})
local General_T = PepsisWorld:CreateTab({
	Name = "General"
})
local Time_S = General_T:CreateSection({
	Name = " Time ",
	Side = 'Left'
})
local Time_Clock = Time_S:AddLabel({
    Name = ' Time Clock :'
})
local Time_Server = Time_S:AddLabel({
    Name = ' Time Server:'
})
spawn(function()
    while wait(.3) do
        pcall(function()
            local scripttime=game.Workspace.DistributedGameTime
            local seconds = scripttime%60
            minutes = math.floor(scripttime/60%60)
            hours = math.floor(scripttime/3600)
            local tempo = string.format("%.0f Hr(s), %.0f Min(s), %.0f Sec(s)", hours ,minutes, seconds)
            Time_Clock:Set(tempo)
            Time_Server:Set('Time Server: '..tostring(game:GetService("Lighting").TimeOfDay))
        end)
    end
end)
local Status_S = General_T:CreateSection({
	Name = " Status ",
	Side = 'Left'
})
Status_S:AddLabel({
    Name = 'Name: '..tostring(game.Players.LocalPlayer.Name)
})
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
end
Status_S:AddLabel({
    Name = 'Race: '..tostring(game.Players.LocalPlayer.Data.Race.Value)..' '..Race_Int
})
local Status_Win = Status_S:AddLabel({
	Name = 'Status: '
})
-- Status Full Moon
local Notify_S = General_T:CreateSection({
	Name = " Notify ",
	Side = 'Left'
})
local Fullmoon_S = Notify_S:AddLabel({
	Name = '🌕 Full Moon: '
})
local Mystic_S = Notify_S:AddLabel({
	Name = '🌴 Mystic Island: not spawn.'
})
spawn(function()
	while wait(1) do
		pcall(function()
			if Three_World then
				if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
					Fullmoon_S:Set(tostring('🌕 Full Moon: 100%'))
				elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
					Fullmoon_S:Set(tostring('🌕 Full Moon: 75%'))
				elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
					Fullmoon_S:Set(tostring('🌕 Full Moon: 50%'))
				elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
					Fullmoon_S:Set(tostring('🌕 Full Moon: 25%'))
				elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
					Fullmoon_S:Set(tostring('🌕 Full Moon: 15%'))
				else 
					Fullmoon_S:Set(tostring('🌕 Full Moon: 0%'))
				end
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    Mystic_S:Set('🌴 Mystic Island: ✅ spawn.') 
				end
				wait(10)
			end
		end)
	end
end)
local Server_S = General_T:CreateSection({
	Name = " Server ",
	Side = 'Right'
})
Server_S:AddTextbox({
	Name = ' Job Id ',
	Value = '...',
	Callback = function(vu)
		Job_Id = vu
	end
})
Server_S:AddButton({
	Name = 'Join Server',
	Callback = function()
		game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport",Job_Id)
	end
})
-- New
local Level_S = General_T:CreateSection({
    Name = " Level ",
    Side = 'Left'
})
Level_S:AddToggle({
	Name = 'Farm Level',
	Enabled = _G.Setting['Farm Level'],
	Callback = function(vu)
		Farm_Level = vu
	end
})
-- Fox Lamp
local Fox_Lamp_S = General_T:CreateSection({
    Name = " Fox Lamp ",
    Side = 'Left'
})
Fox_Lamp_S:AddLabel({
	Name = '🌂 Fox Lamp: ❌'
})
Fox_Lamp_S:AddToggle({
	Name = 'Auto Farm Fox Lamp',
	Enabled = _G.Setting['Fox Lamp'],
	Callback = function(vu)
		Auto_Fox_Lamp = vu
	end
})
Fox_Lamp_S:AddToggle({
	Name = 'Auto Hop Server',
	Enabled = _G.Setting['Fox Lamp Hop'],
	Callback = function(vu)
		Auto_Hop_Server = vu
	end
})
-- Shark Anchor
local Update_New_S = General_T:CreateSection({
    Name = " Shark Anchor ",
    Side = 'Left'
})
local Shark_Anchor_S = Update_New_S:AddLabel({
	Name = '⚓ Shark Anchor: ❌'
})
function Get_H_Shark_Anchor()
	local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
	for i,v in pairs(Inventory) do
		if v.Type == "Sword" then
			if v.Name == 'Shark Anchor' then
				Shark_Anchor_H = true
			end
		end
	end
	for i,v in pairs(Inventory) do
		if v.Type == "Wear" then
			if v.Name == 'Monster Magnet' then
				Monster_Magnet_H = true
			end
		end
	end
	for i,v in pairs(Inventory) do
		if v.Type == "Wear" then
			if v.Name == 'Monster Magnet' then
				Shark_Tooth_Necklace_H = true
			end
		end
	end
	for i,v in pairs(Inventory) do
		if v.Type == "Wear" then
			if v.Name == 'Terror Jaw' then
				Terror_Jaw_H = true
			end
		end
	end
end
-- -31612.23046875, 31.740503311157227, 1929.916259765625
-- Buy Boat 
-- -998.3510131835938, 4.5834879875183105, -14038.31640625
setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
Update_New_S:AddToggle({
	Name = 'Auto Farm Shark Anchor',
	Enabled = _G.Setting['Shark Anchor'],
	Callback = function(vu)
		Auto_Farm_Shark_Anchor = vu
		if vu then
			Get_H_Shark_Anchor()
		end
	end
})
Update_New_S:AddLabel({
	Name = ' '
})
local Monster_Magnet_S = Update_New_S:AddLabel({
	Name = '🔥 Monster Magnet: ❌'
})
--[[
	Update_New_S:AddLabel({
		Name = '✅ Terror Eyes: max.'
		+
	})
]]
local T_E_M = Update_New_S:AddLabel({ -- 
	Name = '❌ Terror Eyes: 0/2'
})
local E_W_M = Update_New_S:AddLabel({ -- 
	Name = '❌ Electric Wings: 0/8'
})
local F_G_M = Update_New_S:AddLabel({ -- 
	Name = "❌ Fool's Golds: 0/20"
})
local S_T_M = Update_New_S:AddLabel({ -- 
	Name = '❌ Shark Tooth: 0/10'
})
Update_New_S:AddToggle({
	Name = 'Auto Farm Monster Magnet',
	Enabled = _G.Setting['Shark Anchor'],
	Callback = function(vu)
		Auto_Farm_Monster_Magnet = vu
	end
})
Update_New_S:AddLabel({
	Name = ' '
})

local Terror_Jaw_S = Update_New_S:AddLabel({
	Name = '👓 Terror Jaw: ❌'
})
local T_E_T = Update_New_S:AddLabel({ -- 
	Name = '❌ Terror Eyes: 0/1'
})
local M_T_T = Update_New_S:AddLabel({ -- 
	Name = '❌ Mutant Tooth: 0/2'
})
local F_G_T = Update_New_S:AddLabel({ -- 
	Name = "❌ Fool's Gold: 0/10"
})
local S_T_T = Update_New_S:AddLabel({ -- 
	Name = '❌ Shark Tooth: 0/5'
})
Update_New_S:AddToggle({
	Name = 'Auto Farm Terror Jaw',
	Enabled = _G.Setting['Shark Anchor'],
	Callback = function(vu)
		Auto_Farm_Terror_Jaw = vu
	end
})

Update_New_S:AddLabel({
	Name = ' '
})
local Shark_Tooth_Necklace_S = Update_New_S:AddLabel({
	Name = '📿 Shark Tooth Necklace: ❌'
})
local M_T_S = Update_New_S:AddLabel({
	Name = '❌ Mutant Tooth: 0/1' -- 
})
local S_T_S = Update_New_S:AddLabel({ -- 
	Name = '❌ Shark Tooth: 0/5'
})
Update_New_S:AddToggle({
	Name = 'Auto Farm Shark Tooth',
	Enabled = _G.Setting['Shark Anchor'],
	Callback = function(vu)
		Auto_Farm_Shark_Tooth = vu
	end
})


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
function TPBoat(p,boat,speedx)
	local Distance = (p.Position - boat.Position).Magnitude
	Speed = speedx
	TweenP = game:GetService("TweenService"):Create(boat,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
	TweenP:Play()
end
function TP(p)
	local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 100 then
		Speed = 1500
	elseif Distance < 200 then
		Speed = 150
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
function TPZ(p,speedx)
	local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 100 then
		Speed = 50
	elseif Distance < 200 then
		Speed = speedx
	elseif Distance < 1000 then
		Speed = speedx
	elseif Distance < 1500 then
		Speed = speedx
	elseif Distance >= 1500 then
		Speed = speedx
	end
	Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
	Tween:Play()
end
function TPX(RealTarget)
	pcall(function()
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
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
			if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Head"):Destroy()
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
				wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				wait(7)
			end
			--[[
			if (Vector3.new(-5075.13525390625, 314.941162109375, -2886.742919921875)-RealTarget.Position).Magnitude <= 2000 then
				local args = {
					[1] = "requestEntrance",
					[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
				}
	-35887.2265625, 31.741893768310547, -658.2794799804688
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				wait(1)
			else
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
					wait(.5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					wait(7)
				end
			end
			]]
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			local Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = RealTarget})
			Tween:Play()
		end
	end)
end
-- Pikat 4 Terrorshark piranha shark 'Fish Crew Member'
-- 
function GetNameMon(vu)
	if vu == nil then
		vu = 'bit'
	end
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if v.Name == vu and v.Humanoid.Health > 0 then
			return true
		end
	end
	return false
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
function GetItem(vu)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
		if v["Name"] == vu then
			return true
		end
	end
	return false
end
local function Check_Table(vp,xp)
	for i,v in pairs(vp) do
		if v == xp then
			return true
		end
	end
end
function CheckCF(vu)
	for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemyRegions:GetChildren()) do
		if (v.Position-CFrameMon.Position).Magnitude <= vu then
			CFrameMon = v.CFrame
			return
		end
	end
end
function SpawnMon()
	for i2,v2 in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemyRegions:GetChildren()) do
		if (v2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
			game:GetService("ReplicatedStorage").Remotes.Location:FireServer(v)
			return
		end
	end
end
function CheckQuestBoss_L()
	-- Old World
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
function CheckLevel2()
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
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2425 and game.Players.LocalPlayer.Data.Level.Value < 2550 or SelectMonster == "Snow Demon" then
			Ms = "Snow Demon"
			NameQuest = "CandyQuest1"
			QuestLv = 2
			NameMon = "Snow Demon"
			CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
			CFrameMon = CFrame.new(-963.0213012695312, 16.1071834564209, -14289.576171875)
			if SelectMonster == "Candy Pirate" then
			else
				Next_Level_X = 2551
			end
			SelectMonster = "Candy Pirate"
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 then
			Ms = "Baking Staff"
			NameQuest = "CakeQuest2"
			QuestLv = 1
			NameMon = "Baking Staff"
			CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
			CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
			
			SelectMonster = "Cookie Crafter"
			local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
			if Lp == 'nil' or Lp == nil then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
				Cake_Prince_S:Set(' Cake Prince : Boss Spawn')
			else
				Cake_Prince_S:Set(' Cake Prince : '..Lp)
			end
		end
	end
end
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
						until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay')
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
							repeat wait(.2)
								TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
								EquipWeapon(Weapon)
							until not v.Parent or v.Humanoid.Health <= 0 or not Farm_Level
							if not v.Parent or v.Humanoid.Health <= 0 then
								v:Destroy()
							end
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
		CMS = false
		if Check_Table(CheckMonSpawn,Ms) == true then
			CMS = true
		end
		if CMS == false then
			TPX(CFrameMon)
			if (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
				for i = 500,0,-100 do
					CheckCF(i)
				end
				TPX(CFrameMon*CFrame.new(0,15,0))
				SpawnMon()
				table.insert(CheckMonSpawn,Ms)
			end
		else
			if not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
				if game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:FindFirstChild(NameMon) then
					for i,v in next,game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren() do
						if v.Name == NameMon and not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
							repeat wait(.1)
								TPX(v.CFrame*CFrame.new(0,15,0))
							until Start_Farm_Mastery_Gun or (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 or game.Workspace.Enemies:FindFirstChild(Ms) or game.ReplicatedStorage:FindFirstChild(Ms)
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
						PosMon_X = v.HumanoidRootPart.CFrame
						StatrMagnet = true
						repeat wait(.1)
							if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 23 then
								TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
							end
							EquipWeapon(Weapon)
						until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not Farm_Level or Start_Farm_Mastery_Gun or Start_Farm_Mastery_Fruit 
						TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
						StatrMagnet = false
					end
				end
			elseif game.ReplicatedStorage:FindFirstChild(Ms) then
				TPX(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame*CFrame.new(0,20,0))
			end
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
						if (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
							FarmBoss_L = true
						end
					until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true or not Farm_Level
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
					if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true or not Farm_Level
			end
		end
	elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	end
end
if _G.Setting['Level Max'] == nil then
	_G.Setting['Level Max'] = 9999
end
-- Status
spawn(function()
	while wait(.2) do
		pcall(function()
			if Auto_Farm_Terror_Jaw or Auto_Farm_Shark_Tooth or Auto_Farm_Monster_Magnet or Auto_Farm_Shark_Anchor then 
				local Shark_Tooth_I = CheckItem_X('Shark Tooth')
				local Fool_Gold_I = CheckItem_X("Fool's Gold")
				local Mutant_Tooth_I = CheckItem_X('Mutant Tooth')
				local Terror_Eye_I = CheckItem_X('Terror Eyes')
				local Electric_Wings_I = CheckItem_X('Electric Wing')
				local Mojis = '❌'
				if Terror_Eye_I >= 1 or Terror_Jaw_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				T_E_T:Set(Mojis..' Terror Eyes: '..tostring(Terror_Eye_I)..'/1')
				if Mutant_Tooth_I >= 2 or Terror_Jaw_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				M_T_T:Set(Mojis..' Mutant Tooth: '..tostring(Mutant_Tooth_I)..'/2')
				if Fool_Gold_I >= 10 or Terror_Jaw_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				F_G_T:Set(Mojis.." Fool's Gold: "..tostring(Fool_Gold_I).."/10")
				if Shark_Tooth_I >= 5 or Terror_Jaw_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				S_T_T:Set(Mojis..' Shark Tooth: '..tostring(Shark_Tooth_I)..'/5')

				if Terror_Eye_I >= 2 or Monster_Magnet_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				T_E_M:Set(Mojis.." Terror Eyes:"..tostring(Terror_Eye_I)..'/2')
				if Electric_Wings_I >= 8 or Monster_Magnet_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				E_W_M:Set(Mojis..' Electric Wings: '..tostring(Electric_Wings_I)..'/8')
				if Fool_Gold_I >= 20 or Monster_Magnet_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				F_G_M:Set(Mojis.." Fool's Golds: "..tostring(Fool_Gold_I).."/20")
				if Shark_Tooth_I >= 10 or Monster_Magnet_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				S_T_M:Set(Mojis..' Shark Tooth: '..tostring(Shark_Tooth_I)..'/10')
				
				if Shark_Tooth_I >= 5 or Shark_Tooth_Necklace_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				S_T_S:Set(Mojis..' Shark Tooth: '..tostring(Shark_Tooth_I)..'/5')
				if Mutant_Tooth_I >= 1 or Shark_Tooth_Necklace_H then
					Mojis = '✅'
				else
					Mojis = '❌'
				end
				M_T_S:Set(Mojis..' Mutant Tooth: '..tostring(Mutant_Tooth_I)..'/1')
				if Auto_Farm_Shark_Tooth then
					if not Shark_Tooth_Necklace_H then
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
							if GetItem('Shark Tooth Necklace') then
								Shark_Tooth_Necklace_H = true
								Shark_Tooth_Necklace_S:Set('📿 Shark Tooth Necklace: ✅')
								wait(1)
							end
							-- Code Craft Shark Tooth
							-- Succes Quest
						end
					elseif Shark_Tooth_Necklace_H then
						Auto_Farm_Terror_Jaw = false
						Shark_Tooth_Necklace_S:Set('📿 Shark Tooth Necklace: ✅')
					end
				elseif Auto_Farm_Terror_Jaw then
					if not Terror_Jaw_H then
						if Shark_Tooth_I >= 5 and Fool_Gold_I >= 10 and Mutant_Tooth_I >= 2 and Terror_Eye_I >= 1 then
							Terror_Jaw_H = true
							-- Code Craft Terror Jaw
							-- Succes Quest
						end
					elseif Terror_Jaw_H then
						Auto_Farm_Terror_Jaw = false
						Terror_Jaw_S:Set('👓 Terror Jaw: ✅')
					end
				elseif Auto_Farm_Monster_Magnet then
					if not Monster_Magnet_H then
						if Terror_Eye_I >= 2 and Electric_Wings_I >= 8 and Fool_Gold_I >= 20 and Shark_Tooth_I >= 10 then 
							Monster_Magnet_H = true
							-- Code Craft Monster Magnet
							-- Succes Quest
						end
					elseif Monster_Magnet_H then
						Auto_Farm_Monster_Magnet = false
						Monster_Magnet_S:Set('🔥 Monster Magnet: ✅')
					end 
				elseif Auto_Farm_Shark_Anchor then
					if not Shark_Anchor_H then
						Shark_Anchor_H = true
						-- Code Craft Monster Magnet
						-- Succes Quest
					elseif Shark_Anchor_H then
						Auto_Farm_Shark_Anchor = true
						Shark_Anchor_S:Set("⚓ Shark Anchor: ✅")
						Status_Win:Set(' Status: Succes. ✅')
					end
				end
				if not Shark_Tooth_Necklace_H then
					if GetItem('Shark Tooth Necklace') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
						Shark_Tooth_Necklace_H = true
						Shark_Tooth_Necklace_S:Set('📿 Shark Tooth Necklace: ✅')
						Auto_Farm_Shark_Tooth = false
						wait(1)
					end
				end
				wait(10)
			end
		end)
	end
end)
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
if _G.Setting['Boat'] == nil then
	_G.Setting['Boat'] = 'PirateGrandBrigade'
end
function Hop_Server()
    if not TP_Ser then
        TP_Ser = true
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
				game.StarterGui:SetCore("SendNotification", {
                    Title = "Hop Server", 
                    Text = "Players: " ..tonumber(v.playing),
                    Icon = "",
                    Duration = 1.5
                })
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    -- delfile("NotSameServers.json")
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            TP_Ser = true
                            -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(.1)
                    end
                end
            end
        end
        function Bring()
            while wait(.1) do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Bring()
    end
end
spawn(function()
	while wait(.2) do
		pcall(function()
			if Farm_Level then
				FarmLevel()	
				if game.Players.LocalPlayer.Data.Level.Value >= _G.Setting['Level'] then
					FarmLevel = false
				end
			elseif Auto_Fox_Lamp then
				if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" or game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
					local Check_Boat_H = false 
					for i,v in pairs(game.Workspace.Boats:GetChildren()) do
						if Check_Boat_H == false and v.Name == _G.Setting['Boat'] and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
							Check_Boat_H = true
							if position_boat == nil then
								position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
							end
							Status_Win:Set('Status: Go to fox island.')
							if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
								TweenP:Cancel()
								wait(1)
								local get_cframe = position_boat
								position_boat = CFrame.new(get_cframe.Position.X-1500, 40.741893768310547, -658.2794799804688)
								--[[
								game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
								wait(0.5)
								game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
								wait(0.5)
								game.Players.LocalPlayer.Character.Humanoid.Sit = true
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
								wait(0.5)
								]]
							elseif (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 7000 then 
								if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
									if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
										wait(0.5)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
										wait(0.5)
									else
										TPBoat(position_boat,v.VehicleSeat,120)
									end
								else
									if TweenP ~= nil then
										TweenP:Cancel()
									end
									TPZ(v.VehicleSeat.CFrame,150) 
								end
							elseif (v.VehicleSeat.Position-position_boat.Position).Magnitude > 7000 then
								TPBoat(position_boat*CFrame.new(0,50,0),v.VehicleSeat,250)
								wait(1)
								TPZ(position_boat*CFrame.new(0,50,0),200) 
							end
						end
					end
					if not Check_Boat_H then
						if not Farming_Tril then
							if not Check_Boat_H then
								Status_Win:Set('Status: Get boat.')
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
									wait(1)
									local args = {
										[1] = "BuyBoat",
										[2] = _G.Setting['Boat']
									}
									
									game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
									wait(1)
								elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
									TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
								end
							end
						end
					end
				elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
					Status_Win:Set('Status: wait fullmoon 4/5 ')
					wait(10)
				else
					Status_Win:Set('Status: wait fullmoon. ')
					if Auto_Hop_Server then
						wait(2)
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
						else
							Hop_Server()
							wait(50)
						end
					end
				end
			elseif Auto_Farm_Terror_Jaw or Auto_Farm_Shark_Tooth or Auto_Farm_Monster_Magnet or Auto_Farm_Shark_Anchor then 
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
						if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 then
							Status_Win:Set('Status: Farm '..v.Name)
							if TweenP == nil then
							else
								TweenP:Cancel()
							end
							wait(1)
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
							postis = 30
							postx = 20
							if v.Name == 'Terrorshark' then
								postis = 30
								postx = 50
							end
							local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
							local get_pless = true
							repeat wait(.2)
								local health = game.Players.LocalPlayer.Character.Humanoid.Health
								local percent = (health / maxhealth) * 100
								if percent <= 30 and v.Name == 'Terrorshark' then
									repeat wait(.2)
										local health = game.Players.LocalPlayer.Character.Humanoid.Health
										local percent = (health / maxhealth) * 100
										EquipWeapon(Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,170,60))
									until percent >= 40 or  not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
								else
									EquipWeapon(Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,postx,postis))
								end
							until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							Attack = false
						end
					end
				end
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == 'FishBoat' or v.Name == 'PirateGrandBrigade' or v.Name == 'PirateBrigade' then
						if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
							-- Aimbot
							if TweenP == nil then
							else
								TweenP:Cancel()
							end
							wait(1)
							Status_Win:Set('Status: Farm '..v.Name)
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
							end
							if game:GetService("Players").LocalPlayer.Data.Stats["Melee"].Level.Value >= 2000 then
								if check_1 == nil then
									check_1 = 'Melee'
								elseif check_2 == nil then
									check_2 = 'Melee'
								end
							end
							if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
								if check_1 == nil then
									check_1 = 'Sword'
								elseif check_2 == nil then
									check_2 = 'Sword'
								end
							end
							if game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value >= 2000 then
								if check_1 == nil then
									check_1 = 'Gun'
								elseif check_2 == nil then
									check_2 = 'Gun'
								end
							end
							if game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value >= 2000 then
								if check_1 == nil then
									check_1 = 'Blox Fruit'
								elseif check_2 == nil then
									check_2 = 'Blox Fruit'
								end
							end 
							spawn(function()
								repeat wait(.1)
									TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
								until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							end)
							local get_skill = {}
							repeat wait(.2)
								if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if vx:IsA('Tool') and tostring(vx.ToolTip) == check_1 or vx:IsA('Tool') and tostring(vx.ToolTip) == check_2 then
											name_weapon = vx.Name
											EquipWeapon(name_weapon)
											if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
												game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
												wait(0.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
											end
											if v.Health.Value > 0 and GetSkill_C(name_weapon,'Z') then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												wait()
											end
											if v.Health.Value > 0 and GetSkill_C(name_weapon,'X') then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												wait()
											end
											if v.Health.Value > 0 and GetSkill_C(name_weapon,'C') then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												wait()
											end
											if v.Health.Value > 0 and GetSkill_C(name_weapon,'V') then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												wait()
											end
										end
									end
								end
							until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							Attack = false
						elseif (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 800 then
							if TweenP == nil then
							else
								TweenP:Cancel()
							end
							if Tween == nil then
							else
								Tween:Cancel()
							end
						end
					end
				end
				if not Farming_Tril then
					local Check_Boat_H = false 
					for i,v in pairs(game.Workspace.Boats:GetChildren()) do
						if Check_Boat_H == false and v.Name == _G.Setting['Boat'] and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
							Check_Boat_H = true
							if position_boat == nil then
								position_boat = CFrame.new(-30887.2265625, 40.741893768310547, -658.2794799804688)
							end
							Status_Win:Set('Status: Go to monster.')
							if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
								TweenP:Cancel()
								wait(1.5)
								if (position_boat.Position-Vector3.new(-30887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
									position_boat = CFrame.new(-38887.2265625, 40.741893768310547, -658.2794799804688)
								elseif (position_boat.Position-Vector3.new(-38887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
									position_boat = CFrame.new(-30887.2265625, 40.741893768310547, -658.2794799804688)
								end
								game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
								wait(0.5)
								game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
								wait(0.5)
								game.Players.LocalPlayer.Character.Humanoid.Sit = true
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
								wait(0.5)
							elseif (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 7000 then 
								if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
									if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
										wait(0.5)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
										wait(0.5)
									else
										TPBoat(position_boat,v.VehicleSeat,60)
									end
								else
									if TweenP ~= nil then
										TweenP:Cancel()
									end
									TPZ(v.VehicleSeat.CFrame,150) 
								end
							elseif (v.VehicleSeat.Position-position_boat.Position).Magnitude > 7000 then
								TPBoat(position_boat*CFrame.new(0,50,0),v.VehicleSeat,250)
								wait(1)
								TPZ(position_boat*CFrame.new(0,50,0),200) 
							end
						end
					end
					if not Check_Boat_H then
						if not Farming_Tril then
							if not Check_Boat_H then
								Status_Win:Set('Status: Get boat.')
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
									wait(1)
									local args = {
										[1] = "BuyBoat",
										[2] = _G.Setting['Boat']
									}
									
									game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
									wait(1)
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
-- Tooltip
local Setting_S = General_T:CreateSection({
    Name = " Setting ",
    Side = 'Right'
})
local ToolM = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA('Tool') and not table.find(ToolM,v.Name) then
		table.insert(ToolM,v.Name)
	end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v:IsA('Tool') and not table.find(ToolM,v.Name) then
		table.insert(ToolM,v.Name)
	end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
		Weapon = v.Name
	end
end
local Weapon_Select_T = Setting_S:AddDropdown({
	Name = ' Select Weapon ',
	List = ToolM,
	Value = Weapon,
	MultiSelect = false,
	Callback = function(vu)
		Weapon = vu
	end
})
Setting_S:AddButton({
	Name = ' Refresh Weapon ',
	Callback = function()
		local ToolM = {}
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA('Tool') and not table.find(ToolM,v.Name) then
				table.insert(ToolM,v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA('Tool') and not table.find(ToolM,v.Name) then
				table.insert(ToolM,v.Name)
			end
		end
		Weapon_Select_T:UpdateList(ToolM)
	end
})
-- Race V4
local Race_S = General_T:CreateSection({
    Name = " Race V4 ",
    Side = 'Right'
})
function TP(p)
	local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 200 then
		Speed = 1000
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
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if comi or Auto_Fox_Lamp or Auto_Farm_Trial or Auto_Farm_Ancient_One or Auto_Farm_Shark_Anchor or Auto_Farm_Terror_Jaw or Auto_Farm_Shark_Tooth or Auto_Farm_Monster_Magnet or Farm_Level then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true and not SitP and not Auto_Fox_Lamp and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Tooth and not Auto_Farm_Shark_Anchor and not Auto_Farm_Terror_Jaw then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
						end
						local BodyVelocity = Instance.new("BodyVelocity")
						BodyVelocity.Name = "BodyVelocity"
						BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
						BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
						BodyVelocity.Velocity = Vector3.new(0, 0, 0)
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
			end
		end)
	end)
end)

Race_S:AddButton({
    Name = 'Teleport to Trial',
    Callback = function()
		local cframe_trial = CFrame.new(0,0,0)
		if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
			cframe_trial = CFrame.new(28492,14895,-422)
		elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
			cframe_trial = CFrame.new(28223.1348, 14890.6328, -211.410782)
		elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
			cframe_trial = CFrame.new(28673,14890,453)
		elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
			cframe_trial = CFrame.new(28967.779296875, 14919.28125, 233.46749877929688)
		elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
			cframe_trial = CFrame.new(29237.6191, 14890.6328, -206.426422)
		elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
			cframe_trial = CFrame.new(29020.6875, 14891.0586, -381.287872)
		end
		comi = true
		repeat wait(.3)
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-cframe_trial.Position).Magnitude <= 5 then
				cframe_trial = nil
			elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude >= 2500 then
				repeat 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2956.04248046875, 2280.53369140625, -7216.47412109375)
					wait(.1)
					local args = {
						[1] = "RaceV4Progress",
						[2] = "Teleport"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
				wait(0.5)
			else
				TP(cframe_trial)
			end
		until cframe_trial == nil
		comi = false
    end
})
Race_S:AddToggle({
    Name = 'Auto Farm Trial',
    Enabled = false,
    Callback = function(vu)
		Auto_Farm_Trial = vu
		if Auto_Farm_Trial then
			position_pass = nil
		end
    end
})
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()
local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
local p13 = CbFw2.activeController
local ret = p13.blades[1]
if not ret then return end
while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
return ret
end
local time_all_x = 0
local time_all_p = 0
local time_x = 0
function AttackNoCD()
	pcall(function()
		if FarmPlayer and Farm_P_ATTK then
			if AttackPlayers == nil then
				AttackPlayers = 'None'
			end
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
				for k,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70 then
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
					time_x = time_x+1
					time_all_x = time_all_x+1
					if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
						AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
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
			if Race_Attack or Attack or Farm_Level then
				AttackNoCD()
				game:GetService("RunService").Stepped:wait()
				if time_all_x >= 20 then
					if time_all_x >= 22 then
						wait()
						time_all_x = 0
					end
				end
			else
				wait(.1)
			end
		end)
	end
end)
function GetSkill(NameW,Skill)
	for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
		if v.Name == NameW then
			if v:FindFirstChild(Skill) and tostring(v[Skill].Title.TextColor) == 'Institutional white' and v[Skill].Cooldown.AbsoluteSize.X == 0 then
				return true
			end
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
					args[2] = PositionSkillMasteryDevilFruit
					return old(unpack(args))
				end
			end
		end
		return old(...)
	end)
end)
spawn(function()
	while wait(.3) do
		pcall(function()
			if Auto_Farm_Trial then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					if tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Cyborg' then
						if position_pass == nil then   
							position_pass = true
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,70,0)
						end
					elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Ghoul' then
						local xp = game.Workspace.Enemies:GetChildren()
						if #xp > 0 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude <= 500 then
									Race_Attack = true
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									repeat wait(.1)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										EquipWeapon(Weapon)
									until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or not Auto_Farm_Trial
									Race_Attack = false
								end
							end
						end
					elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Skypiea' then
						for i,v in pairs(game.Workspace.Map:GetChildren()) do
							if v.Name == 'SkyTrial' and v:FindFirstChild('Model') and v.Model:FindFirstChild('FinishPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 1000 then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame
								wait(2)
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,5,0)
									wait(2)
								end
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,10,0)
									wait(2)
								end
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Model.FinishPart.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.FinishPart.CFrame*CFrame.new(0,15,0)
									wait(2)
								end
							end
						end
					elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Human' then
						local xp = game.Workspace.Enemies:GetChildren()
						if #xp > 0 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude <= 500 then
									Race_Attack = true
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									repeat wait(.1)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										EquipWeapon(Weapon)
									until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or not Auto_Farm_Trial
									Race_Attack = false
								end
							end
						end
					elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Mink' then
						for i,v in pairs(game.Workspace.Map:GetChildren()) do
							if v.Name == 'MinkTrial' and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1000 then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
								wait(2)
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,5,0)
									wait(2)
								end
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame*CFrame.new(0,10,0)
									wait(2)
								end
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and Auto_Farm_Trial and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Floor.Position).Magnitude <= 1000 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Floor.CFrame
									wait(2)
								end
							end
						end
					elseif tostring(game.Players.LocalPlayer.Data.Race.Value) == 'Fishman' then
						local xp = game:GetService("Workspace").SeaBeasts:GetChildren()
						if #xp > 0 then
							for _,x in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
								if x:FindFirstChild('HumanoidRootPart') and (x.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 and x.Health.Value > 0 then
									PositionSkillMasteryDevilFruit = x.HumanoidRootPart.Position
									Aimbot_On = true
									local tool_1 = nil
									local tool_2 = nil
									if game:GetService("Players").LocalPlayer.Data.Stats["Melee"].Level.Value >= 2000 then
										for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
												tool_1 = v.Name
											end
										end
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
												tool_1 = v.Name
											end
										end
									end	
									if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
										if tool_1 == nil then
											for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
													tool_1 = v.Name
												end
											end
											for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
													tool_1 = v.Name
												end
											end
										elseif tool_2 == nil then
											for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
													tool_2 = v.Name
												end
											end
											for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Sword' then
													tool_2 = v.Name
												end
											end
										end
									end	
									if game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value >= 2000 then
										if tool_1 == nil then
											for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Blox Fruit' then
													tool_1 = v.Name
												end
											end
											for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Blox Fruit' then
													tool_1 = v.Name
												end
											end
										elseif tool_2 == nil then
											for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Blox Fruit' then
													tool_2 = v.Name
												end
											end
											for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if v:IsA('Tool') and tostring(v.ToolTip) == 'Blox Fruit' then
													tool_2 = v.Name
												end
											end
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									local check_it_1 = nil
									local check_it_2 = nil
									repeat wait(0.2)
										if check_it_1 == nil then
											for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
												EquipWeapon(tool_1)
												if v.Name == tool_1 then
													check_it_1 = true
												end
											end
										elseif check_it_2 == nil then
											for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
												EquipWeapon(tool_2)
												if v.Name == tool_2 then
													check_it_2 = true
												end
											end
										else
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,3,0))
											if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude <= 20 then
												if GetSkill(tool_1,'Z') then
													EquipWeapon(tool_1)
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if GetSkill(tool_1,'X') then
													EquipWeapon(tool_1)
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												end
												if GetSkill(tool_1,'C') then
													EquipWeapon(tool_1)
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end
												if GetSkill(tool_1,'V') then
													EquipWeapon(tool_1)
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
	
												if GetSkill(tool_2,'Z') then
													EquipWeapon(tool_2)
													game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												end
												if GetSkill(tool_2,'X') then
													EquipWeapon(tool_2)
													game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
													wait(0.2)
													game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
												end
												if GetSkill(tool_2,'C') then
													EquipWeapon(tool_2)
													game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												end
												if GetSkill(tool_2,'V') then
													EquipWeapon(tool_2)
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													wait(.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
											end
										end
									until x.Health.Value <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false or not Auto_Farm_Trial
									Aimbot_On = false
								end 
							end
						end
					end
				end
			end
		end)
	end
end)
Race_S:AddToggle({
    Name = 'Auto Farm Ancient One',
	Enabled = false,
	Callback = function(vu)
		Auto_Farm_Ancient_One = vu
	end
})
local An_One_S = Race_S:AddLabel({
    Name = '💥 Ancient One: '
})
if Evo_Race_V4_H then
	if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) < tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check") ~= nil and tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[1]) == tonumber(table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]) then
		An_One_S:Set('💥 Ancient One: ✅ ready')
	end
end
local Tier_S = Race_S:AddLabel({
    Name = '⚡ Tier: '
})
if Evo_Race_V4_H then
	Tier_S:Set('⚡ Tier: '..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2])))
end

spawn(function()
	while true do wait()
		pcall(function()
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end)
	end
end)
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end
spawn(function()
	while task.wait() do
		pcall(function()
			if StatrMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 and not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon_X
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Transparency = 1
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Auto_Farm_Ancient_One then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
					if game:GetService("Workspace").Characters[tostring(game.Players.LocalPlayer.Name)].RaceTransformed.Value == true then
						repeat wait(1)
							TP(CFrame.new(-9785.28515625, 309.4622802734375, 5625.89013671875))
						until game:GetService("Workspace").Characters[tostring(game.Players.LocalPlayer.Name)].RaceTransformed.Value == false
						if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) >= 3 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
							wait(1)
							if #table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check")) <= 2 then
								library:Notify({
									Paused = true,
									Text = '✅ Upgrade Success : V4 T'..tostring((table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Check"))[2]))
								})
								An_One_S:Set('💥 Ancient One: ')
							end
						end
					else
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if Auto_Farm_Ancient_One and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(-9486.0126953125, 172.1048126220703, 6163.451171875)).Magnitude <= 2000 then
								if Tween == nil then
								else
									Tween:Cancel()
								end
								PosMon_X = v.HumanoidRootPart.CFrame
								StatrMagnet = true
								for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
										Weapon = v.Name
									end
								end
								Race_Attack = true
								repeat wait(.3)
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									EquipWeapon(Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Ancient_One or game:GetService("Workspace").Characters[tostring(game.Players.LocalPlayer.Name)].RaceTransformed.Value == true
								StatrMagnet = false
								Race_Attack = false
							end
						end
						if Auto_Farm_Ancient_One then
							TP(CFrame.new(-9486.0126953125, 202.1048126220703, 6163.451171875))
							game:service('VirtualInputManager'):SendKeyEvent(true, "Y", false, game)
							wait(0.5)
							game:service('VirtualInputManager'):SendKeyEvent(false, "Y", false, game) 
						end
					end
				else
					TPX(CFrame.new(-9486.0126953125, 172.1048126220703, 6163.451171875))
				end
			end
		end)
	end
end)
-- Gear
local Gear_S = General_T:CreateSection({
    Name = " Gear ",
    Side = 'Right'
})
Gear_S:AddButton({
    Name = 'Teleport to Temple of Time',
    Callback = function()
		cumi = true
		repeat 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2956.04248046875, 2280.53369140625, -7216.47412109375)
			wait(.1)
			local args = {
				[1] = "RaceV4Progress",
				[2] = "Teleport"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
		cumi = false
    end
})
Gear_S:AddButton({
    Name = 'Teleport to Mirage Island',
    Callback = function()
		local pointer = game:GetService("Workspace").Map:FindFirstChild("MysticIsland").WorldPivot
		repeat wait(.3)
			if (pointer.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,100,0)
				pointer = nil
			else
				TP(pointer)
			end
		until pointer == nil
    end
})
Gear_S:AddButton({
    Name = 'Teleport to Gear',
    Callback = function()
		local cfarme_gear = nil
		for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
			if v.ClassName == 'MeshPart' and v.Name == 'Part' and v.Transparency == 0 then
				cfarme_gear = v.CFrame
			end
		end
		cumi = true
		local xp = cfarme_gear*CFrame.new(0,25,0)
		repeat wait(.3)
			TP(xp)
		until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude <= 5
		cumi = false
    end
})
Gear_S:AddToggle({
    Name = 'Esp Gear',
	Enabled = false,
	Callback = function(vu)
		Esp_Gear = vu
	end
})
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
function UpdateIslandESP() 
	for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if Esp_Gear then 
				if v.Name ~= "Sea" then
					if not v:FindFirstChild('NameEsp') then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
					end
				end
			else
				if v:FindFirstChild('NameEsp') then
					v:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end
end
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Esp_Gear then
				UpdateIslandESP() 
			end
		end)
	end
end)
local Mirror_S = Gear_S:AddLabel({
    Name = '🧩 Mirror Fractal: '
})
local Valkyrie_S = Gear_S:AddLabel({
    Name = '🎩 Valkyrie Helmet: '
})
local Pull_S = Gear_S:AddLabel({
    Name = '🕹️ Pull Lever: '
})
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	if v.Type == 'Material' then
		if v.Name == 'Mirror Fractal' then
			Mirror_Fractal_H = true
			Mirror_S:Set('🧩 Mirror Fractal: ✅ have')
		end
	end
end
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	if v.Type == 'Wear' then
		if v.Name == 'Valkyrie Helm' then
			Valkyrie_Helmet_H = true
			Valkyrie_S:Set('🎩 Valkyrie Helmet: ✅ have')
		end
	end
end
if Three_World then
	if Evo_Race_V4_H then
		Pull_S:Set('🕹️ Pull Lever: ✅ succes')
	end
end
