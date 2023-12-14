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
-- Quest
local Quest_S = General_T:CreateSection({
    Name = " Quest ",
    Side = 'Left'
})
-- New
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
spawn(function()
	while wait(.2) do
		pcall(function()
			if Auto_Farm_Terror_Jaw or Auto_Farm_Shark_Tooth or Auto_Farm_Monster_Magnet or Auto_Farm_Shark_Anchor then 
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
							--[[
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
							]]
							spawn(function()
								repeat wait(.1)
									TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
								until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							end)
							local get_skill = {}
							repeat wait(.2)
								if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 60 then
									for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if vx:IsA('Tool') then
											if tostring(vx.ToolTip) == 'Melee' or tostring(vx.ToolTip) == 'Sword' or tostring(vx.ToolTip) == 'Blox Fruit' or tostring(vx.ToolTip) == 'Gun' then
												name_weapon = vx.Name
												if not table.find(get_skill,vx.Name) then
													EquipWeapon(name_weapon)
													table.insert(get_skill,vx.Name)
												end
												if GetSkill_C(name_weapon,'Z') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
														wait(0.5)
													end
												end
												if GetSkill_C(name_weapon,'X') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
														wait(0.5)
													end
												end
												if GetSkill_C(name_weapon,'C') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
														wait(0.5)
													end
													game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
													wait(.2)
													game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
												end
												if GetSkill_C(name_weapon,'V') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														wait(0.5)
													end
												end
											end
										end
									end
									for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if vx:IsA('Tool') then
											if tostring(vx.ToolTip) == 'Melee' or tostring(vx.ToolTip) == 'Sword' or tostring(vx.ToolTip) == 'Blox Fruit' or tostring(vx.ToolTip) == 'Gun' then
												name_weapon = vx.Name
												if GetSkill_C(name_weapon,'Z') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
													wait(0.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
														wait(0.5)
													end
												end
												if GetSkill_C(name_weapon,'X') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
														wait(0.5)
													end
												end
												if GetSkill_C(name_weapon,'C') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
														wait(0.5)
													end
													game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
													wait(.2)
													game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
												end
												if GetSkill_C(name_weapon,'V') then
													EquipWeapon(name_weapon)
													wait(0.2)
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
													PositionSkillMasteryDevilFruit = v.VehicleSeat.CFrame
													if tonumber(v.Health.Value) > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														wait(0.5)
													end
												end
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
			if comi or Auto_Farm_Trial or Auto_Farm_Ancient_One or Auto_Farm_Shark_Anchor or Auto_Farm_Terror_Jaw or Auto_Farm_Shark_Tooth or Auto_Farm_Monster_Magnet then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true and not SitP and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Tooth and not Auto_Farm_Shark_Anchor and not Auto_Farm_Terror_Jaw then
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
			if Race_Attack or Attack then
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
local Fullmoon_S = Race_S:AddLabel({
    Name = '🌕 Full Moon: '
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
local Mirage_Is = Gear_S:AddLabel({
    Name = '🏝️ Mirage Island: '
})
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
spawn(function()
	while wait(1) do
		pcall(function()
			if Three_World then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    Mirage_Is:Set("🏝️ Mirage Island: ✅ spawn") 
                else
                    Mirage_Is:Set('🏝️ Mirage Island: wait spawn.')
                end
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
				wait(10)
			end
		end)
	end
end)
