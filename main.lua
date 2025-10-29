-- CrimsonUI
local CrimsonUI = {}

-- Colors
local Colors = {
	Background = Color3.fromRGB(30, 30, 36),
	Secondary  = Color3.fromRGB(40, 40, 46),
	Accent     = Color3.fromRGB(65, 20, 30),
	Primary    = Color3.fromRGB(180, 25, 45),
	Highlight  = Color3.fromRGB(220, 35, 55),
	Bright     = Color3.fromRGB(255, 50, 70),
	Text       = Color3.fromRGB(245, 245, 245),
	TextDark   = Color3.fromRGB(180, 180, 180)
}

-- Themes
local Themes = {
	Crimson = {
		Background = Color3.fromRGB(30, 30, 36),
		Secondary  = Color3.fromRGB(40, 40, 46),
		Accent     = Color3.fromRGB(65, 20, 30),
		Primary    = Color3.fromRGB(180, 25, 45),
		Highlight  = Color3.fromRGB(220, 35, 55),
		Bright     = Color3.fromRGB(255, 50, 70),
		Text       = Color3.fromRGB(245, 245, 245),
		TextDark   = Color3.fromRGB(180, 180, 180)
	},
	Midnight = {
		Background = Color3.fromRGB(15, 15, 25),
		Secondary  = Color3.fromRGB(25, 25, 35),
		Accent     = Color3.fromRGB(20, 20, 40),
		Primary    = Color3.fromRGB(30, 30, 60),
		Highlight  = Color3.fromRGB(50, 50, 90),
		Bright     = Color3.fromRGB(70, 70, 110),
		Text       = Color3.fromRGB(230, 230, 240),
		TextDark   = Color3.fromRGB(160, 160, 180)
	},
	Ocean = {
		Background = Color3.fromRGB(10, 25, 40),
		Secondary  = Color3.fromRGB(15, 35, 55),
		Accent     = Color3.fromRGB(0, 80, 150),
		Primary    = Color3.fromRGB(0, 120, 215),
		Highlight  = Color3.fromRGB(0, 160, 255),
		Bright     = Color3.fromRGB(0, 200, 255),
		Text       = Color3.fromRGB(240, 250, 255),
		TextDark   = Color3.fromRGB(170, 200, 230)
	},
	Forest = {
		Background = Color3.fromRGB(15, 35, 15),
		Secondary  = Color3.fromRGB(25, 50, 25),
		Accent     = Color3.fromRGB(20, 90, 20),
		Primary    = Color3.fromRGB(34, 139, 34),
		Highlight  = Color3.fromRGB(50, 205, 50),
		Bright     = Color3.fromRGB(80, 255, 80),
		Text       = Color3.fromRGB(230, 255, 230),
		TextDark   = Color3.fromRGB(150, 200, 150)
	},
	Sunset = {
		Background = Color3.fromRGB(50, 20, 0),
		Secondary  = Color3.fromRGB(70, 30, 0),
		Accent     = Color3.fromRGB(200, 70, 0),
		Primary    = Color3.fromRGB(255, 94, 0),
		Highlight  = Color3.fromRGB(255, 140, 0),
		Bright     = Color3.fromRGB(255, 180, 0),
		Text       = Color3.fromRGB(255, 240, 220),
		TextDark   = Color3.fromRGB(200, 150, 100)
	},
	Violet = {
		Background = Color3.fromRGB(35, 20, 45),
		Secondary  = Color3.fromRGB(45, 30, 55),
		Accent     = Color3.fromRGB(90, 20, 150),
		Primary    = Color3.fromRGB(138, 43, 226),
		Highlight  = Color3.fromRGB(186, 85, 211),
		Bright     = Color3.fromRGB(200, 100, 230),
		Text       = Color3.fromRGB(245, 240, 255),
		TextDark   = Color3.fromRGB(180, 160, 200)
	},
	Rose = {
		Background = Color3.fromRGB(45, 20, 30),
		Secondary  = Color3.fromRGB(55, 30, 40),
		Accent     = Color3.fromRGB(150, 10, 40),
		Primary    = Color3.fromRGB(220, 20, 60),
		Highlight  = Color3.fromRGB(255, 20, 147),
		Bright     = Color3.fromRGB(255, 40, 160),
		Text       = Color3.fromRGB(255, 240, 245),
		TextDark   = Color3.fromRGB(200, 160, 180)
	},
	Azure = {
		Background = Color3.fromRGB(10, 30, 50),
		Secondary  = Color3.fromRGB(15, 40, 65),
		Accent     = Color3.fromRGB(0, 130, 200),
		Primary    = Color3.fromRGB(0, 191, 255),
		Highlight  = Color3.fromRGB(135, 206, 250),
		Bright     = Color3.fromRGB(150, 220, 255),
		Text       = Color3.fromRGB(240, 250, 255),
		TextDark   = Color3.fromRGB(170, 200, 230)
	},
	Amber = {
		Background = Color3.fromRGB(50, 35, 10),
		Secondary  = Color3.fromRGB(65, 45, 15),
		Accent     = Color3.fromRGB(200, 150, 0),
		Primary    = Color3.fromRGB(255, 191, 0),
		Highlight  = Color3.fromRGB(255, 215, 0),
		Bright     = Color3.fromRGB(255, 230, 50),
		Text       = Color3.fromRGB(255, 250, 230),
		TextDark   = Color3.fromRGB(200, 180, 120)
	},
	Emerald = {
		Background = Color3.fromRGB(10, 35, 20),
		Secondary  = Color3.fromRGB(15, 50, 25),
		Accent     = Color3.fromRGB(0, 90, 0),
		Primary    = Color3.fromRGB(0, 128, 0),
		Highlight  = Color3.fromRGB(50, 205, 50),
		Bright     = Color3.fromRGB(80, 255, 80),
		Text       = Color3.fromRGB(230, 255, 240),
		TextDark   = Color3.fromRGB(150, 200, 160)
	},
	Slate = {
		Background = Color3.fromRGB(25, 25, 30),
		Secondary  = Color3.fromRGB(35, 35, 40),
		Accent     = Color3.fromRGB(50, 50, 60),
		Primary    = Color3.fromRGB(70, 70, 80),
		Highlight  = Color3.fromRGB(100, 100, 120),
		Bright     = Color3.fromRGB(130, 130, 150),
		Text       = Color3.fromRGB(240, 240, 245),
		TextDark   = Color3.fromRGB(170, 170, 180)
	},
	Coral = {
		Background = Color3.fromRGB(50, 20, 25),
		Secondary  = Color3.fromRGB(65, 30, 35),
		Accent     = Color3.fromRGB(200, 60, 60),
		Primary    = Color3.fromRGB(255, 90, 90),
		Highlight  = Color3.fromRGB(255, 130, 130),
		Bright     = Color3.fromRGB(255, 150, 150),
		Text       = Color3.fromRGB(255, 245, 245),
		TextDark   = Color3.fromRGB(200, 160, 160)
	},
	Indigo = {
		Background = Color3.fromRGB(25, 15, 40),
		Secondary  = Color3.fromRGB(35, 25, 50),
		Accent     = Color3.fromRGB(50, 0, 90),
		Primary    = Color3.fromRGB(75, 0, 130),
		Highlight  = Color3.fromRGB(100, 0, 200),
		Bright     = Color3.fromRGB(130, 0, 230),
		Text       = Color3.fromRGB(245, 240, 255),
		TextDark   = Color3.fromRGB(180, 160, 200)
	},
	Teal = {
		Background = Color3.fromRGB(10, 35, 35),
		Secondary  = Color3.fromRGB(15, 45, 45),
		Accent     = Color3.fromRGB(0, 90, 90),
		Primary    = Color3.fromRGB(0, 128, 128),
		Highlight  = Color3.fromRGB(0, 200, 200),
		Bright     = Color3.fromRGB(0, 230, 230),
		Text       = Color3.fromRGB(240, 255, 255),
		TextDark   = Color3.fromRGB(160, 200, 200)
	},
	Plum = {
		Background = Color3.fromRGB(40, 20, 40),
		Secondary  = Color3.fromRGB(50, 30, 50),
		Accent     = Color3.fromRGB(90, 0, 90),
		Primary    = Color3.fromRGB(139, 0, 139),
		Highlight  = Color3.fromRGB(199, 21, 133),
		Bright     = Color3.fromRGB(220, 50, 160),
		Text       = Color3.fromRGB(255, 245, 255),
		TextDark   = Color3.fromRGB(200, 160, 200)
	}
}

-- Icons
local Icons = {
	Home        = "rbxassetid://10734884548",
	Settings    = "rbxassetid://10734950309",
	User        = "rbxassetid://10747374131",
	Users       = "rbxassetid://10747374668",
	Shield      = "rbxassetid://10734952273",
	Sword       = "rbxassetid://10734961090",
	Crown       = "rbxassetid://10734919336",
	Star        = "rbxassetid://10734896629",
	Heart       = "rbxassetid://10734919750",
	Book        = "rbxassetid://10734886004",
	Briefcase   = "rbxassetid://10734886559",
	Calendar    = "rbxassetid://10734886815",
	Camera      = "rbxassetid://10734886971",
	Code        = "rbxassetid://10734918229",
	Zap         = "rbxassetid://10747374401",
	Activity    = "rbxassetid://10734883989",
	Airplay     = "rbxassetid://10734884103",
	AlertCircle = "rbxassetid://10734884355",
	AlertTriangle = "rbxassetid://10734884551",
	Archive     = "rbxassetid://10734884742",
	Award       = "rbxassetid://10734885003",
	Bell        = "rbxassetid://10734885266",
	Box         = "rbxassetid://10734886314",
	Command     = "rbxassetid://10734918568",
	Cpu         = "rbxassetid://10734919088",
	Database    = "rbxassetid://10734920149",
	Download    = "rbxassetid://10734920526",
	Eye         = "rbxassetid://10734921214",
	File        = "rbxassetid://10734921595",
	Flag        = "rbxassetid://10734921942",
	Gift        = "rbxassetid://10734922026",
	Globe       = "rbxassetid://10734922241",
	Grid        = "rbxassetid://10734922491",
	Info        = "rbxassetid://10734923214",
	Key         = "rbxassetid://10734923549",
	Lock        = "rbxassetid://10734924532",
	Mail        = "rbxassetid://10734924844",
	Map         = "rbxassetid://10734925272",
	Menu        = "rbxassetid://10734925524",
	MessageCircle = "rbxassetid://10734925739",
	Package     = "rbxassetid://10734949856",
	Pencil      = "rbxassetid://10734950309",
	Play        = "rbxassetid://10734950690",
	Plus        = "rbxassetid://10734950837",
	Search      = "rbxassetid://10734952273",
	Server      = "rbxassetid://10734952529",
	Share       = "rbxassetid://10734952692",
	ShoppingCart = "rbxassetid://10734952925",
	Shuffle     = "rbxassetid://10734953146",
	Target      = "rbxassetid://10734953353",
	Terminal    = "rbxassetid://10734953505",
	Tool        = "rbxassetid://10734953697",
	Trash       = "rbxassetid://10734953864",
	TrendingUp  = "rbxassetid://10734954095",
	Trophy      = "rbxassetid://10734954216",
	Upload      = "rbxassetid://10734954382",
	Wrench      = "rbxassetid://10747373176",
	X           = "rbxassetid://10734896547",
	Minimize    = "rbxassetid://7733964640",
	DownArrow   = "rbxassetid://10709791437"
}

-- Services
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local isMobile         = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

-- Helpers
local function Tween(obj, props, dur)
	local info = TweenInfo.new(dur or 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local t    = TweenService:Create(obj, info, props)
	t:Play()
	return t
end

local function CreateGlow(parent)
	local glow = Instance.new("ImageLabel")
	glow.Name                  = "Glow"
	glow.BackgroundTransparency = 1
	glow.Image                 = "rbxassetid://5028857084"
	glow.ImageColor3           = Colors.Highlight
	glow.ImageTransparency     = 0.75
	glow.ScaleType             = Enum.ScaleType.Slice
	glow.SliceCenter           = Rect.new(24, 24, 276, 276)
	glow.Size                  = UDim2.new(1, 24, 1, 24)
	glow.Position              = UDim2.new(0, -12, 0, -12)
	glow.ZIndex                = 0
	glow.Parent                = parent
	return glow
end

-- Loading Screen
local function CreateLoadingScreen(parent, cfg)
	local frame = Instance.new("Frame")
	frame.Name            = "LoadingScreen"
	frame.BackgroundColor3 = Colors.Background
	frame.Position        = UDim2.new(0.5, -150, 0.5, -100)
	frame.Size            = UDim2.new(0, 300, 0, 200)
	frame.ZIndex          = 100
	frame.Parent          = parent

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 12)
	corner.Parent       = frame
	CreateGlow(frame)

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Position              = UDim2.new(0.5, 0, 0, 40)
	title.AnchorPoint           = Vector2.new(0.5, 0)
	title.Size                  = UDim2.new(0.9, 0, 0, 40)
	title.Font                  = Enum.Font.GothamBold
	title.Text                  = cfg.LoadingTitle or "Crimson UI"
	title.TextColor3            = Colors.Text
	title.TextSize              = 24
	title.Parent                = frame

	local sub = Instance.new("TextLabel")
	sub.BackgroundTransparency = 1
	sub.Position               = UDim2.new(0.5, 0, 0, 80)
	sub.AnchorPoint            = Vector2.new(0.5, 0)
	sub.Size                   = UDim2.new(0.9, 0, 0, 20)
	sub.Font                   = Enum.Font.Gotham
	sub.Text                   = cfg.LoadingSubtitle or "by Luca Davincci"
	sub.TextColor3             = Colors.TextDark
	sub.TextSize               = 14
	sub.Parent                 = frame

	local spinner = Instance.new("ImageLabel")
	spinner.BackgroundTransparency = 1
	spinner.Position               = UDim2.new(0.5, 0, 0, 130)
	spinner.AnchorPoint            = Vector2.new(0.5, 0)
	spinner.Size                   = UDim2.new(0, 40, 0, 40)
	spinner.Image                  = "rbxassetid://6031097225"
	spinner.ImageColor3            = Colors.Highlight
	spinner.Parent                 = frame

	TweenService:Create(spinner, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {Rotation = 360}):Play()

	return {
		LoadingFrame = frame,
		Hide = function(main)
			Tween(frame, {Position = UDim2.new(0.5, -300, 0.5, -200), Size = UDim2.new(0, 600, 0, 400)}, 0.5)
			Tween(title, {TextTransparency = 1}, 0.3)
			Tween(sub, {TextTransparency = 1}, 0.3)
			Tween(spinner, {ImageTransparency = 1}, 0.3)
			task.delay(0.3, function()
				main.Visible = true
				main.Size    = UDim2.new(0, 600, 0, 400)
			end)
			task.delay(0.5, function()
				frame:Destroy()
			end)
		end
	}
end

-- Set Theme
function CrimsonUI:SetTheme(name)
	if not Themes[name] then return end
	local t = Themes[name]
	Colors.Background = t.Background
	Colors.Secondary  = t.Secondary
	Colors.Accent     = t.Accent
	Colors.Primary    = t.Primary
	Colors.Highlight  = t.Highlight
	Colors.Bright     = t.Bright
	Colors.Text       = t.Text
	Colors.TextDark   = t.TextDark

	for _, el in ipairs(UIElements) do
		if el.Type == "TopBar" or el.Type == "TopBarFix" then
			Tween(el.Object, {BackgroundColor3 = Colors.Accent}, 0.3)
		elseif el.Type == "Glow" then
			Tween(el.Object, {ImageColor3 = Colors.Highlight}, 0.3)
		elseif el.Type == "ActiveTab" then
			Tween(el.Object, {BackgroundColor3 = Colors.Primary}, 0.3)
		elseif el.Type == "ActiveTabLabel" then
			Tween(el.Object, {TextColor3 = Colors.Text}, 0.3)
		elseif el.Type == "HighlightText" then
			Tween(el.Object, {TextColor3 = Colors.Highlight}, 0.3)
		elseif el.Type == "HighlightBackground" then
			Tween(el.Object, {BackgroundColor3 = Colors.Highlight}, 0.3)
		elseif el.Type == "ScrollBar" then
			el.Object.ScrollBarImageColor3 = Colors.Highlight
		end
	end
end

-- Create Window
function CrimsonUI:CreateWindow(cfg)
	UIElements = {}
	local config = {
		Name            = cfg.Name or "Crimson UI",
		LoadingEnabled  = cfg.LoadingEnabled ~= false,
		LoadingTitle    = cfg.LoadingTitle or "Crimson UI",
		LoadingSubtitle = cfg.LoadingSubtitle or "by Luca Davincci"
	}

	local gui = Instance.new("ScreenGui")
	gui.Name               = "CrimsonUI"
	gui.ResetOnSpawn       = false
	gui.ZIndexBehavior     = Enum.ZIndexBehavior.Sibling
	gui.Parent             = game:GetService("CoreGui")

	local main = Instance.new("Frame")
	main.Name               = "MainFrame"
	main.BackgroundColor3   = Colors.Background
	main.Position           = UDim2.new(0.5, -300, 0.5, -200)
	main.Size               = UDim2.new(0, 0, 0, 0)
	main.ClipsDescendants   = true
	main.Visible            = false
	main.Parent             = gui

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 12)
	corner.Parent       = main
	local glow = CreateGlow(main)
	table.insert(UIElements, {Type = "Glow", Object = glow})

	local loading
	if config.LoadingEnabled then
		loading = CreateLoadingScreen(gui, config)
	end

	local topbar = Instance.new("Frame")
	topbar.Name             = "TopBar"
	topbar.BackgroundColor3 = Colors.Accent
	topbar.Size             = UDim2.new(1, 0, 0, 45)
	topbar.Parent           = main
	table.insert(UIElements, {Type = "TopBar", Object = topbar})

	local topCorner = Instance.new("UICorner")
	topCorner.CornerRadius = UDim.new(0, 12)
	topCorner.Parent       = topbar

	local topFix = Instance.new("Frame")
	topFix.BackgroundColor3 = Colors.Accent
	topFix.Position         = UDim2.new(0, 0, 1, -12)
	topFix.Size             = UDim2.new(1, 0, 0, 12)
	topFix.Parent           = topbar
	table.insert(UIElements, {Type = "TopBarFix", Object = topFix})

	local title = Instance.new("TextLabel")
	title.Name               = "Title"
	title.BackgroundTransparency = 1
	title.Position           = UDim2.new(0, 20, 0, 0)
	title.Size               = UDim2.new(0.5, 0, 1, 0)
	title.Font               = Enum.Font.GothamBold
	title.Text               = config.Name
	title.TextColor3         = Colors.Text
	title.TextSize           = 16
	title.TextXAlignment     = Enum.TextXAlignment.Left
	title.Parent             = topbar

	local minimize = Instance.new("TextButton")
	minimize.Name               = "Minimize"
	minimize.BackgroundTransparency = 1
	minimize.Position           = UDim2.new(1, -50, 0.5, -14)
	minimize.Size               = UDim2.new(0, 28, 0, 28)
	minimize.Text               = ""
	minimize.ZIndex             = 10
	minimize.Parent             = topbar

	local minIcon = Instance.new("ImageLabel")
	minIcon.Name               = "Icon"
	minIcon.BackgroundTransparency = 1
	minIcon.Size               = UDim2.new(1, 0, 1, 0)
	minIcon.Image              = Icons.Minimize
	minIcon.ImageColor3        = Colors.TextDark
	minIcon.Parent             = minimize

	-- Dragging
	local dragging = false
	local dragStart, startPos
	topbar.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or (isMobile and inp.UserInputType == Enum.UserInputType.Touch) then
			dragging  = true
			dragStart = inp.Position
			startPos  = main.Position
		end
	end)
	topbar.InputChanged:Connect(function(inp)
		if dragging and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
			local delta = inp.Position - dragStart
			main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
	UserInputService.InputEnded:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)

	-- Minimize
	local minimized = false
	minimize.MouseButton1Click:Connect(function()
		minimized = not minimized
		Tween(main, {Size = minimized and UDim2.new(0, 600, 0, 45) or UDim2.new(0, 600, 0, 400)}, 0.3)
		Tween(minIcon, {Rotation = minimized and 180 or 0}, 0.3)
	end)
	minimize.MouseEnter:Connect(function()
		Tween(minIcon, {ImageColor3 = Colors.Highlight}, 0.2)
	end)
	minimize.MouseLeave:Connect(function()
		Tween(minIcon, {ImageColor3 = Colors.TextDark}, 0.2)
	end)

	-- Tabs
	local tabContainer = Instance.new("Frame")
	tabContainer.Name             = "Tabs"
	tabContainer.BackgroundColor3 = Colors.Secondary
	tabContainer.Position         = UDim2.new(0, 0, 0, 45)
	tabContainer.Size             = UDim2.new(1, 0, 0, 45)
	tabContainer.Parent           = main

	local tabList = Instance.new("ScrollingFrame")
	tabList.BackgroundTransparency = 1
	tabList.Position               = UDim2.new(0, 10, 0, 0)
	tabList.Size                   = UDim2.new(1, -20, 1, 0)
	tabList.ScrollBarThickness     = 0
	tabList.CanvasSize             = UDim2.new(0, 0, 0, 0)
	tabList.ScrollingDirection     = Enum.ScrollingDirection.X
	tabList.Parent                 = tabContainer

	local tabLayout = Instance.new("UIListLayout")
	tabLayout.FillDirection = Enum.FillDirection.Horizontal
	tabLayout.Padding       = UDim.new(0, 8)
	tabLayout.Parent        = tabList

	local content = Instance.new("Frame")
	content.Name               = "Content"
	content.BackgroundTransparency = 1
	content.Position           = UDim2.new(0, 0, 0, 90)
	content.Size               = UDim2.new(1, 0, 1, -90)
	content.Parent             = main

	-- Window
	local window = {Tabs = {}, Current = nil}

	function window:CreateTab(cfg)
		local tab = {
			Name = cfg.Name or "Tab"
		}

		local btn = Instance.new("TextButton")
		btn.Name               = tab.Name
		btn.BackgroundColor3   = Colors.Background
		btn.Size               = UDim2.new(0, isMobile and 120 or 100, 0, isMobile and 50 or 35)
		btn.AutoButtonColor    = false
		btn.Text               = ""
		btn.Parent             = tabList

		local btnCorner = Instance.new("UICorner")
		btnCorner.CornerRadius = UDim.new(0, 8)
		btnCorner.Parent       = btn

		local label = Instance.new("TextLabel")
		label.BackgroundTransparency = 1
		label.Position               = UDim2.new(0, 8, 0, 0)
		label.Size                   = UDim2.new(1, -16, 1, 0)
		label.Font                   = Enum.Font.GothamMedium
		label.Text                   = tab.Name
		label.TextColor3             = Colors.TextDark
		label.TextSize               = 13
		label.TextXAlignment         = Enum.TextXAlignment.Left
		label.Parent                 = btn

		local page = Instance.new("ScrollingFrame")
		page.Name               = tab.Name.."Page"
		page.BackgroundTransparency = 1
		page.Size               = UDim2.new(1, 0, 1, 0)
		page.ScrollBarThickness = 4
		page.ScrollBarImageColor3 = Colors.Highlight
		page.Visible            = false
		page.Parent             = content
		table.insert(UIElements, {Type = "ScrollBar", Object = page})

		local layout = Instance.new("UIListLayout")
		layout.Padding = UDim.new(0, 8)
		layout.Parent  = page

		local padding = Instance.new("UIPadding")
		padding.PaddingTop    = UDim.new(0, 12)
		padding.PaddingBottom = UDim.new(0, 12)
		padding.PaddingLeft   = UDim.new(0, 16)
		padding.PaddingRight  = UDim.new(0, 16)
		padding.Parent        = page

		layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			page.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 24)
		end)

		btn.MouseButton1Click:Connect(function()
			for _, t in pairs(window.Tabs) do
				t.Page.Visible = false
				Tween(t.Button, {BackgroundColor3 = Colors.Background}, 0.2)
				Tween(t.Label, {TextColor3 = Colors.TextDark}, 0.2)
			end
			page.Visible = true
			Tween(btn, {BackgroundColor3 = Colors.Primary}, 0.2)
			Tween(label, {TextColor3 = Colors.Text}, 0.2)
			table.insert(UIElements, {Type = "ActiveTab", Object = btn})
			table.insert(UIElements, {Type = "ActiveTabLabel", Object = label})
			window.Current = tab
		end)

		btn.MouseEnter:Connect(function()
			if window.Current ~= tab then
				Tween(btn, {BackgroundColor3 = Colors.Accent}, 0.2)
			end
		end)
		btn.MouseLeave:Connect(function()
			if window.Current ~= tab then
				Tween(btn, {BackgroundColor3 = Colors.Background}, 0.2)
			end
		end)

		-- Button
		function tab:CreateButton(cfg)
			local b = {
				Name     = cfg.Name or "Button",
				Callback = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local button = Instance.new("TextButton")
			button.BackgroundTransparency = 1
			button.Size                   = UDim2.new(1, 0, 1, 0)
			button.Font                   = Enum.Font.GothamMedium
			button.Text                   = b.Name
			button.TextColor3             = Colors.Text
			button.TextSize               = 13
			button.Parent                 = frame

			hitbox.MouseButton1Click:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Highlight}, 0.1)
				task.delay(0.1, function()
					Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.1)
				end)
				b.Callback()
			end)

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return button
		end

		-- Toggle
		function tab:CreateToggle(cfg)
			local t = {
				Name     = cfg.Name or "Toggle",
				Value    = cfg.CurrentValue or false,
				Callback = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position               = UDim2.new(0, 12, 0, 0)
			label.Size                   = UDim2.new(0.7, 0, 1, 0)
			label.Font                   = Enum.Font.GothamMedium
			label.Text                   = t.Name
			label.TextColor3             = Colors.Text
			label.TextSize               = 13
			label.TextXAlignment         = Enum.TextXAlignment.Left
			label.Parent                 = frame

			local toggle = Instance.new("TextButton")
			toggle.BackgroundColor3 = t.Value and Colors.Highlight or Colors.Background
			toggle.Position         = UDim2.new(1, -52, 0.5, -11)
			toggle.Size             = UDim2.new(0, 42, 0, 22)
			toggle.AutoButtonColor  = false
			toggle.Text             = ""
			toggle.Parent           = frame

			local tCorner = Instance.new("UICorner")
			tCorner.CornerRadius = UDim.new(1, 0)
			tCorner.Parent       = toggle

			local circle = Instance.new("Frame")
			circle.BackgroundColor3 = Colors.Text
			circle.Position         = t.Value and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
			circle.Size             = UDim2.new(0, 18, 0, 18)
			circle.Parent           = toggle

			local cCorner = Instance.new("UICorner")
			cCorner.CornerRadius = UDim.new(1, 0)
			cCorner.Parent       = circle

			hitbox.MouseButton1Click:Connect(function()
				t.Value = not t.Value
				Tween(toggle, {BackgroundColor3 = t.Value and Colors.Highlight or Colors.Background}, 0.2)
				Tween(circle, {Position = t.Value and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)}, 0.2)
				t.Callback(t.Value)
			end)

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(v)
					t.Value = v
					Tween(toggle, {BackgroundColor3 = v and Colors.Highlight or Colors.Background}, 0.2)
					Tween(circle, {Position = v and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)}, 0.2)
				end
			}
		end

		-- Slider
		function tab:CreateSlider(cfg)
			local s = {
				Name      = cfg.Name or "Slider",
				Range     = cfg.Range or {0, 100},
				Increment = cfg.Increment or 1,
				Value     = cfg.CurrentValue or 50,
				Callback  = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 70 or 54)
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position               = UDim2.new(0, 12, 0, 8)
			label.Size                   = UDim2.new(0.7, 0, 0, 16)
			label.Font                   = Enum.Font.GothamMedium
			label.Text                   = s.Name
			label.TextColor3             = Colors.Text
			label.TextSize               = 13
			label.TextXAlignment         = Enum.TextXAlignment.Left
			label.Parent                 = frame

			local valueLabel = Instance.new("TextLabel")
			valueLabel.BackgroundTransparency = 1
			valueLabel.Position               = UDim2.new(0.7, 0, 0, 8)
			valueLabel.Size                   = UDim2.new(0.3, -12, 0, 16)
			valueLabel.Font                   = Enum.Font.GothamBold
			valueLabel.Text                   = tostring(s.Value)
			valueLabel.TextColor3             = Colors.Highlight
			valueLabel.TextSize               = 13
			valueLabel.TextXAlignment         = Enum.TextXAlignment.Right
			valueLabel.Parent                 = frame

			local bg = Instance.new("Frame")
			bg.BackgroundColor3 = Colors.Background
			bg.Position         = UDim2.new(0, 12, 0, isMobile and 40 or 32)
			bg.Size             = UDim2.new(1, -24, 0, 6)
			bg.Parent           = frame

			local bgCorner = Instance.new("UICorner")
			bgCorner.CornerRadius = UDim.new(1, 0)
			bgCorner.Parent       = bg

			local fill = Instance.new("Frame")
			fill.BackgroundColor3 = Colors.Highlight
			fill.Size             = UDim2.new((s.Value - s.Range[1]) / (s.Range[2] - s.Range[1]), 0, 1, 0)
			fill.Parent           = bg

			local fillCorner = Instance.new("UICorner")
			fillCorner.CornerRadius = UDim.new(1, 0)
			fillCorner.Parent       = fill

			local dragging = false
			local function update(inp)
				local pos = math.clamp((inp.Position.X - bg.AbsolutePosition.X) / bg.AbsoluteSize.X, 0, 1)
				local val = math.floor((pos * (s.Range[2] - s.Range[1]) + s.Range[1]) / s.Increment + 0.5) * s.Increment
				val       = math.clamp(val, s.Range[1], s.Range[2])
				s.Value   = val
				valueLabel.Text = tostring(val)
				Tween(fill, {Size = UDim2.new(pos, 0, 1, 0)}, 0.1)
				s.Callback(val)
			end

			hitbox.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 or (isMobile and inp.UserInputType == Enum.UserInputType.Touch) then
					dragging = true
					update(inp)
				end
			end)
			hitbox.InputChanged:Connect(function(inp)
				if dragging and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
					update(inp)
				end
			end)
			UserInputService.InputEnded:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
					dragging = false
				end
			end)

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(v)
					v = math.clamp(v, s.Range[1], s.Range[2])
					s.Value = v
					valueLabel.Text = tostring(v)
					local pos = (v - s.Range[1]) / (s.Range[2] - s.Range[1])
					Tween(fill, {Size = UDim2.new(pos, 0, 1, 0)}, 0.2)
				end
			}
		end

		-- Input
		function tab:CreateInput(cfg)
			local i = {
				Name             = cfg.Name or "Input",
				Placeholder      = cfg.PlaceholderText or "Enter text...",
				ClearOnFocusLost = cfg.RemoveTextAfterFocusLost or false,
				Callback         = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 80 or 64)
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position               = UDim2.new(0, 12, 0, 8)
			label.Size                   = UDim2.new(1, -24, 0, 16)
			label.Font                   = Enum.Font.GothamMedium
			label.Text                   = i.Name
			label.TextColor3             = Colors.Text
			label.TextSize               = 13
			label.TextXAlignment         = Enum.TextXAlignment.Left
			label.Parent                 = frame

			local box = Instance.new("TextBox")
			box.BackgroundColor3   = Colors.Background
			box.Position           = UDim2.new(0, 12, 0, isMobile and 40 or 32)
			box.Size               = UDim2.new(1, -24, 0, isMobile and 32 or 26)
			box.Font               = Enum.Font.Gotham
			box.PlaceholderText    = i.Placeholder
			box.PlaceholderColor3  = Colors.TextDark
			box.Text               = ""
			box.TextColor3         = Colors.Text
			box.TextSize           = 13
			box.TextXAlignment     = Enum.TextXAlignment.Left
			box.Parent             = frame

			local boxCorner = Instance.new("UICorner")
			boxCorner.CornerRadius = UDim.new(0, 6)
			boxCorner.Parent       = box

			local boxPad = Instance.new("UIPadding")
			boxPad.PaddingLeft  = UDim.new(0, 8)
			boxPad.PaddingRight = UDim.new(0, 8)
			boxPad.Parent       = box

			box.FocusLost:Connect(function(enter)
				if enter then
					i.Callback(box.Text)
					if i.ClearOnFocusLost then
						box.Text = ""
					end
				end
				Tween(box, {BackgroundColor3 = Colors.Background}, 0.2)
			end)
			box.Focused:Connect(function()
				Tween(box, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return box
		end

		-- Dropdown
		function tab:CreateDropdown(cfg)
			local d = {
				Name     = cfg.Name or "Dropdown",
				Options  = cfg.Options or {"Option 1"},
				Current  = cfg.CurrentOption or cfg.Options[1],
				Callback = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			frame.ClipsDescendants = true
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position               = UDim2.new(0, 12, 0, 0)
			label.Size                   = UDim2.new(0.5, 0, 1, 0)
			label.Font                   = Enum.Font.GothamMedium
			label.Text                   = d.Name
			label.TextColor3             = Colors.Text
			label.TextSize               = 13
			label.TextXAlignment         = Enum.TextXAlignment.Left
			label.Parent                 = frame

			local btn = Instance.new("TextButton")
			btn.BackgroundColor3 = Colors.Background
			btn.Position         = UDim2.new(0.5, 4, 0.5, -13)
			btn.Size             = UDim2.new(0.5, -16, 0, 26)
			btn.AutoButtonColor  = false
			btn.Font             = Enum.Font.Gotham
			btn.Text             = d.Current
			btn.TextColor3       = Colors.Text
			btn.TextSize         = 12
			btn.TextXAlignment   = Enum.TextXAlignment.Left
			btn.Parent           = frame

			local btnCorner = Instance.new("UICorner")
			btnCorner.CornerRadius = UDim.new(0, 6)
			btnCorner.Parent       = btn

			local icon = Instance.new("ImageLabel")
			icon.BackgroundTransparency = 1
			icon.Position               = UDim2.new(1, -22, 0.5, -8)
			icon.Size                   = UDim2.new(0, 16, 0, 16)
			icon.Image                  = Icons.DownArrow
			icon.ImageColor3            = Colors.TextDark
			icon.Parent                 = btn

			local list = Instance.new("Frame")
			list.BackgroundTransparency = 1
			list.Position               = UDim2.new(0.5, 4, 0, isMobile and 58 or 42)
			list.Size                   = UDim2.new(0.5, -16, 0, 0)
			list.Parent                 = frame

			local listLayout = Instance.new("UIListLayout")
			listLayout.Padding = UDim.new(0, 4)
			listLayout.Parent  = list

			local listPad = Instance.new("UIPadding")
			listPad.PaddingTop    = UDim.new(0, 4)
			listPad.PaddingBottom = UDim.new(0, 4)
			listPad.Parent        = list

			local open = false
			local function updateSize()
				list.Size = UDim2.new(0.5, -16, 0, listLayout.AbsoluteContentSize.Y + 8)
			end

			for _, opt in ipairs(d.Options) do
				local optBtn = Instance.new("TextButton")
				optBtn.BackgroundColor3 = Colors.Background
				optBtn.Size             = UDim2.new(1, 0, 0, 28)
				optBtn.AutoButtonColor  = false
				optBtn.Font             = Enum.Font.Gotham
				optBtn.Text             = opt
				optBtn.TextColor3       = Colors.Text
				optBtn.TextSize         = 12
				optBtn.Parent           = list

				local optCorner = Instance.new("UICorner")
				optCorner.CornerRadius = UDim.new(0, 6)
				optCorner.Parent       = optBtn

				optBtn.MouseButton1Click:Connect(function()
					d.Current = opt
					btn.Text  = opt
					d.Callback(opt)
					open      = false
					Tween(frame, {Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)}, 0.3)
					Tween(icon, {Rotation = 0}, 0.3)
				end)

				optBtn.MouseEnter:Connect(function()
					Tween(optBtn, {BackgroundColor3 = Colors.Accent}, 0.2)
				end)
				optBtn.MouseLeave:Connect(function()
					Tween(optBtn, {BackgroundColor3 = Colors.Background}, 0.2)
				end)
			end

			listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
			task.spawn(updateSize)

			hitbox.MouseButton1Click:Connect(function()
				open = not open
				if open then
					updateSize()
					local h = (isMobile and 54 or 38) + list.Size.Y.Offset
					Tween(frame, {Size = UDim2.new(1, 0, 0, h)}, 0.3)
					Tween(icon, {Rotation = 180}, 0.3)
				else
					Tween(frame, {Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)}, 0.3)
					Tween(icon, {Rotation = 0}, 0.3)
				end
			end)

			btn.MouseEnter:Connect(function()
				Tween(btn, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			btn.MouseLeave:Connect(function()
				Tween(btn, {BackgroundColor3 = Colors.Background}, 0.2)
			end)

			return {
				Set = function(opt)
					if table.find(d.Options, opt) then
						d.Current = opt
						btn.Text  = opt
					end
				end
			}
		end

		-- Color Picker
		function tab:CreateColorPicker(cfg)
			local c = {
				Name     = cfg.Name or "Color Picker",
				Color    = cfg.Color or Color3.fromRGB(255, 255, 255),
				Callback = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size             = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			frame.Parent           = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent       = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size                   = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position               = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text                   = ""
			hitbox.ZIndex                 = 2
			hitbox.Parent                 = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position = UDim2.new(0, 12, 0, 0)
		    label.Size = UDim2.new(0.7, 0, 1, 0)
			label.Font = Enum.Font.GothamMedium
			label.Text = c.Name
			label.TextColor3 = Colors.Text
			label.TextSize = 13
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.Parent = frame

			local display = Instance.new("Frame")
			display.BackgroundColor3 = c.Color
			display.Position = UDim2.new(1, -40, 0.5, -11)
			display.Size = UDim2.new(0, 32, 0, 22)
			display.Parent = frame

			local dCorner = Instance.new("UICorner")
			dCorner.CornerRadius = UDim.new(0, 6)
			dCorner.Parent = display

			hitbox.MouseButton1Click:Connect(function()
				c.Callback(c.Color)
			end)

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(color)
					c.Color = color
					display.BackgroundColor3 = color
				end
			}
		end

		-- Label
		function tab:CreateLabel(text)
			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size = UDim2.new(1, 0, 0, isMobile and 48 or 32)
			frame.Parent = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Size = UDim2.new(1, 0, 1, 0)
			label.Font = Enum.Font.GothamMedium
			label.Text = text or "Label"
			label.TextColor3 = Colors.Text
			label.TextSize = 13
			label.Parent = frame

			return {
				Set = function(newText)
					label.Text = newText
				end
			}
		end

		-- Paragraph
		function tab:CreateParagraph(cfg)
			local p = {
				Title = cfg.Title or "Paragraph",
				Content = cfg.Content or "Content"
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size = UDim2.new(1, 0, 0, isMobile and 90 or 70)
			frame.Parent = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent = frame

			local title = Instance.new("TextLabel")
			title.BackgroundTransparency = 1
			title.Position = UDim2.new(0, 12, 0, 8)
			title.Size = UDim2.new(1, -24, 0, 18)
			title.Font = Enum.Font.GothamBold
			title.Text = p.Title
			title.TextColor3 = Colors.Highlight
			title.TextSize = 13
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.TextYAlignment = Enum.TextYAlignment.Top
			title.Parent = frame

			local content = Instance.new("TextLabel")
			content.BackgroundTransparency = 1
			content.Position = UDim2.new(0, 12, 0, 28)
			content.Size = UDim2.new(1, -24, 1, -36)
			content.Font = Enum.Font.Gotham
			content.Text = p.Content
			content.TextColor3 = Colors.TextDark
			content.TextSize = 12
			content.TextWrapped = true
			content.TextXAlignment = Enum.TextXAlignment.Left
			content.TextYAlignment = Enum.TextYAlignment.Top
			content.Parent = frame

			return {
				Set = function(cfg)
					if cfg.Title then title.Text = cfg.Title end
					if cfg.Content then content.Text = cfg.Content end
				end
			}
		end

		-- Keybind
		function tab:CreateKeybind(cfg)
			local k = {
				Name = cfg.Name or "Keybind",
				CurrentKeybind = cfg.CurrentKeybind or "NONE",
				HoldToInteract = cfg.HoldToInteract or false,
				Callback = cfg.Callback or function() end
			}

			local frame = Instance.new("Frame")
			frame.BackgroundColor3 = Colors.Secondary
			frame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			frame.Parent = page

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 8)
			corner.Parent = frame

			local hitbox = Instance.new("TextButton")
			hitbox.BackgroundTransparency = 1
			hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			hitbox.Text = ""
			hitbox.ZIndex = 2
			hitbox.Parent = frame

			local label = Instance.new("TextLabel")
			label.BackgroundTransparency = 1
			label.Position = UDim2.new(0, 12, 0, 0)
			label.Size = UDim2.new(0.5, 0, 1, 0)
			label.Font = Enum.Font.GothamMedium
			label.Text = k.Name
			label.TextColor3 = Colors.Text
			label.TextSize = 13
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.Parent = frame

			local btn = Instance.new("TextButton")
			btn.BackgroundColor3 = Colors.Background
			btn.Position= UDim2.new(0.5, 4, 0.5, -13)
			btn.Size = UDim2.new(0.5, -16, 0, 26)
			btn.AutoButtonColor = false
			btn.Font = Enum.Font.Gotham
			btn.Text = k.CurrentKeybind
			btn.TextColor3 = Colors.Highlight
			btn.TextSize = 12
			btn.Parent = frame

			local btnCorner = Instance.new("UICorner")
			btnCorner.CornerRadius = UDim.new(0, 6)
			btnCorner.Parent = btn

			local waiting = false

			hitbox.MouseButton1Click:Connect(function()
				waiting = true
				btn.Text = "..."
				Tween(btn, {BackgroundColor3 = Colors.Highlight}, 0.2)
			end)

			UserInputService.InputBegan:Connect(function(inp, processed)
				if waiting and not processed then
					local key = inp.KeyCode.Name
					if key ~= "Unknown" then
						k.CurrentKeybind = key
						btn.Text = key
						waiting = false
						Tween(btn, {BackgroundColor3 = Colors.Background}, 0.2)
					end
				end

				if not processed and inp.KeyCode.Name == k.CurrentKeybind then
					if k.HoldToInteract then
						k.Callback(true)
					else
						k.Callback()
					end
				end
			end)

			if k.HoldToInteract then
				UserInputService.InputEnded:Connect(function(inp, processed)
					if not processed and inp.KeyCode.Name == k.CurrentKeybind then
						k.Callback(false)
					end
				end)
			end

			frame.MouseEnter:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)
			frame.MouseLeave:Connect(function()
				Tween(frame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(key)
					k.CurrentKeybind = key
					btn.Text = key
				end
			}
		end

		-- Section
		function tab:CreateSection(name)
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.new(1, 0, 0, 26)
			frame.Parent = page

			local line = Instance.new("Frame")
			line.BackgroundColor3 = Colors.Highlight
			line.Position = UDim2.new(0, 0, 0.5, 0)
			line.Size = UDim2.new(1, 0, 0, 1)
			line.Parent = frame

			local label = Instance.new("TextLabel")
			label.BackgroundColor3 = Colors.Background
			label.Position = UDim2.new(0.5, 0, 0.5, -9)
			label.AnchorPoint = Vector2.new(0.5, 0.5)
			label.Size = UDim2.new(0, 0, 0, 18)
			label.Font = Enum.Font.GothamBold
			label.Text = name or "Section"
			label.TextColor3 = Colors.Highlight
			label.TextSize = 12
			label.AutomaticSize = Enum.AutomaticSize.X
			label.Parent = frame

			return frame
		end

		table.insert(window.Tabs, tab)

		if #window.Tabs == 1 then
			page.Visible = true
			Tween(btn, {BackgroundColor3 = Colors.Primary}, 0.2)
			Tween(label, {TextColor3 = Colors.Text}, 0.2)
			window.Current = tab

			if loading then
				task.delay(0.5, function()
					loading.Hide(main)
				end)
			else
				main.Visible = true
				Tween(main, {Size = UDim2.new(0, 600, 0, 400)}, 0.5)
			end
		end

		return tab
	end

	return window
end

-- Destroy
function CrimsonUI:Destroy()
	local gui = game:GetService("CoreGui"):FindFirstChild("CrimsonUI")
	if gui then gui:Destroy() end
end

-- Notify
function CrimsonUI:Notify(cfg)
	local n = {
		Title = cfg.Title or "Notification",
		Content = cfg.Content or "This is a notification",
		Duration = cfg.Duration or 5,
		Image = cfg.Image or Icons.Bell
	}

	local gui = game:GetService("CoreGui"):FindFirstChild("CrimsonUI_Notifications")
	if not gui then
		gui = Instance.new("ScreenGui")
		gui.Name = "CrimsonUI_Notifications"
		gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		gui.ResetOnSpawn = false
		gui.Parent = game:GetService("CoreGui")
	end

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = Colors.Secondary
	frame.Position = UDim2.new(1, 10, 1, -90)
	frame.Size = UDim2.new(0, 320, 0, 80)
	frame.ClipsDescendants = true
	frame.Parent = gui

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 10)
	corner.Parent = frame
	CreateGlow(frame)

	local icon = Instance.new("ImageLabel")
	icon.BackgroundTransparency = 1
	icon.Position = UDim2.new(0, 12, 0.5, -20)
	icon.Size = UDim2.new(0, 40, 0, 40)
	icon.Image = n.Image
	icon.ImageColor3 = Colors.Highlight
	icon.Parent = frame

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(0, 64, 0, 12)
	title.Size = UDim2.new(1, -76, 0, 18)
	title.Font = Enum.Font.GothamBold
	title.Text = n.Title
	title.TextColor3 = Colors.Text
	title.TextSize = 14
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Parent = frame

	local content = Instance.new("TextLabel")
	content.BackgroundTransparency = 1
	content.Position = UDim2.new(0, 64, 0, 32)
	content.Size = UDim2.new(1, -76, 0, 36)
	content.Font = Enum.Font.Gotham
	content.Text = n.Content
	content.TextColor3 = Colors.TextDark
	content.TextSize = 12
	content.TextWrapped = true
	content.TextXAlignment = Enum.TextXAlignment.Left
	content.TextYAlignment = Enum.TextYAlignment.Top
	content.Parent = frame

	Tween(frame, {Position = UDim2.new(1, -330, 1, -90)}, 0.5)

	task.wait(n.Duration)

	Tween(frame, {Position = UDim2.new(1, 10, 1, -90)}, 0.5)
	task.wait(0.5)
	frame:Destroy()

	if #gui:GetChildren() == 0 then
		gui:Destroy()
	end
end

CrimsonUI.Icons  = Icons
CrimsonUI.Themes = Themes

return CrimsonUI
