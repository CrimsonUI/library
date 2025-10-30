local CrimsonUI = {}

local Colors = {
	Background = Color3.fromRGB(30, 30, 36),
	Secondary = Color3.fromRGB(40, 40, 46),
	Accent = Color3.fromRGB(65, 20, 30),
	Primary = Color3.fromRGB(180, 25, 45),
	Highlight = Color3.fromRGB(220, 35, 55),
	Bright = Color3.fromRGB(255, 50, 70),
	Text = Color3.fromRGB(245, 245, 245),
	TextDark = Color3.fromRGB(180, 180, 180)
}

local Themes = {
	["Crimson"] = {
		Background = Color3.fromRGB(30, 30, 36),
		Secondary = Color3.fromRGB(40, 40, 46),
		Accent = Color3.fromRGB(65, 20, 30),
		Primary = Color3.fromRGB(180, 25, 45),
		Highlight = Color3.fromRGB(220, 35, 55),
		Bright = Color3.fromRGB(255, 50, 70),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 180, 180)
	},
	["Midnight"] = {
		Background = Color3.fromRGB(25, 25, 35),
		Secondary = Color3.fromRGB(35, 35, 45),
		Accent = Color3.fromRGB(20, 20, 40),
		Primary = Color3.fromRGB(30, 30, 60),
		Highlight = Color3.fromRGB(50, 50, 90),
		Bright = Color3.fromRGB(70, 70, 120),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 180, 190)
	},
	["Ocean"] = {
		Background = Color3.fromRGB(20, 30, 40),
		Secondary = Color3.fromRGB(30, 40, 50),
		Accent = Color3.fromRGB(0, 80, 150),
		Primary = Color3.fromRGB(0, 120, 215),
		Highlight = Color3.fromRGB(0, 160, 255),
		Bright = Color3.fromRGB(100, 200, 255),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 190, 200)
	},
	["Forest"] = {
		Background = Color3.fromRGB(20, 30, 20),
		Secondary = Color3.fromRGB(30, 40, 30),
		Accent = Color3.fromRGB(20, 90, 20),
		Primary = Color3.fromRGB(34, 139, 34),
		Highlight = Color3.fromRGB(50, 205, 50),
		Bright = Color3.fromRGB(100, 255, 100),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 200, 180)
	},
	["Sunset"] = {
		Background = Color3.fromRGB(35, 25, 20),
		Secondary = Color3.fromRGB(45, 35, 30),
		Accent = Color3.fromRGB(200, 70, 0),
		Primary = Color3.fromRGB(255, 94, 0),
		Highlight = Color3.fromRGB(255, 140, 0),
		Bright = Color3.fromRGB(255, 180, 50),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 180, 160)
	},
	["Violet"] = {
		Background = Color3.fromRGB(30, 20, 40),
		Secondary = Color3.fromRGB(40, 30, 50),
		Accent = Color3.fromRGB(90, 20, 150),
		Primary = Color3.fromRGB(138, 43, 226),
		Highlight = Color3.fromRGB(186, 85, 211),
		Bright = Color3.fromRGB(220, 120, 255),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 180, 210)
	},
	["Rose"] = {
		Background = Color3.fromRGB(35, 20, 25),
		Secondary = Color3.fromRGB(45, 30, 35),
		Accent = Color3.fromRGB(150, 10, 40),
		Primary = Color3.fromRGB(220, 20, 60),
		Highlight = Color3.fromRGB(255, 20, 147),
		Bright = Color3.fromRGB(255, 100, 180),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 180, 190)
	},
	["Azure"] = {
		Background = Color3.fromRGB(20, 30, 40),
		Secondary = Color3.fromRGB(30, 40, 50),
		Accent = Color3.fromRGB(0, 130, 200),
		Primary = Color3.fromRGB(0, 191, 255),
		Highlight = Color3.fromRGB(135, 206, 250),
		Bright = Color3.fromRGB(180, 230, 255),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 200, 220)
	},
	["Amber"] = {
		Background = Color3.fromRGB(35, 30, 20),
		Secondary = Color3.fromRGB(45, 40, 30),
		Accent = Color3.fromRGB(200, 150, 0),
		Primary = Color3.fromRGB(255, 191, 0),
		Highlight = Color3.fromRGB(255, 215, 0),
		Bright = Color3.fromRGB(255, 235, 100),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 190, 160)
	},
	["Emerald"] = {
		Background = Color3.fromRGB(15, 30, 15),
		Secondary = Color3.fromRGB(25, 40, 25),
		Accent = Color3.fromRGB(0, 90, 0),
		Primary = Color3.fromRGB(0, 128, 0),
		Highlight = Color3.fromRGB(50, 205, 50),
		Bright = Color3.fromRGB(100, 255, 100),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 210, 180)
	},
	["Slate"] = {
		Background = Color3.fromRGB(30, 30, 35),
		Secondary = Color3.fromRGB(40, 40, 45),
		Accent = Color3.fromRGB(50, 50, 60),
		Primary = Color3.fromRGB(70, 70, 80),
		Highlight = Color3.fromRGB(100, 100, 120),
		Bright = Color3.fromRGB(130, 130, 150),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 180, 190)
	},
	["Coral"] = {
		Background = Color3.fromRGB(35, 25, 25),
		Secondary = Color3.fromRGB(45, 35, 35),
		Accent = Color3.fromRGB(200, 60, 60),
		Primary = Color3.fromRGB(255, 90, 90),
		Highlight = Color3.fromRGB(255, 130, 130),
		Bright = Color3.fromRGB(255, 170, 170),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 180, 180)
	},
	["Indigo"] = {
		Background = Color3.fromRGB(20, 15, 30),
		Secondary = Color3.fromRGB(30, 25, 40),
		Accent = Color3.fromRGB(50, 0, 90),
		Primary = Color3.fromRGB(75, 0, 130),
		Highlight = Color3.fromRGB(100, 0, 200),
		Bright = Color3.fromRGB(150, 50, 255),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(190, 180, 210)
	},
	["Teal"] = {
		Background = Color3.fromRGB(15, 30, 30),
		Secondary = Color3.fromRGB(25, 40, 40),
		Accent = Color3.fromRGB(0, 90, 90),
		Primary = Color3.fromRGB(0, 128, 128),
		Highlight = Color3.fromRGB(0, 200, 200),
		Bright = Color3.fromRGB(100, 255, 255),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(180, 210, 210)
	},
	["Plum"] = {
		Background = Color3.fromRGB(30, 15, 30),
		Secondary = Color3.fromRGB(40, 25, 40),
		Accent = Color3.fromRGB(90, 0, 90),
		Primary = Color3.fromRGB(139, 0, 139),
		Highlight = Color3.fromRGB(199, 21, 133),
		Bright = Color3.fromRGB(255, 100, 200),
		Text = Color3.fromRGB(245, 245, 245),
		TextDark = Color3.fromRGB(200, 180, 200)
	}
}

local Icons = {
	Minimize = "−",
	DownArrow = "▼"
}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

local function Tween(object, properties, duration)
	local tweenInfo = TweenInfo.new(duration or 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(object, tweenInfo, properties)
	tween:Play()
	return tween
end

local function CreateGlow(parent)
	local glow = Instance.new("ImageLabel")
	glow.Name = "Glow"
	glow.BackgroundTransparency = 1
	glow.Image = "rbxassetid://5028857084"
	glow.ImageColor3 = Colors.Highlight
	glow.ImageTransparency = 0.75
	glow.ScaleType = Enum.ScaleType.Slice
	glow.SliceCenter = Rect.new(24, 24, 276, 276)
	glow.Size = UDim2.new(1, 24, 1, 24)
	glow.Position = UDim2.new(0, -12, 0, -12)
	glow.ZIndex = 0
	glow.Parent = parent
	return glow
end

local function CreateLoadingScreen(parent, config)
	local LoadingFrame = Instance.new("Frame")
	LoadingFrame.Name = "LoadingScreen"
	LoadingFrame.BackgroundColor3 = Colors.Background
	LoadingFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
	LoadingFrame.Size = UDim2.new(0, 300, 0, 200)
	LoadingFrame.ZIndex = 100
	LoadingFrame.Parent = parent

	local LoadingCorner = Instance.new("UICorner")
	LoadingCorner.CornerRadius = UDim.new(0, 12)
	LoadingCorner.Parent = LoadingFrame

	CreateGlow(LoadingFrame)

	local Title = Instance.new("TextLabel")
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0.5, 0, 0, 40)
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.Size = UDim2.new(0.9, 0, 0, 40)
	Title.Font = Enum.Font.GothamBold
	Title.Text = config.LoadingTitle or "Crimson UI"
	Title.TextColor3 = Colors.Text
	Title.TextSize = 24
	Title.Parent = LoadingFrame

	local Subtitle = Instance.new("TextLabel")
	Subtitle.BackgroundTransparency = 1
	Subtitle.Position = UDim2.new(0.5, 0, 0, 80)
	Subtitle.AnchorPoint = Vector2.new(0.5, 0)
	Subtitle.Size = UDim2.new(0.9, 0, 0, 20)
	Subtitle.Font = Enum.Font.Gotham
	Subtitle.Text = config.LoadingSubtitle or "by Crimson"
	Subtitle.TextColor3 = Colors.TextDark
	Subtitle.TextSize = 14
	Subtitle.Parent = LoadingFrame

	local Spinner = Instance.new("TextLabel")
	Spinner.BackgroundTransparency = 1
	Spinner.Position = UDim2.new(0.5, 0, 0, 130)
	Spinner.AnchorPoint = Vector2.new(0.5, 0)
	Spinner.Size = UDim2.new(0, 40, 0, 40)
	Spinner.Font = Enum.Font.GothamBold
	Spinner.Text = "|"
	Spinner.TextColor3 = Colors.Highlight
	Spinner.TextSize = 32
	Spinner.Parent = LoadingFrame

	local spinTween = TweenService:Create(Spinner, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {Rotation = 360})
	spinTween:Play()

	return {
		LoadingFrame = LoadingFrame,
		Hide = function(mainFrame)
			Tween(LoadingFrame, {
				Position = UDim2.new(0.5, -300, 0.5, -200),
				Size = UDim2.new(0, 600, 0, 400)
			}, 0.5)
			Tween(Title, {TextTransparency = 1}, 0.3)
			Tween(Subtitle, {TextTransparency = 1}, 0.3)
			Tween(Spinner, {TextTransparency = 1}, 0.3)
			
			task.delay(0.8, function()
				mainFrame.Visible = true
				mainFrame.Size = UDim2.new(0, 600, 0, 400)
			end)
			
			task.delay(1, function()
				LoadingFrame:Destroy()
			end)
		end
	}
end

local UIElements = {}

function CrimsonUI:SetTheme(name)
	if not Themes[name] then return end
	
	for key, value in pairs(Themes[name]) do
		Colors[key] = value
	end
	
	for _, element in ipairs(UIElements) do
		if element.Type == "Background" then
			Tween(element.Object, {BackgroundColor3 = Colors.Background}, 0.3)
		elseif element.Type == "Secondary" then
			Tween(element.Object, {BackgroundColor3 = Colors.Secondary}, 0.3)
		elseif element.Type == "TopBar" then
			Tween(element.Object, {BackgroundColor3 = Colors.Accent}, 0.3)
		elseif element.Type == "TopBarFix" then
			Tween(element.Object, {BackgroundColor3 = Colors.Accent}, 0.3)
		elseif element.Type == "Glow" then
			Tween(element.Object, {ImageColor3 = Colors.Highlight}, 0.3)
		elseif element.Type == "ActiveTab" then
			Tween(element.Object, {BackgroundColor3 = Colors.Primary}, 0.3)
		elseif element.Type == "ActiveTabLabel" then
			Tween(element.Object, {TextColor3 = Colors.Text}, 0.3)
		elseif element.Type == "HighlightText" then
			Tween(element.Object, {TextColor3 = Colors.Highlight}, 0.3)
		elseif element.Type == "HighlightBackground" then
			Tween(element.Object, {BackgroundColor3 = Colors.Highlight}, 0.3)
		elseif element.Type == "ScrollBar" then
			element.Object.ScrollBarImageColor3 = Colors.Highlight
		elseif element.Type == "SectionLine" then
			Tween(element.Object, {BackgroundColor3 = Colors.Highlight}, 0.3)
		end
	end
end

function CrimsonUI:CreateWindow(config)
	UIElements = {}
	
	local windowConfig = {
		Name = config.Name or "Crimson UI",
		LoadingEnabled = config.LoadingEnabled ~= false,
		LoadingTitle = config.LoadingTitle or "Crimson UI",
		LoadingSubtitle = config.LoadingSubtitle or "by Crimson"
	}

	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "CrimsonUI"
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false
	ScreenGui.Parent = game:GetService("CoreGui")

	local MainFrame = Instance.new("Frame")
	MainFrame.Name = "MainFrame"
	MainFrame.BackgroundColor3 = Colors.Background
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
	MainFrame.Size = UDim2.new(0, 0, 0, 0)
	MainFrame.ClipsDescendants = true
	MainFrame.Visible = false
	MainFrame.Parent = ScreenGui
	table.insert(UIElements, {Type = "Background", Object = MainFrame})

	local MainCorner = Instance.new("UICorner")
	MainCorner.CornerRadius = UDim.new(0, 12)
	MainCorner.Parent = MainFrame

	local mainGlow = CreateGlow(MainFrame)
	table.insert(UIElements, {Type = "Glow", Object = mainGlow})

	local loadingScreen
	if windowConfig.LoadingEnabled then
		loadingScreen = CreateLoadingScreen(ScreenGui, windowConfig)
	end

	local TopBar = Instance.new("Frame")
	TopBar.Name = "TopBar"
	TopBar.BackgroundColor3 = Colors.Accent
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(1, 0, 0, 45)
	TopBar.Parent = MainFrame
	table.insert(UIElements, {Type = "TopBar", Object = TopBar})

	local TopBarCorner = Instance.new("UICorner")
	TopBarCorner.CornerRadius = UDim.new(0, 12)
	TopBarCorner.Parent = TopBar

	local TopBarFix = Instance.new("Frame")
	TopBarFix.BackgroundColor3 = Colors.Accent
	TopBarFix.BorderSizePixel = 0
	TopBarFix.Position = UDim2.new(0, 0, 1, -12)
	TopBarFix.Size = UDim2.new(1, 0, 0, 12)
	TopBarFix.Parent = TopBar
	table.insert(UIElements, {Type = "TopBarFix", Object = TopBarFix})

	local Title = Instance.new("TextLabel")
	Title.Name = "Title"
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0, 20, 0, 0)
	Title.Size = UDim2.new(0.5, 0, 1, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = windowConfig.Name
	Title.TextColor3 = Colors.Text
	Title.TextSize = 16
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.Parent = TopBar

	local MinimizeButton = Instance.new("TextButton")
	MinimizeButton.Name = "MinimizeButton"
	MinimizeButton.BackgroundTransparency = 1
	MinimizeButton.Position = UDim2.new(1, -50, 0.5, -14)
	MinimizeButton.Size = UDim2.new(0, 28, 0, 28)
	MinimizeButton.Font = Enum.Font.GothamBold
	MinimizeButton.Text = Icons.Minimize
	MinimizeButton.TextColor3 = Colors.TextDark
	MinimizeButton.TextSize = 20
	MinimizeButton.ZIndex = 10
	MinimizeButton.Parent = TopBar

	local TabContainer = Instance.new("Frame")
	TabContainer.Name = "TabContainer"
	TabContainer.BackgroundColor3 = Colors.Secondary
	TabContainer.BorderSizePixel = 0
	TabContainer.Position = UDim2.new(0, 0, 0, 45)
	TabContainer.Size = UDim2.new(1, 0, 0, 45)
	TabContainer.Parent = MainFrame
	table.insert(UIElements, {Type = "Secondary", Object = TabContainer})

	local TabList = Instance.new("ScrollingFrame")
	TabList.Name = "TabList"
	TabList.BackgroundTransparency = 1
	TabList.BorderSizePixel = 0
	TabList.Position = UDim2.new(0, 10, 0, 0)
	TabList.Size = UDim2.new(1, -20, 1, 0)
	TabList.ScrollBarThickness = 0
	TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabList.ScrollingDirection = Enum.ScrollingDirection.X
	TabList.Parent = TabContainer

	local TabListLayout = Instance.new("UIListLayout")
	TabListLayout.FillDirection = Enum.FillDirection.Horizontal
	TabListLayout.Padding = UDim.new(0, 8)
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabListLayout.Parent = TabList

	local ContentContainer = Instance.new("Frame")
	ContentContainer.Name = "ContentContainer"
	ContentContainer.BackgroundTransparency = 1
	ContentContainer.Position = UDim2.new(0, 0, 0, 90)
	ContentContainer.Size = UDim2.new(1, 0, 1, -90)
	ContentContainer.Parent = MainFrame

	local dragging = false
	local dragInput, dragStart, startPos

	local function update(input)
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or (isMobile and input.UserInputType == Enum.UserInputType.Touch) then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	TopBar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or (isMobile and input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	local minimized = false
	MinimizeButton.MouseButton1Click:Connect(function()
		minimized = not minimized
		if minimized then
			Tween(MainFrame, {Size = UDim2.new(0, 600, 0, 45)}, 0.3)
			Tween(MinimizeButton, {Rotation = 180}, 0.3)
		else
			Tween(MainFrame, {Size = UDim2.new(0, 600, 0, 400)}, 0.3)
			Tween(MinimizeButton, {Rotation = 0}, 0.3)
		end
	end)

	MinimizeButton.MouseEnter:Connect(function()
		Tween(MinimizeButton, {TextColor3 = Colors.Highlight}, 0.2)
	end)

	MinimizeButton.MouseLeave:Connect(function()
		Tween(MinimizeButton, {TextColor3 = Colors.TextDark}, 0.2)
	end)

	TabListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		TabList.CanvasSize = UDim2.new(0, TabListLayout.AbsoluteContentSize.X + 20, 0, 0)
	end)

	local Window = {
		Tabs = {},
		CurrentTab = nil
	}

	function Window:CreateTab(config)
		local tabConfig = {
			Name = config.Name or "Tab"
		}

		local TabButton = Instance.new("TextButton")
		TabButton.Name = tabConfig.Name
		TabButton.BackgroundColor3 = Colors.Background
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(0, 100, 0, 35)
		TabButton.AutoButtonColor = false
		TabButton.Font = Enum.Font.GothamMedium
		TabButton.Text = tabConfig.Name
		TabButton.TextColor3 = Colors.TextDark
		TabButton.TextSize = 13
		TabButton.Parent = TabList

		if isMobile then
			TabButton.Size = UDim2.new(0, 120, 0, 50)
		end

		local TabCorner = Instance.new("UICorner")
		TabCorner.CornerRadius = UDim.new(0, 8)
		TabCorner.Parent = TabButton

		local TabContent = Instance.new("ScrollingFrame")
		TabContent.Name = tabConfig.Name .. "Content"
		TabContent.BackgroundTransparency = 1
		TabContent.BorderSizePixel = 0
		TabContent.Size = UDim2.new(1, 0, 1, 0)
		TabContent.ScrollBarThickness = 4
		TabContent.ScrollBarImageColor3 = Colors.Highlight
		TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
		TabContent.Visible = false
		TabContent.Parent = ContentContainer
		table.insert(UIElements, {Type = "ScrollBar", Object = TabContent})

		local ContentLayout = Instance.new("UIListLayout")
		ContentLayout.Padding = UDim.new(0, 8)
		ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
		ContentLayout.Parent = TabContent

		local ContentPadding = Instance.new("UIPadding")
		ContentPadding.PaddingTop = UDim.new(0, 12)
		ContentPadding.PaddingBottom = UDim.new(0, 12)
		ContentPadding.PaddingLeft = UDim.new(0, 16)
		ContentPadding.PaddingRight = UDim.new(0, 16)
		ContentPadding.Parent = TabContent

		ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			TabContent.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 24)
		end)

		local Tab = {
			Button = TabButton,
			Content = TabContent,
			Elements = {}
		}

		TabButton.MouseButton1Click:Connect(function()
			for _, tab in pairs(Window.Tabs) do
				tab.Content.Visible = false
				Tween(tab.Button, {BackgroundColor3 = Colors.Background}, 0.2)
				Tween(tab.Button, {TextColor3 = Colors.TextDark}, 0.2)
				
				for i = #UIElements, 1, -1 do
					if UIElements[i].Object == tab.Button then
						table.remove(UIElements, i)
					end
				end
			end

			TabContent.Visible = true
			Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
			Tween(TabButton, {TextColor3 = Colors.Text}, 0.2)
			
			table.insert(UIElements, {Type = "ActiveTab", Object = TabButton})
			table.insert(UIElements, {Type = "ActiveTabLabel", Object = TabButton})
			
			Window.CurrentTab = Tab
		end)

		TabButton.MouseEnter:Connect(function()
			if Window.CurrentTab ~= Tab then
				Tween(TabButton, {BackgroundColor3 = Colors.Accent}, 0.2)
			end
		end)

		TabButton.MouseLeave:Connect(function()
			if Window.CurrentTab ~= Tab then
				Tween(TabButton, {BackgroundColor3 = Colors.Background}, 0.2)
			end
		end)

		function Tab:CreateButton(config)
			local buttonConfig = {
				Name = config.Name or "Button",
				Callback = config.Callback or function() end
			}

			local ButtonFrame = Instance.new("Frame")
			ButtonFrame.BackgroundColor3 = Colors.Secondary
			ButtonFrame.BorderSizePixel = 0
			ButtonFrame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			ButtonFrame.Parent = TabContent

			local ButtonCorner = Instance.new("UICorner")
			ButtonCorner.CornerRadius = UDim.new(0, 8)
			ButtonCorner.Parent = ButtonFrame

			local Hitbox = Instance.new("TextButton")
			Hitbox.BackgroundTransparency = 1
			Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			Hitbox.Text = ""
			Hitbox.ZIndex = 2
			Hitbox.Parent = ButtonFrame

			local Button = Instance.new("TextButton")
			Button.BackgroundTransparency = 1
			Button.Size = UDim2.new(1, 0, 1, 0)
			Button.Font = Enum.Font.GothamMedium
			Button.Text = buttonConfig.Name
			Button.TextColor3 = Colors.Text
			Button.TextSize = 13
			Button.Parent = ButtonFrame

			Hitbox.MouseButton1Click:Connect(function()
				Tween(ButtonFrame, {BackgroundColor3 = Colors.Highlight}, 0.1)
				task.delay(0.1, function()
					Tween(ButtonFrame, {BackgroundColor3 = Colors.Secondary}, 0.1)
				end)
				buttonConfig.Callback()
			end)

			ButtonFrame.MouseEnter:Connect(function()
				Tween(ButtonFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			ButtonFrame.MouseLeave:Connect(function()
				Tween(ButtonFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return Button
		end

		function Tab:CreateToggle(config)
			local toggleConfig = {
				Name = config.Name or "Toggle",
				CurrentValue = config.CurrentValue or false,
				Callback = config.Callback or function() end
			}

			local ToggleFrame = Instance.new("Frame")
			ToggleFrame.BackgroundColor3 = Colors.Secondary
			ToggleFrame.BorderSizePixel = 0
			ToggleFrame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			ToggleFrame.Parent = TabContent

			local ToggleCorner = Instance.new("UICorner")
			ToggleCorner.CornerRadius = UDim.new(0, 8)
			ToggleCorner.Parent = ToggleFrame

			local Hitbox = Instance.new("TextButton")
			Hitbox.BackgroundTransparency = 1
			Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			Hitbox.Text = ""
			Hitbox.ZIndex = 2
			Hitbox.Parent = ToggleFrame

			local ToggleLabel = Instance.new("TextLabel")
			ToggleLabel.BackgroundTransparency = 1
			ToggleLabel.Position = UDim2.new(0, 12, 0, 0)
			ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
			ToggleLabel.Font = Enum.Font.GothamMedium
			ToggleLabel.Text = toggleConfig.Name
			ToggleLabel.TextColor3 = Colors.Text
			ToggleLabel.TextSize = 13
			ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
			ToggleLabel.Parent = ToggleFrame

			local ToggleButton = Instance.new("TextButton")
			ToggleButton.BackgroundColor3 = toggleConfig.CurrentValue and Colors.Highlight or Colors.Background
			ToggleButton.BorderSizePixel = 0
			ToggleButton.Position = UDim2.new(1, -52, 0.5, -11)
			ToggleButton.Size = UDim2.new(0, 42, 0, 22)
			ToggleButton.AutoButtonColor = false
			ToggleButton.Text = ""
			ToggleButton.Parent = ToggleFrame
			
			if toggleConfig.CurrentValue then
				table.insert(UIElements, {Type = "HighlightBackground", Object = ToggleButton})
			end

			local ToggleButtonCorner = Instance.new("UICorner")
			ToggleButtonCorner.CornerRadius = UDim.new(1, 0)
			ToggleButtonCorner.Parent = ToggleButton

			local ToggleCircle = Instance.new("Frame")
			ToggleCircle.BackgroundColor3 = Colors.Text
			ToggleCircle.BorderSizePixel = 0
			ToggleCircle.Position = toggleConfig.CurrentValue and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
			ToggleCircle.Size = UDim2.new(0, 18, 0, 18)
			ToggleCircle.Parent = ToggleButton

			local CircleCorner = Instance.new("UICorner")
			CircleCorner.CornerRadius = UDim.new(1, 0)
			CircleCorner.Parent = ToggleCircle

			Hitbox.MouseButton1Click:Connect(function()
				toggleConfig.CurrentValue = not toggleConfig.CurrentValue
				
				for i = #UIElements, 1, -1 do
					if UIElements[i].Object == ToggleButton then
						table.remove(UIElements, i)
					end
				end
				
				if toggleConfig.CurrentValue then
					Tween(ToggleButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
					Tween(ToggleCircle, {Position = UDim2.new(1, -20, 0.5, -9)}, 0.2)
					table.insert(UIElements, {Type = "HighlightBackground", Object = ToggleButton})
				else
					Tween(ToggleButton, {BackgroundColor3 = Colors.Background}, 0.2)
					Tween(ToggleCircle, {Position = UDim2.new(0, 2, 0.5, -9)}, 0.2)
				end
				toggleConfig.Callback(toggleConfig.CurrentValue)
			end)

			ToggleFrame.MouseEnter:Connect(function()
				Tween(ToggleFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			ToggleFrame.MouseLeave:Connect(function()
				Tween(ToggleFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(value)
					toggleConfig.CurrentValue = value
					
					for i = #UIElements, 1, -1 do
						if UIElements[i].Object == ToggleButton then
							table.remove(UIElements, i)
						end
					end
					
					if value then
						Tween(ToggleButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
						Tween(ToggleCircle, {Position = UDim2.new(1, -20, 0.5, -9)}, 0.2)
						table.insert(UIElements, {Type = "HighlightBackground", Object = ToggleButton})
					else
						Tween(ToggleButton, {BackgroundColor3 = Colors.Background}, 0.2)
						Tween(ToggleCircle, {Position = UDim2.new(0, 2, 0.5, -9)}, 0.2)
					end
				end
			}
		end

		function Tab:CreateSlider(config)
			local sliderConfig = {
				Name = config.Name or "Slider",
				Range = config.Range or {0, 100},
				Increment = config.Increment or 1,
				CurrentValue = config.CurrentValue or 50,
				Callback = config.Callback or function() end
			}

			local SliderFrame = Instance.new("Frame")
			SliderFrame.BackgroundColor3 = Colors.Secondary
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Size = UDim2.new(1, 0, 0, isMobile and 70 or 54)
			SliderFrame.Parent = TabContent

			local SliderCorner = Instance.new("UICorner")
			SliderCorner.CornerRadius = UDim.new(0, 8)
			SliderCorner.Parent = SliderFrame

			local Hitbox = Instance.new("TextButton")
			Hitbox.BackgroundTransparency = 1
			Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			Hitbox.Text = ""
			Hitbox.ZIndex = 2
			Hitbox.Parent = SliderFrame

			local SliderLabel = Instance.new("TextLabel")
			SliderLabel.BackgroundTransparency = 1
			SliderLabel.Position = UDim2.new(0, 12, 0, 8)
			SliderLabel.Size = UDim2.new(0.7, 0, 0, 16)
			SliderLabel.Font = Enum.Font.GothamMedium
			SliderLabel.Text = sliderConfig.Name
			SliderLabel.TextColor3 = Colors.Text
			SliderLabel.TextSize = 13
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
			SliderLabel.Parent = SliderFrame

			local SliderValue = Instance.new("TextLabel")
			SliderValue.BackgroundTransparency = 1
			SliderValue.Position = UDim2.new(0.7, 0, 0, 8)
			SliderValue.Size = UDim2.new(0.3, -12, 0, 16)
			SliderValue.Font = Enum.Font.GothamBold
			SliderValue.Text = tostring(sliderConfig.CurrentValue)
			SliderValue.TextColor3 = Colors.Highlight
			SliderValue.TextSize = 13
			SliderValue.TextXAlignment = Enum.TextXAlignment.Right
			SliderValue.Parent = SliderFrame
			table.insert(UIElements, {Type = "HighlightText", Object = SliderValue})

			local SliderBackground = Instance.new("Frame")
			SliderBackground.BackgroundColor3 = Colors.Background
			SliderBackground.BorderSizePixel = 0
			SliderBackground.Position = UDim2.new(0, 12, 0, isMobile and 40 or 32)
			SliderBackground.Size = UDim2.new(1, -24, 0, 6)
			SliderBackground.Parent = SliderFrame

			local SliderBgCorner = Instance.new("UICorner")
			SliderBgCorner.CornerRadius = UDim.new(1, 0)
			SliderBgCorner.Parent = SliderBackground

			local SliderFill = Instance.new("Frame")
			SliderFill.BackgroundColor3 = Colors.Highlight
			SliderFill.BorderSizePixel = 0
			SliderFill.Size = UDim2.new((sliderConfig.CurrentValue - sliderConfig.Range[1]) / (sliderConfig.Range[2] - sliderConfig.Range[1]), 0, 1, 0)
			SliderFill.Parent = SliderBackground
			table.insert(UIElements, {Type = "HighlightBackground", Object = SliderFill})

			local SliderFillCorner = Instance.new("UICorner")
			SliderFillCorner.CornerRadius = UDim.new(1, 0)
			SliderFillCorner.Parent = SliderFill

			local dragging = false

			local function updateSlider(input)
				local pos = math.clamp((input.Position.X - SliderBackground.AbsolutePosition.X) / SliderBackground.AbsoluteSize.X, 0, 1)
				local value = math.floor(((pos * (sliderConfig.Range[2] - sliderConfig.Range[1]) + sliderConfig.Range[1]) / sliderConfig.Increment + 0.5)) * sliderConfig.Increment
				value = math.clamp(value, sliderConfig.Range[1], sliderConfig.Range[2])
				sliderConfig.CurrentValue = value
				SliderValue.Text = tostring(value)
				Tween(SliderFill, {Size = UDim2.new(pos, 0, 1, 0)}, 0.1)
				sliderConfig.Callback(value)
			end

			Hitbox.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or (isMobile and input.UserInputType == Enum.UserInputType.Touch) then
					dragging = true
					updateSlider(input)
				end
			end)

			Hitbox.InputChanged:Connect(function(input)
				if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or (isMobile and input.UserInputType == Enum.UserInputType.Touch)) then
					updateSlider(input)
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or (isMobile and input.UserInputType == Enum.UserInputType.Touch) then
					dragging = false
				end
			end)

			SliderFrame.MouseEnter:Connect(function()
				Tween(SliderFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			SliderFrame.MouseLeave:Connect(function()
				Tween(SliderFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(value)
					value = math.clamp(value, sliderConfig.Range[1], sliderConfig.Range[2])
					sliderConfig.CurrentValue = value
					SliderValue.Text = tostring(value)
					local pos = (value - sliderConfig.Range[1]) / (sliderConfig.Range[2] - sliderConfig.Range[1])
					Tween(SliderFill, {Size = UDim2.new(pos, 0, 1, 0)}, 0.2)
				end
			}
		end

		function Tab:CreateInput(config)
			local inputConfig = {
				Name = config.Name or "Input",
				PlaceholderText = config.PlaceholderText or "Enter text...",
				RemoveTextAfterFocusLost = config.RemoveTextAfterFocusLost or false,
				Callback = config.Callback or function() end
			}

			local InputFrame = Instance.new("Frame")
			InputFrame.BackgroundColor3 = Colors.Secondary
			InputFrame.BorderSizePixel = 0
			InputFrame.Size = UDim2.new(1, 0, 0, isMobile and 80 or 64)
			InputFrame.Parent = TabContent

			local InputCorner = Instance.new("UICorner")
			InputCorner.CornerRadius = UDim.new(0, 8)
			InputCorner.Parent = InputFrame

			local InputLabel = Instance.new("TextLabel")
			InputLabel.BackgroundTransparency = 1
			InputLabel.Position = UDim2.new(0, 12, 0, 8)
			InputLabel.Size = UDim2.new(1, -24, 0, 16)
			InputLabel.Font = Enum.Font.GothamMedium
			InputLabel.Text = inputConfig.Name
			InputLabel.TextColor3 = Colors.Text
			InputLabel.TextSize = 13
			InputLabel.TextXAlignment = Enum.TextXAlignment.Left
			InputLabel.Parent = InputFrame

			local InputBox = Instance.new("TextBox")
			InputBox.BackgroundColor3 = Colors.Background
			InputBox.BorderSizePixel = 0
			InputBox.Position = UDim2.new(0, 12, 0, isMobile and 40 or 32)
			InputBox.Size = UDim2.new(1, -24, 0, isMobile and 32 or 26)
			InputBox.Font = Enum.Font.Gotham
			InputBox.PlaceholderText = inputConfig.PlaceholderText
			InputBox.PlaceholderColor3 = Colors.TextDark
			InputBox.Text = ""
			InputBox.TextColor3 = Colors.Text
			InputBox.TextSize = 13
			InputBox.TextXAlignment = Enum.TextXAlignment.Left
			InputBox.ClearTextOnFocus = false
			InputBox.Parent = InputFrame

			local InputBoxCorner = Instance.new("UICorner")
			InputBoxCorner.CornerRadius = UDim.new(0, 6)
			InputBoxCorner.Parent = InputBox

			local InputBoxPadding = Instance.new("UIPadding")
			InputBoxPadding.PaddingLeft = UDim.new(0, 8)
			InputBoxPadding.PaddingRight = UDim.new(0, 8)
			InputBoxPadding.Parent = InputBox

			InputBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					inputConfig.Callback(InputBox.Text)
					if inputConfig.RemoveTextAfterFocusLost then
						InputBox.Text = ""
					end
				end
				Tween(InputBox, {BackgroundColor3 = Colors.Background}, 0.2)
			end)

			InputBox.Focused:Connect(function()
				Tween(InputBox, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			InputFrame.MouseEnter:Connect(function()
				Tween(InputFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			InputFrame.MouseLeave:Connect(function()
				Tween(InputFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return InputBox
		end

		function Tab:CreateDropdown(config)
			local dropdownConfig = {
				Name = config.Name or "Dropdown",
				Options = config.Options or {"Option 1", "Option 2", "Option 3"},
				CurrentOption = config.CurrentOption or config.Options[1],
				Callback = config.Callback or function() end
			}

			local DropdownFrame = Instance.new("Frame")
			DropdownFrame.BackgroundColor3 = Colors.Secondary
			DropdownFrame.BorderSizePixel = 0
			DropdownFrame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			DropdownFrame.Parent = TabContent

			local DropdownCorner = Instance.new("UICorner")
			DropdownCorner.CornerRadius = UDim.new(0, 8)
			DropdownCorner.Parent = DropdownFrame

			local DropdownLabel = Instance.new("TextLabel")
			DropdownLabel.BackgroundTransparency = 1
			DropdownLabel.Position = UDim2.new(0, 12, 0, 0)
			DropdownLabel.Size = UDim2.new(0.5, 0, 1, 0)
			DropdownLabel.Font = Enum.Font.GothamMedium
			DropdownLabel.Text = dropdownConfig.Name
			DropdownLabel.TextColor3 = Colors.Text
			DropdownLabel.TextSize = 13
			DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
			DropdownLabel.Parent = DropdownFrame

			local DropdownButton = Instance.new("TextButton")
			DropdownButton.BackgroundColor3 = Colors.Accent
			DropdownButton.BorderSizePixel = 0
			DropdownButton.Position = UDim2.new(0.5, 4, 0.5, -13)
			DropdownButton.Size = UDim2.new(0.5, -16, 0, 26)
			DropdownButton.AutoButtonColor = false
			DropdownButton.Font = Enum.Font.Gotham
			DropdownButton.Text = dropdownConfig.CurrentOption
			DropdownButton.TextColor3 = Colors.Text
			DropdownButton.TextSize = 12
			DropdownButton.TextTruncate = Enum.TextTruncate.AtEnd
			DropdownButton.Parent = DropdownFrame

			local DropdownButtonCorner = Instance.new("UICorner")
			DropdownButtonCorner.CornerRadius = UDim.new(0, 6)
			DropdownButtonCorner.Parent = DropdownButton

			
			local DropdownListContainer = Instance.new("Frame")
			DropdownListContainer.Name = "DropdownList"
			DropdownListContainer.BackgroundTransparency = 1
			DropdownListContainer.Position = UDim2.new(1, 8, 0, 0)
			DropdownListContainer.Size = UDim2.new(0, 250, 0, 0)
			DropdownListContainer.Visible = false
			DropdownListContainer.ZIndex = 255
			DropdownListContainer.Parent = DropdownFrame

			local DropdownList = Instance.new("ScrollingFrame")
			DropdownList.BackgroundColor3 = Colors.Secondary
			DropdownList.BorderSizePixel = 0
			DropdownList.Size = UDim2.new(1, 0, 1, 0)
			DropdownList.ScrollBarThickness = 4
			DropdownList.ScrollBarImageColor3 = Colors.Highlight
			DropdownList.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropdownList.ZIndex = 251
			DropdownList.Parent = DropdownListContainer

			local DropdownListCorner = Instance.new("UICorner")
			DropdownListCorner.CornerRadius = UDim.new(0, 8)
			DropdownListCorner.Parent = DropdownList

			local ListGlow = CreateGlow(DropdownList)
			ListGlow.ZIndex = 250
			
			local ListLayout = Instance.new("UIListLayout")
			ListLayout.Padding = UDim.new(0, 4)
			ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ListLayout.Parent = DropdownList

			local ListPadding = Instance.new("UIPadding")
			ListPadding.PaddingTop = UDim.new(0, 8)
			ListPadding.PaddingBottom = UDim.new(0, 8)
			ListPadding.PaddingLeft = UDim.new(0, 8)
			ListPadding.PaddingRight = UDim.new(0, 8)
			ListPadding.Parent = DropdownList

			local isOpen = false

			local function updateListSize()
				local contentHeight = ListLayout.AbsoluteContentSize.Y + 16
				local maxHeight = 200
				local finalHeight = math.min(contentHeight, maxHeight)
				
				DropdownListContainer.Size = UDim2.new(0, 250, 0, finalHeight)
				DropdownList.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
			end

			for _, option in ipairs(dropdownConfig.Options) do
				local OptionButton = Instance.new("TextButton")
				OptionButton.BackgroundColor3 = Colors.Background
				OptionButton.BorderSizePixel = 0
				OptionButton.Size = UDim2.new(1, 0, 0, 32)
				OptionButton.AutoButtonColor = false
				OptionButton.Font = Enum.Font.Gotham
				OptionButton.Text = option
				OptionButton.TextColor3 = Colors.Text
				OptionButton.TextSize = 13
				OptionButton.ZIndex = 252
				OptionButton.Parent = DropdownList

				local OptionCorner = Instance.new("UICorner")
				OptionCorner.CornerRadius = UDim.new(0, 6)
				OptionCorner.Parent = OptionButton

				OptionButton.MouseButton1Click:Connect(function()
					dropdownConfig.CurrentOption = option
					DropdownButton.Text = option
					dropdownConfig.Callback(option)
					
					isOpen = false
					DropdownListContainer.Visible = false
					
					
					if dropdownConnection then
						dropdownConnection:Disconnect()
						dropdownConnection = nil
					end
				end)

				OptionButton.MouseEnter:Connect(function()
					Tween(OptionButton, {BackgroundColor3 = Colors.Accent}, 0.2)
				end)

				OptionButton.MouseLeave:Connect(function()
					Tween(OptionButton, {BackgroundColor3 = Colors.Background}, 0.2)
				end)
			end

			ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateListSize)
			task.spawn(updateListSize)

			local dropdownConnection
			
			DropdownButton.MouseButton1Click:Connect(function()
				isOpen = not isOpen
				DropdownListContainer.Visible = isOpen
				
				if isOpen then
					updateListSize()
					
				
					if dropdownConnection then
						dropdownConnection:Disconnect()
					end
					
					task.wait(0.1) 
					
					dropdownConnection = UserInputService.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							local mousePos = input.Position
							local listPos = DropdownListContainer.AbsolutePosition
							local listSize = DropdownListContainer.AbsoluteSize
							local buttonPos = DropdownButton.AbsolutePosition
							local buttonSize = DropdownButton.AbsoluteSize
							
							local inList = mousePos.X >= listPos.X and mousePos.X <= listPos.X + listSize.X and
							               mousePos.Y >= listPos.Y and mousePos.Y <= listPos.Y + listSize.Y
							               
							local inButton = mousePos.X >= buttonPos.X and mousePos.X <= buttonPos.X + buttonSize.X and
							                 mousePos.Y >= buttonPos.Y and mousePos.Y <= buttonPos.Y + buttonSize.Y
							
							if not inList and not inButton then
								isOpen = false
								DropdownListContainer.Visible = false
								if dropdownConnection then
									dropdownConnection:Disconnect()
									dropdownConnection = nil
								end
							end
						end
					end)
				else
					
					if dropdownConnection then
						dropdownConnection:Disconnect()
						dropdownConnection = nil
					end
				end
			end)

			DropdownButton.MouseEnter:Connect(function()
				Tween(DropdownButton, {BackgroundColor3 = Colors.Primary}, 0.2)
			end)

			DropdownButton.MouseLeave:Connect(function()
				Tween(DropdownButton, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			return {
				Set = function(option)
					if table.find(dropdownConfig.Options, option) then
						dropdownConfig.CurrentOption = option
						DropdownButton.Text = option
					end
				end
			}
		end

		function Tab:CreateColorPicker(config)
			local colorConfig = {
				Name = config.Name or "Color Picker",
				Color = config.Color or Color3.fromRGB(255, 255, 255),
				Callback = config.Callback or function() end
			}

			local ColorFrame = Instance.new("Frame")
			ColorFrame.BackgroundColor3 = Colors.Secondary
			ColorFrame.BorderSizePixel = 0
			ColorFrame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			ColorFrame.Parent = TabContent

			local ColorCorner = Instance.new("UICorner")
			ColorCorner.CornerRadius = UDim.new(0, 8)
			ColorCorner.Parent = ColorFrame

			local Hitbox = Instance.new("TextButton")
			Hitbox.BackgroundTransparency = 1
			Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			Hitbox.Text = ""
			Hitbox.ZIndex = 2
			Hitbox.Parent = ColorFrame

			local ColorLabel = Instance.new("TextLabel")
			ColorLabel.BackgroundTransparency = 1
			ColorLabel.Position = UDim2.new(0, 12, 0, 0)
			ColorLabel.Size = UDim2.new(0.7, 0, 1, 0)
			ColorLabel.Font = Enum.Font.GothamMedium
			ColorLabel.Text = colorConfig.Name
			ColorLabel.TextColor3 = Colors.Text
			ColorLabel.TextSize = 13
			ColorLabel.TextXAlignment = Enum.TextXAlignment.Left
			ColorLabel.Parent = ColorFrame

			local ColorDisplay = Instance.new("Frame")
			ColorDisplay.BackgroundColor3 = colorConfig.Color
			ColorDisplay.BorderSizePixel = 0
			ColorDisplay.Position = UDim2.new(1, -40, 0.5, -11)
			ColorDisplay.Size = UDim2.new(0, 32, 0, 22)
			ColorDisplay.Parent = ColorFrame

			local ColorDisplayCorner = Instance.new("UICorner")
			ColorDisplayCorner.CornerRadius = UDim.new(0, 6)
			ColorDisplayCorner.Parent = ColorDisplay

			
			local function CreateColorPickerPopup()
				local Popup = Instance.new("Frame")
				Popup.Name = "ColorPickerPopup"
				Popup.BackgroundColor3 = Colors.Secondary
				Popup.BorderSizePixel = 0
				Popup.Position = UDim2.new(0.5, -175, 0.5, -150)
				Popup.Size = UDim2.new(0, 350, 0, 300)
				Popup.Visible = false
				Popup.ZIndex = 200
				Popup.Parent = ScreenGui

				local PopupCorner = Instance.new("UICorner")
				PopupCorner.CornerRadius = UDim.new(0, 12)
				PopupCorner.Parent = Popup

				local PopupGlow = CreateGlow(Popup)

				
				local PopupTitle = Instance.new("TextLabel")
				PopupTitle.BackgroundTransparency = 1
				PopupTitle.Position = UDim2.new(0, 15, 0, 10)
				PopupTitle.Size = UDim2.new(1, -30, 0, 25)
				PopupTitle.Font = Enum.Font.GothamBold
				PopupTitle.Text = "Color Picker"
				PopupTitle.TextColor3 = Colors.Text
				PopupTitle.TextSize = 16
				PopupTitle.TextXAlignment = Enum.TextXAlignment.Left
				PopupTitle.Parent = Popup

				
				local CloseButton = Instance.new("TextButton")
				CloseButton.BackgroundTransparency = 1
				CloseButton.Position = UDim2.new(1, -35, 0, 10)
				CloseButton.Size = UDim2.new(0, 25, 0, 25)
				CloseButton.Font = Enum.Font.GothamBold
				CloseButton.Text = "×"
				CloseButton.TextColor3 = Colors.TextDark
				CloseButton.TextSize = 20
				CloseButton.Parent = Popup

				CloseButton.MouseButton1Click:Connect(function()
					Popup.Visible = false
				end)

				
				local ColorPreview = Instance.new("Frame")
				ColorPreview.BackgroundColor3 = colorConfig.Color
				ColorPreview.BorderSizePixel = 0
				ColorPreview.Position = UDim2.new(0, 15, 0, 45)
				ColorPreview.Size = UDim2.new(1, -30, 0, 60)
				ColorPreview.Parent = Popup

				local PreviewCorner = Instance.new("UICorner")
				PreviewCorner.CornerRadius = UDim.new(0, 8)
				PreviewCorner.Parent = ColorPreview

				
				local function createRGBInput(name, yPos, defaultValue)
					local Container = Instance.new("Frame")
					Container.BackgroundTransparency = 1
					Container.Position = UDim2.new(0, 15, 0, yPos)
					Container.Size = UDim2.new(1, -30, 0, 35)
					Container.Parent = Popup

					local Label = Instance.new("TextLabel")
					Label.BackgroundTransparency = 1
					Label.Size = UDim2.new(0, 20, 1, 0)
					Label.Font = Enum.Font.GothamBold
					Label.Text = name .. ":"
					Label.TextColor3 = Colors.Text
					Label.TextSize = 12
					Label.TextXAlignment = Enum.TextXAlignment.Left
					Label.Parent = Container

					local Input = Instance.new("TextBox")
					Input.BackgroundColor3 = Colors.Background
					Input.BorderSizePixel = 0
					Input.Position = UDim2.new(0, 30, 0.5, -12)
					Input.Size = UDim2.new(1, -30, 0, 24)
					Input.Font = Enum.Font.Gotham
					Input.Text = tostring(defaultValue)
					Input.TextColor3 = Colors.Text
					Input.TextSize = 12
					Input.ClearTextOnFocus = false
					Input.Parent = Container

					local InputCorner = Instance.new("UICorner")
					InputCorner.CornerRadius = UDim.new(0, 6)
					InputCorner.Parent = Input

					return Input
				end

				local RInput = createRGBInput("R", 115, math.floor(colorConfig.Color.R * 255))
				local GInput = createRGBInput("G", 155, math.floor(colorConfig.Color.G * 255))
				local BInput = createRGBInput("B", 195, math.floor(colorConfig.Color.B * 255))

				
				local HexLabel = Instance.new("TextLabel")
				HexLabel.BackgroundTransparency = 1
				HexLabel.Position = UDim2.new(0, 15, 0, 235)
				HexLabel.Size = UDim2.new(0, 40, 0, 35)
				HexLabel.Font = Enum.Font.GothamBold
				HexLabel.Text = "Hex:"
				HexLabel.TextColor3 = Colors.Text
				HexLabel.TextSize = 12
				HexLabel.TextXAlignment = Enum.TextXAlignment.Left
				HexLabel.Parent = Popup

				local HexInput = Instance.new("TextBox")
				HexInput.BackgroundColor3 = Colors.Background
				HexInput.BorderSizePixel = 0
				HexInput.Position = UDim2.new(0, 55, 0, 241)
				HexInput.Size = UDim2.new(1, -70, 0, 24)
				HexInput.Font = Enum.Font.Gotham
				HexInput.PlaceholderText = "#FFFFFF"
				HexInput.Text = string.format("#%02X%02X%02X", 
					math.floor(colorConfig.Color.R * 255),
					math.floor(colorConfig.Color.G * 255),
					math.floor(colorConfig.Color.B * 255))
				HexInput.TextColor3 = Colors.Text
				HexInput.TextSize = 12
				HexInput.ClearTextOnFocus = false
				HexInput.Parent = Popup

				local HexCorner = Instance.new("UICorner")
				HexCorner.CornerRadius = UDim.new(0, 6)
				HexCorner.Parent = HexInput

				
				local function updateFromRGB()
					local r = math.clamp(tonumber(RInput.Text) or 0, 0, 255)
					local g = math.clamp(tonumber(GInput.Text) or 0, 0, 255)
					local b = math.clamp(tonumber(BInput.Text) or 0, 0, 255)

					RInput.Text = tostring(r)
					GInput.Text = tostring(g)
					BInput.Text = tostring(b)

					local newColor = Color3.fromRGB(r, g, b)
					colorConfig.Color = newColor
					ColorPreview.BackgroundColor3 = newColor
					ColorDisplay.BackgroundColor3 = newColor
					HexInput.Text = string.format("#%02X%02X%02X", r, g, b)
					
					colorConfig.Callback(newColor)
				end

				local function updateFromHex()
					local hex = HexInput.Text:gsub("#", "")
					if #hex == 6 then
						local r = tonumber(hex:sub(1, 2), 16) or 0
						local g = tonumber(hex:sub(3, 4), 16) or 0
						local b = tonumber(hex:sub(5, 6), 16) or 0

						RInput.Text = tostring(r)
						GInput.Text = tostring(g)
						BInput.Text = tostring(b)

						local newColor = Color3.fromRGB(r, g, b)
						colorConfig.Color = newColor
						ColorPreview.BackgroundColor3 = newColor
						ColorDisplay.BackgroundColor3 = newColor
						
						colorConfig.Callback(newColor)
					end
				end

				RInput.FocusLost:Connect(updateFromRGB)
				GInput.FocusLost:Connect(updateFromRGB)
				BInput.FocusLost:Connect(updateFromRGB)
				HexInput.FocusLost:Connect(updateFromHex)

				return Popup
			end

			local colorPopup = CreateColorPickerPopup()

			Hitbox.MouseButton1Click:Connect(function()
				colorPopup.Visible = not colorPopup.Visible
			end)

			ColorFrame.MouseEnter:Connect(function()
				Tween(ColorFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			ColorFrame.MouseLeave:Connect(function()
				Tween(ColorFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(color)
					colorConfig.Color = color
					ColorDisplay.BackgroundColor3 = color
				end
			}
		end

		function Tab:CreateLabel(text)
			local LabelFrame = Instance.new("Frame")
			LabelFrame.BackgroundColor3 = Colors.Secondary
			LabelFrame.BorderSizePixel = 0
			LabelFrame.Size = UDim2.new(1, 0, 0, isMobile and 48 or 32)
			LabelFrame.Parent = TabContent

			local LabelCorner = Instance.new("UICorner")
			LabelCorner.CornerRadius = UDim.new(0, 8)
			LabelCorner.Parent = LabelFrame

			local Label = Instance.new("TextLabel")
			Label.BackgroundTransparency = 1
			Label.Size = UDim2.new(1, 0, 1, 0)
			Label.Font = Enum.Font.GothamMedium
			Label.Text = text or "Label"
			Label.TextColor3 = Colors.Text
			Label.TextSize = 13
			Label.Parent = LabelFrame

			return {
				Set = function(newText)
					Label.Text = newText
				end
			}
		end

		function Tab:CreateParagraph(config)
			local paragraphConfig = {
				Title = config.Title or "Paragraph",
				Content = config.Content or "Content"
			}

			local ParagraphFrame = Instance.new("Frame")
			ParagraphFrame.BackgroundColor3 = Colors.Secondary
			ParagraphFrame.BorderSizePixel = 0
			ParagraphFrame.Size = UDim2.new(1, 0, 0, isMobile and 90 or 70)
			ParagraphFrame.Parent = TabContent

			local ParagraphCorner = Instance.new("UICorner")
			ParagraphCorner.CornerRadius = UDim.new(0, 8)
			ParagraphCorner.Parent = ParagraphFrame

			local ParagraphTitle = Instance.new("TextLabel")
			ParagraphTitle.BackgroundTransparency = 1
			ParagraphTitle.Position = UDim2.new(0, 12, 0, 8)
			ParagraphTitle.Size = UDim2.new(1, -24, 0, 18)
			ParagraphTitle.Font = Enum.Font.GothamBold
			ParagraphTitle.Text = paragraphConfig.Title
			ParagraphTitle.TextColor3 = Colors.Highlight
			ParagraphTitle.TextSize = 13
			ParagraphTitle.TextXAlignment = Enum.TextXAlignment.Left
			ParagraphTitle.TextYAlignment = Enum.TextYAlignment.Top
			ParagraphTitle.Parent = ParagraphFrame
			table.insert(UIElements, {Type = "HighlightText", Object = ParagraphTitle})

			local ParagraphContent = Instance.new("TextLabel")
			ParagraphContent.BackgroundTransparency = 1
			ParagraphContent.Position = UDim2.new(0, 12, 0, 28)
			ParagraphContent.Size = UDim2.new(1, -24, 1, -36)
			ParagraphContent.Font = Enum.Font.Gotham
			ParagraphContent.Text = paragraphConfig.Content
			ParagraphContent.TextColor3 = Colors.TextDark
			ParagraphContent.TextSize = 12
			ParagraphContent.TextWrapped = true
			ParagraphContent.TextXAlignment = Enum.TextXAlignment.Left
			ParagraphContent.TextYAlignment = Enum.TextYAlignment.Top
			ParagraphContent.Parent = ParagraphFrame

			return {
				Set = function(cfg)
					if cfg.Title then ParagraphTitle.Text = cfg.Title end
					if cfg.Content then ParagraphContent.Text = cfg.Content end
				end
			}
		end

		function Tab:CreateKeybind(config)
			local keybindConfig = {
				Name = config.Name or "Keybind",
				CurrentKeybind = config.CurrentKeybind or "NONE",
				HoldToInteract = config.HoldToInteract or false,
				Callback = config.Callback or function() end
			}

			local KeybindFrame = Instance.new("Frame")
			KeybindFrame.BackgroundColor3 = Colors.Secondary
			KeybindFrame.BorderSizePixel = 0
			KeybindFrame.Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)
			KeybindFrame.Parent = TabContent

			local KeybindCorner = Instance.new("UICorner")
			KeybindCorner.CornerRadius = UDim.new(0, 8)
			KeybindCorner.Parent = KeybindFrame

			local Hitbox = Instance.new("TextButton")
			Hitbox.BackgroundTransparency = 1
			Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
			Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
			Hitbox.Text = ""
			Hitbox.ZIndex = 2
			Hitbox.Parent = KeybindFrame

			local KeybindLabel = Instance.new("TextLabel")
			KeybindLabel.BackgroundTransparency = 1
			KeybindLabel.Position = UDim2.new(0, 12, 0, 0)
			KeybindLabel.Size = UDim2.new(0.5, 0, 1, 0)
			KeybindLabel.Font = Enum.Font.GothamMedium
			KeybindLabel.Text = keybindConfig.Name
			KeybindLabel.TextColor3 = Colors.Text
			KeybindLabel.TextSize = 13
			KeybindLabel.TextXAlignment = Enum.TextXAlignment.Left
			KeybindLabel.Parent = KeybindFrame

			local KeybindButton = Instance.new("TextButton")
			KeybindButton.BackgroundColor3 = Colors.Background
			KeybindButton.BorderSizePixel = 0
			KeybindButton.Position = UDim2.new(0.5, 4, 0.5, -13)
			KeybindButton.Size = UDim2.new(0.5, -16, 0, 26)
			KeybindButton.AutoButtonColor = false
			KeybindButton.Font = Enum.Font.Gotham
			KeybindButton.Text = keybindConfig.CurrentKeybind
			KeybindButton.TextColor3 = Colors.Highlight
			KeybindButton.TextSize = 12
			KeybindButton.Parent = KeybindFrame
			table.insert(UIElements, {Type = "HighlightText", Object = KeybindButton})

			local KeybindButtonCorner = Instance.new("UICorner")
			KeybindButtonCorner.CornerRadius = UDim.new(0, 6)
			KeybindButtonCorner.Parent = KeybindButton

			local waitingForKey = false

			Hitbox.MouseButton1Click:Connect(function()
				waitingForKey = true
				KeybindButton.Text = "..."
				Tween(KeybindButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
			end)

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if waitingForKey and not gameProcessed then
					local keyName = input.KeyCode.Name
					if keyName ~= "Unknown" then
						keybindConfig.CurrentKeybind = keyName
						KeybindButton.Text = keyName
						waitingForKey = false
						Tween(KeybindButton, {BackgroundColor3 = Colors.Background}, 0.2)
					end
				end

				if not gameProcessed and input.KeyCode.Name == keybindConfig.CurrentKeybind then
					if keybindConfig.HoldToInteract then
						keybindConfig.Callback(true)
					else
						keybindConfig.Callback()
					end
				end
			end)

			if keybindConfig.HoldToInteract then
				UserInputService.InputEnded:Connect(function(input, gameProcessed)
					if not gameProcessed and input.KeyCode.Name == keybindConfig.CurrentKeybind then
						keybindConfig.Callback(false)
					end
				end)
			end

			KeybindFrame.MouseEnter:Connect(function()
				Tween(KeybindFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
			end)

			KeybindFrame.MouseLeave:Connect(function()
				Tween(KeybindFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
			end)

			return {
				Set = function(key)
					keybindConfig.CurrentKeybind = key
					KeybindButton.Text = key
				end
			}
		end

		function Tab:CreateSection(name)
			local SectionFrame = Instance.new("Frame")
			SectionFrame.BackgroundTransparency = 1
			SectionFrame.Size = UDim2.new(1, 0, 0, 26)
			SectionFrame.Parent = TabContent

			local SectionLine = Instance.new("Frame")
			SectionLine.BackgroundColor3 = Colors.Highlight
			SectionLine.BorderSizePixel = 0
			SectionLine.Position = UDim2.new(0, 0, 0.5, 0)
			SectionLine.Size = UDim2.new(1, 0, 0, 1)
			SectionLine.Parent = SectionFrame
			table.insert(UIElements, {Type = "SectionLine", Object = SectionLine})

			local SectionLabel = Instance.new("TextLabel")
			SectionLabel.BackgroundColor3 = Colors.Background
			SectionLabel.BorderSizePixel = 0
			SectionLabel.Position = UDim2.new(0.5, 0, 0.5, -9)
			SectionLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			SectionLabel.Size = UDim2.new(0, 0, 0, 18)
			SectionLabel.Font = Enum.Font.GothamBold
			SectionLabel.Text = " " .. (name or "Section") .. " "
			SectionLabel.TextColor3 = Colors.Highlight
			SectionLabel.TextSize = 12
			SectionLabel.AutomaticSize = Enum.AutomaticSize.X
			SectionLabel.Parent = SectionFrame
			table.insert(UIElements, {Type = "HighlightText", Object = SectionLabel})

			return SectionFrame
		end

		table.insert(Window.Tabs, Tab)

		if #Window.Tabs == 1 then
			TabContent.Visible = true
			Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
			Tween(TabButton, {TextColor3 = Colors.Text}, 0.2)
			
			table.insert(UIElements, {Type = "ActiveTab", Object = TabButton})
			table.insert(UIElements, {Type = "ActiveTabLabel", Object = TabButton})
			
			Window.CurrentTab = Tab

			if loadingScreen then
				task.delay(1, function()
					loadingScreen.Hide(MainFrame)
				end)
			else
				MainFrame.Visible = true
				Tween(MainFrame, {Size = UDim2.new(0, 600, 0, 400)}, 0.5)
			end
		end

		return Tab
	end

	return Window
end

function CrimsonUI:Destroy()
	local gui = game:GetService("CoreGui"):FindFirstChild("CrimsonUI")
	if gui then gui:Destroy() end
	UIElements = {}
end

function CrimsonUI:Notify(config)
	local notifyConfig = {
		Title = config.Title or "Notification",
		Content = config.Content or "This is a notification",
		Duration = config.Duration or 5,
		Icon = config.Icon or "!"
	}

	local ScreenGui = game:GetService("CoreGui"):FindFirstChild("CrimsonUI_Notifications")
	if not ScreenGui then
		ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Name = "CrimsonUI_Notifications"
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.ResetOnSpawn = false
		ScreenGui.Parent = game:GetService("CoreGui")
	end

	local NotificationFrame = Instance.new("Frame")
	NotificationFrame.BackgroundColor3 = Colors.Secondary
	NotificationFrame.BorderSizePixel = 0
	NotificationFrame.Position = UDim2.new(1, 10, 1, -90)
	NotificationFrame.Size = UDim2.new(0, 320, 0, 80)
	NotificationFrame.ClipsDescendants = true
	NotificationFrame.Parent = ScreenGui

	local NotificationCorner = Instance.new("UICorner")
	NotificationCorner.CornerRadius = UDim.new(0, 10)
	NotificationCorner.Parent = NotificationFrame

	local notifGlow = CreateGlow(NotificationFrame)
	table.insert(UIElements, {Type = "Glow", Object = notifGlow})

	local NotificationIcon = Instance.new("TextLabel")
	NotificationIcon.BackgroundTransparency = 1
	NotificationIcon.Position = UDim2.new(0, 12, 0.5, -20)
	NotificationIcon.Size = UDim2.new(0, 40, 0, 40)
	NotificationIcon.Font = Enum.Font.GothamBold
	NotificationIcon.Text = notifyConfig.Icon
	NotificationIcon.TextColor3 = Colors.Highlight
	NotificationIcon.TextSize = 24
	NotificationIcon.Parent = NotificationFrame
	table.insert(UIElements, {Type = "HighlightText", Object = NotificationIcon})

	local NotificationTitle = Instance.new("TextLabel")
	NotificationTitle.BackgroundTransparency = 1
	NotificationTitle.Position = UDim2.new(0, 64, 0, 12)
	NotificationTitle.Size = UDim2.new(1, -76, 0, 18)
	NotificationTitle.Font = Enum.Font.GothamBold
	NotificationTitle.Text = notifyConfig.Title
	NotificationTitle.TextColor3 = Colors.Text
	NotificationTitle.TextSize = 14
	NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left
	NotificationTitle.Parent = NotificationFrame

	local NotificationContent = Instance.new("TextLabel")
	NotificationContent.BackgroundTransparency = 1
	NotificationContent.Position = UDim2.new(0, 64, 0, 32)
	NotificationContent.Size = UDim2.new(1, -76, 0, 36)
	NotificationContent.Font = Enum.Font.Gotham
	NotificationContent.Text = notifyConfig.Content
	NotificationContent.TextColor3 = Colors.TextDark
	NotificationContent.TextSize = 12
	NotificationContent.TextWrapped = true
	NotificationContent.TextXAlignment = Enum.TextXAlignment.Left
	NotificationContent.TextYAlignment = Enum.TextYAlignment.Top
	NotificationContent.Parent = NotificationFrame

	Tween(NotificationFrame, {Position = UDim2.new(1, -330, 1, -90)}, 0.5)

	task.wait(notifyConfig.Duration)

	Tween(NotificationFrame, {Position = UDim2.new(1, 10, 1, -90)}, 0.5)
	task.wait(0.5)
	
	for i = #UIElements, 1, -1 do
		if UIElements[i].Object == notifGlow or UIElements[i].Object == NotificationIcon then
			table.remove(UIElements, i)
		end
	end
	
	NotificationFrame:Destroy()

	if #ScreenGui:GetChildren() == 0 then
		ScreenGui:Destroy()
	end
end

CrimsonUI.Icons = Icons
CrimsonUI.Themes = Themes

return CrimsonUI
