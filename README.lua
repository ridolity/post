local placeId = game.PlaceId
if placeId == 2753915549 then
	Old_World = true
elseif placeId == 4442272183 then
	New_World = true
elseif placeId == 7449423635 then
	Three_World = true
end
print('xppt34')
local function click(a)
	game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,true,a,1)
	game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,false,a,1)
end
repeat wait(1)
	if game.Players.LocalPlayer.Team == nil and game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
		click(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame)
	end
until game.Players.localPlayer.Neutral == false
UserSettings():GetService("UserGameSettings").MasterVolume = 0

UserSettings():GetService("UserGameSettings").SavedQualityLevel = 1
if _G.Setting['FPS Booster'] then
	game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
	
	shared.BC_1 = true
	shared.BC_2 = nil

	spawn(function()
		while wait() do
			if shared.BC_2 == true then
				return
			end
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
				sethiddenproperty(L_2, "Technology", "Compatibility");
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
	end)
end
-- Gui
local placeId = game.PlaceId
if placeId == 2753915549 then
	Old_World = true
elseif placeId == 4442272183 then
	New_World = true
elseif placeId == 7449423635 then
	Three_World = true
end
-- Gui
local library = {
	Version = "0.35",
	WorkspaceName = "Switch Hub",
	flags = {},
	signals = {},
	objects = {},
	elements = {},
	globals = {},
	subs = {},
	colored = {},
	configuration = {
		hideKeybind = Enum.KeyCode.RightShift,
		smoothDragging = false,
		easingStyle = Enum.EasingStyle.Quart,
		easingDirection = Enum.EasingDirection.Out
	},
	colors = {
		main = Color3.fromHex('86E3CE'),--  FF0000
		background = Color3.fromHex('100018'),
		outerBorder = Color3.fromRGB(0, 0, 0),
		innerBorder = Color3.fromHex('CCABDB'), --  280035
		topGradient = Color3.fromRGB(0, 0, 0),
		bottomGradient = Color3.fromHex('000000'), -- 412C4C
		sectionBackground = Color3.fromHex('000000'),
		section = Color3.fromHex('86E3CE'), -- 
		otherElementText = Color3.fromHex('A5CAD2'), 
		elementText = Color3.fromHex('787878'),
		elementBorder = Color3.fromHex('301D3B'), -- 3C0062 1E0030
		selectedOption = Color3.fromHex('FFFFFF'), -- 1E0030 3E0000
		unselectedOption = Color3.fromHex('5B5B5B'),
		hoveredOptionTop = Color3.fromHex('002B30'),
		unhoveredOptionTop = Color3.fromHex('002B30'),
		hoveredOptionBottom = Color3.fromHex('002B30'),
		unhoveredOptionBottom = Color3.fromHex('002B30'),
		tabText = Color3.fromHex('B9B9B9') -- 001919
	},
	-- ground.ImageTransparency":54
    -- {"__Designer.Colors.topGradient":"000000","__Designer.Settings.ShowHideKey":"Enum.KeyCode.RightShift","__Designer.Colors.section":"","__Designer.Colors.hoveredOptionBottom":"","__Designer.Background.ImageAssetID":"rbxassetid://5553946656","__Designer.Colors.innerBorder":"","__Designer.Colors.unselectedOption":"","__Designer.Files.WorkspaceFile":"Pepsi Library","__Designer.Colors.unhoveredOptionTop":"002B30","__Designer.Colors.outerBorder":"000000","__Designer.Background.ImageColor":"000000","__Designer.Colors.tabText":"","__Designer.Colors.elementBorder":"","__Designer.Colors.sectionBackground":"","__Designer.Colors.selectedOption":"","__Designer.Colors.background":"","__Designer.Colors.bottomGradient":"","__Designer.Colors.otherElementText":"","__Designer.Colors.main":"","__Designer.Colors.elementText":"","__Designer.Colors.hoveredOptionTop":"","__Designer.Back,"__Designer.Colors.unhoveredOptionBottom":"002B30","__Designer.Background.UseBackgroundImage":true}
	gui_parent = (function()
		local x, c = pcall(function()
			return game:GetService("CoreGui")
		end)
		if x and c then
			return c
		end
		x, c = pcall(function()
			return (game:IsLoaded() or (game.Loaded:Wait() or 1)) and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
		end)
		if x and c then
			return c
		end
		x, c = pcall(function()
			return game:GetService("StarterGui")
		end)
		if x and c then
			return c
		end
		return error("Seriously bad engine. Can't find a place to store the GUI. Robust code can't help this much incompetence.")
	end)(),
	colorpicker = false,
	colorpickerconflicts = {},
	rainbowflags = {},
	rainbows = 0,
	rainbowsg = 0
}
library.Subs = library.subs
local library_flags = library.flags
library.Flags = library_flags
local destroyrainbows, destroyrainbowsg = nil
function darkenColor(clr, intensity)
	if not intensity or (intensity == 1) then
		return clr
	end
	if clr and ((typeof(clr) == "Color3") or (type(clr) == "table")) then
		return Color3.new(clr.R / intensity, clr.G / intensity, clr.B / intensity)
	end
end
library.subs.darkenColor = darkenColor
local __runscript = true
local function wait_check(...)
	if __runscript then
		return wait(...)
	else
		wait()
		return false
	end
end
library.subs.Wait, library.subs.wait = wait_check, wait_check
function library.IsGuiValid()
	return __runscript
end
local lasthidebing = 0
local temp = game:FindService("MarketplaceService") or game:GetService("MarketplaceService")
local Marketplace = (temp and (cloneref and cloneref(temp))) or temp
local resolvevararg, temp = nil
do
	local lwr = string.lower
	function library.defaultSort(a, b)
		return lwr(tostring(b)) > lwr(tostring(a))
	end
end
do
	local varargresolve = {
		Window = {"Name", "Theme"},
		Tab = {"Name", "Image"},
		Section = {"Name", "Side"},
		Label = {"Text", "Flag", "UnloadValue", "UnloadFunc"},
		Toggle = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Locked", "Keybind", "Condition", "AllowDuplicateCalls"},
		Textbox = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Placeholder", "Type", "Min", "Max", "Decimals", "Hex", "Binary", "Base", "RichTextBox", "MultiLine", "TextScaled", "TextFont", "PreFormat", "PostFormat", "CustomProperties", "AllowDuplicateCalls"},
		Slider = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Min", "Max", "Decimals", "Format", "IllegalInput", "Textbox", "AllowDuplicateCalls"},
		Button = {"Name", "Callback", "Locked", "Condition"},
		Keybind = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Pressed", "KeyNames", "AllowDuplicateCalls"},
		Dropdown = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "List", "Filter", "Method", "Nothing", "Sort", "MultiSelect", "ItemAdded", "ItemRemoved", "ItemChanged", "ItemsCleared", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "AllowDuplicateCalls"},
		SearchBox = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "List", "Filter", "Method", "Nothing", "Sort", "MultiSelect", "ItemAdded", "ItemRemoved", "ItemChanged", "ItemsCleared", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "RegEx", "AllowDuplicateCalls"},
		Colorpicker = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Rainbow", "Random", "AllowDuplicateCalls"},
		Persistence = {"Name", "Value", "Callback", "Flag", "Location", "LocationFlag", "UnloadValue", "UnloadFunc", "Workspace", "Persistive", "Suffix", "LoadCallback", "SaveCallback", "PostLoadCallback", "PostSaveCallback", "ScrollUpButton", "ScrollDownButton", "ScrollButtonRate", "DisablePrecisionScrolling", "AllowDuplicateCalls"},
		Designer = {"Backdrop", "Image", "Info", "Credit"}
	}
	function resolvevararg(objtype, ...)
		local data = varargresolve[objtype]
		local t = {}
		if data then
			for index, value in next, {...} do
				t[data[index]] = value
			end
		end
		return t
	end
end
local resolvercache = {}
library.resolvercache = resolvercache
local function resolveid(image, flag)
	if image then
		if type(image) == "string" then
			if (#image > 14 and string.sub(image, 1, 13) == "rbxassetid://") or (#image > 12 and string.sub(image, 1, 11) == "rbxasset://") or (#image > 12 and string.sub(image, 1, 11) ~= "rbxthumb://") then
				if flag then
					local thing = library.elements[flag] or library.designerelements[flag]
					if thing and thing.Set then
						task.spawn(thing.Set, thing, image)
					end
				end
				return image
			end
		end
		local orig = image
		if resolvercache[orig] then
			if flag then
				local thing = library.elements[flag] or library.designerelements[flag]
				if thing and thing.Set then
					task.spawn(thing.Set, thing, resolvercache[orig])
				end
			end
			return resolvercache[orig]
		end
		image = tonumber(image) or image
		local succezz = pcall(function()
			local typ = type(image)
			if typ == "string" then
				if getsynasset then
					if #image > 11 and (string.sub(image, 1, 11) == "synasset://") then
						return getsynasset(string.sub(image, 12))
					elseif (#image > 14) and (string.sub(image, 1, 14) == "synasseturl://") then
						local x, e = pcall(function()
							local codename, fixes = string.gsub(image, ".", function(c)
								if c:lower() == c:upper() and not tonumber(c) then
									return ""
								end
							end)
							codename = string.sub(codename, 1, 24) .. tostring(fixes)
							local fold = isfolder("./Pepsi Lib")
							if fold then
							else
								makefolder("./Pepsi Lib")
							end
							fold = isfolder("./Pepsi Lib/Themes")
							if fold then
							else
								makefolder("./Pepsi Lib/Themes")
							end
							fold = isfolder("./Pepsi Lib/Themes/SynapseAssetsCache")
							if fold then
							else
								makefolder("./Pepsi Lib Themes/SynapseAssetsCache")
							end
							if not fold or not isfile("./Pepsi Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat") then
								local res = game:HttpGet(string.sub(image, 15))
								if res ~= nil then
									writefile("./Pepsi Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat", res)
								end
							end
							return getsynasset(readfile("./Pepsi Lib/Themes/SynapseAssetsCache/" .. codename .. ".dat"))
						end)
						if x and e ~= nil then
							return e
						end
					end
				end
				if (#image < 11) or ((string.sub(image, 1, 13) ~= "rbxassetid://") and (string.sub(image, 1, 11) ~= "rbxasset://") and string.sub(image, 1, 11) ~= "rbxthumb://") then
					image = tonumber(image:gsub("%D", ""), 10) or image
					typ = type(image)
				end
			end
			if (typ == "number") and (image > 0) then
				pcall(function()
					local nfo = Marketplace and Marketplace:GetProductInfo(image)
					image = tostring(image)
					if nfo and nfo.AssetTypeId == 1 then
						image = "rbxassetid://" .. image
					elseif nfo.AssetTypeId == 13 then
						local decal = game:GetObjects("rbxassetid://" .. image)[1]
						image = "rbxassetid://" .. ((decal and decal.Texture) or "0"):match("%d+$")
						decal = (decal and nil) or nil --(decal and decal:Destroy() and nil) or nil
					end
				end)
			else
				image = nil
			end
		end)
		if succezz and image then
			if orig then
				resolvercache[orig] = image
			end
			resolvercache[image] = image
			if flag then
				local thing = library.elements[flag] or library.designerelements[flag]
				if thing and thing.Set then
					task.spawn(thing.Set, thing, image)
				end
			end
		end
	end
	return image
end
library.subs.ResolveID = resolveid
library.resolvercache = resolvercache
local colored, colors = library.colored, library.colors
local tweenService = game:GetService("TweenService")
local updatecolors, MainScreenGui = nil
do
	local MayGC = 0
	spawn(function()
		local IsDescendantOf = game.IsDescendantOf
		local RemoveTable = table.remove
		while wait_check() do
			wait(10)
			local Breathe = 30
			for DataIndex = #colored, 1, -1 do
				if MayGC > 0 then
					break
				end
				Breathe -= 1
				if Breathe <= 0 then
					Breathe = 30
					if wait_check() then
						if MayGC > 0 then
							break
						end
					else
						return
					end
				end
				if MayGC > 0 then
					break
				end
				local data = colored[DataIndex]
				data = data and data[1]
				if data and (typeof(data) == "Instance") and IsDescendantOf(data, MainScreenGui) then
				elseif MayGC <= 0 then
					RemoveTable(colored, DataIndex)
				else
					break
				end
			end
			local sigs = library.signals
			local len = sigs and #sigs
			if len then
				local Dyn = math.round(len / 10)
				Dyn = ((Dyn < 1) and 1) or Dyn
				for DataIndex = len, 1, -1 do
					Breathe -= 1
					if Breathe <= 0 then
						Breathe = Dyn
						if wait_check() then
						else
							return
						end
					end
					local data = colored[DataIndex]
					if data and (typeof(data) == "RBXScriptConnection") and data.Connected then
					else
						RemoveTable(colored, DataIndex)
					end
				end
			end
		end
	end)
	local function colortwee(data, tweenit)
		local cclr = colors[data[3]]
		local darkness = data[4]
		tweenService:Create(data[1], TweenInfo.new(tweenit, library.configuration.easingStyle, library.configuration.easingDirection), {
			[data[2]] = (darkness and darkness ~= 1 and darkenColor(cclr, darkness)) or cclr
		}):Play()
	end
	local function colordarktwee(data)
		local cclr = colors[data[3]]
		local darkness = data[4]
		data[1][data[2]] = (darkness and darkness ~= 1 and darkenColor(cclr, darkness)) or cclr
	end
	function updatecolors(tweenit)
		MayGC += 1
		if library.objects and (#library.objects > 0 or next(library.objects)) then
			for _, data in next, colored do
				local x, e
				if tweenit then
					x, e = pcall(colortwee, data, tweenit)
				end
				if not x then
					local x, e = pcall(colordarktwee, data)
					if not x and e then
						warn(debug.traceback(e))
					end
				end
			end
			pcall(function()
				if library.Backdrop then
					library.Backdrop.Visible = library_flags["__Designer.Background.UseBackgroundImage"] and true
					library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
					library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
					library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
				end
			end)
		end
		MayGC -= 1
	end
end
local function updatecolorsnotween()
	updatecolors()
end
library.subs.updatecolors = updatecolors
library.colors = setmetatable({}, {
	__index = colors,
	__newindex = function(_, k, v)
		if colors[k] ~= v then
			colors[k] = v
			spawn(updatecolorsnotween)
		end
	end
})
local elements = library.elements
shared.libraries = shared.libraries or {}
local colorpickerconflicts = library.colorpickerconflicts
local keyHandler = {
	notAllowedKeys = {
		[Enum.KeyCode.Return] = true,
		[Enum.KeyCode.Space] = true,
		[Enum.KeyCode.Tab] = true,
		[Enum.KeyCode.Unknown] = true,
		[Enum.KeyCode.Backspace] = true
	},
	notAllowedMouseInputs = {
		[Enum.UserInputType.MouseMovement] = true,
		[Enum.UserInputType.MouseWheel] = true,
		[Enum.UserInputType.MouseButton1] = true,
		[Enum.UserInputType.MouseButton2] = true,
		[Enum.UserInputType.MouseButton3] = true
	},
	allowedKeys = {
		[Enum.KeyCode.LeftShift] = "LShift",
		[Enum.KeyCode.RightShift] = "RShift",
		[Enum.KeyCode.LeftControl] = "LCtrl",
		[Enum.KeyCode.RightControl] = "RCtrl",
		[Enum.KeyCode.LeftAlt] = "LAlt",
		[Enum.KeyCode.RightAlt] = "RAlt",
		[Enum.KeyCode.CapsLock] = "CAPS",
		[Enum.KeyCode.One] = "1",
		[Enum.KeyCode.Two] = "2",
		[Enum.KeyCode.Three] = "3",
		[Enum.KeyCode.Four] = "4",
		[Enum.KeyCode.Five] = "5",
		[Enum.KeyCode.Six] = "6",
		[Enum.KeyCode.Seven] = "7",
		[Enum.KeyCode.Eight] = "8",
		[Enum.KeyCode.Nine] = "9",
		[Enum.KeyCode.Zero] = "0",
		[Enum.KeyCode.KeypadOne] = "Num-1",
		[Enum.KeyCode.KeypadTwo] = "Num-2",
		[Enum.KeyCode.KeypadThree] = "Num-3",
		[Enum.KeyCode.KeypadFour] = "Num-4",
		[Enum.KeyCode.KeypadFive] = "Num-5",
		[Enum.KeyCode.KeypadSix] = "Num-6",
		[Enum.KeyCode.KeypadSeven] = "Num-7",
		[Enum.KeyCode.KeypadEight] = "Num-8",
		[Enum.KeyCode.KeypadNine] = "Num-9",
		[Enum.KeyCode.KeypadZero] = "Num-0",
		[Enum.KeyCode.Minus] = "-",
		[Enum.KeyCode.Equals] = "=",
		[Enum.KeyCode.Tilde] = "~",
		[Enum.KeyCode.LeftBracket] = "[",
		[Enum.KeyCode.RightBracket] = "]",
		[Enum.KeyCode.RightParenthesis] = ")",
		[Enum.KeyCode.LeftParenthesis] = "(",
		[Enum.KeyCode.Semicolon] = ";",
		[Enum.KeyCode.Quote] = "'",
		[Enum.KeyCode.BackSlash] = "\\",
		[Enum.KeyCode.Comma] = ",",
		[Enum.KeyCode.Period] = ".",
		[Enum.KeyCode.Slash] = "/",
		[Enum.KeyCode.Asterisk] = "*",
		[Enum.KeyCode.Plus] = "+",
		[Enum.KeyCode.Period] = ".",
		[Enum.KeyCode.Backquote] = "`"
	}
}
local SeverAllConnections = nil
function SeverAllConnections(t, cache)
	cache = cache or {}
	for k, v in next, t do
		t[k] = nil
		if v ~= nil then
			if cache[v] then
				continue
			end
			local te = v and typeof(v)
			if te then
				if te == "RBXScriptConnection" then
					--v:Disconnect()
				elseif te == "Instance" then
					--v:Destroy()
				elseif te == "table" then
					cache[v] = true
					SeverAllConnections(v, cache)
				end
			end
		end
	end
end
local function hardunload(library)
	if library.UnloadCallback and (type(library.UnloadCallback) == "function") then
		local x, e = pcall(library.UnloadCallback)
		if not x and e then
			task.spawn(error, e, 2)
		end
	end
	for cflag, data in next, elements do
		if data.Type ~= "Persistence" then
			if data.Set and data.Options.UnloadValue ~= nil then
				data.Set(data.Options.UnloadValue)
			end
			if data.Options.UnloadFunc then
				local y, u = pcall(data.Options.UnloadFunc)
				if not y and u then
					warn(debug.traceback("Error unloading '" .. tostring(cflag) .. "'\n" .. u))
				end
			end
		end
	end
	local hardcache = {}
	SeverAllConnections(library.signals, hardcache)
	SeverAllConnections(library.objects, hardcache)
	hardcache = (table.clear(hardcache) and nil) or nil
	library.signals = nil
	library.objects = nil
end
library.Subs.UnloadArg = hardunload
local function unloadall()
	if shared.libraries then
		local b = 50
		while #shared.libraries > 0 do
			b = b - 1
			if b < 0 then
				b = 50
				wait(warn("Looped 50 times while unloading....?"))
			end
			local v = shared.libraries[1]
			if v and v.unload and (type(v.unload) == "function") then
				if not pcall(v.unload) then
					pcall(hardunload, v)
					for k in next, v do
						v[k] = nil
					end
				end
				if shared.libraries then
					pcall(function()
						table.remove(shared.libraries, 1)
					end)
				else
					return pcall(hardunload, library)
				end
			end
		end
	end
	shared.libraries = nil
end
shared.unloadall = unloadall
library.unloadall = unloadall
shared.libraries[1 + #shared.libraries] = library
function library.unload()
	__runscript = nil
	hardunload(library)
	if shared.libraries then
		for k, v in next, shared.libraries or {} do
			if v == library then
				for k in next, table.remove(shared.libraries or {}, k) do
					v[k] = nil
				end
				break
			end
		end
		if shared.libraries and (#shared.libraries == 0) then
			shared.libraries = nil
		end
	end
	warn("Unloaded")
end
library.Unload = library.unload
local Instance_new = (syn and syn.protect_gui and function(...)
	local x = {Instance.new(...)}
	if x[1] then
		library.objects[1 + #library.objects] = x[1]
		pcall(syn.protect_gui, x[1])
	end
	return unpack(x)
end) or function(...)
	local x = {Instance.new(...)}
	if x[1] then
		library.objects[1 + #library.objects] = x[1]
	end
	return unpack(x)
end
library.subs.Instance_new = Instance_new
local playersservice = game:GetService("Players")
local function getresolver(listt, filter, method, _)
	local huo, args = type(filter), {}
	local hou = typeof(listt)
	return ((hou == "function") and function(...)
		return listt(...)
	end) or ((hou == "table") and function()
		return listt
	end) or function()
		local hardtype = nil
		local g = listt
		for _ = 1, 5 do
			hardtype = typeof(g)
			if hardtype == "function" then
				local x, e = pcall(listt)
				if x and e then
					g = e
				end
				hardtype = typeof(g)
			end
			if hardtype == "Instance" then
				local lastg = g
				if method == nil and listt == playersservice then
					g = listt:GetPlayers()
				end
				if method then
					local metype = type(method)
					if metype == "table" then
						method = method.Method or method[1]
						args = method.Args or method.Arguments or unpack(method, (method.Method ~= nil and 1) or 2)
						metype = type(method)
					end
					local y, u = nil, nil
					if metype == "function" then
						y, u = pcall(method, listt, unpack(args))
					elseif metype == "string" then
						local y, u = pcall(function()
							return listt[method](listt, unpack(args))
						end)
					else
						warn("Idk how to handle method type of", metype, debug.traceback(""))
					end
					if u then
						if y then
							g = u
						else
							warn("Error trying method", method, "on", listt, debug.traceback(u))
						end
					end
				end
				if g == lastg then
					g = listt:GetChildren()
				end
			end
			if hardtype == "Enum" then
				g = listt:GetEnumItems()
			end
			hardtype = typeof(g)
			if hardtype == "table" then
				break
			end
		end
		hardtype = typeof(g)
		if hardtype ~= "table" then
			warn("Could not resolve " .. hou .. " type to a list.")
			return {}
		end
		if filter then
			if huo == "function" then
				local accept = {}
				for _, v in next, g do
					local x, e = pcall(filter, v)
					if x and e then
						accept[1 + #accept] = (e == true and v) or e
					end
				end
				g = accept
			elseif huo == "string" then
				local accept = {}
				for _, v in next, g do
					if tostring(v):lower():find(huo) then
						accept[1 + #accept] = v
					end
				end
				g = accept
			elseif huo == "table" then
				local accept = {}
				if type(filter[1]) == "string" then
					for _, v in next, g do
						if tostring(v):lower():find(huo) then
							accept[1 + #accept] = v
						elseif filter[0] then
							accept[1 + #accept] = v
						end
					end
				else
					for _, v in next, g do
						if not table.find(filter, v) and not table.find(filter, tostring(v)) then
							accept[1 + #accept] = v
						elseif not filter[0] then
							accept[1 + #accept] = v
						end
					end
				end
				g = accept
			end
		end
		return g
	end
end
library.subs.GetResolver = getresolver
local function resetall()
	destroyrainbowsg = true
	pcall(function()
		for k, v in next, elements do
			if v and k and v.Set and (v.Default ~= nil) and (library_flags[k] ~= v.Default) and (string.sub(k, 1, 11) ~= "__Designer.") then
				v:Set(v.Default)
			end
		end
	end)
end
library.ResetAll = resetall
local textService = game:GetService("TextService")
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local LP = playersservice.LocalPlayer
library.LP = LP
library.Players = playersservice
library.UserInputService = userInputService
library.RunService = runService
local mouse = LP and LP:GetMouse()
if not mouse and PluginManager and runService:IsStudio() then
	shared.library_plugin = shared.library_plugin or print("Creating Studio Test-Plugin...") or PluginManager():CreatePlugin()
	mouse = shared.library_plugin:GetMouse()
	library.plugin = shared.library_plugin
end
library.Mouse = mouse
local textToSize = nil
do
	local textService = game:GetService("TextService")
	local bigv2 = Vector2.one * math.huge
	function textToSize(object)
		return textService:GetTextSize(object.Text, object.TextSize, object.Font, bigv2)
	end
end
library.subs.textToSize = textToSize
local function removeSpaces(str)
	if str then
		local newStr = str:gsub(" ", "")
		return newStr
	end
end
library.subs.removeSpaces = removeSpaces
local function Color3FromHex(hex)
	hex = hex:gsub("#", ""):upper():gsub("0X", "")
	return Color3.fromRGB(tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16))
end
library.subs.Color3FromHex = Color3FromHex
local floor = math.floor
local function Color3ToHex(color)
	local r, g, b = string.format("%X", floor(color.R * 255)), string.format("%X", floor(color.G * 255)), string.format("%X", floor(color.B * 255))
	if #r < 2 then
		r = "0" .. r
	end
	if #g < 2 then
		g = "0" .. g
	end
	if #b < 2 then
		b = "0" .. b
	end
	return string.format("%s%s%s", r, g, b)
end
if Color3.ToHex and not shared.overridecolortohex then
	local x, e = pcall(Color3.ToHex, Color3.new())
	if x and type(e) == "string" and #e == 6 then
		Color3ToHex = Color3.ToHex
	end
end
library.subs.Color3ToHex = Color3ToHex
local isDraggingSomething = false
local function makeDraggable(topBarObject, object)
	local dragging = nil
	local dragInput = nil
	local dragStart = nil
	local startPosition = nil
	library.signals[1 + #library.signals] = topBarObject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPosition = object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	library.signals[1 + #library.signals] = topBarObject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	library.signals[1 + #library.signals] = userInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			if not isDraggingSomething and library.configuration.smoothDragging then
				tweenService:Create(object, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
					Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
				}):Play()
			elseif not isDraggingSomething and not library.configuration.smoothDragging then
				object.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
			end
		end
	end)
end
library.subs.makeDraggable = makeDraggable
local JSONEncode, JSONDecode = nil, nil
do
	local temp_http = game:FindService("HttpService") or game:GetService("HttpService")
	local httpservice = temp_http
	if cloneref and (type(cloneref) == "function") then
		httpservice, temp_http = cloneref(httpservice), nil
	end
	library.Http = httpservice
	local JSONEncodeFunc = httpservice.JSONEncode
	function JSONEncode(...)
		return pcall(JSONEncodeFunc, httpservice, ...)
	end
	library.JSONEncode = JSONEncode
	local JSONDecodeFunc = httpservice.JSONDecode
	function JSONDecode(...)
		return pcall(JSONDecodeFunc, httpservice, ...)
	end
	library.JSONDecode = JSONDecode
end
local convertfilename
do
	local string_gsub = string.gsub
	function convertfilename(str, default, replace)
		replace = replace or "_"
		local corrections = 0
		local predname = string_gsub(str, "%W", function(c)
			local byt = c:byte()
			if ((byt == 0) or (byt == 32) or (byt == 33) or (byt == 59) or (byt == 61) or ((byt >= 35) and (byt <= 41)) or ((byt >= 43) and (byt <= 57)) or ((byt >= 64) and (byt <= 123)) or ((byt >= 125) and (byt <= 127))) then
			else
				corrections = 1 + corrections
				return replace
			end
		end)
		return (default and corrections == #predname and tostring(default)) or predname
	end
	library.subs.ConvertFilename = convertfilename
end
do
	do
		local function NewOption(TextStr, Order, Parent)
			local Option = Instance_new("Frame")
			local BBorder = Instance_new("Frame")
			local Inner_2 = Instance_new("Frame")
			local Border_2 = Instance_new("Frame")
			local Text = Instance_new("TextLabel")
			local Button = Instance_new("TextButton")
			Option.AnchorPoint = Vector2.new(0, 0.5)
			Option.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Option, "BackgroundColor3", "background"}
			Option.BorderColor3 = Color3.fromRGB(27, 27, 27)
			Option.LayoutOrder = Order or #Parent:GetChildren()
			Option.Name = "Option"
			Option.Position = UDim2.new(0, 5, 0.5, 0)
			Option.Size = UDim2.new(0, 35, 0, 25)
			BBorder.AnchorPoint = Vector2.new(0.5, 0.5)
			BBorder.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {BBorder, "BackgroundColor3", "background"}
			BBorder.BorderColor3 = Color3.fromRGB(50, 43, 50)
			BBorder.BorderMode = Enum.BorderMode.Inset
			BBorder.Name = "BBorder"
			BBorder.Parent = Option
			BBorder.Position = UDim2.new(0.5, 0, 0.5, 0)
			BBorder.Size = UDim2.new(1, 0, 1, 0)
			Inner_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Inner_2.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Inner_2, "BackgroundColor3", "background"}
			Inner_2.BorderColor3 = Color3.fromRGB(27, 27, 27)
			Inner_2.Name = "Inner"
			Inner_2.Parent = Option
			Inner_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Inner_2.Size = UDim2.new(1, -6, 1, -6)
			Border_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Border_2.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Border_2, "BackgroundColor3", "background"}
			Border_2.BorderColor3 = Color3.fromRGB(50, 43, 50)
			Border_2.BorderMode = Enum.BorderMode.Inset
			Border_2.Name = "Border"
			Border_2.Parent = Inner_2
			Border_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border_2.Size = UDim2.new(1, 0, 1, 0)
			Text.AnchorPoint = Vector2.new(0.5, 0.5)
			Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text.BackgroundTransparency = 1
			Text.Font = Enum.Font.Code
			Text.FontSize = Enum.FontSize.Size14
			Text.Name = "Text"
			Text.Parent = Border_2
			Text.Position = UDim2.new(0.5, 0, 0.5, 0)
			Text.Size = UDim2.new(1, 0, 1, 0)
			Text.TextColor3 = library.colors.elementText
			colored[1 + #colored] = {Text, "TextColor3", "elementText"}
			Text.TextSize = 14
			Text.TextStrokeTransparency = 0.75
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1
			Button.BorderSizePixel = 0
			Button.Font = Enum.Font.SourceSans
			Button.FontSize = Enum.FontSize.Size14
			Button.Name = "Button"
			Button.Parent = Option
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14
			Button.TextTransparency = 1
			Text.Text = TextStr
			local siz = textToSize(Text)
			Option.Size = UDim2.new(0, math.max(siz.X, 28) + 12, 0, 25)
			Option.Parent = Parent
			return Option, Button, Text
		end
		local function AddOption(OptionData, Key, OptionCount, Parent, Close, PromptEvent, KeepOpen)
			local Enabled = OptionData.Enabled
			if OptionData.Disabled then
				Enabled = false
			else
				Enabled = Enabled or (Enabled == nil)
			end
			local OptionText = OptionData.Text or OptionData.String or OptionData.Message or OptionData.Value or OptionData.Name or Key
			local Callback = OptionData.Callback or OptionData.OnPressed or OptionData.Function or nil
			local Order = tonumber(OptionData.Slot or OptionData.Order or OptionData.LayoutOrder or OptionData.Index or OptionCount)
			local OptionIns, OptionButton, OptionTxt = NewOption(tostring(OptionText), Order, Parent)
			local OptionObj = {
				Text = OptionText,
				Callback = Callback,
				ButtonObject = OptionIns,
				Pressed = OptionButton.MouseButton1Click,
				PressedRight = OptionButton.MouseButton2Click,
				Activated = OptionButton.Activated,
				TextButton = OptionButton,
				Order = Order,
				Enabled = Enabled
			}
			function OptionObj.Remove()
				do
					local Btn = OptionObj.ButtonObject
					if Btn then
						Btn:Destroy()
					end
				end
				for k in next, OptionObj do
					rawset(OptionObj, k, nil)
				end
				return true
			end
			local Proxy = nil
			local function Clicked(f)
				return function(...)
					if f then
						task.spawn(f, ...)
					end
					PromptEvent:Fire(Key, OptionButton.Text, ...)
					if KeepOpen then
					else
						Close()
					end
				end
			end
			function OptionObj.Press(...)
				OptionObj.Update()
				Proxy = Proxy or Clicked(Callback)
				Proxy(...)
			end
			function OptionObj.Lock()
				OptionObj.Enabled = false
				OptionObj.Update()
			end
			function OptionObj.Unlock()
				OptionObj.Enabled = true
				OptionObj.Update()
			end
			function OptionObj.SetLocked(self, state)
				if type(self) == "boolean" then
					state = self
				end
				OptionObj.Enabled = state
				OptionObj.Update()
			end
			function OptionObj.SetCondition(self, Condition)
				if type(self) ~= "table" then
					Condition = self
				end
				OptionObj.Condition = Condition
				OptionObj.Update()
			end
			function OptionObj.Update()
				do
					local OptionText = OptionObj.Text or OptionData.Text or OptionData.String or OptionData.Message or OptionData.Value or OptionData.Name or OptionButton.Text or Key
					OptionButton.Text = tostring(OptionText)
				end
				OptionIns.LayoutOrder = tonumber(OptionObj.Order or OptionData.Slot or OptionData.Order or OptionData.LayoutOrder or OptionData.Index or OptionIns.LayoutOrder or OptionCount)
				do
					local Enabled = OptionData.Enabled
					local Cond = OptionObj.Condition
					if Cond then
						local x, e = pcall(Cond, OptionObj)
						if x then
							Enabled = e and true
						else
							warn(debug.traceback(string.format("Error in prompt-option %s's Condition function: %s", OptionButton.Text, e), 2))
						end
					else
						if OptionData.Disabled then
							Enabled = false
						else
							Enabled = (Enabled and true) or (Enabled == nil)
						end
					end
					local Proxy = nil
					do
						local nCallback = (Enabled and (OptionData.Callback or OptionData.OnPressed or OptionData.Function)) or nil
						if not Proxy or Callback ~= nCallback then
							Callback = nCallback
							Proxy = Clicked(Callback)
							OptionObj.PressedConnection = (OptionObj.PressedConnection and OptionObj.PressedConnection:Disconnect() and nil) or (Callback and OptionObj.Pressed:Connect(Proxy)) or nil
						end
						local PC = OptionObj.PressedConnection
						if Enabled then
							if PC then
								if Callback then
								else
									OptionObj.PressedConnection = (PC:Disconnect() and nil) or nil
								end
							elseif Callback then
								Proxy = Proxy or Clicked(Callback)
								OptionObj.PressedConnection = OptionObj.Pressed:Connect(Proxy)
							end
						elseif PC then
							OptionObj.PressedConnection = (PC:Disconnect() and nil) or nil
						end
					end
					OptionObj.Enabled = Enabled
					OptionTxt.TextTransparency = (Enabled and 0) or 0.5
				end
				return OptionObj
			end
			OptionObj.Update()
			return OptionObj
		end
		local function SortByLayoutOrder(a, b)
			return a.Order < b.Order
		end
		local DefaultSelections = {
			Ok = true
		}
		function library.Prompt(self, PromptData, ...)
			if rawequal(self, library) then
			else
				PromptData, self = self, library
			end
			local PromptEvent = Instance_new("BindableEvent")
			local PromptObj = {
				OnSelect = PromptEvent.Event,
				Active = true,
				SelectedEvent = PromptEvent
			}
			local ChoicePopup = Instance_new("Frame")
			local Buttons = Instance_new("ScrollingFrame")
			local Title = Instance_new("TextLabel")
			local Description = Instance_new("TextLabel")
			local DoClose = PromptData.CloseButton
			DoClose = (DoClose == nil) or (DoClose == true) or DoClose or nil
			local Close = DoClose and Instance_new("ImageButton")
			do
				local Border = Instance_new("Frame")
				local Inner = Instance_new("Frame")
				local InnerBorder = Instance_new("Frame")
				local Bar = Instance_new("Frame")
				local Splitter = Instance_new("Frame")
				local ButtonBar = Instance_new("Frame")
				local UIListLayout = Instance_new("UIListLayout")
				ChoicePopup.AnchorPoint = Vector2.new(0.5, 0.5)
				ChoicePopup.BackgroundColor3 = library.colors.background
				colored[1 + #colored] = {ChoicePopup, "BackgroundColor3", "background"}
				ChoicePopup.BorderColor3 = library.colors.outerBorder
				colored[1 + #colored] = {ChoicePopup, "BorderColor3", "outerBorder"}
				ChoicePopup.Name = "ChoicePopup"
				ChoicePopup.Position = UDim2.new(0.5, 0, 0.5, 0)
				ChoicePopup.Size = UDim2.new(0, 325, 0, 100)
				Border.AnchorPoint = Vector2.new(0.5, 0.5)
				Border.BackgroundColor3 = library.colors.background
				colored[1 + #colored] = {Border, "BackgroundColor3", "background"}
				Border.BorderColor3 = library.colors.innerBorder
				colored[1 + #colored] = {Border, "BorderColor3", "innerBorder"}
				Border.BorderMode = Enum.BorderMode.Inset
				Border.Name = "Border"
				Border.Parent = ChoicePopup
				Border.Position = UDim2.new(0.5, 0, 0.5, 0)
				Border.Size = UDim2.new(1, 0, 1, 0)
				Inner.AnchorPoint = Vector2.new(0.5, 0.5)
				Inner.BackgroundColor3 = library.colors.background
				colored[1 + #colored] = {Inner, "BackgroundColor3", "background"}
				Inner.BorderColor3 = library.colors.outerBorder
				colored[1 + #colored] = {Inner, "BorderColor3", "outerBorder"}
				Inner.Name = "Inner"
				Inner.Parent = ChoicePopup
				Inner.Position = UDim2.new(0.5, 0, 0.5, 0)
				Inner.Size = UDim2.new(1, -8, 1, -8)
				InnerBorder.AnchorPoint = Vector2.new(0.5, 0.5)
				InnerBorder.BackgroundColor3 = library.colors.background
				colored[1 + #colored] = {InnerBorder, "BackgroundColor3", "background"}
				InnerBorder.BorderColor3 = library.colors.innerBorder
				colored[1 + #colored] = {InnerBorder, "BorderColor3", "innerBorder"}
				InnerBorder.BorderMode = Enum.BorderMode.Inset
				InnerBorder.Name = "InnerBorder"
				InnerBorder.Parent = Inner
				InnerBorder.Position = UDim2.new(0.5, 0, 0.5, 0)
				InnerBorder.Size = UDim2.new(1, 0, 1, 0)
				Bar.BackgroundColor3 = library.colors.main
				colored[1 + #colored] = {Bar, "BackgroundColor3", "main"}
				Bar.BorderSizePixel = 0
				Bar.Name = "Bar"
				Bar.Parent = InnerBorder
				Bar.Size = UDim2.new(1, 0, 0, 3)
				Splitter.AnchorPoint = Vector2.new(0, 1)
				Splitter.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
				Splitter.BorderSizePixel = 0
				Splitter.Name = "Splitter"
				Splitter.Parent = InnerBorder
				Splitter.Position = UDim2.new(0, 0, 1, -35)
				Splitter.Size = UDim2.new(1, 0, 0, 1)
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1
				Title.Font = Enum.Font.Code
				Title.FontSize = Enum.FontSize.Size18
				Title.Parent = InnerBorder
				Title.Position = UDim2.new(0, 6, 0, 4)
				Title.Size = UDim2.new(0, 300, 0, 25)
				Title.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {Title, "TextColor3", "elementText"}
				Title.TextSize = 15
				Title.TextStrokeTransparency = 0.95
				Title.TextXAlignment = Enum.TextXAlignment.Left
				Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Description.BackgroundTransparency = 1
				Description.Font = Enum.Font.Code
				Description.FontSize = Enum.FontSize.Size14
				Description.Name = "Description"
				Description.Parent = InnerBorder
				Description.Position = UDim2.new(0, 6, 0, 25)
				Description.Size = UDim2.new(0, 300, 0, 25)
				Description.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {Description, "TextColor3", "elementText"}
				Description.TextSize = 14
				Description.TextStrokeTransparency = 0.95
				Description.TextTruncate = Enum.TextTruncate.AtEnd
				Description.TextWrap = true
				Description.TextWrapped = true
				Description.TextXAlignment = Enum.TextXAlignment.Left
				if Close then
					Close.AnchorPoint = Vector2.new(1)
					Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Close.BackgroundTransparency = 1
					Close.Image = "http://www.roblox.com/asset/?id=9064270627"
					Close.ImageColor3 = library.colors.section
					colored[1 + #colored] = {Close, "ImageColor3", "section"}
					Close.Name = "Close"
					Close.Parent = InnerBorder
					Close.Position = UDim2.new(1, -9, 0, 11)
					Close.ScaleType = Enum.ScaleType.Fit
					Close.Size = UDim2.new(0, 10, 0, 10)
				end
				ButtonBar.AnchorPoint = Vector2.new(0, 1)
				ButtonBar.BackgroundColor3 = library.colors.sectionBackground
				colored[1 + #colored] = {ButtonBar, "BackgroundColor3", "sectionBackground"}
				ButtonBar.BorderSizePixel = 0
				ButtonBar.Name = "ButtonBar"
				ButtonBar.Parent = InnerBorder
				ButtonBar.Position = UDim2.new(0, 0, 1, 0)
				ButtonBar.Size = UDim2.new(1, 0, 0, 35)
				Buttons.AutomaticCanvasSize = Enum.AutomaticSize.X
				Buttons.BackgroundColor3 = library.colors.sectionBackground
				colored[1 + #colored] = {Buttons, "BackgroundColor3", "sectionBackground"}
				Buttons.BorderColor3 = library.colors.background
				colored[1 + #colored] = {Buttons, "BorderColor3", "background"}
				Buttons.BorderSizePixel = 0
				Buttons.BottomImage = ""
				Buttons.CanvasSize = UDim2.new(0, 0, 0, 0)
				Buttons.MidImage = ""
				Buttons.Name = "Buttons"
				Buttons.Parent = ButtonBar
				Buttons.Position = UDim2.new(0, 6, 0, 0)
				Buttons.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
				Buttons.ScrollBarImageTransparency = 1
				Buttons.ScrollBarThickness = 0
				Buttons.ScrollingDirection = Enum.ScrollingDirection.X
				Buttons.Selectable = false
				Buttons.Size = UDim2.new(1, -12, 1, 0)
				Buttons.TopImage = ""
				UIListLayout.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout.Padding = UDim.new(0, 10)
				UIListLayout.Parent = Buttons
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			end
			PromptObj.FrameInstance = ChoicePopup
			PromptObj.Closed = ChoicePopup.Destroying
			local function ClosePrompt(method)
				--PromptObj.Active = (ChoicePopup and ChoicePopup:Destroy() and nil) or (PromptEvent:Fire("Close", method and (method == "timeout_")) and nil) or nil
			end
			PromptObj.Close = ClosePrompt
			if Close then
				Close.MouseButton1Click:Connect(((DoClose ~= true) and DoClose) or ClosePrompt)
			end
			do
				local NameTxt = PromptData.Name
				Title.Text = ((NameTxt ~= nil) and tostring(NameTxt)) or "Untitled Prompt"
			end
			do
				local DescriptionTxt = PromptData.Description
				if DescriptionTxt == nil then
					DescriptionTxt = PromptData.Text
					if DescriptionTxt == nil then
						DescriptionTxt = PromptData.String
						if DescriptionTxt == nil then
							DescriptionTxt = PromptData.Message
							if DescriptionTxt == nil then
								DescriptionTxt = PromptData.Value
							end
						end
					end
				end
				Description.Text = ((DescriptionTxt ~= nil) and tostring(DescriptionTxt)) or ""
			end
			do
				local Selections = PromptData.Options or PromptData.Buttons or PromptData.Choices
				if Selections then
					if type(Selections) ~= "table" then
						Selections = {
							OK = Selections
						}
					end
				else
					Selections = DefaultSelections
				end
				local OptionCount = 0
				local ButtonsProxy = {}
				PromptObj.Buttons = ButtonsProxy
				function PromptObj.ReOrder(self, SortFunc)
					if self ~= ButtonsProxy then
						SortFunc, self = self, nil
					end
					if SortFunc and (type(SortFunc) ~= "function") then
						SortFunc = SortByLayoutOrder
					end
					local BtnOrder = {}
					for _, Data in next, ButtonsProxy do
						BtnOrder[1 + #BtnOrder] = Data
					end
					table.sort(BtnOrder, SortFunc or SortByLayoutOrder)
					for Order, Data in next, BtnOrder do
						Data.Order = Order or Data.Order
						local UpdateFunc = Data.Update
						if UpdateFunc then
							spawn(UpdateFunc)
						else
							local Frame = Data.ButtonObject
							if Frame then
								Frame.LayoutOrder = Order
							end
						end
					end
					return ButtonsProxy
				end
				function PromptObj.PressAll(self, ...)
					local isSelf = nil
					if self and rawequal(self, PromptObj) then
						isSelf = true
					end
					for _, Data in next, ButtonsProxy do
						local f = Data.Callback
						if f then
							if isSelf then
								f(...)
							else
								f(self, ...)
							end
						end
					end
				end
				local KeepOpen = PromptData.KeepOpen
				for Key, OptionData in next, Selections do
					OptionCount += 1
					do
						local typ = OptionData and type(OptionData)
						if typ ~= "table" then
							OptionData = {
								Name = ((typ == "string") and (type(Key) == "number") and OptionData) or Key,
								Callback = ((typ == "function") and OptionData) or ClosePrompt
							}
						end
					end
					ButtonsProxy[Key] = AddOption(OptionData, Key, OptionCount, Buttons, ClosePrompt, PromptEvent, KeepOpen)
				end
			end
			do
				local to = PromptData.Timeout
				to = to and tonumber(to)
				if to then
					task.delay(to, ClosePrompt, "timeout_")
				end
			end
			ChoicePopup.Parent = MainScreenGui
			makeDraggable(ChoicePopup, ChoicePopup)
			return PromptObj, ChoicePopup
		end
	end
	do
		local Popups = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		library.NotifyLayout = UIListLayout
		Popups.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Popups.BackgroundTransparency = 1
		Popups.Name = "Popups"
		Popups.Position = UDim2.new(0, 10, 0, 10)
		Popups.Size = UDim2.new(1, -20, 1, -20)
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout.Padding = UDim.new(0, 5)
		UIListLayout.Parent = Popups
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		Popups.Parent = MainScreenGui
		library.NotificationsFrame = Popups
		local Inverse = true
		local os_clock = os.clock
		local Notifications = {}
		library.Notifications = Notifications
		spawn(function()
			local v1, vtop, htop = Enum.FillDirection.Vertical, Enum.VerticalAlignment.Top, Enum.HorizontalAlignment.Center
			while wait_check() do
				local Len = #Notifications
				while wait_check() and (Len <= 0) do
					Len = #Notifications
					if wait_check(0.25) then
					else
						return
					end
				end
				Inverse = ((UIListLayout.FillDirection == v1) and (UIListLayout.VerticalAlignment ~= vtop)) or (UIListLayout.HorizontalAlignment ~= htop)
				local BreathingRoom, now = 10, os_clock()
				local Order = 0
				for Index = Len, 1, -1 do
					BreathingRoom -= 1
					if BreathingRoom <= 0 then
						if wait_check() then
							BreathingRoom, now = 10, os_clock()
						else
							return
						end
					end
					local Noti = Notifications[Index]
					local Obj = Noti and Noti.Object
					if Obj and Noti.Active and (Noti.Paused or ((now - Noti.Expires) < Noti.Duration)) then
						if Noti.TextLabel.Text ~= Noti.Text then
							Noti:SetText(Noti.Text)
						end
						if Obj.Visible then
							Order += 1
							Obj.LayoutOrder = Order * ((Inverse and -1) or 1)
						end
						continue
					end
					Noti.Object = ((Noti.Object and Noti.Object:Destroy()) and nil) or (Noti.Destroy() and nil) or (table.remove(Notifications, Index) and nil) or nil
				end
			end
		end)
		function library.Notify(self, NotificationData, ...)
			if rawequal(self, library) then
			else
				NotificationData, self = self, library
			end
			local now = os_clock()
			local dur = NotificationData.Time or 6
			local TextStr = NotificationData.Text or NotificationData.String or NotificationData.Value or NotificationData.Message or NotificationData.Msg
			TextStr = ((TextStr == nil) and "No text given") or tostring(TextStr)
			local NotificationObj = {
				InitTime = now,
				Active = true,
				Forced = false,
				Duration = dur,
				Expires = now + dur,
				Paused = (NotificationData.Paused and true) or false,
				Text = TextStr,
				Arguments = NotificationData
			}
			NotificationObj.Forced = NotificationObj.Paused
			local Notification = Instance.new("Frame")
			NotificationObj.Object = Notification
			local Border = Instance.new("Frame")
			local Inner = Instance.new("Frame")
			local Border_2 = Instance.new("Frame")
			local Text = Instance.new("TextLabel")
			NotificationObj.TextLabel = Text
			local Bar = Instance.new("Frame")
			local Close = Instance.new("ImageButton")
			Notification.AnchorPoint = Vector2.one
			Notification.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Notification, "BackgroundColor3", "background"}
			Notification.BorderColor3 = library.colors.outerBorder
			colored[1 + #colored] = {Notification, "BorderColor3", "outerBorder"}
			Notification.Name = "Notification"
			Notification.Position = UDim2.new(1, -10, 1, -10)
			Notification.Size = UDim2.new(0, 5e4, 0, 32)
			Border.AnchorPoint = Vector2.new(0.5, 0.5)
			Border.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Border, "BackgroundColor3", "background"}
			Border.BorderColor3 = library.colors.innerBorder
			colored[1 + #colored] = {Border, "BorderColor3", "innerBorder"}
			Border.BorderMode = Enum.BorderMode.Inset
			Border.Name = "Border"
			Border.Parent = Notification
			Border.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border.Size = UDim2.new(1, 0, 1, 0)
			Inner.AnchorPoint = Vector2.one / 2
			Inner.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Inner, "BackgroundColor3", "background"}
			Inner.BorderColor3 = library.colors.outerBorder
			colored[1 + #colored] = {Inner, "BorderColor3", "outerBorder"}
			Inner.Name = "Inner"
			Inner.Parent = Notification
			Inner.Position = UDim2.new(0.5, 0, 0.5, 0)
			Inner.Size = UDim2.new(1, -8, 1, -8)
			Border_2.AnchorPoint = Vector2.one / 2
			Border_2.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {Border_2, "BackgroundColor3", "background"}
			Border_2.BorderColor3 = library.colors.innerBorder
			colored[1 + #colored] = {Border_2, "BorderColor3", "innerBorder"}
			Border_2.BorderMode = Enum.BorderMode.Inset
			Border_2.Name = "Border"
			Border_2.Parent = Inner
			Border_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border_2.Size = UDim2.new(1, 0, 1, 0)
			Text.AnchorPoint = Vector2.new(0, 0.5)
			Text.BackgroundTransparency = 1
			Text.Font = Enum.Font.Code
			Text.FontSize = Enum.FontSize.Size14
			Text.Name = "Text"
			Text.Parent = Border_2
			Text.Position = UDim2.new(0, 8, 0.5, 0)
			Text.Size = UDim2.new(1, -8, 1, -7)
			Text.Text = TextStr
			Text.TextColor3 = library.colors.elementText
			colored[1 + #colored] = {Text, "TextColor3", "elementText"}
			Text.TextSize = 14
			Text.TextScaled = true
			Text.TextStrokeTransparency = 0.75
			Text.TextWrap = true
			Text.TextWrapped = true
			Text.TextXAlignment = Enum.TextXAlignment.Left
			Bar.BackgroundColor3 = library.colors.main
			colored[1 + #colored] = {Bar, "BackgroundColor3", "main"}
			Bar.BorderSizePixel = 0
			Bar.Name = "Bar"
			Bar.Parent = Border_2
			Bar.Size = UDim2.new(0, 3, 1, 0)
			Close.AnchorPoint = Vector2.new(1, 0.5)
			Close.BackgroundTransparency = 1
			Close.Image = "rbxassetid://5492252477"
			Close.ImageColor3 = library.colors.elementText
			colored[1 + #colored] = {Close, "ImageColor3", "elementText"}
			Close.Name = "Close"
			Close.Parent = Border_2
			Close.Position = UDim2.new(1, -6, 0.5, 0)
			Close.ScaleType = Enum.ScaleType.Fit
			Close.Size = UDim2.new(0, 10, 0, 10)
			Notification.Size = UDim2.new(0, 64 + textToSize(Text).X, 0, 32)
			Notification.Parent = Popups
			Notification.LayoutOrder = #Notification.Parent:GetChildren() * ((Inverse and 1) or -1)
			if Popups.Parent then
			else
				Popups.Parent = MainScreenGui
			end
			NotificationObj.OnClose = Close.Activated
			NotificationObj.InputBegan = Notification.InputBegan
			NotificationObj.Destroying = Notification.Destroying
			NotificationObj.MouseEnter = Notification.MouseEnter
			NotificationObj.MouseLeave = Notification.MouseLeave
			function NotificationObj.SetText(self, Str)
				if rawequal(self, NotificationObj) then
				else
					Str = self
				end
				Str = ((Str == nil) and "No text given") or tostring(Str)
				Text.Text, NotificationObj.Text = Str, Str
				Notification.Size = UDim2.new(0, 44 + Text.TextBounds.X, 0, 32)
				return Str, Text
			end
			local function Pause(self, Set, NoForce)
				if rawequal(self, NotificationObj) then
				else
					Set, NoForce = self, Set
				end
				local IsPaused = NotificationObj.Paused
				if Set == nil then
					Set = not IsPaused
				else
					Set = Set or false
				end
				if Set or (IsPaused == Set) then
				else
					NotificationObj.Expires = math.max(NotificationObj.Expires, os_clock() + math.clamp(NotificationObj.Duration / 2.5, 1, 3))
				end
				NotificationObj.Paused = Set
				if NoForce then
				else
					NotificationObj.Forced = Set
				end
				return Set
			end
			NotificationObj.SetPaused = Pause
			function NotificationObj.AddTime(self, Extension)
				if rawequal(self, NotificationObj) then
				else
					Extension = self
				end
				NotificationObj.Expires += Extension
			end
			function NotificationObj.Hide(self, SetPause)
				if Notification and NotificationObj.Active then
					if rawequal(self, NotificationObj) then
					else
						SetPause = self
					end
					if SetPause then
						Pause(true)
					end
					Notification.Visible = false
				end
			end
			function NotificationObj.Show(self, SetPause)
				if Notification and NotificationObj.Active then
					if rawequal(self, NotificationObj) then
					else
						SetPause = self
					end
					if SetPause then
						Pause(false)
					end
					Notification.Visible = true
				end
			end
			function NotificationObj.SetVisible(self, Visible, SetPause)
				if Notification and NotificationObj.Active then
					if rawequal(self, NotificationObj) then
					else
						Visible, SetPause = self, Visible
					end
					if Visible == nil then
						Notification.Visible = not Notification.Visible
					else
						Notification.Visible = (Visible and true) or false
					end
					if SetPause then
						Pause(Notification.Visible)
					end
				end
			end
			Notification.MouseEnter:Connect(function()
				if NotificationObj.Forced then
					return
				end
				Pause(true, true)
			end)
			Notification.MouseLeave:Connect(function()
				if NotificationObj.Forced then
					return
				end
				Pause(false, true)
			end)
			local function Destroy()
				if Notification then
					Notification:Destroy()
				end
				NotificationObj.Active = false
				NotificationObj.Object = nil
			end
			NotificationObj.Destroy = Destroy
			Close.Activated:Connect(Destroy)
			Notifications[1 + #Notifications] = NotificationObj
			return NotificationObj, Notification, Text
		end
	end
end
function library:CreateWindow(options, ...)
	options = (options and type(options) == "string" and resolvevararg("Window", options, ...)) or options
	local homepage = nil
	local windowoptions = options
	local windowName = options.Name or "Unnamed Window"
	options.Name = windowName
	if windowName and #windowName > 0 and library.WorkspaceName == "Pepsi Lib" then
		library.WorkspaceName = convertfilename(windowName, "Pepsi Lib")
	end
	local pepsiLibrary = Instance_new("ScreenGui")
	library.MainScreenGui, MainScreenGui = pepsiLibrary, pepsiLibrary
	local main = Instance_new("Frame")
	local mainBorder = Instance_new("Frame")
	local tabSlider = Instance_new("Frame")
	local innerMain = Instance_new("Frame")
	local innerMainBorder = Instance_new("Frame")
	local innerBackdrop = Instance_new("ImageLabel")
	local innerMainHolder = Instance_new("Frame")
	local tabsHolder = Instance_new("ImageLabel")
	local tabHolderList = Instance_new("UIListLayout")
	local tabHolderPadding = Instance_new("UIPadding")
	local headline = Instance_new("TextLabel")
	local splitter = Instance_new("TextLabel")
	local submenuOpen = nil
	library.globals["__Window" .. options.Name] = {
		submenuOpen = submenuOpen
	}
	pepsiLibrary.Name = "     "
	pepsiLibrary.Parent = library.gui_parent
	pepsiLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pepsiLibrary.DisplayOrder = 10
	pepsiLibrary.ResetOnSpawn = false
	main.Name = "main"
	main.Parent = pepsiLibrary
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.BackgroundColor3 = library.colors.background
	colored[1 + #colored] = {main, "BackgroundColor3", "background"}
	main.BorderColor3 = library.colors.outerBorder
	colored[1 + #colored] = {main, "BorderColor3", "outerBorder"}
	main.Position = UDim2.fromScale(0.5, 0.5)
	main.Size = UDim2.fromOffset(500, 545)
	makeDraggable(main, main)
	mainBorder.Name = "mainBorder"
	mainBorder.Parent = main
	mainBorder.AnchorPoint = Vector2.new(0.5, 0.5)
	mainBorder.BackgroundColor3 = library.colors.background
	colored[1 + #colored] = {mainBorder, "BackgroundColor3", "background"}
	mainBorder.BorderColor3 = library.colors.innerBorder
	colored[1 + #colored] = {mainBorder, "BorderColor3", "innerBorder"}
	mainBorder.BorderMode = Enum.BorderMode.Inset
	mainBorder.Position = UDim2.fromScale(0.5, 0.5)
	mainBorder.Size = UDim2.fromScale(1, 1)
	innerMain.Name = "innerMain"
	innerMain.Parent = main
	innerMain.AnchorPoint = Vector2.new(0.5, 0.5)
	innerMain.BackgroundColor3 = library.colors.background
	colored[1 + #colored] = {innerMain, "BackgroundColor3", "background"}
	innerMain.BorderColor3 = library.colors.outerBorder
	colored[1 + #colored] = {innerMain, "BorderColor3", "outerBorder"}
	innerMain.Position = UDim2.fromScale(0.5, 0.5)
	innerMain.Size = UDim2.new(1, -14, 1, -14)
	innerMainBorder.Name = "innerMainBorder"
	innerMainBorder.Parent = innerMain
	innerMainBorder.AnchorPoint = Vector2.new(0.5, 0.5)
	innerMainBorder.BackgroundColor3 = library.colors.background
	colored[1 + #colored] = {innerMainBorder, "BackgroundColor3", "background"}
	innerMainBorder.BorderColor3 = library.colors.innerBorder
	colored[1 + #colored] = {innerMainBorder, "BorderColor3", "innerBorder"}
	innerMainBorder.BorderMode = Enum.BorderMode.Inset
	innerMainBorder.Position = UDim2.fromScale(0.5, 0.5)
	innerMainBorder.Size = UDim2.fromScale(1, 1)
	innerMainHolder.Name = "innerMainHolder"
	innerMainHolder.Parent = innerMain
	innerMainHolder.BackgroundColor3 = Color3.new(1, 1, 1)
	innerMainHolder.BackgroundTransparency = 1
	innerMainHolder.Position = UDim2:fromOffset(25)
	innerMainHolder.Size = UDim2.new(1, 0, 1, -25)
	innerBackdrop.Name = "innerBackdrop"
	innerBackdrop.Parent = innerMainHolder
	innerBackdrop.BackgroundColor3 = Color3.new(1, 1, 1)
	innerBackdrop.BackgroundTransparency = 1
	innerBackdrop.Size = UDim2.fromScale(1, 1)
	innerBackdrop.ZIndex = -1
	innerBackdrop.Visible = library_flags["__Designer.Background.UseBackgroundImage"] and true
	innerBackdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
	innerBackdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
	innerBackdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
	library.Backdrop = innerBackdrop
	tabsHolder.Name = "tabsHolder"
	tabsHolder.Parent = innerMain
	tabsHolder.BackgroundColor3 = library.colors.topGradient
	colored[1 + #colored] = {tabsHolder, "BackgroundColor3", "topGradient"}
	tabsHolder.BorderSizePixel = 0
	tabsHolder.Position = UDim2.fromOffset(1, 1)
	tabsHolder.Size = UDim2.new(1, -2, 0, 23)
	tabsHolder.Image = "rbxassetid://2454009026"
	tabsHolder.ImageColor3 = library.colors.bottomGradient
	colored[1 + #colored] = {tabsHolder, "ImageColor3", "bottomGradient"}
	tabHolderList.Name = "tabHolderList"
	tabHolderList.Parent = tabsHolder
	tabHolderList.FillDirection = Enum.FillDirection.Horizontal
	tabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
	tabHolderList.VerticalAlignment = Enum.VerticalAlignment.Center
	tabHolderList.Padding = UDim:new(3)
	tabHolderPadding.Name = "tabHolderPadding"
	tabHolderPadding.Parent = tabsHolder
	tabHolderPadding.PaddingLeft = UDim:new(7)
	headline.Name = "headline"
	headline.Parent = tabsHolder
	headline.BackgroundColor3 = Color3.new(1, 1, 1)
	headline.BackgroundTransparency = 1
	headline.LayoutOrder = 1
	headline.Font = Enum.Font.Code
	headline.Text = (windowName and tostring(windowName)) or "???"
	headline.TextColor3 = library.colors.main
	colored[1 + #colored] = {headline, "TextColor3", "main"}
	headline.TextSize = 14
	headline.TextStrokeColor3 = library.colors.outerBorder
	colored[1 + #colored] = {headline, "TextStrokeColor3", "outerBorder"}
	headline.TextStrokeTransparency = 0.75
	headline.Size = UDim2:new(textToSize(headline).X + 4, 1)
	splitter.Name = "splitter"
	splitter.Parent = tabsHolder
	splitter.BackgroundColor3 = Color3.new(1, 1, 1)
	splitter.BackgroundTransparency = 1
	splitter.LayoutOrder = 2
	splitter.Size = UDim2:new(6, 1)
	splitter.Font = Enum.Font.Code
	splitter.Text = "|"
	splitter.TextColor3 = library.colors.tabText
	colored[1 + #colored] = {splitter, "TextColor3", "tabText"}
	splitter.TextSize = 14
	splitter.TextStrokeColor3 = library.colors.tabText
	colored[1 + #colored] = {splitter, "TextStrokeColor3", "tabText"}
	splitter.TextStrokeTransparency = 0.75
	tabSlider.Name = "tabSlider"
	tabSlider.Parent = main
	tabSlider.BackgroundColor3 = library.colors.main
	colored[1 + #colored] = {tabSlider, "BackgroundColor3", "main"}
	tabSlider.BorderSizePixel = 0
	tabSlider.Position = UDim2.fromOffset(100, 30)
	tabSlider.Size = UDim2:fromOffset(1)
	tabSlider.Visible = false
	local IgnoreCoreInputs = nil
	do
		local os_clock = os.clock
		library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(keyCode)
			if IgnoreCoreInputs or userInputService:GetFocusedTextBox() then
				return
			elseif keyCode.KeyCode == library.configuration.hideKeybind then
				if not lasthidebing or ((os_clock() - lasthidebing) > 12) then
					main.Visible = not main.Visible
				end
				lasthidebing = nil
			end
		end)
	end
	local windowFunctions = {
		tabCount = 0,
		selected = {},
		Flags = elements
	}
	library.globals["__Window" .. windowName].windowFunctions = windowFunctions
	function windowFunctions:Show(x)
		main.Visible = (x == nil) or (x == true) or (x == 1)
		return main.Visible
	end
	function windowFunctions:Hide(x)
		main.Visible = (x == false) or (x == 0)
		return main.Visible
	end
	function windowFunctions:Visibility(x)
		if x == nil then
			main.Visible = not main.Visible
		else
			main.Visible = x and true
		end
		return main.Visible
	end
	function windowFunctions:MoveTabSlider(tabObject)
		spawn(function()
			tabSlider.Visible = true
			tweenService:Create(tabSlider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
				Size = UDim2.fromOffset(tabObject.AbsoluteSize.X, 1),
				Position = UDim2.fromOffset(tabObject.AbsolutePosition.X, tabObject.AbsolutePosition.Y + tabObject.AbsoluteSize.Y) - UDim2.fromOffset(main.AbsolutePosition.X, main.AbsolutePosition.Y)
			}):Play()
		end)
	end
	windowFunctions.LastTab = nil
	function windowFunctions:CreateTab(options, ...)
		options = (options and (type(options) == "string") and resolvevararg("Tab", options, ...)) or options or {
			Name = "Pepsi Style: Elite Lego Hax"
		}
		local image = options.Image
		if image then
			image = resolveid(image)
		end
		local tabName = options.Name or "Unnamed Tab"
		options.Name = tabName
		windowFunctions.tabCount = windowFunctions.tabCount + 1
		local newTab = Instance_new((image and "ImageButton") or "TextButton")
		local newTabHolder = Instance_new("Frame")
		library.globals["__Window" .. windowName].newTabHolder = newTabHolder
		local left = Instance_new("ScrollingFrame")
		local leftList = Instance_new("UIListLayout")
		local leftPadding = Instance_new("UIPadding")
		local right = Instance_new("ScrollingFrame")
		local rightList = Instance_new("UIListLayout")
		local rightPadding = Instance_new("UIPadding")
		newTab.Name = removeSpaces((tabName and tostring(tabName):lower() or "???") .. "Tab")
		newTab.Parent = tabsHolder
		newTab.BackgroundTransparency = 1
		newTab.LayoutOrder = (options.LastTab and 99999) or tonumber(options.TabOrder or options.LayoutOrder) or (2 + windowFunctions.tabCount)
		local colored_newTab_TextColor3 = nil
		if image then
			newTab.Image = image
			newTab.ImageColor3 = options.ImageColor or options.Color or Color3.new(1, 1, 1)
			newTab.Size = UDim2:new(tabsHolder.AbsoluteSize.Y, 1)
		else
			colored_newTab_TextColor3 = {newTab, "TextColor3", "tabText"}
			colored[1 + #colored] = colored_newTab_TextColor3
			newTab.Font = Enum.Font.Code
			newTab.Text = (tabName and tostring(tabName)) or "???"
			if windowFunctions.tabCount ~= 1 then
				colored_newTab_TextColor3[4] = 1.35
				newTab.TextColor3 = darkenColor(library.colors.tabText, 1.35)
			else
				newTab.TextColor3 = library.colors.tabText
			end
			newTab.TextSize = 14
			newTab.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
			newTab.TextStrokeTransparency = 0.75
			newTab.Size = UDim2:new(textToSize(newTab).X + 4, 1)
		end
		local function goto()
			if not library.colorpicker and not submenuOpen and (windowFunctions.selected.button ~= newTab) and newTab.Parent and newTabHolder.Parent then
				pcall(function()
					for _, e in next, library.elements do
						if e and (type(e) == "table") then
							if e.Update then
								pcall(e.Update)
							end
							if e.UpdateAll then
								pcall(e.UpdateAll)
							end
						end
					end
				end)
				if windowFunctions.LastTab then
					windowFunctions.LastTab[4] = 1.35
				end
				windowFunctions:MoveTabSlider(newTab)
				if windowFunctions.selected.button.ClassName == "TextButton" then
					tweenService:Create(windowFunctions.selected.button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = darkenColor(library.colors.tabText, 1.35)
					}):Play()
				end
				if colored_newTab_TextColor3 then
					colored_newTab_TextColor3[4] = nil
				end
				windowFunctions.selected.holder.Visible = false
				windowFunctions.selected.button = newTab
				windowFunctions.selected.holder = newTabHolder
				if windowFunctions.selected.button.ClassName == "TextButton" then
					tweenService:Create(windowFunctions.selected.button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = library.colors.tabText
					}):Play()
				end
				windowFunctions.selected.holder.Visible = true
				windowFunctions.LastTab = colored_newTab_TextColor3
			end
		end
		if not homepage and newTab.LayoutOrder <= 4 then
			homepage = goto
		end
		library.signals[1 + #library.signals] = newTab.MouseButton1Click:Connect(goto)
		if windowFunctions.tabCount == 1 then
			tabSlider.Size = UDim2.fromOffset(newTab.AbsoluteSize.X, 1)
			tabSlider.Position = UDim2.fromOffset(newTab.AbsolutePosition.X, newTab.AbsolutePosition.Y + newTab.AbsoluteSize.Y) - UDim2.fromOffset(main.AbsolutePosition.X, main.AbsolutePosition.Y)
			tabSlider.Visible = true
			windowFunctions.selected.holder = newTabHolder
			windowFunctions.selected.button = newTab
		end
		newTabHolder.Name = removeSpaces((tabName and tabName:lower()) or "???") .. "TabHolder"
		newTabHolder.Parent = innerMainHolder
		newTabHolder.BackgroundColor3 = Color3.new(1, 1, 1)
		newTabHolder.BackgroundTransparency = 1
		newTabHolder.Size = UDim2.fromScale(1, 1)
		newTabHolder.Visible = windowFunctions.tabCount == 1
		left.Name = "left"
		left.Parent = newTabHolder
		left.BackgroundColor3 = Color3.new(1, 1, 1)
		left.BackgroundTransparency = 1
		left.Size = UDim2.fromScale(0.5, 1)
		left.CanvasSize = UDim2.new()
		left.ScrollBarThickness = 0
		leftList.Name = "leftList"
		leftList.Parent = left
		leftList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		leftList.SortOrder = Enum.SortOrder.LayoutOrder
		leftList.Padding = UDim:new(14)
		leftPadding.Name = "leftPadding"
		leftPadding.Parent = left
		leftPadding.PaddingTop = UDim:new(12)
		right.Name = "right"
		right.Parent = newTabHolder
		right.BackgroundColor3 = Color3.new(1, 1, 1)
		right.BackgroundTransparency = 1
		right.Size = UDim2.fromScale(0.5, 1)
		right.CanvasSize = UDim2.new()
		right.ScrollBarThickness = 0
		right.Position = UDim2.new(0.5)
		rightList.Name = "rightList"
		rightList.Parent = right
		rightList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		rightList.SortOrder = Enum.SortOrder.LayoutOrder
		rightList.Padding = UDim:new(14)
		rightPadding.Name = "rightPadding"
		rightPadding.Parent = right
		rightPadding.PaddingTop = UDim:new(12)
		local tabFunctions = {
			Flags = {},
			Remove = function()
				local relod = nil
				if newTab then
					newTab.Parent = nil
					relod = true
				end
				if newTabHolder then
					newTabHolder.Parent = nil
					relod = true
				end
				if relod then
					windowFunctions:UpdateAll()
				end
			end,
			Select = goto
		}
		function tabFunctions:CreateSection(options, ...)
			options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
			local sectionName, holderSide = options.Name or "Unnamed Section", options.Side
			options.Name = sectionName
			local newSection = Instance_new("Frame")
			local newSectionBorder = Instance_new("Frame")
			local insideBorderHider = Instance_new("Frame")
			local outsideBorderHider = Instance_new("Frame")
			local sectionHolder = Instance_new("Frame")
			local sectionList = Instance_new("UIListLayout")
			local sectionPadding = Instance_new("UIPadding")
			local sectionHeadline = Instance_new("TextLabel")
			colorpickerconflicts[1 + #colorpickerconflicts] = insideBorderHider
			colorpickerconflicts[1 + #colorpickerconflicts] = outsideBorderHider
			colorpickerconflicts[1 + #colorpickerconflicts] = sectionHeadline
			newSection.Name = removeSpaces((sectionName and sectionName:lower() or "???") .. "Section")
			newSection.Parent = (holderSide and (((holderSide:lower() == "left") and left) or right)) or left
			newSection.BackgroundColor3 = library.colors.sectionBackground
			colored[1 + #colored] = {newSection, "BackgroundColor3", "sectionBackground"}
			newSection.BorderColor3 = library.colors.outerBorder
			colored[1 + #colored] = {newSection, "BorderColor3", "outerBorder"}
			newSection.Size = UDim2.new(1, -20)
			newSection.Visible = false
			newSectionBorder.Name = "newSectionBorder"
			newSectionBorder.Parent = newSection
			newSectionBorder.BackgroundColor3 = library.colors.sectionBackground
			colored[1 + #colored] = {newSectionBorder, "BackgroundColor3", "sectionBackground"}
			newSectionBorder.BorderColor3 = library.colors.innerBorder
			colored[1 + #colored] = {newSectionBorder, "BorderColor3", "innerBorder"}
			newSectionBorder.BorderMode = Enum.BorderMode.Inset
			newSectionBorder.Size = UDim2.fromScale(1, 1)
			sectionHolder.Name = "sectionHolder"
			sectionHolder.Parent = newSection
			sectionHolder.BackgroundColor3 = Color3.new(1, 1, 1)
			sectionHolder.BackgroundTransparency = 1
			sectionHolder.Size = UDim2.fromScale(1, 1)
			sectionList.Name = "sectionList"
			sectionList.Parent = sectionHolder
			sectionList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			sectionList.SortOrder = Enum.SortOrder.LayoutOrder
			sectionList.Padding = UDim:new(1)
			sectionPadding.Name = "sectionPadding"
			sectionPadding.Parent = sectionHolder
			sectionPadding.PaddingTop = UDim:new(9)
			sectionHeadline.Name = "sectionHeadline"
			sectionHeadline.Parent = newSection
			sectionHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
			sectionHeadline.BackgroundTransparency = 1
			sectionHeadline.Position = UDim2.fromOffset(18, -8)
			sectionHeadline.ZIndex = 2
			sectionHeadline.Font = Enum.Font.Code
			sectionHeadline.LineHeight = 1.15
			sectionHeadline.Text = (sectionName and sectionName or "???")
			sectionHeadline.TextColor3 = library.colors.section
			colored[1 + #colored] = {sectionHeadline, "TextColor3", "section"}
			sectionHeadline.TextSize = 14
			sectionHeadline.Size = UDim2.fromOffset(textToSize(sectionHeadline).X + 4, 12)
			insideBorderHider.Name = "insideBorderHider"
			insideBorderHider.Parent = newSection
			insideBorderHider.BackgroundColor3 = library.colors.sectionBackground
			colored[1 + #colored] = {insideBorderHider, "BackgroundColor3", "sectionBackground"}
			insideBorderHider.BorderSizePixel = 0
			insideBorderHider.Position = UDim2.fromOffset(15)
			insideBorderHider.Size = UDim2.fromOffset(sectionHeadline.AbsoluteSize.X + 3, 1)
			outsideBorderHider.Name = "outsideBorderHider"
			outsideBorderHider.Parent = newSection
			outsideBorderHider.BackgroundColor3 = library.colors.background
			colored[1 + #colored] = {outsideBorderHider, "BackgroundColor3", "background"}
			outsideBorderHider.BorderSizePixel = 0
			outsideBorderHider.Position = UDim2.fromOffset(15, -1)
			outsideBorderHider.Size = UDim2.fromOffset(sectionHeadline.AbsoluteSize.X + 3, 1)
			local sectionFunctions = {
				Flags = {},
				Remove = function()
					if newSection then
						newSection.Parent = nil
						windowFunctions:UpdateAll()
					end
				end
			}
			function sectionFunctions:Update(extra)
				local currentHolder = newSection.Parent
				if not newSection.Visible then
					newSection.Visible = true
				end
				newSection.Size = UDim2.new(1, -20, 0, (15 + sectionList.AbsoluteContentSize.Y))
				if currentHolder then
					currentHolder.CanvasSize = UDim2:fromOffset(currentHolder:FindFirstChildOfClass("UIListLayout").AbsoluteContentSize.Y + 22 + (tonumber(extra) or 0))
				end
			end
			function sectionFunctions:UpdateAll(...)
				for _, obj in next, sectionFunctions.Flags do
					if obj then
						if obj.Update then
							pcall(obj.Update)
						end
						if obj.UpdateAll then
							pcall(obj.UpdateAll)
						end
					end
				end
				sectionFunctions:Update(...)
			end
			function sectionFunctions:AddToggle(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
				local toggleName, alreadyEnabled, callback, flagName = assert(options.Name, "Missing Name for new toggle."), options.Value or options.Enabled, options.Callback, options.Flag or (function()
					library.unnamedtoggles = 1 + (library.unnamedtoggles or 0)
					return "Toggle" .. tostring(library.unnamedtoggles)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local newToggle = Instance_new("Frame")
				local toggle = Instance_new("ImageLabel")
				local toggleInner = Instance_new("ImageLabel")
				local toggleButton = Instance_new("TextButton")
				local toggleHeadline = Instance_new("TextLabel")
				local keybindPositioner = Instance_new("Frame")
				local keybindList = Instance_new("UIListLayout")
				local keybindButton = Instance_new("TextButton")
				local lockedup = options.Locked
				newToggle.Name = removeSpaces((toggleName and toggleName:lower() or "???") .. "Toggle")
				newToggle.Parent = sectionHolder
				newToggle.BackgroundColor3 = Color3.new(1, 1, 1)
				newToggle.BackgroundTransparency = 1
				newToggle.Size = UDim2.new(1, 0, 0, 19)
				toggle.Name = "toggle"
				toggle.Parent = newToggle
				toggle.Active = true
				toggle.BackgroundColor3 = library.colors.topGradient
				local colored_toggle_BackgroundColor3 = {toggle, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_toggle_BackgroundColor3
				toggle.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {toggle, "BorderColor3", "elementBorder"}
				toggle.Position = UDim2.fromScale(0.0308237672, 0.165842205)
				toggle.Selectable = true
				toggle.Size = UDim2.fromOffset(12, 12)
				toggle.Image = "rbxassetid://2454009026"
				toggle.ImageColor3 = library.colors.bottomGradient
				local colored_toggle_ImageColor3 = {toggle, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_toggle_ImageColor3
				toggleInner.Name = "toggleInner"
				toggleInner.Parent = toggle
				toggleInner.Active = true
				toggleInner.AnchorPoint = Vector2.new(0.5, 0.5)
				toggleInner.BackgroundColor3 = library.colors.topGradient
				local colored_toggleInner_BackgroundColor3 = {toggleInner, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_toggleInner_BackgroundColor3
				toggleInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {toggleInner, "BorderColor3", "elementBorder"}
				toggleInner.Position = UDim2.fromScale(0.5, 0.5)
				toggleInner.Selectable = true
				toggleInner.Size = UDim2.new(1, -4, 1, -4)
				toggleInner.Image = "rbxassetid://2454009026"
				toggleInner.ImageColor3 = library.colors.bottomGradient
				local colored_toggleInner_ImageColor3 = {toggleInner, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_toggleInner_ImageColor3
				toggleButton.Name = "toggleButton"
				toggleButton.Parent = newToggle
				toggleButton.BackgroundColor3 = Color3.new(1, 1, 1)
				toggleButton.BackgroundTransparency = 1
				toggleButton.Size = UDim2.fromScale(1, 1)
				toggleButton.ZIndex = 5
				toggleButton.Font = Enum.Font.SourceSans
				toggleButton.Text = ""
				toggleButton.TextColor3 = Color3.new()
				toggleButton.TextSize = 14
				toggleButton.TextTransparency = 1
				toggleHeadline.Name = "toggleHeadline"
				toggleHeadline.Parent = newToggle
				toggleHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				toggleHeadline.BackgroundTransparency = 1
				toggleHeadline.Position = UDim2.fromScale(0.123, 0.165842161)
				toggleHeadline.Size = UDim2.fromOffset(170, 11)
				toggleHeadline.Font = Enum.Font.Code
				toggleHeadline.Text = toggleName or "???"
				toggleHeadline.TextColor3 = library.colors.elementText
				local colored_toggleHeadline_TextColor3 = {toggleHeadline, "TextColor3", "elementText", (lockedup and 0.5) or nil}
				colored[1 + #colored] = colored_toggleHeadline_TextColor3
				toggleHeadline.TextSize = 14
				toggleHeadline.TextXAlignment = Enum.TextXAlignment.Left
				local last_v = nil
				local function Set(t, newStatus)
					if nil == newStatus and t ~= nil then
						newStatus = t
					end
					last_v = library_flags[flagName]
					if options.Condition ~= nil then
						if type(options.Condition) == "function" then
							local v, e = pcall(options.Condition, newStatus, last_v)
							if e then
								if not v then
									warn(debug.traceback(string.format("Error in toggle %s's Condition function: %s", flagName, e), 2))
								end
							else
								return last_v
							end
						end
					end
					if newStatus ~= nil and type(newStatus) == "boolean" then
						library_flags[flagName] = newStatus
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newStatus
						end
						if callback and (last_v ~= newStatus or options.AllowDuplicateCalls) then
							colored_toggleInner_BackgroundColor3[3] = (newStatus and "main") or "topGradient"
							colored_toggleInner_BackgroundColor3[4] = (newStatus and 1.5) or nil
							colored_toggleInner_ImageColor3[3] = (newStatus and "main") or "bottomGradient"
							colored_toggleInner_ImageColor3[4] = (newStatus and 2.5) or nil
							tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = (newStatus and darkenColor(library.colors.main, 1.5)) or library.colors.topGradient,
								ImageColor3 = (newStatus and darkenColor(library.colors.main, 2.5)) or library.colors.bottomGradient
							}):Play()
							task.spawn(callback, newStatus, last_v)
						end
					end
					return newStatus
				end
				options.Keybind = options.Keybind or options.Key or options.KeyBind
				local haskbflag, kbUpdate, kbData = nil, nil, nil
				if options.Keybind then
					local options = options.Keybind
					local htyp = typeof(options)
					if htyp == "EnumItem" then
						options = {
							Value = options
						}
					elseif htyp ~= "table" then
						options = {}
					end
					local presetKeybind, callback, kbpresscallback, kbflag = options.Value or options.Key, options.Callback, options.Pressed, options.Flag or (function()
						if flagName then
							return flagName .. "_ToggleKeybind"
						end
						library.unnamedkeybinds = 1 + (library.unnamedkeybinds or 0)
						return "Keybind" .. tostring(library.unnamedkeybinds)
					end)()
					if elements[kbflag] ~= nil or kbflag == flagName then
						warn(debug.traceback("Warning! Re-used flag '" .. kbflag .. "'", 3))
					end
					haskbflag = kbflag
					library.keyHandler = keyHandler
					local keyHandler = options.KeyNames or keyHandler
					local bindedKey = presetKeybind
					local justBinded = false
					local keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
					local newKeybind = newToggle
					keybindPositioner.Name = "keybindPositioner"
					keybindPositioner.Parent = newKeybind
					keybindPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
					keybindPositioner.BackgroundTransparency = 1
					keybindPositioner.Position = UDim2.new(0.00448430516)
					keybindPositioner.Size = UDim2.fromOffset(214, 19)
					keybindPositioner.ZIndex = 1 + toggleButton.ZIndex
					keybindList.Name = "keybindList"
					keybindList.Parent = keybindPositioner
					keybindList.FillDirection = Enum.FillDirection.Horizontal
					keybindList.HorizontalAlignment = Enum.HorizontalAlignment.Right
					keybindList.SortOrder = Enum.SortOrder.LayoutOrder
					keybindList.VerticalAlignment = Enum.VerticalAlignment.Center
					keybindButton.Name = "keybindButton"
					keybindButton.Parent = keybindPositioner
					keybindButton.Active = false
					keybindButton.BackgroundColor3 = Color3.new(1, 1, 1)
					keybindButton.BackgroundTransparency = 1
					keybindButton.Position = UDim2.fromScale(0.598130822, 0.184210524)
					keybindButton.Selectable = false
					keybindButton.Size = UDim2.fromOffset(46, 12)
					keybindButton.Font = Enum.Font.Code
					keybindButton.Text = keyName or (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "")) or "[NONE]"
					keybindButton.TextColor3 = library.colors.otherElementText
					local colored_keybindButton_TextColor3 = {keybindButton, "TextColor3", "otherElementText"}
					colored[1 + #colored] = colored_keybindButton_TextColor3
					keybindButton.TextSize = 14
					keybindButton.TextXAlignment = Enum.TextXAlignment.Right
					keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
					local klast_v = bindedKey or presetKeybind
					local function newkey()
						if lockedup then
							return
						end
						local old_texts = keybindButton.Text
						colored_keybindButton_TextColor3[3] = "main"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.main
						}):Play()
						if klast_v then
							keybindButton.Text = "(Was " .. (klast_v and tostring(klast_v):gsub("Enum.KeyCode.", "") or "[NONE]") .. ") [...]"
						else
							keybindButton.Text = "[...]"
						end
						local receivingKey = nil
						receivingKey = userInputService.InputBegan:Connect(function(key)
							if lockedup then
								return receivingKey:Disconnect()
							end
							klast_v = library_flags[kbflag]
							if not keyHandler.notAllowedKeys[key.KeyCode] then
								if key.KeyCode ~= Enum.KeyCode.Unknown then
									bindedKey = (key.KeyCode ~= Enum.KeyCode.Escape and key.KeyCode) or library_flags[kbflag]
									library_flags[kbflag] = bindedKey
									if options.Location then
										options.Location[options.LocationFlag or kbflag] = bindedKey
									end
									if bindedKey then
										keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
										keybindButton.Text = "[" .. (keyName or (bindedKey and bindedKey.Name) or "NONE") .. "]"
										keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
										justBinded = true
										colored_keybindButton_TextColor3[3] = "otherElementText"
										colored_keybindButton_TextColor3[4] = nil
										tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											TextColor3 = library.colors.otherElementText
										}):Play()
										receivingKey:Disconnect()
									end
									if callback and klast_v ~= bindedKey then
										task.spawn(callback, bindedKey, klast_v)
									end
									return
								elseif key.KeyCode == Enum.KeyCode.Unknown and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
									bindedKey = key.UserInputType
									library_flags[kbflag] = bindedKey
									if options.Location then
										options.Location[options.LocationFlag or kbflag] = bindedKey
									end
									keyName = keyHandler.allowedKeys[bindedKey]
									keybindButton.Text = "[" .. (keyName or (bindedKey and bindedKey.Name) or tostring(bindedKey.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
									keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
									justBinded = true
									colored_keybindButton_TextColor3[3] = "otherElementText"
									colored_keybindButton_TextColor3[4] = nil
									tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										TextColor3 = library.colors.otherElementText
									}):Play()
									receivingKey:Disconnect()
									if callback and klast_v ~= bindedKey then
										task.spawn(callback, bindedKey, klast_v)
									end
									return
								end
							end
							if key.KeyCode == Enum.KeyCode.Backspace or Enum.KeyCode.Escape == key.KeyCode then
								old_texts, bindedKey = "[NONE]", nil
							end
							keybindButton.Text = old_texts
							colored_keybindButton_TextColor3[3] = "otherElementText"
							colored_keybindButton_TextColor3[4] = nil
							tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								TextColor3 = library.colors.otherElementText
							}):Play()
							receivingKey:Disconnect()
							if callback and klast_v ~= bindedKey then
								task.spawn(callback, bindedKey, klast_v)
							end
						end)
						library.signals[1 + #library.signals] = receivingKey
					end
					library.signals[1 + #library.signals] = keybindButton.MouseButton1Click:Connect(newkey)
					if kbpresscallback and not justBinded then
						library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(key, chatting)
							chatting = chatting or (userInputService:GetFocusedTextBox() and true)
							if not chatting and not justBinded then
								if not keyHandler.notAllowedKeys[key.KeyCode] and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
									if bindedKey == key.UserInputType or not justBinded and bindedKey == key.KeyCode then
										if kbpresscallback then
											task.spawn(kbpresscallback, key, chatting)
										end
									end
									justBinded = false
								end
							end
						end)
					end
					options.Mode = (options.Mode and string.lower(tostring(options.Mode))) or "dynamic"
					local modes = {
						dynamic = 1,
						hold = 1,
						toggle = 1
					}
					library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(input, chatting)
						if justBinded then
							wait(0.1)
							justBinded = false
							return
						elseif lockedup then
							return
						end
						chatting = chatting or userInputService:GetFocusedTextBox()
						if not chatting then
							local key = library_flags[kbflag]
							local mode = options.Mode
							if not modes[mode] then
								mode = "dynamic"
								options.Mode = mode
							end
							if key == input.KeyCode or key == input.UserInputType then
								if mode == "dynamic" or mode == "both" or mode == "hold" then
									if mode == "dynamic" and library_flags[flagName] then
										return Set(false)
									end
									Set(true)
									local now = os.clock()
									local waittil = nil
									if mode == "dynamic" then
										waittil = Instance.new("BindableEvent")
									end
									local xconnection = nil
									xconnection = userInputService.InputEnded:Connect(function(input, chatting)
										chatting = chatting or userInputService:GetFocusedTextBox()
										if not chatting and (key == input.KeyCode or key == input.UserInputType) then
											xconnection = (xconnection and xconnection:Disconnect() and nil) or nil
											if mode == "hold" or os.clock() - now > math.clamp(tonumber(options.DynamicTime) or 0.65, 0.05, 20) then
												Set(false)
											end
										end
									end)
									library.signals[1 + #library.signals] = xconnection
								else
									Set(not library_flags[flagName])
								end
							end
						end
					end)
					local function kbset(t, key)
						if nil == key and t ~= nil then
							key = t
						end
						if key == "nil" or key == "NONE" or key == "none" then
							key = nil
						end
						last_v = library_flags[kbflag]
						bindedKey = key
						library_flags[kbflag] = key
						if options.Location then
							options.Location[options.LocationFlag or kbflag] = key
						end
						keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
						keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
						keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
						justBinded = true
						colored_keybindButton_TextColor3[3] = "otherElementText"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.otherElementText
						}):Play()
						if callback and (last_v ~= key or options.AllowDuplicateCalls) then
							task.spawn(callback, key, last_v)
						end
						return key
					end
					if presetKeybind ~= nil then
						kbset(presetKeybind)
					else
						library_flags[kbflag] = bindedKey
						if options.Location then
							options.Location[options.LocationFlag or kbflag] = bindedKey
						end
					end
					local default = library_flags[kbflag]
					local function UpdateKb()
						callback, kbpresscallback = options.Callback, options.Pressed
						local key = library_flags[kbflag]
						bindedKey = key
						keyName = keyHandler.allowedKeys[bindedKey] or (bindedKey and (bindedKey.Name or tostring(bindedKey):gsub("Enum.KeyCode.", ""))) or "NONE"
						keybindButton.Text = "[" .. (keyName or (key and key.Name) or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
						keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
						colored_keybindButton_TextColor3[3] = "otherElementText"
						colored_keybindButton_TextColor3[4] = (lockedup and 2.5) or nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = (lockedup and darkenColor(library.colors.otherElementText, colored_keybindButton_TextColor3[4])) or library.colors.otherElementText
						}):Play()
						return key
					end
					kbUpdate = UpdateKb
					local objectdata = {
						Options = options,
						Name = kbflag,
						Flag = kbflag,
						Type = "Keybind",
						Default = default,
						Parent = sectionFunctions,
						Instance = keybindButton,
						Get = function()
							return library_flags[kbflag]
						end,
						Set = kbset,
						RawSet = function(t, key)
							if t ~= nil and key == nil then
								key = t
							end
							library_flags[kbflag] = key
							UpdateKb()
							return key
						end,
						Update = UpdateKb,
						Reset = function()
							return kbset(nil, default)
						end
					}
					kbData = objectdata
					tabFunctions.Flags[kbflag], sectionFunctions.Flags[kbflag], elements[kbflag] = objectdata, objectdata, objectdata
				end
				sectionFunctions:Update()
				library.signals[1 + #library.signals] = toggleButton.MouseButton1Click:Connect(function()
					if not library.colorpicker and not submenuOpen and not lockedup then
						local newval = not library_flags[flagName]
						if options.Condition ~= nil then
							if type(options.Condition) == "function" then
								local v, e = pcall(options.Condition, newval, not newval)
								if e then
									if not v then
										warn(debug.traceback(string.format("Error in toggle %s's Condition function: %s", flagName, e), 2))
									end
								else
									return last_v
								end
							end
						end
						library_flags[flagName] = newval
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newval
						end
						colored_toggleInner_BackgroundColor3[3] = (newval and "main") or "topGradient"
						colored_toggleInner_BackgroundColor3[4] = (newval and 1.5) or nil
						colored_toggleInner_ImageColor3[3] = (newval and "main") or "bottomGradient"
						colored_toggleInner_ImageColor3[4] = (newval and 2.5) or nil
						tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = (newval and darkenColor(library.colors.main, 1.5)) or library.colors.topGradient,
							ImageColor3 = (newval and darkenColor(library.colors.main, 2.5)) or library.colors.bottomGradient
						}):Play()
						if callback then
							task.spawn(callback, newval)
						end
					end
				end)
				library.signals[1 + #library.signals] = newToggle.MouseEnter:Connect(function()
					colored_toggle_BackgroundColor3[3] = "main"
					colored_toggle_BackgroundColor3[4] = 1.5
					colored_toggle_ImageColor3[3] = "main"
					colored_toggle_ImageColor3[4] = 2.5
					tweenService:Create(toggle, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end)
				library.signals[1 + #library.signals] = newToggle.MouseLeave:Connect(function()
					colored_toggle_BackgroundColor3[3] = "topGradient"
					colored_toggle_BackgroundColor3[4] = nil
					colored_toggle_ImageColor3[3] = "bottomGradient"
					colored_toggle_ImageColor3[4] = nil
					tweenService:Create(toggle, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = library.colors.topGradient,
						ImageColor3 = library.colors.bottomGradient
					}):Play()
				end)
				if library_flags[flagName] then
					colored_toggleInner_BackgroundColor3[3] = "main"
					colored_toggleInner_BackgroundColor3[4] = 1.5
					colored_toggleInner_ImageColor3[3] = "main"
					colored_toggleInner_ImageColor3[4] = 2.5
					tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end
				local function Update()
					toggleName, callback = options.Name or toggleName, options.Callback
					local boolstatus = library_flags[flagName]
					colored_toggleInner_BackgroundColor3[3] = (boolstatus and "main") or "topGradient"
					colored_toggleInner_BackgroundColor3[4] = (boolstatus and 1.5) or nil
					colored_toggleInner_ImageColor3[3] = (boolstatus and "main") or "bottomGradient"
					colored_toggleInner_ImageColor3[4] = (boolstatus and 2.5) or nil
					if lockedup then
						colored_toggleInner_BackgroundColor3[4] = 1 + (colored_toggleInner_BackgroundColor3[4] or 1)
						colored_toggleInner_ImageColor3[4] = 1 + (colored_toggleInner_ImageColor3[4] or 1)
					end
					tweenService:Create(toggleInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = (boolstatus and darkenColor(library.colors.main, colored_toggleInner_BackgroundColor3[4])) or library.colors.topGradient,
						ImageColor3 = (boolstatus and darkenColor(library.colors.main, colored_toggleInner_ImageColor3[4])) or library.colors.bottomGradient
					}):Play()
					colored_toggleHeadline_TextColor3[4] = (lockedup and 2.5) or nil
					tweenService:Create(toggleHeadline, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = (lockedup and darkenColor(library.colors.elementText, colored_toggleHeadline_TextColor3[4])) or library.colors.elementText
					}):Play()
					toggleHeadline.Text = toggleName or "???"
					return boolstatus
				end
				if alreadyEnabled ~= nil then
					Set(alreadyEnabled)
				else
					library_flags[flagName] = alreadyEnabled and true
					if options.Location then
						options.Location[options.LocationFlag or flagName] = alreadyEnabled and true
					end
				end
				local default = library_flags[flagName] and true
				Update()
				if kbUpdate then
					kbUpdate()
				end
				local objectdata = {
					Options = options,
					Type = "Toggle",
					Name = flagName,
					Flag = flagName,
					Default = default,
					Parent = sectionFunctions,
					Instance = toggleButton,
					Set = Set,
					Remove = function()
						if newToggle then
							newToggle.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = function(t, newStatus, condition)
						if t ~= nil and type(t) ~= "table" then
							newStatus, condition = t, newStatus
						end
						last_v = library_flags[flagName]
						if (condition ~= false) and (condition ~= 0) then
							local overridecondition = condition and (type(condition) == "function") and condition
							if overridecondition or (options.Condition ~= nil) then
								if type(overridecondition or options.Condition) == "function" then
									local v, e = pcall(overridecondition or options.Condition, newStatus, last_v)
									if e then
										if not v then
											warn(debug.traceback(string.format("Error in toggle (RawSet) %s's Condition function: %s", flagName, e), 2))
										end
									else
										return last_v
									end
								end
							end
						end
						library_flags[flagName] = newStatus
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newStatus
						end
						Update()
						return newStatus
					end,
					KeybindData = kbData,
					Get = function()
						return library_flags[flagName]
					end,
					Update = Update,
					Reset = function()
						return Set(nil, default)
					end,
					SetLocked = function(t, state)
						if type(t) ~= "table" then
							state = t
						end
						local last_v = lockedup
						if state == nil then
							lockedup = not lockedup
						else
							lockedup = state
						end
						if lockedup ~= last_v then
							colored_toggleHeadline_TextColor3[4] = (lockedup and 2.5) or nil
							Update()
							if kbUpdate then
								kbUpdate()
							end
						end
						return lockedup
					end,
					Lock = function()
						if not lockedup then
							lockedup = true
							colored_toggleHeadline_TextColor3[4] = 2.5
							Update()
							if kbUpdate then
								kbUpdate()
							end
						end
						return lockedup
					end,
					Unlock = function()
						if lockedup then
							lockedup = false
							colored_toggleHeadline_TextColor3[4] = nil
							Update()
							if kbUpdate then
								kbUpdate()
							end
						end
						return lockedup
					end,
					SetCondition = function(t, condition)
						if type(t) ~= "table" and condition == nil then
							condition = t
						end
						options.Condition = condition
						return condition
					end
				}
				if kbData then
					kbData.ToggleData = objectdata
				end
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.CreateToggle = sectionFunctions.AddToggle
			sectionFunctions.NewToggle = sectionFunctions.AddToggle
			sectionFunctions.Toggle = sectionFunctions.AddToggle
			sectionFunctions.Tog = sectionFunctions.AddToggle
			function sectionFunctions:AddButton(...)
				local args = nil
				if ... and not select(2, ...) and type(...) == "table" and #... > 0 and type((...)[1]) == "table" and (...)[1].Name then
					args = ...
				else
					args = {...}
				end
				local buttons, offset = {}, 0
				local frames = {}
				local fram = nil
				for _, options in next, args do
					options = (options and options[1] and type(options[1]) == "string" and resolvevararg("Button", unpack(options))) or options
					local buttonName, callback = assert(options.Name, "Missing Name for new button."), options.Callback or (warn("AddButton missing callback. Name:", options.Name or "No Name", debug.traceback("")) and nil) or function()
					end
					local lockedup = options.Locked
					local realButton = Instance_new("TextButton")
					realButton.Name = "realButton"
					realButton.BackgroundColor3 = Color3.new(1, 1, 1)
					realButton.BackgroundTransparency = 1
					realButton.Size = UDim2.fromScale(1, 1)
					realButton.ZIndex = 5
					realButton.Font = Enum.Font.Code
					realButton.Text = (buttonName and tostring(buttonName)) or "???"
					realButton.TextColor3 = library.colors.elementText
					local colored_realButton_TextColor3 = {realButton, "TextColor3", "elementText"}
					colored[1 + #colored] = colored_realButton_TextColor3
					realButton.TextSize = 14
					local textsize = textToSize(realButton).X + 14
					if newSection.Parent and (newSection.Parent.AbsoluteSize.X < (offset + textsize + 8)) then
						offset, fram = 0, nil
					end
					local newButton = fram or Instance_new("Frame")
					fram = newButton
					local framButtons = frames[fram] or {}
					frames[fram] = framButtons
					local button = Instance_new("ImageLabel")
					newButton.Name = removeSpaces((buttonName and buttonName:lower() or "???") .. "Holder")
					newButton.Parent = sectionHolder
					newButton.BackgroundColor3 = Color3.new(1, 1, 1)
					newButton.BackgroundTransparency = 1
					newButton.Size = UDim2.new(1, 0, 0, 24)
					button.Name = "button"
					button.Parent = newButton
					button.Active = true
					button.BackgroundColor3 = library.colors.topGradient
					local colored_button_BackgroundColor3 = {button, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_button_BackgroundColor3
					button.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {button, "BorderColor3", "elementBorder"}
					button.Position = UDim2.new(0.031, offset, 0.166)
					button.Selectable = true
					button.Size = UDim2.fromOffset(28, 18)
					button.Image = "rbxassetid://2454009026"
					button.ImageColor3 = library.colors.bottomGradient
					local colored_button_ImageColor3 = {button, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_button_ImageColor3
					local buttonInner = Instance_new("ImageLabel")
					buttonInner.Name = "buttonInner"
					buttonInner.Parent = button
					buttonInner.Active = true
					buttonInner.AnchorPoint = Vector2.new(0.5, 0.5)
					buttonInner.BackgroundColor3 = library.colors.topGradient
					local colored_buttonInner_BackgroundColor3 = {buttonInner, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_buttonInner_BackgroundColor3
					buttonInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {buttonInner, "BorderColor3", "elementBorder"}
					buttonInner.Position = UDim2.fromScale(0.5, 0.5)
					buttonInner.Selectable = true
					buttonInner.Size = UDim2.new(1, -4, 1, -4)
					buttonInner.Image = "rbxassetid://2454009026"
					buttonInner.ImageColor3 = library.colors.bottomGradient
					local colored_buttonInner_ImageColor3 = {buttonInner, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_buttonInner_ImageColor3
					button.Size = UDim2.fromOffset(textsize, 18)
					realButton.Parent = button
					offset = offset + textsize + 6
					sectionFunctions:Update()
					local presses = 0
					library.signals[1 + #library.signals] = realButton.MouseButton1Click:Connect(function()
						if lockedup then
							return
						end
						if options.Condition ~= nil and type(options.Condition) == "function" then
							local v, e = pcall(options.Condition, presses)
							if e then
								if not v then
									warn(debug.traceback(string.format("Error in button %s's Condition function: %s", buttonName, e), 2))
								end
							else
								return
							end
						end
						if not library.colorpicker and not submenuOpen then
							presses = 1 + presses
							task.spawn(callback, presses)
						end
					end)
					local imin = nil
					library.signals[1 + #library.signals] = button.MouseEnter:Connect(function()
						imin = 1
						colored_button_BackgroundColor3[3] = "main"
						colored_button_BackgroundColor3[4] = 1.5
						colored_button_ImageColor3[3] = "main"
						colored_button_ImageColor3[4] = 2.5
						tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = button.MouseLeave:Connect(function()
						imin = nil
						colored_button_BackgroundColor3[3] = "topGradient"
						colored_button_BackgroundColor3[4] = nil
						colored_button_ImageColor3[3] = "bottomGradient"
						colored_button_ImageColor3[4] = nil
						tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end)
					local function Update(Recursive)
						buttonName, callback = options.Name or buttonName, options.Callback or (warn(debug.traceback("AddButton missing callback. Name:" .. (options.Name or buttonName or "No Name"), 2)) and nil) or function()
						end
						colored_button_BackgroundColor3[3] = (imin and "main") or "topGradient"
						colored_button_BackgroundColor3[4] = (imin and 1.5) or nil
						colored_button_ImageColor3[3] = (imin and "main") or "bottomGradient"
						colored_button_ImageColor3[4] = (imin and 2.5) or nil
						colored_buttonInner_BackgroundColor3[4] = nil
						colored_buttonInner_ImageColor3[4] = nil
						colored_realButton_TextColor3[4] = nil
						if lockedup then
							colored_button_BackgroundColor3[4] = 1.25
							colored_button_ImageColor3[4] = 1.25
							colored_buttonInner_BackgroundColor3[4] = 1.25
							colored_buttonInner_ImageColor3[4] = 1.25
							colored_realButton_TextColor3[4] = 1.75
						end
						tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = (imin and darkenColor(library.colors.main, colored_button_BackgroundColor3[4])) or darkenColor(library.colors.topGradient, colored_button_BackgroundColor3[4]),
							ImageColor3 = (imin and darkenColor(library.colors.main, colored_button_ImageColor3[4])) or darkenColor(library.colors.bottomGradient, colored_button_ImageColor3[4])
						}):Play()
						tweenService:Create(buttonInner, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.topGradient, colored_buttonInner_BackgroundColor3[4]),
							ImageColor3 = darkenColor(library.colors.bottomGradient, colored_buttonInner_ImageColor3[4])
						}):Play()
						tweenService:Create(realButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = darkenColor(library.colors.elementText, colored_realButton_TextColor3[4])
						}):Play()
						realButton.Text = (buttonName and tostring(buttonName)) or "???"
						local newtextsize = textToSize(realButton).X + 14
						if textsize ~= newtextsize then
							textsize = newtextsize
							button.Size = UDim2.fromOffset(textsize, 18)
							if Recursive ~= "Recursive" then
								if buttons and buttons.UpdateAll then
									buttons.UpdateAll()
								end
							end
						end
						return presses, textsize
					end
					Update()
					local objectdata = {
						Options = options,
						Name = buttonName,
						Flag = buttonName,
						Type = "Button",
						Parent = sectionFunctions,
						Instance = realButton,
						Frame = fram or newButton,
						ButtonFrame = button,
						Remove = function()
							if button then
								button.Parent = nil
								buttons.UpdateAll()
								sectionFunctions.UpdateAll()
							end
						end,
						Press = function(...)
							if lockedup then
								return presses
							end
							if options.Condition ~= nil and type(options.Condition) == "function" then
								local v, e = pcall(options.Condition, presses)
								if e then
									if v then
									else
										warn(debug.traceback(string.format("Error in button %s's Condition function: %s", buttonName, e), 2))
									end
								else
									return presses
								end
							end
							local args = {...}
							local a1 = args[1]
							if a1 and type(a1) == "table" then
								table.remove(args, 1)
							end
							presses = 1 + presses
							task.spawn(callback, presses, ...)
							return presses
						end,
						RawPress = function(...)
							local args = {...}
							local a1 = args[1]
							if a1 and type(a1) == "table" then
								table.remove(args, 1)
							end
							task.spawn(callback, presses, ...)
							return presses
						end,
						Get = function()
							return callback, presses
						end,
						SetLocked = function(t, state)
							if type(t) ~= "table" then
								state = t
							end
							local last_v = lockedup
							if state == nil then
								lockedup = not lockedup
							else
								lockedup = state
							end
							if lockedup ~= last_v then
								Update()
							end
							return lockedup
						end,
						Lock = function()
							if not lockedup then
								lockedup = true
								Update()
							end
							return lockedup
						end,
						Unlock = function()
							if lockedup then
								lockedup = false
								Update()
							end
							return lockedup
						end,
						SetCondition = function(t, condition)
							if type(t) ~= "table" and condition == nil then
								condition = t
							end
							options.Condition = condition
							return condition
						end,
						Update = Update,
						SetText = function(t, str)
							if type(t) ~= "table" and str == nil then
								str = t
							end
							buttonName = str
							options.Name = str
							realButton.Text = (buttonName and tostring(buttonName)) or "???"
							return str
						end,
						SetCallback = function(t, call)
							if type(t) ~= "table" and call == nil then
								call = t
							end
							options.Callback = call
							callback = call
							return call
						end
					}
					tabFunctions.Flags[buttonName], sectionFunctions.Flags[buttonName], elements[buttonName] = objectdata, objectdata, objectdata
					buttons[1 + #buttons] = objectdata
					framButtons[1 + #framButtons] = objectdata
				end
				function buttons.PressAll()
					for _, v in next, buttons do
						v.Press()
					end
				end
				function buttons.UpdateAll()
					for fram, Fram in next, frames do
						if Fram and fram then
							local offset = 0
							for _, v in next, Fram do
								if v and v.Instance and fram:IsAncestorOf(v.Instance) then
									local _, textsize = v.Update("Recursive")
									textsize = tonumber(textsize) or (textToSize(v.Instance).X + 14)
									v.ButtonFrame.Position = UDim2.new(0.031, offset, 0.166)
									offset = offset + textsize + 6
								end
							end
						end
					end
				end
				buttons.Update = buttons.UpdateAll
				function buttons.RemoveAll()
					for _, v in next, buttons do
						v.Remove()
					end
				end
				function buttons.Remove()
					for fram in next, frames do
						if fram then
							fram.Parent = nil
						end
					end
				end
				if #buttons == 1 then
					for k, v in next, buttons[1] do
						if buttons[k] == nil then
							buttons[k] = v
						end
					end
				end
				return buttons
			end
			sectionFunctions.CreateButton = sectionFunctions.AddButton
			sectionFunctions.NewButton = sectionFunctions.AddButton
			sectionFunctions.Button = sectionFunctions.AddButton
			function sectionFunctions:AddTextbox(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Textbox", options, ...)) or options
				local textboxName, presetValue, placeholder, callback, flagName = assert(options.Name, "Missing Name for new textbox."), options.Value, options.Placeholder, options.Callback, options.Flag or (function()
					library.unnamedtextboxes = 1 + (library.unnamedtextboxes or 0)
					return "Textbox" .. tostring(library.unnamedtextboxes)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local requiredtype = options.Type
				local newTextbox = Instance_new("Frame")
				local textbox = Instance_new("ImageLabel")
				local textboxInner = Instance_new("ImageLabel")
				local realTextbox = Instance_new("TextBox")
				local textboxHeadline = Instance_new("TextLabel")
				newTextbox.Name = removeSpaces((textboxName and textboxName:lower()) or "???") .. "Holder"
				newTextbox.Parent = sectionHolder
				newTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
				newTextbox.BackgroundTransparency = 1
				newTextbox.Size = UDim2.new(1, 0, 0, 42)
				textbox.Name = "textbox"
				textbox.Parent = newTextbox
				textbox.Active = true
				textbox.BackgroundColor3 = library.colors.topGradient
				local colored_textbox_BackgroundColor3 = {textbox, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_textbox_BackgroundColor3
				textbox.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {textbox, "BorderColor3", "elementBorder"}
				textbox.Position = UDim2.fromScale(0.031, 0.48)
				textbox.Selectable = true
				textbox.Size = UDim2.fromOffset(206, 18)
				textbox.Image = "rbxassetid://2454009026"
				textbox.ImageColor3 = library.colors.bottomGradient
				local colored_textbox_ImageColor3 = {textbox, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_textbox_ImageColor3
				textboxInner.Name = "textboxInner"
				textboxInner.Parent = textbox
				textboxInner.Active = true
				textboxInner.AnchorPoint = Vector2.new(0.5, 0.5)
				textboxInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {textboxInner, "BackgroundColor3", "topGradient"}
				textboxInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {textboxInner, "BorderColor3", "elementBorder"}
				textboxInner.Position = UDim2.fromScale(0.5, 0.5)
				textboxInner.Selectable = true
				textboxInner.Size = UDim2.new(1, -4, 1, -4)
				textboxInner.Image = "rbxassetid://2454009026"
				textboxInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {textboxInner, "ImageColor3", "bottomGradient"}
				realTextbox.Name = "realTextbox"
				if options.Rich or options.RichText or options.RichTextBox then
					realTextbox.RichText = true
				end
				if options.MultiLine or options.Lines then
					realTextbox.MultiLine = true
				end
				if options.Font or options.TextFont then
					realTextbox.Font = options.Font
				end
				if options.TextScaled or options.Scaled then
					realTextbox.TextScaled = true
				end
				realTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
				realTextbox.BackgroundTransparency = 1
				realTextbox.Position = UDim2.new(0.0295485705)
				realTextbox.Size = UDim2.fromScale(0.97, 1)
				realTextbox.ZIndex = 5
				realTextbox.Font = Enum.Font.Code
				realTextbox.LineHeight = 1.15
				realTextbox.Text = tostring(presetValue)
				realTextbox.TextColor3 = library.colors.otherElementText
				colored[1 + #colored] = {realTextbox, "TextColor3", "otherElementText"}
				realTextbox.TextSize = 14
				if options.ClearTextOnFocus or options.ClearText then
					realTextbox.ClearTextOnFocus = true
				else
					realTextbox.ClearTextOnFocus = false
				end
				realTextbox.PlaceholderText = (placeholder ~= nil and tostring(placeholder)) or (presetValue ~= nil and tostring(presetValue)) or ""
				realTextbox.TextXAlignment = Enum.TextXAlignment.Left
				if options.CustomProperties and type(options.CustomProperties) == "table" then
					for k, v in next, options.CustomProperties do
						local oof, e = pcall(function()
							realTextbox[k] = v
						end)
						if not oof and e then
							warn("Error setting Textbox", flagName, "|", e, debug.traceback(""))
						end
					end
				end
				realTextbox.Parent = textbox
				textboxHeadline.Name = "textboxHeadline"
				textboxHeadline.Parent = newTextbox
				textboxHeadline.Active = true
				textboxHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				textboxHeadline.BackgroundTransparency = 1
				textboxHeadline.Position = UDim2.new(0.031)
				textboxHeadline.Selectable = true
				textboxHeadline.Size = UDim2.fromOffset(206, 20)
				textboxHeadline.ZIndex = 5
				textboxHeadline.Font = Enum.Font.Code
				textboxHeadline.LineHeight = 1.15
				textboxHeadline.Text = (textboxName and tostring(textboxName)) or "???"
				textboxHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {textboxHeadline, "TextColor3", "elementText"}
				textboxHeadline.TextSize = 14
				textboxHeadline.TextXAlignment = Enum.TextXAlignment.Left
				sectionFunctions:Update()
				local last_v = presetValue
				local function resolvevalue(val)
					if options.PreFormat then
						local typ = type(options.PreFormat)
						if typ == "function" then
							local x, e = pcall(options.PreFormat, val)
							if not x and e then
								warn("Error in Pre-Format (Textbox " .. flagName .. "):", e)
							else
								val = e
							end
						end
					end
					if requiredtype == "number" then
						if not options.Hex and not options.Binary and not options.Base then
							val = tonumber(val) or tonumber(val:gsub("%D", ""), 10) or 0
						else
							val = tonumber(val, (options.Hex and 16) or (options.Binary and 2) or options.Base or 10) or 0
						end
						if options.Max or options.Min then
							val = math.clamp(val, options.Min or -math.huge, options.Max or math.huge)
						end
						local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
						if decimalprecision then
							val = tonumber(string.format("%0." .. tostring(decimalprecision) .. "f", val))
						end
					end
					if options.PostFormat then
						local typ = type(options.PostFormat)
						if typ == "function" then
							local x, e = pcall(options.PostFormat, val)
							if not x and e then
								warn("Error in Post-Format (Textbox " .. flagName .. "):", e)
							else
								val = e
							end
						end
					end
					return (val and tonumber(val)) or val
				end
				library.signals[1 + #library.signals] = realTextbox.FocusLost:Connect(function()
					last_v = library_flags[flagName]
					local val = resolvevalue(realTextbox.Text)
					library_flags[flagName] = val
					if options.Location then
						options.Location[options.LocationFlag or flagName] = val
					end
					if callback and last_v ~= val then
						task.spawn(callback, tostring(val), last_v, realTextbox)
					end
				end)
				library.signals[1 + #library.signals] = newTextbox.MouseEnter:Connect(function()
					colored_textbox_BackgroundColor3[3] = "main"
					colored_textbox_BackgroundColor3[4] = 1.5
					colored_textbox_ImageColor3[3] = "main"
					colored_textbox_ImageColor3[4] = 2.5
					tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end)
				library.signals[1 + #library.signals] = newTextbox.MouseLeave:Connect(function()
					colored_textbox_BackgroundColor3[3] = "topGradient"
					colored_textbox_BackgroundColor3[4] = nil
					colored_textbox_ImageColor3[3] = "bottomGradient"
					colored_textbox_ImageColor3[4] = nil
					tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = library.colors.topGradient,
						ImageColor3 = library.colors.bottomGradient
					}):Play()
				end)
				local function set(t, str)
					if nil == str and t ~= nil then
						str = t
					end
					last_v = library_flags[flagName]
					library_flags[flagName] = str
					if options.Location then
						options.Location[options.LocationFlag or flagName] = str
					end
					local sstr = (str ~= nil and tostring(str)) or "Empty Text"
					if realTextbox.Text ~= sstr then
						realTextbox.Text = sstr
					end
					if callback and (last_v ~= str or options.AllowDuplicateCalls) then
						task.spawn(callback, str, last_v, realTextbox)
					end
					return str
				end
				if presetValue ~= nil then
					set(presetValue)
				else
					library_flags[flagName] = presetValue
					if options.Location then
						options.Location[options.LocationFlag or flagName] = presetValue
					end
				end
				local default = library_flags[flagName]
				local function update()
					textboxName, placeholder, callback = options.Name or textboxName, options.Placeholder or placeholder, options.Callback
					local str = library_flags[flagName]
					str = (str ~= nil and tostring(str)) or "Empty Text"
					if realTextbox.Text ~= str then
						realTextbox.Text = str
					end
					textboxHeadline.Text = (textboxName and tostring(textboxName)) or "???"
					return str
				end
				local objectdata = {
					Options = options,
					Name = flagName,
					Flag = flagName,
					Type = "Textbox",
					Default = default,
					Parent = sectionFunctions,
					Instance = realTextbox,
					Get = function()
						return library_flags[flagName]
					end,
					Set = set,
					Update = update,
					Remove = function()
						if newTextbox then
							newTextbox.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = function(t, str)
						if t ~= nil and str == nil then
							str = t
						end
						last_v = library_flags[flagName]
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						update()
						return str
					end,
					Reset = function()
						return set(nil, default)
					end
				}
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.AddTextBox = sectionFunctions.AddTextbox
			sectionFunctions.NewTextBox = sectionFunctions.AddTextbox
			sectionFunctions.CreateTextBox = sectionFunctions.AddTextbox
			sectionFunctions.TextBox = sectionFunctions.AddTextbox
			sectionFunctions.NewTextbox = sectionFunctions.AddTextbox
			sectionFunctions.CreateTextbox = sectionFunctions.AddTextbox
			sectionFunctions.Textbox = sectionFunctions.AddTextbox
			sectionFunctions.Box = sectionFunctions.AddTextbox
			function sectionFunctions:AddKeybind(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Keybind", options, ...)) or options
				local keybindName, presetKeybind, callback, presscallback, flag = assert(options.Name, "Missing Name for new keybind."), options.Value, options.Callback, options.Pressed, options.Flag or (function()
					library.unnamedkeybinds = 1 + (library.unnamedkeybinds or 0)
					return "Keybind" .. tostring(library.unnamedkeybinds)
				end)()
				local IsCore = (options.CoreBinding and true) or nil
				if elements[flag] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flag .. "'", 3))
				end
				library.keyHandler = keyHandler
				local keyHandler = options.KeyNames or keyHandler
				local newKeybind = Instance_new("Frame")
				local keybindHeadline = Instance_new("TextLabel")
				local keybindPositioner = Instance_new("Frame")
				local keybindList = Instance_new("UIListLayout")
				local keybindButton = Instance_new("TextButton")
				local bindedKey = presetKeybind
				local justBinded = false
				local keyName = (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "") or "")
				newKeybind.Name = "newKeybind"
				newKeybind.Parent = sectionHolder
				newKeybind.BackgroundColor3 = Color3.new(1, 1, 1)
				newKeybind.BackgroundTransparency = 1
				newKeybind.Size = UDim2.new(1, 0, 0, 19)
				keybindHeadline.Name = "keybindHeadline"
				keybindHeadline.Parent = newKeybind
				keybindHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				keybindHeadline.BackgroundTransparency = 1
				keybindHeadline.Position = UDim2.fromScale(0.031, 0.165842161)
				keybindHeadline.Size = UDim2.fromOffset(215, 12)
				keybindHeadline.Font = Enum.Font.Code
				keybindHeadline.Text = (keybindName and tostring(keybindName)) or "???"
				keybindHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {keybindHeadline, "TextColor3", "elementText"}
				keybindHeadline.TextSize = 14
				keybindHeadline.TextXAlignment = Enum.TextXAlignment.Left
				keybindPositioner.Name = "keybindPositioner"
				keybindPositioner.Parent = newKeybind
				keybindPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
				keybindPositioner.BackgroundTransparency = 1
				keybindPositioner.Position = UDim2.new(0.00448430516)
				keybindPositioner.Size = UDim2.fromOffset(214, 19)
				keybindList.Name = "keybindList"
				keybindList.Parent = keybindPositioner
				keybindList.FillDirection = Enum.FillDirection.Horizontal
				keybindList.HorizontalAlignment = Enum.HorizontalAlignment.Right
				keybindList.SortOrder = Enum.SortOrder.LayoutOrder
				keybindList.VerticalAlignment = Enum.VerticalAlignment.Center
				keybindButton.Name = "keybindButton"
				keybindButton.Parent = keybindPositioner
				keybindButton.Active = false
				keybindButton.BackgroundColor3 = Color3.new(1, 1, 1)
				keybindButton.BackgroundTransparency = 1
				keybindButton.Position = UDim2.fromScale(0.598130822, 0.184210524)
				keybindButton.Selectable = false
				keybindButton.Size = UDim2.fromOffset(46, 12)
				keybindButton.Font = Enum.Font.Code
				keybindButton.Text = (presetKeybind and tostring(presetKeybind):gsub("Enum.KeyCode.", "") or "[NONE]")
				keybindButton.TextColor3 = library.colors.otherElementText
				local colored_keybindButton_TextColor3 = {keybindButton, "TextColor3", "otherElementText"}
				colored[1 + #colored] = colored_keybindButton_TextColor3
				keybindButton.TextSize = 14
				keybindButton.TextXAlignment = Enum.TextXAlignment.Right
				keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
				sectionFunctions:Update()
				local last_v = bindedKey or presetKeybind
				local function newkey()
					local IgnoreKey = nil
					if IsCore then
						IgnoreKey = tick()
						IgnoreCoreInputs = IgnoreKey
					end
					local old_texts = keybindButton.Text
					colored_keybindButton_TextColor3[3] = "main"
					colored_keybindButton_TextColor3[4] = nil
					tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = library.colors.main
					}):Play()
					if last_v then
						keybindButton.Text = "(Was " .. (last_v and tostring(last_v):gsub("Enum.KeyCode.", "") or "[NONE]") .. ") [...]"
					else
						keybindButton.Text = "[...]"
					end
					local receivingKey = nil
					receivingKey = userInputService.InputBegan:Connect(function(key)
						last_v = library_flags[flag]
						if not keyHandler.notAllowedKeys[key.KeyCode] then
							if key.KeyCode ~= Enum.KeyCode.Unknown then
								bindedKey = (key.KeyCode ~= Enum.KeyCode.Escape and key.KeyCode) or library_flags[flag]
								library_flags[flag] = bindedKey
								if options.Location then
									options.Location[options.LocationFlag or flag] = bindedKey
								end
								if bindedKey then
									keyName = keyHandler.allowedKeys[bindedKey]
									keybindButton.Text = "[" .. (keyName or bindedKey.Name or tostring(key.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
									keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
									justBinded = true
									colored_keybindButton_TextColor3[3] = "otherElementText"
									colored_keybindButton_TextColor3[4] = nil
									tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										TextColor3 = library.colors.otherElementText
									}):Play()
									receivingKey:Disconnect()
								end
								if callback and last_v ~= bindedKey then
									task.spawn(callback, bindedKey, last_v)
								end
								if IsCore then
									delay(0.1, function()
										if IgnoreCoreInputs and (IgnoreCoreInputs == IgnoreKey) then
											IgnoreCoreInputs = nil
										end
									end)
								end
								return
							elseif key.KeyCode == Enum.KeyCode.Unknown and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
								bindedKey = key.UserInputType
								library_flags[flag] = bindedKey
								if options.Location then
									options.Location[options.LocationFlag or flag] = bindedKey
								end
								keyName = keyHandler.allowedKeys[bindedKey]
								keybindButton.Text = "[" .. (keyName or bindedKey.Name or tostring(key.KeyCode):gsub("Enum.KeyCode.", "")) .. "]"
								keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
								justBinded = true
								colored_keybindButton_TextColor3[3] = "otherElementText"
								colored_keybindButton_TextColor3[4] = nil
								tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									TextColor3 = library.colors.otherElementText
								}):Play()
								receivingKey:Disconnect()
								if callback and last_v ~= bindedKey then
									task.spawn(callback, bindedKey, last_v)
								end
								if IsCore then
									delay(0.1, function()
										if IgnoreCoreInputs and (IgnoreCoreInputs == IgnoreKey) then
											IgnoreCoreInputs = nil
										end
									end)
								end
								return
							end
						end
						if key.KeyCode == Enum.KeyCode.Backspace or Enum.KeyCode.Escape == key.KeyCode then
							old_texts, bindedKey = "[NONE]", nil
						end
						keybindButton.Text = old_texts
						colored_keybindButton_TextColor3[3] = "otherElementText"
						colored_keybindButton_TextColor3[4] = nil
						tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							TextColor3 = library.colors.otherElementText
						}):Play()
						receivingKey:Disconnect()
						if callback and last_v ~= bindedKey then
							task.spawn(callback, bindedKey, last_v)
						end
					end)
					library.signals[1 + #library.signals] = receivingKey
				end
				library.signals[1 + #library.signals] = keybindButton.MouseButton1Click:Connect(newkey)
				library.signals[1 + #library.signals] = newKeybind.InputEnded:Connect(function(input)
					if not library.colorpicker and not submenuOpen and input.UserInputType == Enum.UserInputType.MouseButton1 then
						newkey()
					end
				end)
				if presscallback then
					library.signals[1 + #library.signals] = userInputService.InputBegan:Connect(function(key, chatting)
						if not keyHandler.notAllowedKeys[key.KeyCode] and not keyHandler.notAllowedMouseInputs[key.UserInputType] then
							if not justBinded and bindedKey == key.UserInputType or not justBinded and bindedKey == key.KeyCode and not chatting then
								if presscallback then
									task.spawn(presscallback, key, chatting)
								end
							end
							if justBinded then
								justBinded = false
							end
						end
					end)
				end
				local function set(t, key)
					if (nil == key) and (t ~= nil) then
						key = t
					end
					if (key == "nil") or (key == "NONE") or (key == "none") then
						key = nil
					end
					last_v = library_flags[flag]
					bindedKey = key
					library_flags[flag] = key
					if options.Location then
						options.Location[options.LocationFlag or flag] = key
					end
					keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
					keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
					keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
					justBinded = true
					colored_keybindButton_TextColor3[3] = "otherElementText"
					colored_keybindButton_TextColor3[4] = nil
					tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = library.colors.otherElementText
					}):Play()
					if callback and ((last_v ~= key) or options.AllowDuplicateCalls) then
						task.spawn(callback, key, last_v)
					end
					return key
				end
				if presetKeybind ~= nil then
					set(presetKeybind)
				else
					library_flags[flag] = bindedKey
					if options.Location then
						options.Location[options.LocationFlag or flag] = bindedKey
					end
				end
				local default = library_flags[flag]
				local function update()
					keybindName, callback, presscallback = options.Name or keybindName, options.Callback, options.Pressed
					local key = library_flags[flag]
					keyName = (key == nil and "NONE") or keyHandler.allowedKeys[key]
					keybindButton.Text = "[" .. (keyName or key.Name or tostring(key):gsub("Enum.KeyCode.", "")) .. "]"
					keybindButton.Size = UDim2.fromOffset(textToSize(keybindButton).X + 4, 12)
					colored_keybindButton_TextColor3[3] = "otherElementText"
					colored_keybindButton_TextColor3[4] = nil
					tweenService:Create(keybindButton, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						TextColor3 = library.colors.otherElementText
					}):Play()
					keybindHeadline.Text = (keybindName and tostring(keybindName)) or "???"
					return key
				end
				local objectdata = {
					Options = options,
					Name = flag,
					Flag = flag,
					Type = "Keybind",
					Default = default,
					Parent = sectionFunctions,
					Instance = keybindButton,
					Get = function()
						return library_flags[flag]
					end,
					Set = set,
					Remove = function()
						if newKeybind then
							newKeybind.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = function(t, key)
						if nil == key and t ~= nil then
							key = t
						end
						if key == "nil" or key == "NONE" or key == "none" then
							key = nil
						end
						last_v = library_flags[flag]
						bindedKey = key
						library_flags[flag] = key
						if options.Location then
							options.Location[options.LocationFlag or flag] = key
						end
						justBinded = true
						return key
					end,
					Update = update,
					Reset = function()
						return set(nil, default)
					end
				}
				tabFunctions.Flags[flag], sectionFunctions.Flags[flag], elements[flag] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.NewKeybind = sectionFunctions.AddKeybind
			sectionFunctions.CreateKeybind = sectionFunctions.AddKeybind
			sectionFunctions.Keybind = sectionFunctions.AddKeybind
			sectionFunctions.Bind = sectionFunctions.AddKeybind
			function sectionFunctions:AddLabel(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Label", options, ...)) or options
				local labelName, flag = options.Text or options.Value or options.Name, options.Flag or (function()
					library.unnamedlabels = 1 + (library.unnamedlabels or 0)
					return "Label" .. tostring(library.unnamedlabels)
				end)()
				if elements[flag] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flag .. "'", 3))
				end
				local newLabel = Instance_new("Frame")
				local labelHeadline = Instance_new("TextLabel")
				local labelPositioner = Instance_new("Frame")
				local labelButton = Instance_new("TextButton")
				newLabel.Name = "newLabel"
				newLabel.Parent = sectionHolder
				newLabel.BackgroundColor3 = Color3.new(1, 1, 1)
				newLabel.BackgroundTransparency = 1
				newLabel.Size = UDim2.new(1, 0, 0, 19)
				labelHeadline.Name = "labelHeadline"
				labelHeadline.Parent = newLabel
				labelHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				labelHeadline.BackgroundTransparency = 1
				labelHeadline.Position = UDim2.fromScale(0.031, 0.165842161)
				labelHeadline.Size = UDim2.fromOffset(215, 12)
				labelHeadline.Font = Enum.Font.Code
				labelHeadline.Text = (labelName and tostring(labelName)) or "Empty Text"
				labelHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {labelHeadline, "TextColor3", "elementText"}
				labelHeadline.TextSize = 14
				labelHeadline.TextXAlignment = Enum.TextXAlignment.Left
				labelPositioner.Name = "labelPositioner"
				labelPositioner.Parent = newLabel
				labelPositioner.BackgroundColor3 = Color3.new(1, 1, 1)
				labelPositioner.BackgroundTransparency = 1
				labelPositioner.Position = UDim2.new(0.00448430516)
				labelPositioner.Size = UDim2.fromOffset(214, 19)
				sectionFunctions:Update()
				local function set(t, str)
					if nil == str and t ~= nil then
						str = t
					end
					labelHeadline.Text = (nil ~= str and tostring(str)) or "Empty Text"
					return str
				end
				local default = labelHeadline.Text
				local objectdata = {
					Options = options,
					Name = flag,
					Flag = flag,
					Type = "Label",
					Default = default,
					Parent = sectionFunctions,
					Instance = labelHeadline,
					Get = function()
						return labelHeadline.Text, labelHeadline
					end,
					Set = set,
					SetText = set,
					Remove = function()
						if newLabel then
							newLabel.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = set,
					Update = function()
						return labelHeadline.Text
					end,
					Reset = function()
						return set(nil, default)
					end
				}
				tabFunctions.Flags[flag], sectionFunctions.Flags[flag], elements[flag] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.NewLabel = sectionFunctions.AddLabel
			sectionFunctions.CreateLabel = sectionFunctions.AddLabel
			sectionFunctions.Label = sectionFunctions.AddLabel
			sectionFunctions.Text = sectionFunctions.AddLabel
			function sectionFunctions:AddSlider(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Slider", options, ...)) or options
				local sliderName, maxValue, minValue, presetValue, callback, flagName = assert(options.Name, "Missing Name for new slider."), assert(options.Max, "Missing Max for new slider."), assert(options.Min, "Missing Min for new slider."), options.Value, options.Callback, options.Flag or (function()
					library.unnamedsliders = 1 + (library.unnamedsliders or 0)
					return "Slider" .. tostring(library.unnamedsliders)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
				if not decimalprecision and options.Max - options.Min <= 1 then
					decimalprecision = 1
				end
				if decimalprecision then
					decimalprecision = math.clamp(decimalprecision, 0, 99)
					if decimalprecision <= 0 then
						decimalprecision = nil
					end
					decimalprecision = tostring(decimalprecision)
				end
				local formattyp = options.Format and type(options.Format)
				local function resolvedisplay(val, was)
					local str = nil
					if decimalprecision then
						str = string.format("%0." .. decimalprecision .. "f", val)
					end
					str = str or tostring(val)
					if formattyp == "string" then
						return string.format(options.Format, val)
					elseif formattyp == "function" then
						local oof, g = pcall(options.Format, val, was)
						if not oof or not g then
							warn("Your format function for", sliderName, "Slider:", flagName, "has returned nothing. It should return a string to display.", debug.traceback(""))
							return "Format Function Errored"
						end
						return tostring(g)
					end
					return (sliderName or "???") .. ": " .. str
				end
				local usetextbox = options.Textbox or options.InputBox or options.CustomInput
				local newSlider = Instance_new("Frame")
				local slider = Instance_new("ImageLabel")
				local sliderInner = Instance_new("ImageLabel")
				local sliderColored = Instance_new("ImageLabel")
				local sliderHeadline = Instance_new("TextLabel")
				local startingValue = presetValue or minValue
				local sliderDragging = false
				newSlider.Name = "newSlider"
				newSlider.Parent = sectionHolder
				newSlider.BackgroundColor3 = Color3.new(1, 1, 1)
				newSlider.BackgroundTransparency = 1
				newSlider.Size = UDim2.new(1, 0, 0, 42)
				slider.Name = "slider"
				slider.Parent = newSlider
				slider.Active = true
				slider.BackgroundColor3 = library.colors.topGradient
				local colored_slider_BackgroundColor3 = {slider, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_slider_BackgroundColor3
				slider.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {slider, "BorderColor3", "elementBorder"}
				slider.Position = UDim2.fromScale(0.031, 0.48)
				slider.Selectable = true
				slider.Size = (usetextbox and UDim2.fromOffset(156, 18)) or UDim2.fromOffset(206, 18)
				slider.Image = "rbxassetid://2454009026"
				slider.ImageColor3 = library.colors.bottomGradient
				local colored_slider_ImageColor3 = {slider, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_slider_ImageColor3
				sliderInner.Name = "sliderInner"
				sliderInner.Parent = slider
				sliderInner.Active = true
				sliderInner.AnchorPoint = Vector2.new(0.5, 0.5)
				sliderInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {sliderInner, "BackgroundColor3", "topGradient"}
				sliderInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {sliderInner, "BorderColor3", "elementBorder"}
				sliderInner.Position = UDim2.fromScale(0.5, 0.5)
				sliderInner.Selectable = true
				sliderInner.Size = UDim2.new(1, -4, 1, -4)
				sliderInner.Image = "rbxassetid://2454009026"
				sliderInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {sliderInner, "ImageColor3", "bottomGradient"}
				sliderColored.Name = "sliderColored"
				sliderColored.Parent = sliderInner
				sliderColored.Active = true
				sliderColored.BackgroundColor3 = darkenColor(library.colors.main, 1.5)
				colored[1 + #colored] = {sliderColored, "BackgroundColor3", "main", 1.5}
				sliderColored.BorderSizePixel = 0
				sliderColored.Selectable = true
				sliderColored.Size = UDim2.fromScale(((startingValue or minValue) - minValue) / (maxValue - minValue), 1)
				sliderColored.Image = "rbxassetid://2454009026"
				sliderColored.ImageColor3 = darkenColor(library.colors.main, 2.5)
				colored[1 + #colored] = {sliderColored, "ImageColor3", "main", 2.5}
				sliderHeadline.Name = "sliderHeadline"
				sliderHeadline.Parent = newSlider
				sliderHeadline.Active = true
				sliderHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				sliderHeadline.BackgroundTransparency = 1
				sliderHeadline.Position = UDim2.new(0.031)
				sliderHeadline.Selectable = true
				sliderHeadline.Size = UDim2.fromOffset(206, 20)
				sliderHeadline.ZIndex = 5
				sliderHeadline.Font = Enum.Font.Code
				sliderHeadline.LineHeight = 1.15
				sliderHeadline.Text = resolvedisplay(startingValue)
				sliderHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {sliderHeadline, "TextColor3", "elementText"}
				sliderHeadline.TextSize = 14
				sliderHeadline.TextXAlignment = Enum.TextXAlignment.Left
				local realTextbox = nil
				local function Set(t, newValue)
					if nil == newValue and t ~= nil then
						newValue = t
					end
					minValue, maxValue = options.Min, options.Max
					if newValue and (options.IllegalInput or ((not minValue or newValue >= minValue) and (not maxValue or newValue <= maxValue))) then
						local last_val = library_flags[flagName]
						library_flags[flagName] = newValue
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newValue
						end
						do
							local newValue = (options.IllegalInput and math.clamp(newValue, minValue or -math.huge, maxValue or math.huge)) or newValue
							tweenService:Create(sliderColored, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								Size = UDim2.fromScale(((newValue or minValue) - minValue) / (maxValue - minValue), 1)
							}):Play()
						end
						sliderHeadline.Text = resolvedisplay(newValue, last_val)
						if usetextbox and realTextbox then
							realTextbox.Text = tostring(newValue)
						end
						if callback and (last_val ~= newValue or options.AllowDuplicateCalls) then
							task.spawn(callback, newValue, last_val)
						end
					end
					return newValue
				end
				if presetValue ~= nil then
					Set(presetValue)
				else
					library_flags[flagName] = startingValue
					if options.Location then
						options.Location[options.LocationFlag or flagName] = startingValue
					end
				end
				if usetextbox then
					if type(usetextbox) ~= "table" then
						usetextbox = options
					end
					local textbox = Instance_new("ImageLabel")
					local textboxInner = Instance_new("ImageLabel")
					realTextbox = Instance_new("TextBox")
					textbox.Name = "textbox"
					textbox.Parent = newSlider
					textbox.Active = true
					textbox.BackgroundColor3 = library.colors.topGradient
					local colored_textbox_BackgroundColor3 = {textbox, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_textbox_BackgroundColor3
					textbox.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {textbox, "BorderColor3", "elementBorder"}
					textbox.Position = UDim2.new(1, -54, 0.48)
					textbox.Selectable = true
					textbox.Size = UDim2.fromOffset(43, 18)
					textbox.Image = "rbxassetid://2454009026"
					textbox.ImageColor3 = library.colors.bottomGradient
					local colored_textbox_ImageColor3 = {textbox, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_textbox_ImageColor3
					textboxInner.Name = "textboxInner"
					textboxInner.Parent = textbox
					textboxInner.Active = true
					textboxInner.AnchorPoint = Vector2.new(0.5, 0.5)
					textboxInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {textboxInner, "BackgroundColor3", "topGradient"}
					textboxInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {textboxInner, "BorderColor3", "elementBorder"}
					textboxInner.Position = UDim2.fromScale(0.5, 0.5)
					textboxInner.Selectable = true
					textboxInner.Size = UDim2.new(1, -4, 1, -4)
					textboxInner.Image = "rbxassetid://2454009026"
					textboxInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {textboxInner, "ImageColor3", "bottomGradient"}
					realTextbox.Name = "realTextbox"
					realTextbox.Parent = textbox
					realTextbox.BackgroundColor3 = Color3.new(1, 1, 1)
					realTextbox.BackgroundTransparency = 1
					realTextbox.Position = UDim2.new(0.0295485705)
					realTextbox.Size = UDim2.fromScale(0.97, 1)
					realTextbox.ZIndex = 5
					realTextbox.ClearTextOnFocus = false
					realTextbox.Font = Enum.Font.Code
					realTextbox.LineHeight = 1.15
					realTextbox.Text = tostring(presetValue)
					realTextbox.TextColor3 = library.colors.otherElementText
					colored[1 + #colored] = {realTextbox, "TextColor3", "otherElementText"}
					realTextbox.TextSize = 14
					realTextbox.PlaceholderText = (presetValue ~= nil and tostring(presetValue)) or ""
					library.signals[1 + #library.signals] = realTextbox.FocusLost:Connect(function()
						local val = realTextbox.Text
						if usetextbox.PreFormat then
							local typ = type(usetextbox.PreFormat)
							if typ == "function" then
								local x, e = pcall(usetextbox.PreFormat, val)
								if not x and e then
									warn("Error in Pre-Format (Textbox " .. flagName .. "):", e)
								else
									val = e
								end
							end
						end
						val = (not usetextbox.Hex and not usetextbox.Binary and not usetextbox.Base and (tonumber(val) or tonumber(val:gsub("%D", ""), 10) or 0)) or tonumber(val, (usetextbox.Hex and 16) or (usetextbox.Binary and 2) or usetextbox.Base or 10) or 0
						if not options.IllegalInput and (options.Max or options.Min) then
							val = math.clamp(val, options.Min or -math.huge, options.Max or math.huge)
						end
						local decimalprecision = tonumber(options.Decimals or options.Precision or options.Precise)
						if decimalprecision then
							val = tonumber(string.format("%0." .. tostring(decimalprecision) .. "f", val))
						end
						if usetextbox.PostFormat then
							local typ = type(usetextbox.PostFormat)
							if typ == "function" then
								local x, e = pcall(usetextbox.PostFormat, val)
								if not x and e then
									warn("Error in Post-Format (Textbox " .. flagName .. "):", e)
								else
									val = e
								end
							end
						end
						Set((val and tonumber(val)) or presetValue or 0)
					end)
					library.signals[1 + #library.signals] = textbox.MouseEnter:Connect(function()
						colored_textbox_BackgroundColor3[3] = "main"
						colored_textbox_BackgroundColor3[4] = 1.5
						colored_textbox_ImageColor3[3] = "main"
						colored_textbox_ImageColor3[4] = 2.5
						tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = textbox.MouseLeave:Connect(function()
						colored_textbox_BackgroundColor3[3] = "topGradient"
						colored_textbox_BackgroundColor3[4] = nil
						colored_textbox_ImageColor3[3] = "bottomGradient"
						colored_textbox_ImageColor3[4] = nil
						tweenService:Create(textbox, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end)
				end
				sectionFunctions:Update()
				library.signals[1 + #library.signals] = slider.MouseEnter:Connect(function()
					colored_slider_BackgroundColor3[3] = "main"
					colored_slider_BackgroundColor3[4] = 1.5
					colored_slider_ImageColor3[3] = "main"
					colored_slider_ImageColor3[4] = 2.5
					tweenService:Create(slider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end)
				library.signals[1 + #library.signals] = slider.MouseLeave:Connect(function()
					colored_slider_BackgroundColor3[3] = "topGradient"
					colored_slider_BackgroundColor3[4] = nil
					colored_slider_ImageColor3[3] = "bottomGradient"
					colored_slider_ImageColor3[4] = nil
					tweenService:Create(slider, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = library.colors.topGradient,
						ImageColor3 = library.colors.bottomGradient
					}):Play()
				end)
				local function sliding(input, sb, sc)
					local last_val = library_flags[flagName]
					local pos = UDim2.fromScale(math.clamp((input.Position.X - sb.AbsolutePosition.X) / sb.AbsoluteSize.X, 0, 1), 1)
					tweenService:Create(sc, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
						Size = pos
					}):Play()
					local sliderValue = nil
					if decimalprecision then
						sliderValue = tonumber(string.format("%0." .. decimalprecision .. "f", ((pos.X.Scale * maxValue) / maxValue) * (maxValue - minValue) + minValue))
					end
					sliderValue = sliderValue or tonumber(string.format("%0.2f", (floor(((pos.X.Scale * maxValue) / maxValue) * (maxValue - minValue) + minValue))))
					library_flags[flagName] = sliderValue
					if options.Location then
						options.Location[options.LocationFlag or flagName] = sliderValue
					end
					sliderHeadline.Text = resolvedisplay(sliderValue, last_val)
					if usetextbox and realTextbox then
						realTextbox.Text = tostring(sliderValue)
					end
					if callback and last_val ~= sliderValue then
						task.spawn(callback, sliderValue, last_val)
					end
					last_val = sliderValue
				end
				library.signals[1 + #library.signals] = newSlider.InputBegan:Connect(function(input)
					if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
						sliderDragging = true
						isDraggingSomething = true
					end
				end)
				library.signals[1 + #library.signals] = newSlider.InputEnded:Connect(function(input)
					if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
						sliderDragging = false
						isDraggingSomething = false
					end
				end)
				library.signals[1 + #library.signals] = newSlider.InputBegan:Connect(function(input)
					if not library.colorpicker and not isDraggingSomething and input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDraggingSomething = true
						sliding(input, sliderInner, sliderColored)
					end
				end)
				library.signals[1 + #library.signals] = userInputService.InputChanged:Connect(function(input)
					if not library.colorpicker and sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						sliding(input, sliderInner, sliderColored)
					end
				end)
				local default = library_flags[flagName]
				local function Update(t, last_val)
					if last_val == nil and t ~= nil and type(t) ~= "table" then
						last_val = t
					end
					sliderName, maxValue, minValue, callback = options.Name or sliderName, options.Max or maxValue, options.Min or minValue, options.Callback
					local newValue = library_flags[flagName]
					do
						local newValue = math.clamp(newValue, options.Min or -math.huge, options.Max or math.huge)
						tweenService:Create(sliderColored, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							Size = UDim2.fromScale(((newValue or minValue) - minValue) / (maxValue - minValue), 1)
						}):Play()
					end
					sliderHeadline.Text = resolvedisplay(newValue, last_val)
					if usetextbox and realTextbox then
						realTextbox.Text = tostring(newValue)
					end
					return newValue
				end
				local objectdata = {
					Options = options,
					Name = flagName,
					Flag = flagName,
					Type = "Slider",
					Default = default,
					Parent = sectionFunctions,
					Instance = sliderHeadline,
					Set = Set,
					Get = function()
						return library_flags[flagName]
					end,
					SetConstraints = function(t, min, max)
						if t and type(t) ~= "table" then
							min, max = t, min
						end
						if min then
							options.Min = min
						end
						if max then
							options.Max = max
						end
						Update()
					end,
					SetMin = function(t, min)
						if min == nil and t ~= nil then
							min = t
						end
						if min and min ~= options.Min then
							options.Min = min
							Update()
						end
					end,
					SetMax = function(t, max)
						if max == nil and t ~= nil then
							max = t
						end
						if max and max ~= options.Max then
							options.Max = max
							Update()
						end
					end,
					Update = Update,
					Remove = function()
						if newSlider then
							newSlider.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = function(t, newValue)
						if nil == newValue and t ~= nil then
							newValue = t
						end
						local last_val = library_flags[flagName]
						library_flags[flagName] = newValue
						if options.Location then
							options.Location[options.LocationFlag or flagName] = newValue
						end
						Update(nil, last_val)
					end,
					Reset = function()
						return Set(nil, default)
					end
				}
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.NewSlider = sectionFunctions.AddSlider
			sectionFunctions.CreateSlider = sectionFunctions.AddSlider
			sectionFunctions.NumberConstraint = sectionFunctions.AddSlider
			sectionFunctions.Slider = sectionFunctions.AddSlider
			sectionFunctions.Slide = sectionFunctions.AddSlider
			function sectionFunctions:AddSearchBox(options, ...)
				options = (options and type(options) == "string" and resolvevararg("SearchBox", options, ...)) or options
				local dropdownName, listt, val, callback, flagName = assert(options.Name, "Missing Name for new searchbox."), assert(options.List, "Missing List for new searchbox."), options.Value, options.Callback, options.Flag or (function()
					library.unnamedsearchbox = 1 + (library.unnamedsearchbox or 0)
					return "SearchBox" .. tostring(library.unnamedsearchbox)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local newDropdown = Instance_new("Frame")
				local dropdown = Instance_new("ImageLabel")
				local dropdownInner = Instance_new("ImageLabel")
				local dropdownToggle = Instance_new("ImageButton")
				local dropdownSelection = Instance_new("TextBox")
				local dropdownHeadline = Instance_new("TextLabel")
				local dropdownHolderFrame = Instance_new("ImageLabel")
				local dropdownHolderInner = Instance_new("ImageLabel")
				local realDropdownHolder = Instance_new("ScrollingFrame")
				local realDropdownHolderList = Instance_new("UIListLayout")
				local dropdownEnabled = false
				local resolvelist = getresolver(listt, options.Filter)
				local list = resolvelist()
				local multiselect = options.MultiSelect or options.Multi or options.Multiple
				local passed_multiselect = multiselect and type(multiselect)
				local blankstring = not multiselect and (options.BlankValue or options.NoValueString or options.Nothing)
				local selectedOption = val or list[1] or blankstring
				local addcallback = options.ItemAdded or options.AddedCallback
				local delcallback = options.ItemRemoved or options.RemovedCallback
				local clrcallback = options.ItemsCleared or options.ClearedCallback
				local modcallback = options.ItemChanged or options.ChangedCallback
				if blankstring and val == nil then
					val = blankstring
				end
				if val ~= nil then
					selectedOption = val
				end
				if multiselect and (not selectedOption or type(selectedOption) ~= "table") then
					selectedOption = {}
				end
				local selectedObjects = {}
				local optionCount = 0
				newDropdown.Name = "newDropdown"
				newDropdown.Parent = sectionHolder
				newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
				newDropdown.BackgroundTransparency = 1
				newDropdown.Size = UDim2.new(1, 0, 0, 42)
				dropdown.Name = "dropdown"
				dropdown.Parent = newDropdown
				dropdown.Active = true
				dropdown.BackgroundColor3 = library.colors.topGradient
				local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_dropdown_BackgroundColor3
				dropdown.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
				dropdown.Position = UDim2.fromScale(0.027, 0.45)
				dropdown.Selectable = true
				dropdown.Size = UDim2.fromOffset(206, 18)
				dropdown.Image = "rbxassetid://2454009026"
				dropdown.ImageColor3 = library.colors.bottomGradient
				local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_dropdown_ImageColor3
				dropdownInner.Name = "dropdownInner"
				dropdownInner.Parent = dropdown
				dropdownInner.Active = true
				dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
				dropdownInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
				dropdownInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
				dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
				dropdownInner.Selectable = true
				dropdownInner.Size = UDim2.new(1, -4, 1, -4)
				dropdownInner.Image = "rbxassetid://2454009026"
				dropdownInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
				dropdownToggle.Name = "dropdownToggle"
				dropdownToggle.Parent = dropdown
				dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownToggle.BackgroundTransparency = 1
				dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
				dropdownToggle.Rotation = 90
				dropdownToggle.Size = UDim2.fromOffset(12, 12)
				dropdownToggle.ZIndex = 6
				dropdownToggle.Image = "rbxassetid://71659683"
				dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
				dropdownSelection.Name = "dropdownSelection"
				dropdownSelection.Parent = dropdown
				dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownSelection.BackgroundTransparency = 1
				dropdownSelection.Position = UDim2.new(0.0295485705)
				dropdownSelection.Size = UDim2.fromScale(0.85, 1)
				dropdownSelection.ZIndex = 5
				dropdownSelection.Font = Enum.Font.Code
				dropdownSelection.LineHeight = 1.15
				dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or tostring((multiselect and (blankstring or "Select Item(s)")) or (selectedOption and tostring(selectedOption)) or blankstring or "No Blank String")
				dropdownSelection.TextColor3 = library.colors.otherElementText
				colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
				dropdownSelection.TextSize = 14
				dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
				dropdownSelection.ClearTextOnFocus = true
				dropdownHeadline.Name = "dropdownHeadline"
				dropdownHeadline.Parent = newDropdown
				dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownHeadline.BackgroundTransparency = 1
				dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
				dropdownHeadline.Size = UDim2.fromOffset(167, 11)
				dropdownHeadline.Font = Enum.Font.Code
				dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
				dropdownHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
				dropdownHeadline.TextSize = 14
				dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
				dropdownHolderFrame.Name = "dropdownHolderFrame"
				dropdownHolderFrame.Parent = newDropdown
				dropdownHolderFrame.Active = true
				dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
				dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
				dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
				dropdownHolderFrame.Selectable = true
				dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
				dropdownHolderFrame.Visible = false
				dropdownHolderFrame.Image = "rbxassetid://2454009026"
				dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
				dropdownHolderInner.Name = "dropdownHolderInner"
				dropdownHolderInner.Parent = dropdownHolderFrame
				dropdownHolderInner.Active = true
				dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
				dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
				dropdownHolderInner.BorderColor3 = library.colors.elementBorder
				dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
				dropdownHolderInner.Selectable = true
				dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
				dropdownHolderInner.Image = "rbxassetid://2454009026"
				dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
				realDropdownHolder.Name = "realDropdownHolder"
				realDropdownHolder.Parent = dropdownHolderInner
				realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
				realDropdownHolder.BackgroundTransparency = 1
				realDropdownHolder.Selectable = false
				realDropdownHolder.Size = UDim2.fromScale(1, 1)
				realDropdownHolder.CanvasSize = UDim2.new()
				realDropdownHolder.ScrollBarThickness = 5
				realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
				realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
				realDropdownHolder.ScrollBarImageTransparency = 0.5
				realDropdownHolder.ScrollBarImageColor3 = library.colors.section
				colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
				realDropdownHolderList.Name = "realDropdownHolderList"
				realDropdownHolderList.Parent = realDropdownHolder
				realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
				realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
				sectionFunctions:Update()
				local restorezindex = {}
				library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
					colored_dropdown_BackgroundColor3[3] = "main"
					colored_dropdown_BackgroundColor3[4] = 1.5
					colored_dropdown_ImageColor3[3] = "main"
					colored_dropdown_ImageColor3[4] = 2.5
					tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end)
				library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
					if not dropdownEnabled then
						colored_dropdown_BackgroundColor3[3] = "topGradient"
						colored_dropdown_BackgroundColor3[4] = nil
						colored_dropdown_ImageColor3[3] = "bottomGradient"
						colored_dropdown_ImageColor3[4] = nil
						tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end
				end)
				local function UpdateDropdownHolder()
					if optionCount >= 6 then
						realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
					elseif optionCount <= 5 then
						dropdownHolderFrame.Size = UDim2.fromOffset(206, realDropdownHolderList.AbsoluteContentSize.Y + 4)
					end
				end
				local function AddOptions(optionsTable, filter)
					if options.Sort then
						local didstuff, dosort = nil, options.Sort
						if type(dosort) == "function" then
							local g, h = pcall(table.sort, optionsTable, dosort)
							if g then
								didstuff = true
							elseif h then
								warn("Error sorting list:", h, debug.traceback(""))
							end
						end
						if not didstuff then
							table.sort(optionsTable, library.defaultSort)
						end
					end
					if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
						local exists = table.find(optionsTable, blankstring)
						if exists then
							for _ = 1, 35 do
								table.remove(optionsTable, exists)
								exists = table.find(optionsTable, blankstring)
								if not exists then
									break
								end
							end
						end
						table.insert(optionsTable, 1, blankstring)
					end
					optionCount = 0
					realDropdownHolderList.Parent = nil
					realDropdownHolder:ClearAllChildren()
					realDropdownHolderList.Parent = realDropdownHolder
					for _, v in next, optionsTable do
						if not filter or tostring(v):lower():find(dropdownSelection.Text:lower(), 1, not options.RegEx) then
							optionCount = optionCount + 1
							UpdateDropdownHolder()
							local newOption = Instance_new("ImageLabel")
							local optionButton = Instance_new("TextButton")
							if selectedOption == v then
								selectedObjects[1] = newOption
								selectedObjects[2] = optionButton
							end
							newOption.Name = "Frame"
							newOption.Parent = realDropdownHolder
							local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
							newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
							newOption.BorderSizePixel = 0
							newOption.Size = UDim2.fromOffset(202, 18)
							newOption.Image = "rbxassetid://2454009026"
							newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
							local stringed = tostring(v)
							optionButton.Name = stringed
							optionButton.Parent = newOption
							optionButton.Active = true
							optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
							optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
							optionButton.BackgroundTransparency = 1
							optionButton.Position = UDim2.fromScale(0.5, 0.5)
							optionButton.Selectable = true
							optionButton.Size = UDim2.new(1, -10, 1)
							optionButton.ZIndex = 5
							optionButton.Font = Enum.Font.Code
							optionButton.Text = (togged and (" " .. stringed)) or stringed
							optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
							optionButton.TextSize = 14
							optionButton.TextXAlignment = Enum.TextXAlignment.Left
							library.signals[1 + #library.signals] = optionButton[(multiselect and "MouseButton1Click") or "MouseButton1Down"]:Connect(function()
								if not library.colorpicker then
									dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or tostring(blankstring or "Select Item(s)")
									restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
									restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
									restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
									if multiselect then
										local cloned = {unpack(selectedOption)}
										local togged = table.find(selectedOption, v)
										if togged then
											table.remove(selectedOption, togged)
										else
											selectedOption[1 + #selectedOption] = v
										end
										togged = table.find(selectedOption, v)
										optionButton.Text = (togged and (" " .. stringed)) or stringed
										newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
										newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
										optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
										if callback then
											task.spawn(callback, selectedOption, cloned)
										end
										if togged then
											if addcallback then
												task.spawn(addcallback, v, selectedOption)
											end
										elseif delcallback then
											task.spawn(delcallback, v, selectedOption)
										end
										if modcallback then
											task.spawn(modcallback, v, togged, selectedOption)
										end
										if #selectedOption == 0 and clrcallback then
											task.spawn(clrcallback, selectedOption, cloned)
										end
										return
									else
										dropdownSelection.Text = stringed
										if selectedOption ~= v then
											local last_v = library_flags[flagName]
											selectedObjects[1].BackgroundColor3 = library.colors.topGradient
											selectedObjects[1].ImageColor3 = library.colors.bottomGradient
											selectedObjects[2].Text = selectedObjects[2].Name
											selectedObjects[2].TextColor3 = library.colors.otherElementText
											selectedOption = v
											selectedObjects[1] = newOption
											selectedObjects[2] = optionButton
											newOption.BackgroundColor3 = library.colors.selectedOption
											newOption.ImageColor3 = library.colors.unselectedOption
											optionButton.TextColor3 = library.colors.main
											dropdownHolderFrame.Visible = false
											dropdownToggle.Rotation = 90
											dropdownEnabled = false
											newDropdown.ZIndex = 1
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											library_flags[flagName] = selectedOption
											if options.Location then
												options.Location[options.LocationFlag or flagName] = selectedOption
											end
											dropdownSelection.Text = tostring(selectedOption)
											if submenuOpen then
												submenuOpen = nil
											end
											if callback then
												task.spawn(callback, selectedOption, last_v)
											end
										else
											submenuOpen = nil
											dropdownToggle.Rotation = 90
											colored_dropdown_BackgroundColor3[3] = "topGradient"
											colored_dropdown_BackgroundColor3[4] = nil
											colored_dropdown_ImageColor3[3] = "bottomGradient"
											colored_dropdown_ImageColor3[4] = nil
											tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
												BackgroundColor3 = library.colors.topGradient,
												ImageColor3 = library.colors.bottomGradient
											}):Play()
											dropdownHolderFrame.Visible = false
										end
									end
									for ins, z in next, restorezindex do
										ins.ZIndex = z
									end
								end
							end)
							library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
								tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.hoveredOptionTop,
									ImageColor3 = library.colors.hoveredOptionBottom
								}):Play()
							end)
							library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
								local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
								tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient,
									ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
								}):Play()
							end)
							UpdateDropdownHolder()
						end
					end
				end
				local precisionscrolling, update = nil
				local showing = false
				local function display(dropdownEnabled, f)
					if submenuOpen == dropdown or submenuOpen == nil then
						if dropdownEnabled then
							list = resolvelist()
							AddOptions(list, f)
							submenuOpen = dropdown
							dropdownToggle.Rotation = 270
							restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
							restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
							restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
							newSection.ZIndex = 50 + newSection.ZIndex
							newDropdown.ZIndex = 2
							sectionHolder.ZIndex = 2
							colored_dropdown_BackgroundColor3[3] = "main"
							colored_dropdown_BackgroundColor3[4] = 1.5
							colored_dropdown_ImageColor3[3] = "main"
							colored_dropdown_ImageColor3[4] = 2.5
							tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = darkenColor(library.colors.main, 1.5),
								ImageColor3 = darkenColor(library.colors.main, 2.5)
							}):Play()
							dropdownHolderFrame.Visible = true
							if not options.DisablePrecisionScrolling then
								local scrollrate = tonumber(options.ScrollButtonRate or options.ScrollRate) or 5
								local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
								local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
								precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.Keyboard then
										local code = input.KeyCode
										local isup = code == upkey
										local isdown = code == downkey
										if isup or isdown then
											local txt = userInputService:GetFocusedTextBox()
											if not txt or txt == dropdownSelection then
												while wait_check() and userInputService:IsKeyDown(code) do
													realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -scrollrate) or scrollrate), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
												end
											end
										end
									end
								end)
								library.signals[1 + #library.signals] = precisionscrolling
							end
						else
							submenuOpen = nil
							dropdownToggle.Rotation = 90
							colored_dropdown_BackgroundColor3[3] = "topGradient"
							colored_dropdown_BackgroundColor3[4] = nil
							colored_dropdown_ImageColor3[3] = "bottomGradient"
							colored_dropdown_ImageColor3[4] = nil
							tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
							dropdownHolderFrame.Visible = false
							for ins, z in next, restorezindex do
								ins.ZIndex = z
							end
							precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
						end
					end
					showing = dropdownEnabled
					if showing or dropdownEnabled then
					else
						delay(0.01, update)
					end
				end
				local Set = (multiselect and function(t, dat)
					if nil == dat and t ~= nil then
						dat = t
					end
					local lastv = library_flags[flagName]
					if not lastv or selectedOption ~= lastv then
						if lastv and type(lastv) == "table" then
							selectedOption = library_flags[flagName]
						else
							library_flags[flagName] = selectedOption
						end
						warn("Attempting to use new table for", flagName, " Please use :Set(), because setting it through flags table may cause errors", debug.traceback(""))
						lastv = library_flags[flagName]
					end
					local cloned = {unpack(selectedOption)}
					if not dat then
						if #selectedOption ~= 0 then
							table.clear(selectedOption)
							if callback then
								task.spawn(callback, selectedOption, cloned)
							end
						end
						return selectedOption
					elseif type(dat) ~= "table" then
						warn("Expected table for argument #1 on Set for MultiSelect searchbox. Got", dat, debug.traceback(""))
						return selectedOption
					end
					for k = table.pack(unpack(dat)).n, 1, -1 do
						if dat[k] == nil then
							table.remove(dat, k)
						end
					end
					local proceed = #cloned ~= #dat
					table.clear(selectedOption)
					for k, v in next, dat do
						selectedOption[k] = v
						if not proceed and cloned[k] ~= v then
							proceed = 1
						end
					end
					dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or tostring(blankstring or "Select Item(s)")
					if proceed and callback then
						task.spawn(callback, selectedOption, cloned)
					end
					return selectedOption
				end) or function(t, str)
					if nil == str and t then
						str = t
					end
					local last_v = library_flags[flagName]
					selectedOption = str
					library_flags[flagName] = str
					if options.Location then
						options.Location[options.LocationFlag or flagName] = str
					end
					local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "No Blank String"
					if dropdownSelection.Text ~= sstr then
						dropdownSelection.Text = sstr
					end
					if callback and (last_v ~= str or options.AllowDuplicateCalls) then
						task.spawn(callback, str, last_v)
					end
					return str
				end
				if val ~= nil then
					Set(val)
				else
					library_flags[flagName] = selectedOption
					if options.Location then
						options.Location[options.LocationFlag or flagName] = selectedOption
					end
				end
				library.signals[1 + #library.signals] = dropdownToggle.MouseButton1Click:Connect(function()
					showing = not showing
					display(showing)
				end)
				library.signals[1 + #library.signals] = dropdownSelection.Focused:Connect(function()
					showing = true
					display(true)
				end)
				library.signals[1 + #library.signals] = dropdownSelection:GetPropertyChangedSignal("Text"):Connect(function()
					if showing then
						display(true, #dropdownSelection.Text > 0)
					end
				end)
				if not multiselect then
					library.signals[1 + #library.signals] = dropdownSelection.FocusLost:Connect(function(b)
						if showing then
							wait()
						end
						showing = false
						display(false)
						if b then
							Set(dropdownSelection.Text)
						end
					end)
				end
				AddOptions(list)
				local default = library_flags[flagName]
				function update()
					dropdownName, callback = options.Name or dropdownName, options.Callback
					local sstr = (passed_multiselect == "string" and multiselect) or (not multiselect and library_flags[flagName] and tostring(library_flags[flagName])) or (not multiselect and selectedOption and tostring(selectedOption)) or blankstring or "Nothing"
					if dropdownSelection.Text ~= sstr then
						dropdownSelection.Text = sstr
					end
					dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
					return sstr
				end
				local function validate(fallbackValue)
					if list and table.find(list, library_flags[flagName]) then
						update()
						return true
					end
					if fallbackValue ~= nil then
						if fallbackValue == "__DEFAULT" then
							fallbackValue = default
						end
					else
						fallbackValue = list[1]
					end
					if multiselect and type(fallbackValue) ~= "table" then
						fallbackValue = {fallbackValue}
					end
					return Set(fallbackValue)
				end
				local objectdata = {
					Options = options,
					Name = flagName,
					Flag = flagName,
					Type = "SearchBox",
					Default = default,
					Parent = sectionFunctions,
					Instance = dropdownSelection,
					Validate = validate,
					Set = Set,
					Remove = function()
						if newDropdown then
							newDropdown.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = ((multiselect and function(t, dat)
						if nil == dat and t ~= nil then
							dat = t
						end
						local lastv = library_flags[flagName]
						if not lastv or selectedOption ~= lastv then
							if lastv and type(lastv) == "table" then
								selectedOption = library_flags[flagName]
							else
								library_flags[flagName] = selectedOption
							end
							warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
							lastv = library_flags[flagName]
						end
						local cloned = {unpack(selectedOption)}
						if not dat then
							if #selectedOption ~= 0 then
								table.clear(selectedOption)
								if callback then
									task.spawn(callback, selectedOption, cloned)
								end
							end
							return selectedOption
						elseif type(dat) ~= "table" then
							warn("Expected table for argument #1 on Set for MultiSelect searchbox. Got", dat, debug.traceback(""))
							return selectedOption
						end
						for k = table.pack(unpack(dat)).n, 1, -1 do
							if dat[k] == nil then
								table.remove(dat, k)
							end
						end
						local proceed = #cloned ~= #dat
						table.clear(selectedOption)
						for k, v in next, dat do
							selectedOption[k] = v
							if not proceed and cloned[k] ~= v then
								proceed = 1
							end
						end
						update()
						return selectedOption
					end) or function(t, str)
						if nil == str and t then
							str = t
						end
						selectedOption = str
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						update()
						return str
					end),
					Get = function()
						return library_flags[flagName]
					end,
					Update = update,
					Reset = function()
						return Set(nil, default)
					end
				}
				function objectdata.UpdateList(t, listt, updateValues)
					if (nil == listt and t ~= nil) or (type(t) == "table" and type(listt) ~= "table") then
						listt, updateValues = t, listt
					end
					if listt == objectdata then
						listt = nil
					end
					resolvelist = getresolver(listt or options.List, options.Filter, options.Method)
					list = resolvelist()
					if updateValues then
						validate()
					end
					if showing then
						display(false)
						display(true)
					end
					return list
				end
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.NewSearchBox = sectionFunctions.AddSearchBox
			sectionFunctions.CreateSearchBox = sectionFunctions.AddSearchBox
			sectionFunctions.SearchBox = sectionFunctions.AddSearchBox
			sectionFunctions.CreateSearchbox = sectionFunctions.AddSearchBox
			sectionFunctions.NewSearchbox = sectionFunctions.AddSearchBox
			sectionFunctions.Searchbox = sectionFunctions.AddSearchBox
			sectionFunctions.Sbox = sectionFunctions.AddSearchBox
			sectionFunctions.SBox = sectionFunctions.AddSearchBox
			if isfolder and makefolder and listfiles and readfile and writefile then
				function sectionFunctions:AddPersistence(options, ...)
					options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
					local dropdownName, custom_workspace, val, persistiveflags, suffix, callback, loadcallback, savecallback, postload, postsave, flagName = assert(options.Name, "Missing Name for new persistence."), options.Workspace or library.WorkspaceName, options.Value, options.Persistive or options.Flags or "all", options.Suffix, options.Callback, options.LoadCallback, options.SaveCallback, options.PostLoadCallback, options.PostSaveCallback, options.Flag or (function()
						library.unnamedpersistence = 1 + (library.unnamedpersistence or 0)
						return "Persistence" .. tostring(library.unnamedpersistence)
					end)()
					if elements[flagName] ~= nil then
						warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
					end
					local designerpersists = options.Desginer
					local newDropdown = Instance_new("Frame")
					local dropdown = Instance_new("ImageLabel")
					local dropdownInner = Instance_new("ImageLabel")
					local dropdownToggle = Instance_new("ImageButton")
					local dropdownSelection = Instance_new("TextBox")
					local dropdownHeadline = Instance_new("TextLabel")
					local dropdownHolderFrame = Instance_new("ImageLabel")
					local dropdownHolderInner = Instance_new("ImageLabel")
					local realDropdownHolder = Instance_new("ScrollingFrame")
					local realDropdownHolderList = Instance_new("UIListLayout")
					local dropdownEnabled = false
					if not isfolder("./Pepsi Lib") then
						makefolder("./Pepsi Lib")
					end
					local common_string = "./Pepsi Lib/" .. tostring(custom_workspace or library.WorkspaceName)
					local function resolvelist(nofold)
						if custom_workspace ~= options.Workspace then
							custom_workspace = options.Workspace
							common_string = "./Pepsi Lib/" .. tostring(custom_workspace or library.WorkspaceName)
						end
						if not isfolder or not makefolder or not listfiles then
							return {}
						end
						if not isfolder(common_string) then
							if nofold then
								return {}
							end
							makefolder(common_string)
						end
						assert(isfolder(common_string), "Couldn't create folder: " .. tostring(library.WorkspaceName or "No workspace name?"))
						local names, files = {}, listfiles(common_string)
						if #files > 0 then
							local len = #common_string + 2
							for _, f in next, files do
								names[1 + #names] = string.sub(f, len, -5)
							end
							table.sort(names)
						end
						return names
					end
					local list = resolvelist(true)
					local blankstring = options.BlankValue or options.NoValueString or options.Nothing
					local selectedObjects = {}
					local optionCount = 0
					if blankstring and val == nil then
						val = blankstring
					end
					local selectedOption = val or blankstring or list[1]
					newDropdown.Name = "newDropdown"
					newDropdown.Parent = sectionHolder
					newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
					newDropdown.BackgroundTransparency = 1
					newDropdown.Size = UDim2.new(1, 0, 0, 42)
					dropdown.Name = "dropdown"
					dropdown.Parent = newDropdown
					dropdown.Active = true
					dropdown.BackgroundColor3 = library.colors.topGradient
					local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
					colored[1 + #colored] = colored_dropdown_BackgroundColor3
					dropdown.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
					dropdown.Position = UDim2.fromScale(0.027, 0.45)
					dropdown.Selectable = true
					dropdown.Size = UDim2.fromOffset(206, 18)
					dropdown.Image = "rbxassetid://2454009026"
					dropdown.ImageColor3 = library.colors.bottomGradient
					local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
					colored[1 + #colored] = colored_dropdown_ImageColor3
					dropdownInner.Name = "dropdownInner"
					dropdownInner.Parent = dropdown
					dropdownInner.Active = true
					dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
					dropdownInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
					dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownInner.Selectable = true
					dropdownInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownInner.Image = "rbxassetid://2454009026"
					dropdownInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
					dropdownToggle.Name = "dropdownToggle"
					dropdownToggle.Parent = dropdown
					dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownToggle.BackgroundTransparency = 1
					dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
					dropdownToggle.Rotation = 90
					dropdownToggle.Size = UDim2.fromOffset(12, 12)
					dropdownToggle.ZIndex = 2
					dropdownToggle.Image = "rbxassetid://71659683"
					dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
					dropdownSelection.Name = "dropdownSelection"
					dropdownSelection.Parent = dropdown
					dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownSelection.BackgroundTransparency = 1
					dropdownSelection.Position = UDim2.new(0.0295485705)
					dropdownSelection.Size = UDim2.fromScale(0.97, 1)
					dropdownSelection.ZIndex = 5
					dropdownSelection.Font = Enum.Font.Code
					dropdownSelection.LineHeight = 1.15
					dropdownSelection.Text = (selectedOption and tostring(selectedOption)) or "nil"
					dropdownSelection.TextColor3 = library.colors.otherElementText
					colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
					dropdownSelection.TextSize = 14
					dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
					dropdownHeadline.Name = "dropdownHeadline"
					dropdownHeadline.Parent = newDropdown
					dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
					dropdownHeadline.BackgroundTransparency = 1
					dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
					dropdownHeadline.Size = UDim2.fromOffset(167, 11)
					dropdownHeadline.Font = Enum.Font.Code
					dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
					dropdownHeadline.TextColor3 = library.colors.elementText
					colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
					dropdownHeadline.TextSize = 14
					dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
					dropdownHolderFrame.Name = "dropdownHolderFrame"
					dropdownHolderFrame.Parent = newDropdown
					dropdownHolderFrame.Active = true
					dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
					dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
					dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
					dropdownHolderFrame.Selectable = true
					dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
					dropdownHolderFrame.Visible = false
					dropdownHolderFrame.Image = "rbxassetid://2454009026"
					dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
					dropdownHolderInner.Name = "dropdownHolderInner"
					dropdownHolderInner.Parent = dropdownHolderFrame
					dropdownHolderInner.Active = true
					dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
					dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
					colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
					dropdownHolderInner.BorderColor3 = library.colors.elementBorder
					colored[1 + #colored] = {dropdownHolderInner, "BorderColor3", "elementBorder"}
					dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
					dropdownHolderInner.Selectable = true
					dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
					dropdownHolderInner.Image = "rbxassetid://2454009026"
					dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
					colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
					realDropdownHolder.Name = "realDropdownHolder"
					realDropdownHolder.Parent = dropdownHolderInner
					realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
					realDropdownHolder.BackgroundTransparency = 1
					realDropdownHolder.Selectable = false
					realDropdownHolder.Size = UDim2.fromScale(1, 1)
					realDropdownHolder.CanvasSize = UDim2.new()
					realDropdownHolder.ScrollBarThickness = 5
					realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
					realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
					realDropdownHolder.ScrollBarImageTransparency = 0.5
					realDropdownHolder.ScrollBarImageColor3 = library.colors.section
					colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
					realDropdownHolderList.Name = "realDropdownHolderList"
					realDropdownHolderList.Parent = realDropdownHolder
					realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
					realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
					sectionFunctions:Update()
					library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
						colored_dropdown_BackgroundColor3[3] = "main"
						colored_dropdown_BackgroundColor3[4] = 1.5
						colored_dropdown_ImageColor3[3] = "main"
						colored_dropdown_ImageColor3[4] = 2.5
						tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
					end)
					library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
						if not dropdownEnabled then
							colored_dropdown_BackgroundColor3[3] = "topGradient"
							colored_dropdown_BackgroundColor3[4] = nil
							colored_dropdown_ImageColor3[3] = "bottomGradient"
							colored_dropdown_ImageColor3[4] = nil
							tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.topGradient,
								ImageColor3 = library.colors.bottomGradient
							}):Play()
						end
					end)
					local restorezindex = {}
					local function UpdateDropdownHolder()
						if optionCount >= 6 then
							realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
						elseif optionCount <= 5 then
							dropdownHolderFrame.Size = UDim2.fromOffset(206, (realDropdownHolderList.AbsoluteContentSize.Y + 4))
						end
					end
					local function AddOptions(optionsTable, filter)
						if options.Sort then
							local didstuff, dosort = nil, options.Sort
							if type(dosort) == "function" then
								local g, h = pcall(table.sort, optionsTable, dosort)
								if g then
									didstuff = true
								elseif h then
									warn("Error sorting list:", h, debug.traceback(""))
								end
							end
							if not didstuff then
								table.sort(optionsTable, library.defaultSort)
							end
						end
						if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
							local exists = table.find(optionsTable, blankstring)
							if exists then
								for _ = 1, 35 do
									table.remove(optionsTable, exists)
									exists = table.find(optionsTable, blankstring)
									if not exists then
										break
									end
								end
							end
							table.insert(optionsTable, 1, blankstring)
						end
						optionCount = 0
						realDropdownHolderList.Parent = nil
						realDropdownHolder:ClearAllChildren()
						realDropdownHolderList.Parent = realDropdownHolder
						for _, v in next, optionsTable do
							if not filter or tostring(v):lower():find(dropdownSelection.Text:lower(), 1, true) then
								optionCount = optionCount + 1
								UpdateDropdownHolder()
								local newOption = Instance_new("ImageLabel")
								local optionButton = Instance_new("TextButton")
								if selectedOption == v or not selectedObjects[1] or not selectedObjects[2] then
									selectedObjects[1] = newOption
									selectedObjects[2] = optionButton
								end
								newOption.Name = "Frame"
								newOption.Parent = realDropdownHolder
								newOption.BackgroundColor3 = (selectedOption == v and library.colors.selectedOption or library.colors.topGradient)
								newOption.BorderSizePixel = 0
								newOption.Size = UDim2.fromOffset(202, 18)
								newOption.Image = "rbxassetid://2454009026"
								newOption.ImageColor3 = (selectedOption == v and library.colors.unselectedOption or library.colors.bottomGradient)
								optionButton.Name = tostring(v)
								optionButton.Parent = newOption
								optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
								optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
								optionButton.BackgroundTransparency = 1
								optionButton.Position = UDim2.fromScale(0.5, 0.5)
								optionButton.Size = UDim2.new(1, -10, 1)
								optionButton.ZIndex = 5
								optionButton.Font = Enum.Font.Code
								optionButton.Text = (selectedOption == v and " " .. tostring(v)) or tostring(v)
								optionButton.TextColor3 = (selectedOption == v and library.colors.main or library.colors.otherElementText)
								optionButton.TextSize = 14
								optionButton.TextXAlignment = Enum.TextXAlignment.Left
								library.signals[1 + #library.signals] = optionButton.MouseButton1Down:Connect(function()
									dropdownSelection.Text = tostring(v)
									restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
									restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
									restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
									if selectedOption ~= v then
										local last_v = library_flags[flagName]
										selectedObjects[1].BackgroundColor3 = library.colors.topGradient
										selectedObjects[1].ImageColor3 = library.colors.bottomGradient
										selectedObjects[2].Text = selectedObjects[2].Name
										selectedObjects[2].TextColor3 = library.colors.otherElementText
										selectedOption = v
										selectedObjects[1] = newOption
										selectedObjects[2] = optionButton
										newOption.BackgroundColor3 = library.colors.selectedOption
										newOption.ImageColor3 = library.colors.unselectedOption
										optionButton.TextColor3 = library.colors.main
										dropdownHolderFrame.Visible = false
										dropdownToggle.Rotation = 90
										dropdownEnabled = false
										colored_dropdown_BackgroundColor3[3] = "topGradient"
										colored_dropdown_BackgroundColor3[4] = nil
										colored_dropdown_ImageColor3[3] = "bottomGradient"
										colored_dropdown_ImageColor3[4] = nil
										tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.topGradient,
											ImageColor3 = library.colors.bottomGradient
										}):Play()
										library_flags[flagName] = selectedOption
										if options.Location then
											options.Location[options.LocationFlag or flagName] = selectedOption
										end
										dropdownSelection.Text = tostring(selectedOption)
										if submenuOpen then
											submenuOpen = nil
										end
										if callback then
											task.spawn(callback, selectedOption, last_v)
										end
									else
										submenuOpen = nil
										dropdownToggle.Rotation = 90
										newDropdown.ZIndex = 1
										sectionHolder.ZIndex = 1
										colored_dropdown_BackgroundColor3[3] = "topGradient"
										colored_dropdown_BackgroundColor3[4] = nil
										colored_dropdown_ImageColor3[3] = "bottomGradient"
										colored_dropdown_ImageColor3[4] = nil
										tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.topGradient,
											ImageColor3 = library.colors.bottomGradient
										}):Play()
										dropdownHolderFrame.Visible = false
									end
									for ins, z in next, restorezindex do
										ins.ZIndex = z
									end
								end)
								library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
									tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = library.colors.hoveredOptionTop,
										ImageColor3 = library.colors.hoveredOptionBottom
									}):Play()
								end)
								library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
									tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
										BackgroundColor3 = library.colors.unhoveredOptionTop,
										ImageColor3 = library.colors.unhoveredOptionBottom
									}):Play()
								end)
								UpdateDropdownHolder()
							end
						end
					end
					local precisionscrolling, update = nil
					local showing = false
					local function display(dropdownEnabled, f)
						if submenuOpen == dropdown or submenuOpen == nil then
							if dropdownEnabled then
								list = resolvelist(true)
								AddOptions(list, f)
								submenuOpen = dropdown
								restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
								restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
								restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
								newSection.ZIndex = 50 + newSection.ZIndex
								dropdownToggle.Rotation = 270
								newDropdown.ZIndex = 2
								sectionHolder.ZIndex = 2
								colored_dropdown_BackgroundColor3[3] = "main"
								colored_dropdown_BackgroundColor3[4] = 1.5
								colored_dropdown_ImageColor3[3] = "main"
								colored_dropdown_ImageColor3[4] = 2.5
								tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = darkenColor(library.colors.main, 1.5),
									ImageColor3 = darkenColor(library.colors.main, 2.5)
								}):Play()
								dropdownHolderFrame.Visible = true
								if not options.DisablePrecisionScrolling then
									local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
									local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
									precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
										if input.UserInputType == Enum.UserInputType.Keyboard then
											local code = input.KeyCode
											local isup = code == upkey
											local isdown = code == downkey
											if isup or isdown then
												local txt = userInputService:GetFocusedTextBox()
												if not txt then
													while wait_check() and userInputService:IsKeyDown(code) do
														realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -5) or 5), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
													end
												end
											end
										end
									end)
									library.signals[1 + #library.signals] = precisionscrolling
								end
							else
								submenuOpen = nil
								dropdownToggle.Rotation = 90
								colored_dropdown_BackgroundColor3[3] = "topGradient"
								colored_dropdown_BackgroundColor3[4] = nil
								colored_dropdown_ImageColor3[3] = "bottomGradient"
								colored_dropdown_ImageColor3[4] = nil
								tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.topGradient,
									ImageColor3 = library.colors.bottomGradient
								}):Play()
								dropdownHolderFrame.Visible = false
								for ins, z in next, restorezindex do
									ins.ZIndex = z
								end
								precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
							end
							showing = dropdownEnabled
							if showing or dropdownEnabled then
							else
								delay(0.01, update)
							end
						end
					end
					local last_v = nil
					local function Set(t, str)
						if nil == str and t then
							str = t
						end
						selectedOption = str
						last_v = library_flags[flagName]
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "No Blank String"
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						if callback and (last_v ~= str or options.AllowDuplicateCalls) then
							task.spawn(callback, str, last_v)
						end
						return str
					end
					if val ~= nil then
						Set(val)
					else
						Set("Filename")
					end
					library.signals[1 + #library.signals] = dropdownSelection.Focused:Connect(function()
						showing = true
						display(true)
					end)
					library.signals[1 + #library.signals] = dropdownSelection:GetPropertyChangedSignal("Text"):Connect(function()
						if showing then
							display(true, #dropdownSelection.Text > 0)
						end
					end)
					library.signals[1 + #library.signals] = dropdownSelection.FocusLost:Connect(function(b)
						if showing then
							wait()
						end
						showing = false
						display(false)
						if b then
							Set(dropdownSelection.Text)
						end
					end)
					AddOptions(list)
					local function savestuff(s, get)
						if not s or type(s) ~= "string" then
							s = nil
						end
						local rawfile = "json__save"
						if not get then
							local filenameddst = string.gsub(s or dropdownSelection.Text or "", "%W", "")
							if #filenameddst == 0 then
								return
							end
							rawfile = string.format("%s/%s.txt", common_string, filenameddst)
						end
						if savecallback then
							local x, e = pcall(savecallback, rawfile, library_flags[flagName])
							if not x and e then
								warn("Error while calling the Pre-Save callback:", e, debug.traceback(""))
							end
						end
						local working_with = {}
						if persistiveflags == 1 or persistiveflags == true or persistiveflags == "*" then
							persistiveflags = "all"
						elseif persistiveflags == 2 then
							persistiveflags = "tab"
						elseif persistiveflags == 3 then
							persistiveflags = "section"
						end
						if persistiveflags == "all" or persistiveflags == "tab" or persistiveflags == "section" then
							for cflag, data in next, (persistiveflags == "all" and elements) or (persistiveflags == "tab" and tabFunctions.Flags) or (persistiveflags == "section" and sectionFunctions.Flags) do
								if data.Type ~= "Persistence" and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
									working_with[cflag] = data
								end
							end
						elseif type(persistiveflags) == "table" then
							if #persistiveflags > 0 then
								local inverted = persistiveflags[0] == false or persistiveflags.Inverted
								for k, cflag in next, persistiveflags do
									if k > 0 then
										local data = elements[cflag]
										if data and data.Type ~= "Persistence" and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
											working_with[cflag] = (not inverted and data) or nil
										end
									end
								end
							else
								for cflag, persists in next, elements do
									if persists and (designerpersists or string.sub(cflag, 1, 11) ~= "__Designer.") then
										local data = elements[cflag]
										if data then
											working_with[cflag] = data
										end
									end
								end
							end
						end
						local saving = {}
						for cflag in next, working_with do
							local value = library_flags[cflag]
							local good, jval = nil, nil
							if value ~= nil then
								good, jval = JSONEncode(value)
							else
								good, jval = true, "null"
							end
							if not good or (jval == "null" and value ~= nil) then
								local typ = typeof(value)
								if typ == "Color3" then
									value = (library.rainbowflags[cflag] and "rainbow") or Color3ToHex(value)
								end
								value = tostring(value)
								good, jval = JSONEncode(value)
								if not good or (jval == "null" and value ~= nil) then
									warn("Could not save value:", value, debug.traceback(""))
								end
							end
							if good and jval then
								saving[cflag] = value
							end
						end
						local ret = nil
						local good, content = JSONEncode(saving)
						if good and content then
							if not get then
								if not isfolder(common_string) then
									makefolder(common_string)
								end
								writefile(rawfile, content)
							else
								ret = content
							end
						end
						if postsave then
							local x, e = pcall(postsave, rawfile, library_flags[flagName])
							if not x and e then
								warn("Error while calling the Post-Save callback:", e, debug.traceback(""))
							end
						end
						return ret
					end
					local function loadstuff(s, jsonmode, silent)
						if not s or type(s) ~= "string" then
							s = nil
						end
						local filename = "json__load"
						if not jsonmode then
							local filenameddst = convertfilename(s or dropdownSelection.Text, nil, "")
							if #filenameddst == 0 then
								return
							end
							filename = string.format("%s/%s.txt", common_string, filenameddst)
						end
						if loadcallback then
							local x, e = pcall(loadcallback, (jsonmode and s) or filename, library_flags[flagName])
							if not x and e then
								warn("Error while calling the Pre-Load callback:", e, debug.traceback(""))
							end
						end
						if jsonmode or not isfile or isfile(filename) then
							local content = (jsonmode and s) or (not jsonmode and readfile(filename))
							if content and #content > 1 then
								local good, jcontent = JSONDecode(content)
								if good and jcontent then
									for cflag, val in next, jcontent do
										if val and type(val) == "string" and #val > 7 and #val < 64 and string.sub(val, 1, 5) == "Enum." then
											local e = string.find(val, ".", 6, true)
											if e then
												local en = Enum[string.sub(val, 6, e - 1)]
												en = en and en[string.sub(val, e + 1)]
												if en then
													val = en
												else
													warn("Tried & failed to convert '" .. val .. "' to EnumItem")
												end
											end
										end
										local data = elements[cflag]
										if data and data.Type ~= "Persistence" then
											if silent and data.RawSet then
												data:RawSet(val)
											elseif data.Set then
												data:Set(val)
											else
												library_flags[cflag] = val
											end
										end
									end
								end
							end
						end
						if postload then
							local x, e = pcall(postload, filename, library_flags[flagName])
							if not x and e then
								warn("Error while calling the Post-Load callback:", e, debug.traceback(""))
							end
						end
					end
					local fram = nil
					do
						local buttons, offset = {}, 0
						for _, options in next, {{
							Name = "Save" .. ((suffix and (" " .. tostring(suffix))) or ""),
							Callback = savestuff
							}, {
								Name = "Load" .. ((suffix and (" " .. tostring(suffix))) or ""),
								Callback = loadstuff
							}} do
							local buttonName, callback = options.Name, options.Callback
							local realButton = Instance_new("TextButton")
							realButton.Name = "realButton"
							realButton.BackgroundColor3 = Color3.new(1, 1, 1)
							realButton.BackgroundTransparency = 1
							realButton.Size = UDim2.fromScale(1, 1)
							realButton.ZIndex = 5
							realButton.Font = Enum.Font.Code
							realButton.Text = (buttonName and tostring(buttonName)) or "???"
							realButton.TextColor3 = library.colors.elementText
							colored[1 + #colored] = {realButton, "TextColor3", "elementText"}
							realButton.TextSize = 14
							local textsize = textToSize(realButton).X + 14
							if newSection.Parent and (newSection.Parent.AbsoluteSize.X < (offset + textsize + 8)) then
								offset, fram = 0, nil
							end
							local newButton = fram or Instance_new("Frame")
							fram = newButton
							local button = Instance_new("ImageLabel")
							newButton.Name = removeSpaces((buttonName and buttonName:lower() or "???") .. "Holder")
							newButton.Parent = sectionHolder
							newButton.BackgroundColor3 = Color3.new(1, 1, 1)
							newButton.BackgroundTransparency = 1
							newButton.Size = UDim2.new(1, 0, 0, 24)
							button.Name = "button"
							button.Parent = newButton
							button.Active = true
							button.BackgroundColor3 = library.colors.topGradient
							local colored_button_BackgroundColor3 = {button, "BackgroundColor3", "topGradient"}
							colored[1 + #colored] = colored_button_BackgroundColor3
							button.BorderColor3 = library.colors.elementBorder
							colored[1 + #colored] = {button, "BorderColor3", "elementBorder"}
							button.Position = UDim2.new(0.031, offset, 0.166)
							button.Selectable = true
							button.Size = UDim2.fromOffset(28, 18)
							button.Image = "rbxassetid://2454009026"
							button.ImageColor3 = library.colors.bottomGradient
							local colored_button_ImageColor3 = {button, "ImageColor3", "bottomGradient"}
							colored[1 + #colored] = colored_button_ImageColor3
							local buttonInner = Instance_new("ImageLabel")
							buttonInner.Name = "buttonInner"
							buttonInner.Parent = button
							buttonInner.Active = true
							buttonInner.AnchorPoint = Vector2.new(0.5, 0.5)
							buttonInner.BackgroundColor3 = library.colors.topGradient
							colored[1 + #colored] = {buttonInner, "BackgroundColor3", "topGradient"}
							buttonInner.BorderColor3 = library.colors.elementBorder
							colored[1 + #colored] = {buttonInner, "BorderColor3", "elementBorder"}
							buttonInner.Position = UDim2.fromScale(0.5, 0.5)
							buttonInner.Selectable = true
							buttonInner.Size = UDim2.new(1, -4, 1, -4)
							buttonInner.Image = "rbxassetid://2454009026"
							buttonInner.ImageColor3 = library.colors.bottomGradient
							colored[1 + #colored] = {buttonInner, "ImageColor3", "bottomGradient"}
							button.Size = UDim2.fromOffset(textsize, 18)
							realButton.Parent = button
							offset = offset + textsize + 6
							sectionFunctions:Update()
							local presses = 0
							library.signals[1 + #library.signals] = realButton.MouseButton1Click:Connect(function()
								if not library.colorpicker and not submenuOpen then
									presses = 1 + presses
									task.spawn(callback, presses)
								end
							end)
							library.signals[1 + #library.signals] = button.MouseEnter:Connect(function()
								colored_button_BackgroundColor3[3] = "main"
								colored_button_BackgroundColor3[4] = 1.5
								colored_button_ImageColor3[3] = "main"
								colored_button_ImageColor3[4] = 2.5
								tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = darkenColor(library.colors.main, 1.5),
									ImageColor3 = darkenColor(library.colors.main, 2.5)
								}):Play()
							end)
							library.signals[1 + #library.signals] = button.MouseLeave:Connect(function()
								colored_button_BackgroundColor3[3] = "topGradient"
								colored_button_BackgroundColor3[4] = nil
								colored_button_ImageColor3[3] = "bottomGradient"
								colored_button_ImageColor3[4] = nil
								tweenService:Create(button, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
									BackgroundColor3 = library.colors.topGradient,
									ImageColor3 = library.colors.bottomGradient
								}):Play()
							end)
						end
					end
					local default = library_flags[flagName]
					function update()
						dropdownName, custom_workspace, persistiveflags, suffix, callback, loadcallback, savecallback, postload, postsave = options.Name or dropdownName, options.Workspace or library.WorkspaceName, options.Persistive or options.Flags or "all", options.Suffix, options.Callback, options.LoadCallback, options.SaveCallback, options.PostLoadCallback, options.PostSaveCallback
						local sstr = tostring(library_flags[flagName])
						if dropdownSelection.Text ~= sstr then
							dropdownSelection.Text = sstr
						end
						dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
						return sstr
					end
					local objectdata = {
						Options = options,
						Name = flagName,
						Flag = flagName,
						Type = "Persistence",
						Default = default,
						Parent = sectionFunctions,
						Instance = dropdownSelection,
						Set = Set,
						Remove = function()
							local relod = nil
							if newDropdown then
								newDropdown.Parent = nil
								relod = true
							end
							if fram then
								fram.Parent = nil
								relod = true
							end
							if relod then
								sectionFunctions:Update()
							end
						end,
						SaveFile = function(t, str, ret)
							if t ~= nil and type(t) ~= "table" then
								str, ret = t, str
							end
							if type(str) == "string" then
								str = str:match("(.+)%..+$") or str
							end
							return savestuff(str, ret)
						end,
						LoadFile = function(t, str, jsonmode)
							if t ~= nil and type(t) ~= "table" then
								str, jsonmode = t, str
							end
							if isfile and isfile(str) then
								return loadstuff(readfile(str), true)
							elseif not jsonmode and type(str) == "string" then
								str = str:match("(.+)%..+$") or str
							end
							return loadstuff(str, jsonmode)
						end,
						LoadJSON = function(_, json)
							return loadstuff(json, true)
						end,
						LoadFileRaw = function(t, str, jsonmode)
							if t ~= nil and type(t) ~= "table" then
								str, jsonmode = t, str
							end
							if isfile and isfile(str) then
								return loadstuff(readfile(str), true, true)
							elseif not jsonmode and type(str) == "string" then
								str = str:match("(.+)%..+$") or str
							end
							return loadstuff(str, jsonmode, true)
						end,
						LoadJSONRaw = function(_, json)
							return loadstuff(json, true, true)
						end,
						GetJSON = function(t, clipboard)
							if nil == clipboard and t ~= nil then
								clipboard = t
							end
							local json = savestuff(nil, true)
							local clipfunc = (clipboard and type(clipboard) == "function" and clipboard) or setclipboard
							if clipboard and clipfunc then
								clipfunc(json)
							end
							return json
						end,
						RawSet = function(t, str)
							if nil == str and t ~= nil then
								str = t
							end
							selectedOption = str
							last_v = library_flags[flagName]
							library_flags[flagName] = str
							if options.Location then
								options.Location[options.LocationFlag or flagName] = str
							end
							update()
							return str
						end,
						Get = function()
							return library_flags[flagName]
						end,
						Update = update,
						Reset = function()
							return Set(nil, default)
						end
					}
					tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
					return objectdata
				end
			else
				function sectionFunctions.AddPersistence()
					if not library.warnedpersistance then
						library.warnedpersistance = 1
						warn(debug.traceback("Persistance not supported"))
					end
					function sectionFunctions.AddPersistence()
					end
				end
			end
			sectionFunctions.NewPersistence = sectionFunctions.AddPersistence
			sectionFunctions.CreatePersistence = sectionFunctions.AddPersistence
			sectionFunctions.Persistence = sectionFunctions.AddPersistence
			sectionFunctions.CreateSaveLoad = sectionFunctions.AddPersistence
			sectionFunctions.SaveLoad = sectionFunctions.AddPersistence
			sectionFunctions.SL = sectionFunctions.AddPersistence
			function sectionFunctions:AddDropdown(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Dropdown", options, ...)) or options
				local dropdownName, listt, val, callback, flagName = assert(options.Name, "Missing Name for new searchbox."), assert(options.List, "Missing List for new searchbox."), options.Value, options.Callback, options.Flag or (function()
					library.unnameddropdown = 1 + (library.unnameddropdown or 0)
					return "Dropdown" .. tostring(library.unnameddropdown)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local newDropdown = Instance_new("Frame")
				local dropdown = Instance_new("ImageLabel")
				local dropdownInner = Instance_new("ImageLabel")
				local dropdownToggle = Instance_new("ImageButton")
				local dropdownSelection = Instance_new("TextLabel")
				local dropdownHeadline = Instance_new("TextLabel")
				local dropdownHolderFrame = Instance_new("ImageLabel")
				local dropdownHolderInner = Instance_new("ImageLabel")
				local realDropdownHolder = Instance_new("ScrollingFrame")
				local realDropdownHolderList = Instance_new("UIListLayout")
				local dropdownEnabled = false
				local multiselect = options.MultiSelect or options.Multi or options.Multiple
				local addcallback = options.ItemAdded or options.AddedCallback
				local delcallback = options.ItemRemoved or options.RemovedCallback
				local clrcallback = options.ItemsCleared or options.ClearedCallback
				local modcallback = options.ItemChanged or options.ChangedCallback
				local blankstring = not multiselect and (options.BlankValue or options.NoValueString or options.Nothing)
				local resolvelist = getresolver(listt, options.Filter, options.Method)
				local list = resolvelist()
				local selectedOption = list[1]
				local passed_multiselect = multiselect and type(multiselect)
				if blankstring and val == nil then
					val = blankstring
				end
				if val ~= nil then
					selectedOption = val
				end
				if multiselect and (not selectedOption or type(selectedOption) ~= "table") then
					selectedOption = {}
				end
				local selectedObjects = {}
				local optionCount = 0
				newDropdown.Name = "newDropdown"
				newDropdown.Parent = sectionHolder
				newDropdown.BackgroundColor3 = Color3.new(1, 1, 1)
				newDropdown.BackgroundTransparency = 1
				newDropdown.Size = UDim2.new(1, 0, 0, 42)
				dropdown.Name = "dropdown"
				dropdown.Parent = newDropdown
				dropdown.Active = true
				dropdown.BackgroundColor3 = library.colors.topGradient
				local colored_dropdown_BackgroundColor3 = {dropdown, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_dropdown_BackgroundColor3
				dropdown.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdown, "BorderColor3", "elementBorder"}
				dropdown.Position = UDim2.fromScale(0.027, 0.45)
				dropdown.Selectable = true
				dropdown.Size = UDim2.fromOffset(206, 18)
				dropdown.Image = "rbxassetid://2454009026"
				dropdown.ImageColor3 = library.colors.bottomGradient
				local colored_dropdown_ImageColor3 = {dropdown, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_dropdown_ImageColor3
				dropdownInner.Name = "dropdownInner"
				dropdownInner.Parent = dropdown
				dropdownInner.Active = true
				dropdownInner.AnchorPoint = Vector2.new(0.5, 0.5)
				dropdownInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownInner, "BackgroundColor3", "topGradient"}
				dropdownInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdownInner, "BorderColor3", "elementBorder"}
				dropdownInner.Position = UDim2.fromScale(0.5, 0.5)
				dropdownInner.Selectable = true
				dropdownInner.Size = UDim2.new(1, -4, 1, -4)
				dropdownInner.Image = "rbxassetid://2454009026"
				dropdownInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownInner, "ImageColor3", "bottomGradient"}
				dropdownToggle.Name = "dropdownToggle"
				dropdownToggle.Parent = dropdown
				dropdownToggle.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownToggle.BackgroundTransparency = 1
				dropdownToggle.Position = UDim2.fromScale(0.9, 0.17)
				dropdownToggle.Rotation = 90
				dropdownToggle.Size = UDim2.fromOffset(12, 12)
				dropdownToggle.ZIndex = 2
				dropdownToggle.Image = "rbxassetid://71659683"
				dropdownToggle.ImageColor3 = Color3.fromRGB(171, 171, 171)
				dropdownSelection.Name = "dropdownSelection"
				dropdownSelection.Parent = dropdown
				dropdownSelection.Active = true
				dropdownSelection.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownSelection.BackgroundTransparency = 1
				dropdownSelection.Position = UDim2.new(0.0295)
				dropdownSelection.Selectable = true
				dropdownSelection.Size = UDim2.fromScale(0.97, 1)
				dropdownSelection.ZIndex = 5
				dropdownSelection.Font = Enum.Font.Code
				dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or (multiselect and tostring(blankstring or "Select Item(s)")) or (selectedOption and tostring(selectedOption)) or tostring(blankstring or "No Blank String")
				dropdownSelection.TextColor3 = library.colors.otherElementText
				colored[1 + #colored] = {dropdownSelection, "TextColor3", "otherElementText"}
				dropdownSelection.TextSize = 14
				dropdownSelection.TextXAlignment = Enum.TextXAlignment.Left
				dropdownHeadline.Name = "dropdownHeadline"
				dropdownHeadline.Parent = newDropdown
				dropdownHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				dropdownHeadline.BackgroundTransparency = 1
				dropdownHeadline.Position = UDim2.fromScale(0.034, 0.03)
				dropdownHeadline.Size = UDim2.fromOffset(167, 11)
				dropdownHeadline.Font = Enum.Font.Code
				dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
				dropdownHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {dropdownHeadline, "TextColor3", "elementText"}
				dropdownHeadline.TextSize = 14
				dropdownHeadline.TextXAlignment = Enum.TextXAlignment.Left
				dropdownHolderFrame.Name = "dropdownHolderFrame"
				dropdownHolderFrame.Parent = newDropdown
				dropdownHolderFrame.Active = true
				dropdownHolderFrame.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownHolderFrame, "BackgroundColor3", "topGradient"}
				dropdownHolderFrame.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdownHolderFrame, "BorderColor3", "elementBorder"}
				dropdownHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
				dropdownHolderFrame.Selectable = true
				dropdownHolderFrame.Size = UDim2.fromOffset(206, 22)
				dropdownHolderFrame.Visible = false
				dropdownHolderFrame.Image = "rbxassetid://2454009026"
				dropdownHolderFrame.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownHolderFrame, "ImageColor3", "bottomGradient"}
				dropdownHolderInner.Name = "dropdownHolderInner"
				dropdownHolderInner.Parent = dropdownHolderFrame
				dropdownHolderInner.Active = true
				dropdownHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
				dropdownHolderInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {dropdownHolderInner, "BackgroundColor3", "topGradient"}
				dropdownHolderInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {dropdownHolderInner, "BorderColor3", "elementBorder"}
				dropdownHolderInner.Position = UDim2.fromScale(0.5, 0.5)
				dropdownHolderInner.Selectable = true
				dropdownHolderInner.Size = UDim2.new(1, -4, 1, -4)
				dropdownHolderInner.Image = "rbxassetid://2454009026"
				dropdownHolderInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {dropdownHolderInner, "ImageColor3", "bottomGradient"}
				realDropdownHolder.Name = "realDropdownHolder"
				realDropdownHolder.Parent = dropdownHolderInner
				realDropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
				realDropdownHolder.BackgroundTransparency = 1
				realDropdownHolder.Selectable = false
				realDropdownHolder.Size = UDim2.fromScale(1, 1)
				realDropdownHolder.CanvasSize = UDim2.new()
				realDropdownHolder.ScrollBarThickness = 5
				realDropdownHolder.ScrollingDirection = Enum.ScrollingDirection.Y
				realDropdownHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
				realDropdownHolder.ScrollBarImageTransparency = 0.5
				realDropdownHolder.ScrollBarImageColor3 = library.colors.section
				colored[1 + #colored] = {realDropdownHolder, "ScrollBarImageColor3", "section"}
				realDropdownHolderList.Name = "realDropdownHolderList"
				realDropdownHolderList.Parent = realDropdownHolder
				realDropdownHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
				realDropdownHolderList.SortOrder = Enum.SortOrder.LayoutOrder
				sectionFunctions:Update()
				local showing = false
				local function UpdateDropdownHolder()
					if optionCount >= 6 then
						realDropdownHolder.CanvasSize = UDim2:fromOffset(realDropdownHolderList.AbsoluteContentSize.Y + 2)
					elseif optionCount <= 5 then
						dropdownHolderFrame.Size = UDim2.fromOffset(206, realDropdownHolderList.AbsoluteContentSize.Y + 4)
					end
				end
				local restorezindex = {}
				local Set = (multiselect and function(t, dat)
					if nil == dat and t ~= nil then
						dat = t
					end
					local lastv = library_flags[flagName]
					if not lastv or selectedOption ~= lastv then
						if lastv and type(lastv) == "table" then
							selectedOption = library_flags[flagName]
						else
							library_flags[flagName] = selectedOption
						end
						warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
						lastv = library_flags[flagName]
					end
					local cloned = {unpack(selectedOption)}
					if not dat then
						if #selectedOption ~= 0 then
							table.clear(selectedOption)
							if callback then
								task.spawn(callback, selectedOption, cloned)
							end
						end
						return selectedOption
					elseif type(dat) ~= "table" then
						warn("Expected table for argument #1 on Set for MultiSelect dropdown. Got", dat, debug.traceback(""))
						return selectedOption
					end
					for k = table.pack(unpack(dat)).n, 1, -1 do
						if dat[k] == nil then
							table.remove(dat, k)
						end
					end
					local proceed = #cloned ~= #dat
					table.clear(selectedOption)
					for k, v in next, dat do
						selectedOption[k] = v
						if not proceed and cloned[k] ~= v then
							proceed = 1
						end
					end
					dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or tostring(blankstring or "Select Item(s)")
					if proceed and callback then
						task.spawn(callback, selectedOption, cloned)
					end
					return selectedOption
				end) or function(t, str)
					if nil == str and t ~= nil then
						str = t
					end
					local last_v = library_flags[flagName]
					selectedOption = str
					library_flags[flagName] = str
					if options.Location then
						options.Location[options.LocationFlag or flagName] = str
					end
					local sstr = (selectedOption and tostring(selectedOption)) or blankstring or "No Blank String"
					if dropdownSelection.Text ~= sstr then
						dropdownSelection.Text = sstr
					end
					if callback and (last_v ~= str or options.AllowDuplicateCalls) then
						task.spawn(callback, str, last_v)
					end
					return str
				end
				if val ~= nil then
					Set(val)
				else
					library_flags[flagName] = selectedOption
					if options.Location then
						options.Location[options.LocationFlag or flagName] = selectedOption
					end
				end
				local function AddOptions(optionsTable)
					if options.Sort then
						local didstuff, dosort = nil, options.Sort
						if type(dosort) == "function" then
							local g, h = pcall(table.sort, optionsTable, dosort)
							if g then
								didstuff = true
							elseif h then
								warn("Error sorting list:", h, debug.traceback(""))
							end
						elseif dosort ~= 1 and dosort ~= true then
							warn("Potential mistake for passed Sort argument:", dosort, debug.traceback(""))
						end
						if not didstuff then
							table.sort(optionsTable, library.defaultSort)
						end
					end
					if blankstring and (optionsTable[1] ~= blankstring or table.find(optionsTable, blankstring, 2)) then
						local exists = table.find(optionsTable, blankstring)
						if exists then
							for _ = 1, 35 do
								table.remove(optionsTable, exists)
								exists = table.find(optionsTable, blankstring)
								if not exists then
									break
								end
							end
						end
						table.insert(optionsTable, 1, blankstring)
					end
					optionCount = 0
					realDropdownHolderList.Parent = nil
					realDropdownHolder:ClearAllChildren()
					realDropdownHolderList.Parent = realDropdownHolder
					for _, v in next, optionsTable do
						optionCount = optionCount + 1
						local newOption = Instance_new("ImageLabel")
						local optionButton = Instance_new("TextButton")
						if selectedOption == v then
							selectedObjects[1] = newOption
							selectedObjects[2] = optionButton
						end
						newOption.Name = "Frame"
						newOption.Parent = realDropdownHolder
						local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
						newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
						newOption.BorderSizePixel = 0
						newOption.Size = UDim2.fromOffset(202, 18)
						newOption.Image = "rbxassetid://2454009026"
						newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
						local stringed = tostring(v)
						optionButton.Name = stringed
						optionButton.Parent = newOption
						optionButton.AnchorPoint = Vector2.new(0.5, 0.5)
						optionButton.BackgroundColor3 = Color3.new(1, 1, 1)
						optionButton.BackgroundTransparency = 1
						optionButton.Position = UDim2.fromScale(0.5, 0.5)
						optionButton.Size = UDim2.new(1, -10, 1)
						optionButton.ZIndex = 5
						optionButton.Font = Enum.Font.Code
						optionButton.Text = (togged and (" " .. stringed)) or stringed
						optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
						optionButton.TextSize = 14
						optionButton.TextXAlignment = Enum.TextXAlignment.Left
						library.signals[1 + #library.signals] = optionButton.MouseButton1Click:Connect(function()
							if not library.colorpicker then
								restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
								restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
								restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
								if multiselect then
									local cloned = {unpack(selectedOption)}
									local togged = table.find(selectedOption, v)
									if togged then
										table.remove(selectedOption, togged)
									else
										selectedOption[1 + #selectedOption] = v
									end
									togged = table.find(selectedOption, v)
									optionButton.Text = (togged and (" " .. stringed)) or stringed
									newOption.BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient
									newOption.ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
									optionButton.TextColor3 = (togged and library.colors.main) or library.colors.otherElementText
									dropdownSelection.Text = (passed_multiselect == "string" and multiselect) or tostring(blankstring or "Select Item(s)")
									if callback then
										task.spawn(callback, selectedOption, cloned)
									end
									if togged then
										if addcallback then
											task.spawn(addcallback, v, selectedOption)
										end
									elseif delcallback then
										task.spawn(delcallback, v, selectedOption)
									end
									if modcallback then
										task.spawn(modcallback, v, togged, selectedOption)
									end
									if #selectedOption == 0 and clrcallback then
										task.spawn(clrcallback, selectedOption, cloned)
									end
									return
								else
									if selectedOption ~= v then
										local last_v = library_flags[flagName]
										selectedObjects[1].BackgroundColor3 = library.colors.topGradient
										selectedObjects[1].ImageColor3 = library.colors.bottomGradient
										selectedObjects[2].Text = selectedObjects[2].Name
										selectedObjects[2].TextColor3 = library.colors.otherElementText
										selectedOption = v
										dropdownSelection.Text = stringed
										selectedObjects[1] = newOption
										selectedObjects[2] = optionButton
										newOption.BackgroundColor3 = library.colors.selectedOption
										newOption.ImageColor3 = library.colors.unselectedOption
										optionButton.Text = " " .. stringed
										optionButton.TextColor3 = library.colors.main
										dropdownHolderFrame.Visible = false
										dropdownToggle.Rotation = 90
										dropdownEnabled = false
										newDropdown.ZIndex = 1
										colored_dropdown_BackgroundColor3[3] = "topGradient"
										colored_dropdown_BackgroundColor3[4] = nil
										colored_dropdown_ImageColor3[3] = "bottomGradient"
										colored_dropdown_ImageColor3[4] = nil
										tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.topGradient,
											ImageColor3 = library.colors.bottomGradient
										}):Play()
										library_flags[flagName] = selectedOption
										if options.Location then
											options.Location[options.LocationFlag or flagName] = selectedOption
										end
										submenuOpen = nil
										showing = false
										if callback then
											task.spawn(callback, selectedOption, last_v)
										end
									else
										showing = false
										submenuOpen = nil
										dropdownToggle.Rotation = 90
										newDropdown.ZIndex = 1
										sectionHolder.ZIndex = 1
										colored_dropdown_BackgroundColor3[3] = "topGradient"
										colored_dropdown_BackgroundColor3[4] = nil
										colored_dropdown_ImageColor3[3] = "bottomGradient"
										colored_dropdown_ImageColor3[4] = nil
										tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
											BackgroundColor3 = library.colors.topGradient,
											ImageColor3 = library.colors.bottomGradient
										}):Play()
										dropdownHolderFrame.Visible = false
									end
								end
								for ins, z in next, restorezindex do
									ins.ZIndex = z
								end
							end
						end)
						library.signals[1 + #library.signals] = optionButton.MouseEnter:Connect(function()
							tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = library.colors.hoveredOptionTop,
								ImageColor3 = library.colors.hoveredOptionBottom
							}):Play()
						end)
						library.signals[1 + #library.signals] = optionButton.MouseLeave:Connect(function()
							local togged = (not multiselect and selectedOption == v) or (multiselect and table.find(selectedOption, v))
							tweenService:Create(newOption, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
								BackgroundColor3 = (togged and library.colors.selectedOption) or library.colors.topGradient,
								ImageColor3 = (togged and library.colors.unselectedOption) or library.colors.bottomGradient
							}):Play()
						end)
						UpdateDropdownHolder()
					end
				end
				local precisionscrolling, update = nil
				local function display(dropdownEnabled)
					list = resolvelist()
					if dropdownEnabled then
						AddOptions(list)
						submenuOpen = dropdown
						dropdownToggle.Rotation = 270
						restorezindex[newSection] = restorezindex[newSection] or newSection.ZIndex
						restorezindex[newDropdown] = restorezindex[newDropdown] or newDropdown.ZIndex
						restorezindex[sectionHolder] = restorezindex[sectionHolder] or sectionHolder.ZIndex
						newSection.ZIndex = 50 + newSection.ZIndex
						newDropdown.ZIndex = 2
						sectionHolder.ZIndex = 2
						colored_dropdown_BackgroundColor3[3] = "main"
						colored_dropdown_BackgroundColor3[4] = 1.5
						colored_dropdown_ImageColor3[3] = "main"
						colored_dropdown_ImageColor3[4] = 2.5
						tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = darkenColor(library.colors.main, 1.5),
							ImageColor3 = darkenColor(library.colors.main, 2.5)
						}):Play()
						dropdownHolderFrame.Visible = true
						if not options.DisablePrecisionScrolling then
							local upkey = options.ScrollUpButton or library.scrollupbutton or shared.scrollupbutton or Enum.KeyCode.Up
							local downkey = options.ScrollDownButton or library.scrolldownbutton or shared.scrolldownbutton or Enum.KeyCode.Down
							precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or userInputService.InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Keyboard then
									local code = input.KeyCode
									local isup = code == upkey
									local isdown = code == downkey
									if isup or isdown then
										local txt = userInputService:GetFocusedTextBox()
										if not txt or txt == dropdownSelection then
											while wait_check() and userInputService:IsKeyDown(code) do
												realDropdownHolder.CanvasPosition = Vector2:new(math.clamp(realDropdownHolder.CanvasPosition.Y + ((isup and -5) or 5), 0, realDropdownHolder.AbsoluteCanvasSize.Y))
											end
										end
									end
								end
							end)
							library.signals[1 + #library.signals] = precisionscrolling
						end
					else
						submenuOpen = nil
						dropdownToggle.Rotation = 90
						colored_dropdown_BackgroundColor3[3] = "topGradient"
						colored_dropdown_BackgroundColor3[4] = nil
						colored_dropdown_ImageColor3[3] = "bottomGradient"
						colored_dropdown_ImageColor3[4] = nil
						tweenService:Create(dropdown, TweenInfo.new(0.35, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
						dropdownHolderFrame.Visible = false
						for ins, z in next, restorezindex do
							ins.ZIndex = z
						end
						precisionscrolling = (precisionscrolling and precisionscrolling:Disconnect() and nil) or nil
					end
					if not multiselect and (not next(list) or not table.find(list, library_flags[flagName])) then
						Set(list[1])
					end
					showing = dropdownEnabled
					if showing or dropdownEnabled then
					else
						delay(0.01, update)
					end
				end
				library.signals[1 + #library.signals] = newDropdown.InputEnded:Connect(function(input)
					if not library.colorpicker and input.UserInputType == Enum.UserInputType.MouseButton1 then
						showing = not showing
						display(showing)
					end
				end)
				library.signals[1 + #library.signals] = newDropdown.MouseEnter:Connect(function()
					colored_dropdown_BackgroundColor3[3] = "main"
					colored_dropdown_BackgroundColor3[4] = 1.5
					colored_dropdown_ImageColor3[3] = "main"
					colored_dropdown_ImageColor3[4] = 2.5
					tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
				end)
				library.signals[1 + #library.signals] = newDropdown.MouseLeave:Connect(function()
					if not dropdownEnabled then
						colored_dropdown_BackgroundColor3[3] = "topGradient"
						colored_dropdown_BackgroundColor3[4] = nil
						colored_dropdown_ImageColor3[3] = "bottomGradient"
						colored_dropdown_ImageColor3[4] = nil
						tweenService:Create(dropdown, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
					end
				end)
				library.signals[1 + #library.signals] = dropdownToggle.MouseButton1Click:Connect(function()
					if not library.colorpicker then
						showing = not showing
						display(showing)
					end
				end)
				AddOptions(list)
				local default = library_flags[flagName]
				function update()
					dropdownName, callback = options.Name or dropdownName, options.Callback
					local sstr = (passed_multiselect == "string" and multiselect) or (library_flags[flagName] and tostring(library_flags[flagName])) or (selectedOption and tostring(selectedOption)) or blankstring or "nil"
					if dropdownSelection.Text ~= sstr then
						dropdownSelection.Text = sstr
					end
					dropdownHeadline.Text = (dropdownName and tostring(dropdownName)) or "???"
					return sstr
				end
				local function validate(fallbackValue)
					if list and table.find(list, library_flags[flagName]) then
						update()
						return true
					end
					if fallbackValue ~= nil then
						if fallbackValue == "__DEFAULT" then
							fallbackValue = fallbackValue
						end
					else
						fallbackValue = list[1]
					end
					return Set((multiselect and {fallbackValue}) or fallbackValue)
				end
				local objectdata = {
					Options = options,
					Name = flagName,
					Flag = flagName,
					Type = "Dropdown",
					Default = default,
					Parent = sectionFunctions,
					Instance = dropdownSelection,
					Get = function()
						return library_flags[flagName]
					end,
					Set = Set,
					Remove = function()
						if newDropdown then
							newDropdown.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = ((multiselect and function(t, dat)
						if nil == dat and t ~= nil then
							dat = t
						end
						local lastv = library_flags[flagName]
						if not lastv or selectedOption ~= lastv then
							if lastv and type(lastv) == "table" then
								selectedOption = library_flags[flagName]
							else
								library_flags[flagName] = selectedOption
							end
							warn("Attempting to use new table for", flagName, " Please use :Set(), as setting through flags table may cause errors", debug.traceback(""))
							lastv = library_flags[flagName]
						end
						local cloned = {unpack(selectedOption)}
						if not dat then
							if #selectedOption ~= 0 then
								table.clear(selectedOption)
							end
							return selectedOption
						elseif type(dat) ~= "table" then
							warn("Expected table for argument #1 on Set for MultiSelect dropdown. Got", dat, debug.traceback(""))
							return selectedOption
						end
						for k = table.pack(unpack(dat)).n, 1, -1 do
							if dat[k] == nil then
								table.remove(dat, k)
							end
						end
						table.clear(selectedOption)
						for k, v in next, dat do
							selectedOption[k] = v
						end
						return selectedOption
					end) or function(t, str)
						if nil == str and t ~= nil then
							str = t
						end
						selectedOption = str
						library_flags[flagName] = str
						if options.Location then
							options.Location[options.LocationFlag or flagName] = str
						end
						update()
						return str
					end),
					Update = update,
					Reset = function()
						return Set(nil, default)
					end
				}
				function objectdata.UpdateList(t, listt, updateValues)
					if (nil == listt and t ~= nil) or (type(t) == "table" and type(listt) ~= "table") then
						listt, updateValues = t, listt
					end
					if listt == objectdata then
						listt = nil
					end
					resolvelist = getresolver(listt or options.List, options.Filter, options.Method)
					list = resolvelist()
					if updateValues then
						validate()
					end
					if showing then
						display(false)
						display(true)
					end
					return list
				end
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.AddDropDown = sectionFunctions.AddDropdown
			sectionFunctions.NewDropDown = sectionFunctions.AddDropdown
			sectionFunctions.NewDropdown = sectionFunctions.AddDropdown
			sectionFunctions.CreateDropdown = sectionFunctions.AddDropdown
			sectionFunctions.CreateDropdown = sectionFunctions.AddDropdown
			sectionFunctions.DropDown = sectionFunctions.AddDropdown
			sectionFunctions.Dropdown = sectionFunctions.AddDropdown
			sectionFunctions.DD = sectionFunctions.AddDropdown
			sectionFunctions.Dd = sectionFunctions.AddDropdown
			function sectionFunctions:AddColorpicker(options, ...)
				options = (options and type(options) == "string" and resolvevararg("Colorpicker", options, ...)) or options
				if options.Random == true then
					options.Value = "random"
				elseif options.Rainbow == true then
					options.Value = "rainbow"
				end
				local colorPickerName, presetColor, callback, flagName = assert(options.Name, "Missing Name for new colorpicker."), options.Value, options.Callback, options.Flag or (function()
					library.unnamedcolorpicker = 1 + (library.unnamedcolorpicker or 0)
					return "Colorpicker" .. tostring(library.unnamedcolorpicker)
				end)()
				if elements[flagName] ~= nil then
					warn(debug.traceback("Warning! Re-used flag '" .. flagName .. "'", 3))
				end
				local designers = options.__designer
				options.__designer = nil
				local rainbowColorMode = false
				if presetColor == "random" then
					presetColor = Color3.new(math.random(), math.random(), math.random())
				elseif presetColor == "rainbow" then
					presetColor = Color3.new(1, 1, 1)
					rainbowColorMode = true
				end
				local newColorPicker = Instance_new("Frame")
				local colorPicker = Instance_new("ImageLabel")
				local colorPickerInner = Instance_new("ImageLabel")
				local colorPickerHeadline = Instance_new("TextLabel")
				local colorPickerButton = Instance_new("TextButton")
				local colorPickerHolderFrame = Instance_new("ImageLabel")
				local colorPickerHolderInner = Instance_new("ImageLabel")
				local color = Instance_new("ImageLabel")
				local selectorColor = Instance_new("Frame")
				local hue = Instance_new("ImageLabel")
				local hueGradient = Instance_new("UIGradient")
				local selectorHue = Instance_new("Frame")
				local randomColor = Instance_new("ImageLabel")
				local randomColorInner = Instance_new("ImageLabel")
				local randomColorButton = Instance_new("ImageButton")
				local hexInputBox = Instance_new("TextBox")
				local hexInput = Instance_new("ImageLabel")
				local hexInputInner = Instance_new("ImageLabel")
				local rainbow = Instance_new("ImageLabel")
				local rainbowInner = Instance_new("ImageLabel")
				local rainbowButton = Instance_new("ImageButton")
				local startingColor = presetColor or Color3.new(1, 1, 1)
				local colorPickerEnabled = false
				local colorH, colorS, colorV = 1, 1, 1
				local colorInput, hueInput = nil, nil
				local oldBackgroundColor = Color3.new()
				local oldImageColor = oldBackgroundColor
				local oldColor = oldBackgroundColor
				local rainbowColorValue = 0
				newColorPicker.Name = "newColorPicker"
				newColorPicker.Parent = sectionHolder
				newColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
				newColorPicker.BackgroundTransparency = 1
				newColorPicker.Size = UDim2.new(1, 0, 0, 19)
				colorPicker.Name = "colorPicker"
				colorPicker.Parent = newColorPicker
				colorPicker.Active = true
				colorPicker.BackgroundColor3 = library.colors.topGradient
				local colored_colorPicker_BackgroundColor3 = {colorPicker, "BackgroundColor3", "topGradient"}
				colored[1 + #colored] = colored_colorPicker_BackgroundColor3
				colorPicker.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {colorPicker, "BorderColor3", "elementBorder"}
				colorPicker.Position = UDim2.fromScale(0.842, 0.113)
				colorPicker.Selectable = true
				colorPicker.Size = UDim2.fromOffset(24, 12)
				colorPicker.Image = "rbxassetid://2454009026"
				colorPicker.ImageColor3 = library.colors.bottomGradient
				local colored_colorPicker_ImageColor3 = {colorPicker, "ImageColor3", "bottomGradient"}
				colored[1 + #colored] = colored_colorPicker_ImageColor3
				colorPickerInner.Name = "colorPickerInner"
				colorPickerInner.Parent = colorPicker
				colorPickerInner.Active = true
				colorPickerInner.AnchorPoint = Vector2.new(0.5, 0.5)
				colorPickerInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {colorPickerInner, "BorderColor3", "elementBorder"}
				colorPickerInner.Position = UDim2.fromScale(0.5, 0.5)
				colorPickerInner.Selectable = true
				colorPickerInner.Size = UDim2.new(1, -4, 1, -4)
				colorPickerInner.Image = "rbxassetid://2454009026"
				colorPickerInner.BackgroundColor3 = darkenColor(startingColor, 1.5)
				colorPickerInner.ImageColor3 = darkenColor(startingColor, 2.5)
				colorPickerHeadline.Name = "colorPickerHeadline"
				colorPickerHeadline.Parent = newColorPicker
				colorPickerHeadline.BackgroundColor3 = Color3.new(1, 1, 1)
				colorPickerHeadline.BackgroundTransparency = 1
				colorPickerHeadline.Position = UDim2.fromScale(0.034, 0.113)
				colorPickerHeadline.Size = UDim2.fromOffset(173, 11)
				colorPickerHeadline.Font = Enum.Font.Code
				colorPickerHeadline.Text = colorPickerName or "???"
				colorPickerHeadline.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {colorPickerHeadline, "TextColor3", "elementText"}
				colorPickerHeadline.TextSize = 14
				colorPickerHeadline.TextXAlignment = Enum.TextXAlignment.Left
				colorPickerButton.Name = "colorPickerButton"
				colorPickerButton.Parent = newColorPicker
				colorPickerButton.BackgroundColor3 = Color3.new(1, 1, 1)
				colorPickerButton.BackgroundTransparency = 1
				colorPickerButton.Size = UDim2.fromScale(1, 1)
				colorPickerButton.ZIndex = 5
				colorPickerButton.Font = Enum.Font.SourceSans
				colorPickerButton.Text = ""
				colorPickerButton.TextColor3 = Color3.new()
				colorPickerButton.TextSize = 14
				colorPickerButton.TextTransparency = 1
				colorPickerButton.BorderColor3 = library.colors.elementBorder
				local colored_colorPickerButton_BorderColor3 = {colorPickerButton, "BorderColor3", "elementBorder"}
				colored[1 + #colored] = colored_colorPickerButton_BorderColor3
				local function UpdateColorPicker(force, rainbsow)
					local last_vv = library_flags[flagName]
					local newColor = force or Color3.fromHSV(colorH, colorS, colorV)
					if not force then
						colorH, colorS, colorV = newColor:ToHSV()
					end
					colorPickerInner.BackgroundColor3 = darkenColor(newColor, 1.5)
					colorPickerInner.ImageColor3 = darkenColor(newColor, 2.5)
					color.BackgroundColor3 = Color3.fromHSV(colorH, 1, 1)
					library_flags[flagName] = newColor
					if options.Location then
						options.Location[options.LocationFlag or flagName] = newColor
					end
					hexInputBox.Text = Color3ToHex(newColor)
					if force then
						color.BackgroundColor3 = force
						selectorColor.Position = UDim2.new(force and select(3, Color3.toHSV(force)))
					end
					local pos = 1 - (Color3.toHSV(newColor))
					local scalex = selectorHue.Position.X.Scale
					if scalex ~= pos and not (((pos == 0) or (pos == 1)) and ((scalex == 1) or (scalex == 0))) then
						selectorHue.Position = UDim2.new(pos)
					end
					if callback and last_vv ~= newColor then
						task.spawn(callback, newColor, last_vv, rainbsow)
					end
				end
				library.signals[1 + #library.signals] = colorPickerButton.MouseButton1Click:Connect(function()
					if submenuOpen == colorPicker or submenuOpen == nil then
						colorPickerEnabled = not colorPickerEnabled
						library.colorpicker = colorPickerEnabled
						colorPickerHolderFrame.Visible = colorPickerEnabled
						if colorPickerEnabled then
							for _, v in next, colorpickerconflicts do
								v.Visible = false
							end
							submenuOpen = colorPicker
							newColorPicker.ZIndex = 2
							newSection.ZIndex = 100 + newSection.ZIndex
							colorPickerButton.BorderColor3 = library.colors.main
							colored_colorPickerButton_BorderColor3[3] = "main"
							UpdateColorPicker()
						else
							for _, v in next, colorpickerconflicts do
								v.Visible = true
							end
							submenuOpen = nil
							newColorPicker.ZIndex = 0
							newSection.ZIndex = newSection.ZIndex - 100
							colorPickerButton.BorderColor3 = library.colors.elementBorder
							colored_colorPickerButton_BorderColor3[3] = "elementBorder"
						end
					end
				end)
				colorPickerHolderFrame.Name = "colorPickerHolderFrame"
				colorPickerHolderFrame.Parent = newColorPicker
				colorPickerHolderFrame.Active = true
				colorPickerHolderFrame.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {colorPickerHolderFrame, "BackgroundColor3", "topGradient"}
				colorPickerHolderFrame.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {colorPickerHolderFrame, "BorderColor3", "elementBorder"}
				colorPickerHolderFrame.Selectable = true
				colorPickerHolderFrame.Position = UDim2.fromScale(0.025, 1.012)
				colorPickerHolderFrame.Size = UDim2.fromOffset(206, 250)
				if math.ceil(colorPickerHolderFrame.AbsolutePosition.Y + colorPickerHolderFrame.AbsoluteSize.Y) > floor(newTabHolder.AbsoluteSize.Y + newTabHolder.AbsolutePosition.Y) then
					colorPickerHolderFrame.Position = UDim2.new(0.025, 0, 1.012, -colorPickerHolderFrame.AbsoluteSize.Y - colorPickerButton.AbsoluteSize.Y - 2)
				end
				colorPickerHolderFrame.Visible = false
				colorPickerHolderFrame.Image = "rbxassetid://2454009026"
				colorPickerHolderFrame.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {colorPickerHolderFrame, "ImageColor3", "bottomGradient"}
				colorPickerHolderInner.Name = "colorPickerHolderInner"
				colorPickerHolderInner.Parent = colorPickerHolderFrame
				colorPickerHolderInner.Active = true
				colorPickerHolderInner.AnchorPoint = Vector2.new(0.5, 0.5)
				colorPickerHolderInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {colorPickerHolderInner, "BackgroundColor3", "topGradient"}
				colorPickerHolderInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {colorPickerHolderInner, "BorderColor3", "elementBorder"}
				colorPickerHolderInner.Position = UDim2.fromScale(0.5, 0.5)
				colorPickerHolderInner.Selectable = true
				colorPickerHolderInner.Size = UDim2.new(1, -4, 1, -4)
				colorPickerHolderInner.Image = "rbxassetid://2454009026"
				colorPickerHolderInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {colorPickerHolderInner, "ImageColor3", "bottomGradient"}
				color.Name = "color"
				color.Parent = colorPickerHolderInner
				color.BackgroundColor3 = startingColor
				color.BorderSizePixel = 0
				color.Position = UDim2.fromOffset(5, 5)
				color.Size = UDim2.new(1, -10, 0, 192)
				color.Image = "rbxassetid://4155801252"
				selectorColor.Name = "selectorColor"
				selectorColor.Parent = color
				selectorColor.AnchorPoint = Vector2.new(0.5, 0.5)
				selectorColor.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
				selectorColor.BorderColor3 = Color3.fromRGB(69, 65, 70)
				selectorColor.Position = UDim2.new(startingColor and select(3, Color3.toHSV(startingColor)))
				selectorColor.Size = UDim2.fromOffset(4, 4)
				hue.Name = "hue"
				hue.Parent = colorPickerHolderInner
				hue.BackgroundColor3 = Color3.new(1, 1, 1)
				hue.BorderSizePixel = 0
				hue.Position = UDim2.fromOffset(5, 202)
				hue.Size = UDim2.new(1, -10, 0, 14)
				hue.Image = "rbxassetid://3570695787"
				hue.ScaleType = Enum.ScaleType.Slice
				hue.SliceScale = 0.01
				hueGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(235, 7, 255)), ColorSequenceKeypoint.new(0.33, Color3:fromRGB(9, 189)), ColorSequenceKeypoint.new(0.5, Color3:fromRGB(193, 196)), ColorSequenceKeypoint.new(0.66, Color3:new(1)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 247)), ColorSequenceKeypoint.new(1, Color3.new(1))})
				hueGradient.Name = "hueGradient"
				hueGradient.Parent = hue
				selectorHue.Name = "selectorHue"
				selectorHue.Parent = hue
				selectorHue.BackgroundColor3 = Color3:fromRGB(125, 255)
				selectorHue.BackgroundTransparency = 0.2
				selectorHue.BorderColor3 = Color3:fromRGB(84, 91)
				selectorHue.Position = UDim2.new(1 - (Color3.toHSV(startingColor)))
				selectorHue.Size = UDim2:new(2, 1)
				hexInput.Name = "hexInput"
				hexInput.Parent = colorPickerHolderInner
				hexInput.Active = true
				hexInput.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {hexInput, "BackgroundColor3", "topGradient"}
				hexInput.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {hexInput, "BorderColor3", "elementBorder"}
				hexInput.Position = UDim2.fromOffset(5, 223)
				hexInput.Selectable = true
				hexInput.Size = UDim2.fromOffset(150, 18)
				hexInput.Image = "rbxassetid://2454009026"
				hexInput.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {hexInput, "ImageColor3", "bottomGradient"}
				hexInputInner.Name = "hexInputInner"
				hexInputInner.Parent = hexInput
				hexInputInner.Active = true
				hexInputInner.AnchorPoint = Vector2.new(0.5, 0.5)
				hexInputInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {hexInputInner, "BackgroundColor3", "topGradient"}
				hexInputInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {hexInputInner, "BorderColor3", "elementBorder"}
				hexInputInner.Position = UDim2.fromScale(0.5, 0.5)
				hexInputInner.Selectable = true
				hexInputInner.Size = UDim2.new(1, -4, 1, -4)
				hexInputInner.Image = "rbxassetid://2454009026"
				hexInputInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {hexInputInner, "ImageColor3", "bottomGradient"}
				hexInputBox.Name = "hexInputBox"
				hexInputBox.Parent = hexInput
				hexInputBox.BackgroundColor3 = Color3.new(1, 1, 1)
				hexInputBox.BackgroundTransparency = 1
				hexInputBox.Size = UDim2.fromScale(1, 1)
				hexInputBox.ZIndex = 5
				hexInputBox.Font = Enum.Font.Code
				hexInputBox.PlaceholderText = "Hex Input"
				hexInputBox.Text = Color3ToHex(startingColor)
				hexInputBox.TextColor3 = library.colors.elementText
				colored[1 + #colored] = {hexInputBox, "TextColor3", "elementText"}
				hexInputBox.TextSize = 14
				hexInputBox.ClearTextOnFocus = false
				randomColor.Name = "randomColor"
				randomColor.Parent = colorPickerHolderInner
				randomColor.Active = true
				randomColor.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {randomColor, "BackgroundColor3", "topGradient"}
				randomColor.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {randomColor, "BorderColor3", "elementBorder"}
				randomColor.Position = UDim2.fromOffset(158, 223)
				randomColor.Selectable = true
				randomColor.Size = UDim2.fromOffset(18, 18)
				randomColor.Image = "rbxassetid://2454009026"
				randomColor.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {randomColor, "ImageColor3", "bottomGradient"}
				randomColorInner.Name = "randomColorInner"
				randomColorInner.Parent = randomColor
				randomColorInner.Active = true
				randomColorInner.AnchorPoint = Vector2.new(0.5, 0.5)
				randomColorInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {randomColorInner, "BackgroundColor3", "topGradient"}
				randomColorInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {randomColorInner, "BorderColor3", "elementBorder"}
				randomColorInner.Position = UDim2.fromScale(0.5, 0.5)
				randomColorInner.Selectable = true
				randomColorInner.Size = UDim2.new(1, -4, 1, -4)
				randomColorInner.Image = "rbxassetid://2454009026"
				randomColorInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {randomColorInner, "ImageColor3", "bottomGradient"}
				randomColorButton.Name = "randomColorButton"
				randomColorButton.Parent = randomColor
				randomColorButton.BackgroundColor3 = Color3.new(1, 1, 1)
				randomColorButton.BackgroundTransparency = 1
				randomColorButton.Size = UDim2.fromScale(1, 1)
				randomColorButton.ZIndex = 5
				randomColorButton.Image = "rbxassetid://7484765651"
				rainbow.Name = "rainbow"
				rainbow.Parent = colorPickerHolderInner
				rainbow.Active = true
				rainbow.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {rainbow, "BackgroundColor3", "topGradient"}
				rainbow.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {rainbow, "BorderColor3", "elementBorder"}
				rainbow.Position = UDim2.fromOffset(158 + 18 + 4, 223)
				rainbow.Selectable = true
				rainbow.Size = UDim2.fromOffset(18, 18)
				rainbow.Image = "rbxassetid://2454009026"
				rainbow.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {rainbow, "ImageColor3", "bottomGradient"}
				rainbowInner.Name = "rainbowInner"
				rainbowInner.Parent = randomColor
				rainbowInner.Active = true
				rainbowInner.AnchorPoint = Vector2.new(0.5, 0.5)
				rainbowInner.BackgroundColor3 = library.colors.topGradient
				colored[1 + #colored] = {rainbowInner, "BackgroundColor3", "topGradient"}
				rainbowInner.BorderColor3 = library.colors.elementBorder
				colored[1 + #colored] = {rainbowInner, "BorderColor3", "elementBorder"}
				rainbowInner.Position = UDim2.fromScale(0.5, 0.5)
				rainbowInner.Selectable = true
				rainbowInner.Size = UDim2.new(1, -4, 1, -4)
				rainbowInner.Image = "rbxassetid://2454009026"
				rainbowInner.ImageColor3 = library.colors.bottomGradient
				colored[1 + #colored] = {rainbowInner, "ImageColor3", "bottomGradient"}
				rainbowButton.Name = "rainbowButton"
				rainbowButton.Parent = rainbow
				rainbowButton.BackgroundColor3 = Color3.new(1, 1, 1)
				rainbowButton.BackgroundTransparency = 1
				rainbowButton.Size = UDim2.fromScale(1, 1)
				rainbowButton.ZIndex = 5
				rainbowButton.Image = "rbxassetid://7484772919"
				local indexwith = (designers and "rainbows") or "rainbowsg"
				local function setrainbow(t, rainbowColorMod)
					if nil == rainbowColorMod and t ~= nil then
						rainbowColorMod = t
					end
					if rainbowColorMod == nil or type(rainbowColorMod) ~= "boolean" then
						rainbowColorMode = not rainbowColorMode
					else
						rainbowColorMode = rainbowColorMod
					end
					if colorInput then
						colorInput = (colorInput:Disconnect() and nil) or nil
					end
					if hueInput then
						hueInput = (hueInput:Disconnect() and nil) or nil
					end
					pcall(function()
						if destroyrainbows and library.rainbows <= 0 then
							destroyrainbows = nil
						end
						if destroyrainbowsg and library.rainbowsg <= 0 then
							destroyrainbowsg = nil
						end
					end)
					if rainbowColorMode then
						pcall(function()
							if not library.rainbowflags[flagName] then
								library[indexwith] = 1 + library[indexwith]
							end
							library.rainbowflags[flagName] = true
							oldImageColor = colorPickerInner.ImageColor3
							oldBackgroundColor = colorPickerInner.BackgroundColor3
							oldColor = color.BackgroundColor3
							pcall(function()
								local common_float = 1 / 255
								while wait_check() and rainbowColorMode and (options.Value == "rainbow" or ((not designers and not destroyrainbowsg) or (designers and not destroyrainbows))) do
									rainbowColorValue = common_float + rainbowColorValue
									if rainbowColorValue > 1 then
										rainbowColorValue = 0
									end
									colorH = rainbowColorValue
									UpdateColorPicker(Color3.fromHSV(rainbowColorValue, 1, 1), true)
								end
							end)
						end)
						pcall(function()
							rainbowColorMode = nil
							if library.rainbowflags[flagName] then
								library[indexwith] = library[indexwith] - 1
							end
							library.rainbowflags[flagName] = nil
						end)
					end
					UpdateColorPicker(library_flags[flagName])
				end
				library.signals[1 + #library.signals] = randomColorButton.MouseButton1Click:Connect(function()
					if rainbowColorMode then
						setrainbow(false)
					end
					UpdateColorPicker(Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
				end)
				library.signals[1 + #library.signals] = rainbowButton.MouseButton1Click:Connect(setrainbow)
				sectionFunctions:Update()
				library.signals[1 + #library.signals] = newColorPicker.MouseEnter:Connect(function()
					tweenService:Create(colorPicker, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
						BackgroundColor3 = darkenColor(library.colors.main, 1.5),
						ImageColor3 = darkenColor(library.colors.main, 2.5)
					}):Play()
					colored_colorPicker_BackgroundColor3[3] = "main"
					colored_colorPicker_BackgroundColor3[4] = 1.5
					colored_colorPicker_ImageColor3[3] = "main"
					colored_colorPicker_ImageColor3[4] = 2.5
				end)
				library.signals[1 + #library.signals] = newColorPicker.MouseLeave:Connect(function()
					if not colorPickerEnabled then
						tweenService:Create(colorPicker, TweenInfo.new(0.25, library.configuration.easingStyle, library.configuration.easingDirection), {
							BackgroundColor3 = library.colors.topGradient,
							ImageColor3 = library.colors.bottomGradient
						}):Play()
						colored_colorPicker_BackgroundColor3[3] = "topGradient"
						colored_colorPicker_BackgroundColor3[4] = nil
						colored_colorPicker_ImageColor3[3] = "bottomGradient"
						colored_colorPicker_ImageColor3[4] = nil
					end
				end)
				hexInputBox.FocusLost:Connect(function()
					if #hexInputBox.Text > 5 then
						local last_vv = library_flags[flagName]
						local not_fucked, clr = pcall(Color3FromHex, hexInputBox.Text)
						UpdateColorPicker((not_fucked and clr) or last_vv)
					end
				end)
				colorH = 1 - (math.clamp(selectorHue.AbsolutePosition.X - hue.AbsolutePosition.X, 0, hue.AbsoluteSize.X) / hue.AbsoluteSize.X)
				colorS = (math.clamp(selectorColor.AbsolutePosition.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) / color.AbsoluteSize.X)
				colorV = 1 - (math.clamp(selectorColor.AbsolutePosition.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) / color.AbsoluteSize.Y)
				library.signals[1 + #library.signals] = color.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDraggingSomething = true
						colorInput = (colorInput and colorInput:Disconnect() and nil) or runService.RenderStepped:Connect(function()
							local colorX = (math.clamp(mouse.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) / color.AbsoluteSize.X)
							local colorY = (math.clamp(mouse.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) / color.AbsoluteSize.Y)
							selectorColor.Position = UDim2.fromScale(colorX, colorY)
							colorS = colorX
							colorV = 1 - colorY
							UpdateColorPicker()
						end)
						library.signals[1 + #library.signals] = colorInput
					end
				end)
				library.signals[1 + #library.signals] = color.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if colorInput then
							isDraggingSomething = false
							colorInput:Disconnect()
						end
					end
				end)
				library.signals[1 + #library.signals] = hue.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if hueInput then
							hueInput:Disconnect()
						end
						isDraggingSomething = true
						hueInput = runService.RenderStepped:Connect(function()
							local hueX = math.clamp(mouse.X - hue.AbsolutePosition.X, 0, hue.AbsoluteSize.X) / hue.AbsoluteSize.X
							selectorHue.Position = UDim2.new(hueX)
							colorH = 1 - hueX
							UpdateColorPicker()
						end)
						library.signals[1 + #library.signals] = hueInput
					end
				end)
				library.signals[1 + #library.signals] = hue.InputEnded:Connect(function(input)
					if hueInput and input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDraggingSomething = false
						hueInput:Disconnect()
					end
				end)
				if rainbowColorMode then
					spawn(function()
						rainbowColorMode = nil
						setrainbow(true)
					end)
				end
				local function Set(t, clr)
					if clr == nil and t ~= nil then
						clr = t
					end
					if clr == "rainbow" then
						if not rainbowColorMode then
							task.spawn(setrainbow, true)
						end
						return
					elseif clr == "random" then
						clr = Color3.new(math.random(), math.random(), math.random())
					elseif type(clr) == "string" and tonumber(clr, 16) then
						clr = Color3FromHex(clr)
					end
					task.spawn(setrainbow, false)
					local last_v = library_flags[flagName]
					library_flags[flagName] = clr
					if options.Location then
						options.Location[options.LocationFlag or flagName] = clr
					end
					color.BackgroundColor3 = clr
					selectorColor.Position = UDim2.new(clr and select(3, Color3.toHSV(clr)))
					selectorHue.Position = UDim2.new(1 - (Color3.toHSV(clr)))
					colorPickerInner.BackgroundColor3 = darkenColor(clr, 1.5)
					colorPickerInner.ImageColor3 = darkenColor(clr, 2.5)
					hexInputBox.Text = Color3ToHex(clr)
					colorH, colorS, colorV = Color3.toHSV(clr)
					if callback and (last_v ~= clr or options.AllowDuplicateCalls) then
						task.spawn(callback, clr, last_v)
					end
					return clr
				end
				if presetColor ~= nil then
					Set(presetColor)
				else
					library_flags[flagName] = startingColor
					if options.Location then
						options.Location[options.LocationFlag or flagName] = startingColor
					end
				end
				local default = options.Value or startingColor or library_flags[flagName]
				local function update()
					colorPickerName, callback = options.Name or colorPickerName, options.Callback
					local clr = library_flags[flagName]
					color.BackgroundColor3 = clr
					selectorColor.Position = UDim2.new(clr and select(3, Color3.toHSV(clr)))
					selectorHue.Position = UDim2.new(1 - (Color3.toHSV(clr)))
					colorPickerInner.BackgroundColor3 = darkenColor(clr, 1.5)
					colorPickerInner.ImageColor3 = darkenColor(clr, 2.5)
					hexInputBox.Text = Color3ToHex(clr)
					colorPickerHeadline.Text = colorPickerName or "???"
					return clr
				end
				local objectdata = {
					Options = options,
					Name = flagName,
					Flag = flagName,
					Type = "Colorpicker",
					Default = default,
					Parent = sectionFunctions,
					Instance = newColorPicker,
					SetRainbow = setrainbow,
					Get = function()
						return library_flags[flagName]
					end,
					GetRainbow = function()
						return rainbowColorMode
					end,
					Set = Set,
					Remove = function()
						if newColorPicker then
							newColorPicker.Parent = nil
							sectionFunctions:Update()
						end
					end,
					RawSet = function(t, clr)
						if clr == nil and t ~= nil then
							clr = t
						end
						if clr == "rainbow" then
							if not rainbowColorMode then
								task.spawn(setrainbow, true)
							end
							return clr
						elseif clr == "random" then
							clr = Color3.new(math.random(), math.random(), math.random())
						elseif clr and type(clr) == "string" and tonumber(clr, 16) then
							clr = Color3FromHex(clr)
						end
						task.spawn(setrainbow, false)
						library_flags[flagName] = clr
						if options.Location then
							options.Location[options.LocationFlag or flagName] = clr
						end
						return clr
					end,
					Update = update,
					Reset = function()
						return Set(nil, default)
					end
				}
				tabFunctions.Flags[flagName], sectionFunctions.Flags[flagName], elements[flagName] = objectdata, objectdata, objectdata
				return objectdata
			end
			sectionFunctions.AddColorPicker = sectionFunctions.AddColorpicker
			sectionFunctions.NewColorpicker = sectionFunctions.AddColorpicker
			sectionFunctions.NewColorPicker = sectionFunctions.AddColorpicker
			sectionFunctions.CreateColorPicker = sectionFunctions.AddColorpicker
			sectionFunctions.CreateColorpicker = sectionFunctions.AddColorpicker
			sectionFunctions.ColorPicker = sectionFunctions.AddColorpicker
			sectionFunctions.Colorpicker = sectionFunctions.AddColorpicker
			sectionFunctions.Cp = sectionFunctions.AddColorpicker
			sectionFunctions.CP = sectionFunctions.AddColorpicker
			return sectionFunctions
		end
		tabFunctions.AddSection = tabFunctions.CreateSection
		tabFunctions.NewSection = tabFunctions.CreateSection
		tabFunctions.Section = tabFunctions.CreateSection
		tabFunctions.Sec = tabFunctions.CreateSection
		tabFunctions.S = tabFunctions.CreateSection
		function tabFunctions:UpdateAll()
			local target = self or tabFunctions
			if target and type(target) == "table" and target.Flags then
				for _, e in next, target.Flags do
					if e and type(e) == "table" and e.Update then
						pcall(e.Update)
					end
				end
			end
		end
		return tabFunctions
	end
	windowFunctions.AddTab = windowFunctions.CreateTab
	windowFunctions.NewTab = windowFunctions.CreateTab
	windowFunctions.Tab = windowFunctions.CreateTab
	windowFunctions.T = windowFunctions.CreateTab
	function windowFunctions:CreateDesigner(options, ...)
		options = (options and type(options) == "string" and resolvevararg("Tab", options, ...)) or options
		assert(shared.bypasstablimit or (library.Designer == nil), "Designer already exists")
		options = options or {}
		options.Image = options.Image or 7483871523
		options.LastTab = true
		local designer = windowFunctions:CreateTab(options)
		local colorsection = designer:CreateSection({
			Name = "Colors"
		})
		local backgroundsection = designer:CreateSection({
			Name = "Background",
			Side = "right"
		})
		local detailssection = designer:CreateSection({
			Name = "Info"
		})
		local filessection = designer:CreateSection({
			Name = "Profiles",
			Side = "right"
		})
		local settingssection = designer:CreateSection({
			Name = "Settings",
			Side = "right"
		})
		local designerelements = {}
		library.designerelements = designerelements
		for _, v in next, {{"Main", "main"}, {"Background", "background"}, {"Outer Border", "outerBorder"}, {"Inner Border", "innerBorder"}, {"Top Gradient", "topGradient"}, {"Bottom Gradient", "bottomGradient"}, {"Section Background", "sectionBackground"}, {"Section", "section"}, {"Element Text", "elementText"}, {"Other Element Text", "otherElementText"}, {"Tab Text", "tabText"}, {"Element Border", "elementBorder"}, {"Selected Option", "selectedOption"}, {"Unselected Option", "unselectedOption"}, {"Hovered Option Top", "hoveredOptionTop"}, {"Unhovered Option Top", "unhoveredOptionTop"}, {"Hovered Option Bottom", "hoveredOptionBottom"}, {"Unhovered Option Bottom", "unhoveredOptionBottom"}} do
			local nam, codename = v[1], v[2]
			local cflag = "__Designer.Colors." .. codename
			designerelements[codename] = {
				Return = colorsection:AddColorpicker({
					Name = nam,
					Flag = cflag,
					Value = library.colors[codename],
					Callback = function(v, y)
						library.colors[codename] = v or y
					end,
					__designer = 1
				}),
				Flag = cflag
			}
		end
		local flags = {}
		local persistoptions = {
			Name = "Workspace Profile",
			Flag = "__Designer.Background.WorkspaceProfile",
			Flags = true,
			Suffix = "Config",
			Workspace = library.WorkspaceName or "Unnamed Workspace",
			Desginer = true
		}
		local daaata = {{"AddTextbox", "__Designer.Textbox.ImageAssetID", backgroundsection, {
			Name = "Image Asset ID",
			Placeholder = "rbxassetid://5553946656",
			Flag = "__Designer.Background.ImageAssetID",
			Value = "rbxassetid://5553946656",
			Callback = updatecolorsnotween
		}}, {"AddColorpicker", "__Designer.Colorpicker.ImageColor", backgroundsection, {
			Name = "Image Color",
			Flag = "__Designer.Background.ImageColor",
			Value = Color3.fromHex('000000'), --  
			Callback = updatecolorsnotween,
			__designer = 1
		}}, {"AddSlider", "__Designer.Slider.ImageTransparency", backgroundsection, {
			Name = "Image Transparency",
			Flag = "__Designer.Background.ImageTransparency",
			Value = 54,
			Min = 0,
			Max = 100,
			Format = "Image Transparency: %s%%",
			Textbox = true,
			Callback = updatecolorsnotween
		}}, {"AddToggle", "__Designer.Toggle.UseBackgroundImage", backgroundsection, {
			Name = "Use Background Image",
			Flag = "__Designer.Background.UseBackgroundImage",
			Value = true,
			Callback = updatecolorsnotween
		}}, {"AddPersistence", "__Designer.Persistence.ThemeFile", filessection, {
			Name = "Theme Profile",
			Flag = "__Designer.Files.ThemeFile",
			Workspace = "Pepsi Lib Themes",
			Flags = flags,
			Suffix = "Theme",
			Desginer = true
		}}, {"AddTextbox", "__Designer.Textbox.WorkspaceName", filessection, {
			Name = "Workspace Name",
			Value = library.WorkspaceName or "Unnamed Workspace",
			Flag = "__Designer.Files.WorkspaceFile",
			Callback = function(n, o)
				persistoptions.Workspace = n or o
			end
		}}, {"AddPersistence", "__Designer.Persistence.WorkspaceProfile", filessection, persistoptions}, {"AddButton", "__Designer.Button.TerminateGUI", settingssection, {{
			Name = "Terminate GUI",
			Callback = library.unload
		}, {
			Name = "Reset GUI",
			Callback = resetall
		}, {
			Name = "Reset Designer",
			Callback = function()
				destroyrainbows = true
				pcall(function()
					for k, v in next, elements do
						if v and k and v.Set and (v.Default ~= nil) and (library_flags[k] ~= v.Default) and (string.sub(k, 1, 11) == "__Designer.") then
							v:Set(v.Default)
						end
					end
				end)
			end
		}}}, {"AddKeybind", "__Designer.Keybind.ShowHideKey", settingssection, {
			Name = "Show/Hide Key",
			Location = library.configuration,
			Flag = "__Designer.Settings.ShowHideKey",
			LocationFlag = "hideKeybind",
			Value = library.configuration.hideKeybind,
			CoreBinding = true,
			Callback = function()
				lasthidebing = os.clock()
			end
		}}, {"AddLabel", "__Designer.Label.Version", settingssection, {
			Name = "Library Version: " .. tostring(library.Version or "?")
		}}, {"AddLabel", "__Designer.Label.Version", settingssection, {
			Name = "Library by Pepsi#5229 "
		}}}
		lasthidebing = os.clock()
		if setclipboard and daaata[8] then
			local common_table = daaata[8][4]
			if common_table then
				common_table[1 + #common_table] = {
					Name = "Copy Theme",
					Callback = function()
						local working_with = {}
						if #flags > 0 then
							for k, cflag in next, flags do
								if k > 0 then
									local data = elements[cflag]
									if data and (data.Type ~= "Persistence") and (string.sub(cflag, 1, 11) == "__Designer.") then
										working_with[cflag] = data
									end
								end
							end
						end
						local saving = {}
						for cflag in next, working_with do
							local value = library_flags[cflag]
							local good, jval = nil, nil
							if value ~= nil then
								good, jval = JSONEncode(value)
							else
								good, jval = true, "null"
							end
							if not good or ((jval == "null") and (value ~= nil)) then
								local typ = typeof(value)
								if typ == "Color3" then
									value = (library.rainbowflags[cflag] and "rainbow") or Color3ToHex(value)
								end
								value = tostring(value)
								good, jval = JSONEncode(value)
								if not good or ((jval == "null") and (value ~= nil)) then
									warn("Could not save value:", value, debug.traceback(""))
								end
							end
							if good and jval then
								saving[cflag] = value
							end
						end
						local good, content = JSONEncode(saving)
						if good and content then
							setclipboard(content)
						end
					end
				}
				common_table = nil
			end
		end
		detailssection:AddButton({
			Name = 'Hop Server',
			Callback = function(vu)
				HopServer()
			end
		})
		detailssection:AddButton({
			Name = 'Hop Low Server',
			Callback = function(vu)
				HopLowServer()
			end
		})
		detailssection:AddButton({
			Name = 'Rejoin Server',
			Callback = function(vu)
				game:GetService("TeleportService"):Teleport(game.PlaceId)
			end
		})
		if options.Info then
			local typ = type(options.Info)
			if typ == "string" then
				daaata[1 + #daaata] = {"AddLabel", "__Designer.Label.Creator", detailssection, {
					Text = options.Info
				}}
			elseif typ == "table" and #options.Info > 0 then
				for _, v in next, options.Info do
					daaata[1 + #daaata] = {"AddLabel", "__Designer.Label.Creator", detailssection, {
						Text = tostring(v)
					}}
				end
			end
		end
		for _, v in next, daaata do
			designerelements[v[2]] = v[3][v[1]](v[3], v[4])
		end
		designerelements["__Designer.Textbox.WorkspaceName"]:Set(library.WorkspaceName or "Unnamed Workspace")
		for k, v in next, elements do
			if v and k and string.sub(k, 1, 11) == "__Designer." and v.Type and v.Type ~= "Persistence" then
				flags[1 + #flags] = k
			end
		end
		if library.Backdrop then
			library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
			library.Backdrop.Visible = library_flags["__Designer.Background.UseBackgroundImage"] and true
			library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
			library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
		end
		local function setbackground(t, Asset, Transparency, Visible)
			if Visible == nil and t ~= nil and type(t) ~= "table" then
				Asset, Transparency, Visible = t, Transparency, Visible
			end
			if Visible == 0 or ((Asset == 0 or Asset == false) and Visible == nil and Transparency == nil) then
				Visible = false
			elseif Visible == 1 or ((Asset == 1 or Asset == true) and Visible == nil and Transparency == nil) then
				Visible = true
			elseif Asset == nil and Transparency == nil and Visible == nil then
				Visible = not library_flags["__Designer.Background.UseBackgroundImage"]
			end
			local temp = Asset and type(Asset)
			if Transparency == nil and Visible == nil and temp == "number" and ((Asset ~= 1 and Asset ~= 0) or (Asset > 0 and Asset <= 100)) then
				Transparency, Asset, temp = Asset, nil
			end
			if temp and ((temp == "number" and Asset > 1) or temp == "string") then
				designerelements["__Designer.Textbox.ImageAssetID"]:Set(Asset)
			end
			temp = tonumber(Transparency)
			temp = (temp >= 0 and temp <= 1 and temp * 100) or temp
			if temp then
				designerelements["__Designer.Slider.ImageTransparency"]:Set(temp)
			end
			if Visible ~= nil then
				designerelements["__Designer.Toggle.UseBackgroundImage"]:Set(Visible and true)
			end
			return Asset, Transparency, Visible
		end
		local bk = options.Background or options.Backdrop or options.Grahpic
		if bk then
			if type(bk) == "table" then
				setbackground(bk.Asset or bk[1], bk.Transparency or bk[2], bk.Visible or bk[3])
			else
				setbackground(bk, 0, 1)
			end
		end
		library.Designer = {
			Options = options,
			Parent = windowFunctions,
			Name = "Designer",
			Flag = "Designer",
			Type = "Designer",
			Instance = designer,
			SetBackground = setbackground,
			Remove = designer.Remove
		}
		library.SetBackground = setbackground
		local savestuff = library.elements["__Designer.Background.WorkspaceProfile"]
		if savestuff then
			library.LoadFile = savestuff.LoadFile
			library.LoadFileRaw = savestuff.LoadFileRaw
			library.LoadJSON = savestuff.LoadJSON
			library.LoadJSONRaw = savestuff.LoadJSONRaw
			library.SaveFile = savestuff.SaveFile
			library.GetJSON = savestuff.GetJSON
		end
		spawn(updatecolorsnotween)
		local dorlod = nil
		if options.HideTheme then
			designer.Remove()
			dorlod = true
		elseif options.LockTheme then
			if colorsection then
				colorsection.Remove()
				dorlod = true
			end
			if backgroundsection then
				backgroundsection.Remove()
				dorlod = true
			end
			if designerelements then
				local thing = designerelements["__Designer.Persistence.ThemeFile"]
				if thing then
					thing.Remove()
					dorlod = true
				end
				thing = designerelements["__Designer.Button.TerminateGUI"]
				thing = thing and thing[3]
				if thing then
					thing.Remove()
					dorlod = true
				end
			end
		end
		if dorlod then
			windowFunctions:UpdateAll()
		end
		return library.Designer
	end
	windowFunctions.AddDesigner = windowFunctions.CreateDesigner
	windowFunctions.NewDesigner = windowFunctions.CreateDesigner
	windowFunctions.Designer = windowFunctions.CreateDesigner
	windowFunctions.D = windowFunctions.CreateDesigner
	function windowFunctions:UpdateAll()
		local target = self or windowFunctions
		if target and type(target) == "table" and target.Flags then
			for _, e in next, target.Flags do
				if e and type(e) == "table" then
					if e.Update then
						pcall(e.Update)
					end
					if e.UpdateAll then
						pcall(e.Update)
					end
				end
			end
			pcall(function()
				if library.Backdrop then
					library.Backdrop.Visible = library_flags["__Designer.Background.UseBackgroundImage"] and true
					library.Backdrop.Image = resolveid(library_flags["__Designer.Background.ImageAssetID"], "__Designer.Background.ImageAssetID") or ""
					library.Backdrop.ImageColor3 = library_flags["__Designer.Background.ImageColor"] or Color3.new(1, 1, 1)
					library.Backdrop.ImageTransparency = (library_flags["__Designer.Background.ImageTransparency"] or 95) / 100
				end
			end)
		end
	end
	library.UpdateAll = windowFunctions.UpdateAll
	if options.Themeable or options.DefaultTheme or options.Theme then
		spawn(function()
			local os_clock = os.clock
			local starttime = os_clock()
			while os_clock() - starttime < 12 do
				if homepage then
					windowFunctions.GoHome = homepage
					local x, e = pcall(homepage)
					if not x and e then
						warn("Error going to Homepage:", e)
					end
					x, e = nil
					break
				end
				task.wait()
			end
			local whatDoILookLike = options.Themeable or options.DefaultTheme or options.Theme
			if type(whatDoILookLike) == "table" then
				whatDoILookLike.LockTheme = whatDoILookLike.LockTheme or options.LockTheme or nil
				whatDoILookLike.HideTheme = whatDoILookLike.HideTheme or options.HideTheme or nil
			else
				whatDoILookLike = nil
			end
			windowFunctions:CreateDesigner(whatDoILookLike)
			if options.DefaultTheme or options.Theme then
				spawn(function()
					local content = options.DefaultTheme or options.Theme or options.JSON or options.ThemeJSON
					if content and type(content) == "string" and #content > 1 then
						local good, jcontent = JSONDecode(content)
						if good and jcontent then
							for cflag, val in next, jcontent do
								local data = elements[cflag]
								if data and data.Type ~= "Persistence" then
									if data.Set then
										data:Set(val)
									elseif data.RawSet then
										data:RawSet(val)
									else
										library.flags[cflag] = val
									end
								end
							end
						end
					end
				end)
			end
			os_clock, starttime = nil
		end)
	end
	return windowFunctions
end
library.NewWindow = library.CreateWindow
library.AddWindow = library.CreateWindow
library.Window = library.CreateWindow
library.W = library.CreateWindow
-- local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Figger-2007/SwitchBF/main/xxpt.lua"))()

local PepsisWorld = library:CreateWindow({
	Name = "Switch Hub [ Premium ]",
	Themeable = {	
	}
})
local General_T = PepsisWorld:CreateTab({
	Name = "General"
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
--setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
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
	if Distance < 140 then
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
			--game.Players.LocalPlayer.Character.Humanoid.Health = 0
			--wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			wait(7)
			--[[
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
			wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget 
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			game.Players.LocalPlayer.Character.Humanoid.Health = 0
			wait(7)
			]]
		end
		--[[
		if (Vector3.new(-5075.13525390625, 314.941162109375, -2886.742919921875)-RealTarget.Position).Magnitude <= 2000 then
			local args = {
				[1] = "requestEntrance",
				[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
			}
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
							until not Farm_Level or (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 or game.Workspace.Enemies:FindFirstChild(Ms) or game.ReplicatedStorage:FindFirstChild(Ms)
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
						until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not Farm_Level 
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
				if Shark_Tooth_Necklace_H then
					Auto_Farm_Terror_Jaw = false
					Shark_Tooth_Necklace_S:Set('📿 Shark Tooth Necklace: ✅')
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
					if GetItem('Shark Tooth Necklace') then
						Shark_Tooth_Necklace_H = true
						Shark_Tooth_Necklace_S:Set('📿 Shark Tooth Necklace: ✅')
						wait(1)
					end
				end
				if Terror_Jaw_H then
					Auto_Farm_Terror_Jaw = false
					Terror_Jaw_S:Set('👓 Terror Jaw: ✅')
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
						Terror_Jaw_S:Set('👓 Terror Jaw: ✅')
						wait(1)
					end
				end
				if CheckItem_X('Monster Magnet') >= 1 then
					Monster_Magnet_H = true
					Monster_Magnet_S:Set('🔥 Monster Magnet: ✅')
					Auto_Farm_Monster_Magnet = false
					wait(1)
				elseif CheckItem_X('Monster Magnet') == 0 then
					Monster_Magnet_H = false
					Monster_Magnet_S:Set('🔥 Monster Magnet: ❌')
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
							Monster_Magnet_S:Set('🔥 Monster Magnet: ✅')
							Auto_Farm_Monster_Magnet = false
							wait(1)
						end
					end
				end
				if Shark_Anchor_H then
					Auto_Farm_Terror_Jaw = false
					Auto_Farm_Monster_Magnet = false
					Auto_Farm_Shark_Tooth = false
					Auto_Farm_Shark_Anchor = false
					Shark_Anchor_S:Set("⚓ Shark Anchor: ✅")
					Status_Win:Set('Status: Succes. ✅')
					library.Notify({
						Paused = true,
						Text = 'Shark Anchor Succes. ✅'
					})
				elseif not Shark_Anchor_H then
					if GetItem('Shark Anchor') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Anchor')  then
						Shark_Anchor_H = true
						Shark_Anchor_S:Set("⚓ Shark Anchor: ✅")
						Status_Win:Set('Status: Succes. ✅')
						wait(1)
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
	_G.Setting['Boat'] = 'PirateBrigade'
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
if _G.Setting == nil then
	_G.Setting = {}
end
if _G.Setting['Sword Max Level'] == nil then
	_G.Setting['Sword Max Level'] = {
        ['Enabled'] = false,
        ['Sword'] = 'Shark Anchor'
    }
end
function Check_Boat_Spawn()
	for i,v in pairs(game.Workspace.Boats:GetChildren()) do
		if v.Name == _G.Setting['Boat'] and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
			return true
		end
	end
	return false
end
spawn(function()
	while wait(.2) do
		pcall(function()
			if Farm_Level and not _G.Setting['Sword Max Level']['Enabled'] then
				FarmLevel()	
				if game.Players.LocalPlayer.Data.Level.Value >= _G.Setting['Level'] then
					FarmLevel = false
				end
			elseif Auto_Fox_Lamp then
				if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
					local result = {}
					local x = tostring(game:GetService("Lighting").TimeOfDay)
					local regex = ("([^%s]+)"):format(":")
					for each in x:gmatch(regex) do
						table.insert(result, each)
					end
					if tonumber(result[1]) >= 0 and tonumber(result[1]) < 5 or tonumber(result[1]) >= 9 and tonumber(result[1]) <= 20 then
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
											TPBoat(position_boat,v.VehicleSeat,180)
											game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
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
					else
						Status_Win:Set('Status: waiting for the night. ')
						wait(10)
					end
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
						if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
							Status_Win:Set('Status: Farm '..v.Name)
							game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
							wait(0.5)
							game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
							wait(0.5)
							game.Players.LocalPlayer.Character.Humanoid.Sit = true
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
							Farming_Tril = true
							Attack = true
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
							end
							postis = 30
							postx = 20
							local hit = false
							if v.Name == 'Terrorshark' then
								postis = 30
								postx = 50
								hit = true
							end
							local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
							local get_pless = true
							repeat wait(.2)
								local health = game.Players.LocalPlayer.Character.Humanoid.Health
								local percent = (health / maxhealth) * 100
								if percent <= 50 and hit then
									repeat wait(.2)
										local health = game.Players.LocalPlayer.Character.Humanoid.Health
										local percent = (health / maxhealth) * 100
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,100,300))
									until percent >= 70 or  not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
								else
									EquipWeapon(Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
								end
							until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							Attack = false
						end
					end
				end
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == 'Terrorshark' then
						if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
							Status_Win:Set('Status: Farm '..v.Name)
							game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
							wait(0.5)
							game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
							wait(0.5)
							game.Players.LocalPlayer.Character.Humanoid.Sit = true
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
							Farming_Tril = true
							Attack = true
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
							end
							postis = 30
							postx = 20
							local hit = false
							if v.Name == 'Terrorshark' then
								postis = 30
								postx = 50
								hit = true
							end
							local maxhealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
							local get_pless = true
							repeat wait(.2)
								local health = game.Players.LocalPlayer.Character.Humanoid.Health
								local percent = (health / maxhealth) * 100
								if percent <= 50 and hit then
									repeat wait(.2)
										local health = game.Players.LocalPlayer.Character.Humanoid.Health
										local percent = (health / maxhealth) * 100
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,100,300))
									until percent >= 70 or  not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
								else
									EquipWeapon(Weapon)
									TP(v.HumanoidRootPart.CFrame*CFrame.new(0,50,30))
								end
							until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Terror_Jaw and not Auto_Farm_Shark_Tooth and not Auto_Farm_Monster_Magnet and not Auto_Farm_Shark_Anchor 
							Attack = false
						end
					end
				end
				if CheckItem_X("Fool's Gold") <= 19 then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == 'FishBoat' and not Monster_Magnet_H or v.Name == 'PirateGrandBrigade' and not Monster_Magnet_H or v.Name == 'PirateBrigade' and not Monster_Magnet_H then
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
									Weapon = 'Sharkman Karate'
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
				end
				if not Farming_Tril then
					local Check_Boat_H = false 
					for i,v in pairs(game.Workspace.Boats:GetChildren()) do
						if Check_Boat_H == false and v.Name == _G.Setting['Boat'] and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
							Check_Boat_H = true
							if position_boat == nil then
								position_boat = CFrame.new(-27887.2265625, 40.741893768310547, -658.2794799804688)
							end
							Status_Win:Set('Status: Go to monster.')
							if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
								TweenP:Cancel()
								wait(1.5)
								--local get_cframe = position_boat
								--position_boat = CFrame.new(get_cframe.Position.X-2000, 40.741893768310547, -658.2794799804688)
								if Monster_Magnet_H then
									if (position_boat.Position-Vector3.new(-40887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
										position_boat = CFrame.new(-45887.2265625, 40.741893768310547, -658.2794799804688)
									elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
										position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
									else
										position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
									end
								else
									if (position_boat.Position-Vector3.new(-27887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
										position_boat = CFrame.new(-35887.2265625, 40.741893768310547, -658.2794799804688)
									elseif (position_boat.Position-Vector3.new(-35887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
										position_boat = CFrame.new(-27887.2265625, 40.741893768310547, -658.2794799804688)
									else
										position_boat = CFrame.new(-27887.2265625, 40.741893768310547, -658.2794799804688)
									end
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
										TPBoat(position_boat,v.VehicleSeat,150)
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
									position_boat = CFrame.new(-30887.2265625, 40.741893768310547, -658.2794799804688)
								elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
									TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
								end
							end
						end
					end
				end
			elseif _G.Setting['Sword Max Level']['Enabled'] and Farm_Level then
				if not Shark_Anchor_M and GetItem(tostring(_G.Setting['Sword Max Level']['Sword'])) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring(_G.Setting['Sword Max Level']['Sword']))
					Weapon = tostring(_G.Setting['Sword Max Level']['Sword'])
					Shark_Anchor_M = true
				elseif not Shark_Anchor_M then
					Weapon = tostring(_G.Setting['Sword Max Level']['Sword'])
					Shark_Anchor_M = true
				end
				if not Status_H then
					if game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
						Status_H = true
					end
				end
				if _G.Setting['Sword Max Level']['Restats'] == true and not Status_H then
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
					end
				end
				FarmLevel()
			end
		end)
	end
end)
-- Tooltip
local Setting_S = General_T:CreateSection({
    Name = " Setting ",
    Side = 'Right'
})
Setting_S:AddToggle({
	Name = 'White Screen',
	KeyBind = Enum.KeyCode.Y,
	Enabled = _G.Setting['White Screen'],
	Callback = function(vu)
		_G.Setting['White Screen'] = vu
		if _G.Setting['White Screen'] then
			game:GetService("RunService"):Set3dRenderingEnabled(false)
		else
			game:GetService("RunService"):Set3dRenderingEnabled(true)
		end
	end
})
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
		library:Notify({
			Paused = false,
			Text = 'Not Support / ยังไม่เปิดให้ใช้งาน'
		})
		--[[
		Auto_Farm_Trial = vu
		if Auto_Farm_Trial then
			position_pass = nil
		end
		]]
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
		library:Notify({
			Paused = false,
			Text = 'Not Support / ยังไม่เปิดให้ใช้งาน'
		})
		--Auto_Farm_Ancient_One = vu
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

spawn(function()
    if _G.Setting['Close Gui'] == true then
        game:service('VirtualInputManager'):SendKeyEvent(true, "LeftShift", false, game)
                wait(0.5)
                game:service('VirtualInputManager'):SendKeyEvent(false, "LeftShift", false, game)
                wait(0.5)
				game:service('VirtualInputManager'):SendKeyEvent(true, "LeftShift", false, game)
                wait(0.5)
                game:service('VirtualInputManager'):SendKeyEvent(false, "LeftShift", false, game)
                wait(0.5)
    end
end)
-- Rejoin
spawn(function()
	while wait(5) do
		if _G.Setting['Rejoin'] then
			game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
				if not Hop_S and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
					game:GetService("TeleportService"):Teleport(game.PlaceId)
					wait(50)
				end
			end)
		end
	end
end)
return library, library_flags, library.subs
