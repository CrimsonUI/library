local CrimsonUI = {}

local Colors = {
    Background     = Color3.fromRGB(30, 30, 36),
    Secondary      = Color3.fromRGB(40, 40, 46),
    Accent         = Color3.fromRGB(65, 20, 30),
    Primary        = Color3.fromRGB(180, 25, 45),
    Highlight      = Color3.fromRGB(220, 35, 55),
    Bright         = Color3.fromRGB(255, 50, 70),
    Text           = Color3.fromRGB(245, 245, 245),
    TextDark       = Color3.fromRGB(180, 180, 180)
}

local Icons = {
    Home = "rbxassetid://10734884548",
    Settings = "rbxassetid://10734950309",
    User = "rbxassetid://10747374131",
    Users = "rbxassetid://10747374668",
    Shield = "rbxassetid://10734952273",
    Sword = "rbxassetid://10734961090",
    Crown = "rbxassetid://10734919336",
    Star = "rbxassetid://10734896629",
    Heart = "rbxassetid://10734919750",
    Book = "rbxassetid://10734886004",
    Briefcase = "rbxassetid://10734886559",
    Calendar = "rbxassetid://10734886815",
    Camera = "rbxassetid://10734886971",
    Code = "rbxassetid://10734918229",
    Zap = "rbxassetid://10747374401",
    Activity = "rbxassetid://10734883989",
    Airplay = "rbxassetid://10734884103",
    AlertCircle = "rbxassetid://10734884355",
    AlertTriangle = "rbxassetid://10734884551",
    Archive = "rbxassetid://10734884742",
    Award = "rbxassetid://10734885003",
    Bell = "rbxassetid://10734885266",
    Box = "rbxassetid://10734886314",
    Command = "rbxassetid://10734918568",
    Cpu = "rbxassetid://10734919088",
    Database = "rbxassetid://10734920149",
    Download = "rbxassetid://10734920526",
    Eye = "rbxassetid://10734921214",
    File = "rbxassetid://10734921595",
    Flag = "rbxassetid://10734921942",
    Gift = "rbxassetid://10734922026",
    Globe = "rbxassetid://10734922241",
    Grid = "rbxassetid://10734922491",
    Info = "rbxassetid://10734923214",
    Key = "rbxassetid://10734923549",
    Lock = "rbxassetid://10734924532",
    Mail = "rbxassetid://10734924844",
    Map = "rbxassetid://10734925272",
    Menu = "rbxassetid://10734925524",
    MessageCircle = "rbxassetid://10734925739",
    Package = "rbxassetid://10734949856",
    Pencil = "rbxassetid://10734950309",
    Play = "rbxassetid://10734950690",
    Plus = "rbxassetid://10734950837",
    Search = "rbxassetid://10734952273",
    Server = "rbxassetid://10734952529",
    Share = "rbxassetid://10734952692",
    ShoppingCart = "rbxassetid://10734952925",
    Shuffle = "rbxassetid://10734953146",
    Target = "rbxassetid://10734953353",
    Terminal = "rbxassetid://10734953505",
    Tool = "rbxassetid://10734953697",
    Trash = "rbxassetid://10734953864",
    TrendingUp = "rbxassetid://10734954095",
    Trophy = "rbxassetid://10734954216",
    Upload = "rbxassetid://10734954382",
    Wrench = "rbxassetid://10747373176",
    X = "rbxassetid://10734896547",
    Minimize = "rbxassetid://7733964640"
}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

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
    LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
    LoadingFrame.ZIndex = 100
    LoadingFrame.Parent = parent

    local LoadingCorner = Instance.new("UICorner")
    LoadingCorner.CornerRadius = UDim.new(0, 12)
    LoadingCorner.Parent = LoadingFrame

    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0.5, 0, 0.4, 0)
    Title.AnchorPoint = Vector2.new(0.5, 0.5)
    Title.Size = UDim2.new(0.8, 0, 0, 40)
    Title.Font = Enum.Font.GothamBold
    Title.Text = config.LoadingTitle or "Crimson UI"
    Title.TextColor3 = Colors.Text
    Title.TextSize = 28
    Title.Parent = LoadingFrame

    local Subtitle = Instance.new("TextLabel")
    Subtitle.BackgroundTransparency = 1
    Subtitle.Position = UDim2.new(0.5, 0, 0.5, 0)
    Subtitle.AnchorPoint = Vector2.new(0.5, 0.5)
    Subtitle.Size = UDim2.new(0.8, 0, 0, 20)
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.Text = config.LoadingSubtitle or "by Luca Davincci"
    Subtitle.TextColor3 = Colors.TextDark
    Subtitle.TextSize = 16
    Subtitle.Parent = LoadingFrame

    local Spinner = Instance.new("ImageLabel")
    Spinner.BackgroundTransparency = 1
    Spinner.Position = UDim2.new(0.5, 0, 0.6, 0)
    Spinner.AnchorPoint = Vector2.new(0.5, 0.5)
    Spinner.Size = UDim2.new(0, 48, 0, 48)
    Spinner.Image = "rbxassetid://6031097225"
    Spinner.ImageColor3 = Colors.Highlight
    Spinner.Parent = LoadingFrame

    local spinTween = TweenService:Create(Spinner, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {Rotation = 360})
    spinTween:Play()

    return {
        Hide = function()
            Tween(LoadingFrame, {BackgroundTransparency = 1}, 0.4)
            Tween(Title, {TextTransparency = 1}, 0.4)
            Tween(Subtitle, {TextTransparency = 1}, 0.4)
            Tween(Spinner, {ImageTransparency = 1}, 0.4)
            task.delay(0.5, function()
                LoadingFrame:Destroy()
            end)
        end
    }
end

function CrimsonUI:CreateWindow(config)
    local windowConfig = {
        Name = config.Name or "Crimson UI",
        LoadingEnabled = config.LoadingEnabled ~= false,
        LoadingTitle = config.LoadingTitle or "Crimson UI",
        LoadingSubtitle = config.LoadingSubtitle or "by Luca Davincci"
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

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 12)
    MainCorner.Parent = MainFrame

    CreateGlow(MainFrame)

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

    local TopBarCorner = Instance.new("UICorner")
    TopBarCorner.CornerRadius = UDim.new(0, 12)
    TopBarCorner.Parent = TopBar

    local TopBarFix = Instance.new("Frame")
    TopBarFix.BackgroundColor3 = Colors.Accent
    TopBarFix.BorderSizePixel = 0
    TopBarFix.Position = UDim2.new(0, 0, 1, -12)
    TopBarFix.Size = UDim2.new(1, 0, 0, 12)
    TopBarFix.Parent = TopBar

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
    MinimizeButton.Text = ""
    MinimizeButton.ZIndex = 10
    MinimizeButton.Parent = TopBar

    local MinimizeIcon = Instance.new("ImageLabel")
    MinimizeIcon.Name = "Icon"
    MinimizeIcon.BackgroundTransparency = 1
    MinimizeIcon.Size = UDim2.new(1, 0, 1, 0)
    MinimizeIcon.Image = Icons.Minimize
    MinimizeIcon.ImageColor3 = Colors.TextDark
    MinimizeIcon.Parent = MinimizeButton

    local TabContainer = Instance.new("Frame")
    TabContainer.Name = "TabContainer"
    TabContainer.BackgroundColor3 = Colors.Secondary
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 0, 0, 45)
    TabContainer.Size = UDim2.new(1, 0, 0, 45)
    TabContainer.Parent = MainFrame

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
            Tween(MinimizeIcon, {Rotation = 180}, 0.3)
        else
            Tween(MainFrame, {Size = UDim2.new(0, 600, 0, 400)}, 0.3)
            Tween(MinimizeIcon, {Rotation = 0}, 0.3)
        end
    end)

    MinimizeButton.MouseEnter:Connect(function()
        Tween(MinimizeIcon, {ImageColor3 = Colors.Highlight}, 0.2)
    end)

    MinimizeButton.MouseLeave:Connect(function()
        Tween(MinimizeIcon, {ImageColor3 = Colors.TextDark}, 0.2)
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
            Name = config.Name or "Tab",
            Icon = config.Icon or Icons.Home
        }

        local TabButton = Instance.new("TextButton")
        TabButton.Name = tabConfig.Name
        TabButton.BackgroundColor3 = Colors.Background
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(0, 100, 0, 35)
        TabButton.AutoButtonColor = false
        TabButton.Text = ""
        TabButton.Parent = TabList

        if isMobile then
            TabButton.Size = UDim2.new(0, 120, 0, 50)
        end

        local TabCorner = Instance.new("UICorner")
        TabCorner.CornerRadius = UDim.new(0, 8)
        TabCorner.Parent = TabButton

        local TabIcon = Instance.new("ImageLabel")
        TabIcon.Name = "Icon"
        TabIcon.BackgroundTransparency = 1
        TabIcon.Position = UDim2.new(0, 8, 0.5, -10)
        TabIcon.Size = UDim2.new(0, 20, 0, 20)
        TabIcon.Image = tabConfig.Icon
        TabIcon.ImageColor3 = Colors.TextDark
        TabIcon.Parent = TabButton

        local TabLabel = Instance.new("TextLabel")
        TabLabel.Name = "Label"
        TabLabel.BackgroundTransparency = 1
        TabLabel.Position = UDim2.new(0, 32, 0, 0)
        TabLabel.Size = UDim2.new(1, -36, 1, 0)
        TabLabel.Font = Enum.Font.GothamMedium
        TabLabel.Text = tabConfig.Name
        TabLabel.TextColor3 = Colors.TextDark
        TabLabel.TextSize = 13
        TabLabel.TextXAlignment = Enum.TextXAlignment.Left
        TabLabel.Parent = TabButton

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
                local icon = tab.Button:FindFirstChild("Icon")
                local label = tab.Button:FindFirstChild("Label")
                if icon then Tween(icon, {ImageColor3 = Colors.TextDark}, 0.2) end
                if label then Tween(label, {TextColor3 = Colors.TextDark}, 0.2) end
            end

            TabContent.Visible = true
            Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
            Tween(TabIcon, {ImageColor3 = Colors.Text}, 0.2)
            Tween(TabLabel, {TextColor3 = Colors.Text}, 0.2)
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
                if toggleConfig.CurrentValue then
                    Tween(ToggleButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
                    Tween(ToggleCircle, {Position = UDim2.new(1, -20, 0.5, -9)}, 0.2)
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
                    if value then
                        Tween(ToggleButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
                        Tween(ToggleCircle, {Position = UDim2.new(1, -20, 0.5, -9)}, 0.2)
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

            local Hitbox = Instance.new("TextButton")
            Hitbox.BackgroundTransparency = 1
            Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
            Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
            Hitbox.Text = ""
            Hitbox.ZIndex = 2
            Hitbox.Parent = InputFrame

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
            DropdownFrame.ClipsDescendants = true
            DropdownFrame.Parent = TabContent

            local DropdownCorner = Instance.new("UICorner")
            DropdownCorner.CornerRadius = UDim.new(0, 8)
            DropdownCorner.Parent = DropdownFrame

            local Hitbox = Instance.new("TextButton")
            Hitbox.BackgroundTransparency = 1
            Hitbox.Size = UDim2.new(1, isMobile and 20 or 0, 1, isMobile and 20 or 0)
            Hitbox.Position = UDim2.new(0, isMobile and -10 or 0, 0, isMobile and -10 or 0)
            Hitbox.Text = ""
            Hitbox.ZIndex = 2
            Hitbox.Parent = DropdownFrame

            local DropdownLabel = Instance.new("TextLabel")
            DropdownLabel.BackgroundTransparency = 1
            DropdownLabel.Position = UDim2.new(0, 12, 0, 0)
            DropdownLabel.Size = UDim2.new(0.5, 0, 0, 38)
            DropdownLabel.Font = Enum.Font.GothamMedium
            DropdownLabel.Text = dropdownConfig.Name
            DropdownLabel.TextColor3 = Colors.Text
            DropdownLabel.TextSize = 13
            DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
            DropdownLabel.Parent = DropdownFrame

            local DropdownButton = Instance.new("TextButton")
            DropdownButton.BackgroundColor3 = Colors.Background
            DropdownButton.BorderSizePixel = 0
            DropdownButton.Position = UDim2.new(0.5, 4, 0.5, -13)
            DropdownButton.Size = UDim2.new(0.5, -16, 0, 26)
            DropdownButton.AutoButtonColor = false
            DropdownButton.Font = Enum.Font.Gotham
            DropdownButton.Text = "  " .. dropdownConfig.CurrentOption
            DropdownButton.TextColor3 = Colors.Text
            DropdownButton.TextSize = 12
            DropdownButton.TextXAlignment = Enum.TextXAlignment.Left
            DropdownButton.Parent = DropdownFrame

            local DropdownButtonCorner = Instance.new("UICorner")
            DropdownButtonCorner.CornerRadius = UDim.new(0, 6)
            DropdownButtonCorner.Parent = DropdownButton

            local DropdownIcon = Instance.new("TextLabel")
            DropdownIcon.BackgroundTransparency = 1
            DropdownIcon.Position = UDim2.new(1, -20, 0.5, -8)
            DropdownIcon.Size = UDim2.new(0, 16, 0, 16)
            DropdownIcon.Font = Enum.Font.GothamBold
            DropdownIcon.Text = "Down Arrow"
            DropdownIcon.TextColor3 = Colors.Highlight
            DropdownIcon.TextSize = 10
            DropdownIcon.Parent = DropdownButton

            local DropdownList = Instance.new("Frame")
            DropdownList.BackgroundTransparency = 1
            DropdownList.Position = UDim2.new(0, 8, 0, 42)
            DropdownList.Size = UDim2.new(1, -16, 0, 0)
            DropdownList.Parent = DropdownFrame

            local ListLayout = Instance.new("UIListLayout")
            ListLayout.Padding = UDim.new(0, 4)
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ListLayout.Parent = DropdownList

            local isOpen = false

            for _, option in ipairs(dropdownConfig.Options) do
                local OptionButton = Instance.new("TextButton")
                OptionButton.BackgroundColor3 = Colors.Background
                OptionButton.BorderSizePixel = 0
                OptionButton.Size = UDim2.new(1, 0, 0, 28)
                OptionButton.AutoButtonColor = false
                OptionButton.Font = Enum.Font.Gotham
                OptionButton.Text = option
                OptionButton.TextColor3 = Colors.Text
                OptionButton.TextSize = 12
                OptionButton.Parent = DropdownList

                local OptionCorner = Instance.new("UICorner")
                OptionCorner.CornerRadius = UDim.new(0, 6)
                OptionCorner.Parent = OptionButton

                OptionButton.MouseButton1Click:Connect(function()
                    dropdownConfig.CurrentOption = option
                    DropdownButton.Text = "  " .. option
                    dropdownConfig.Callback(option)
                    isOpen = false
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)}, 0.3)
                    Tween(DropdownIcon, {Rotation = 0}, 0.3)
                end)

                OptionButton.MouseEnter:Connect(function()
                    Tween(OptionButton, {BackgroundColor3 = Colors.Accent}, 0.2)
                end)

                OptionButton.MouseLeave:Connect(function()
                    Tween(OptionButton, {BackgroundColor3 = Colors.Background}, 0.2)
                end)
            end

            ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                DropdownList.Size = UDim2.new(1, -16, 0, ListLayout.AbsoluteContentSize.Y)
            end)

            Hitbox.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local targetSize = (isMobile and 54 or 46) + ListLayout.AbsoluteContentSize.Y
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, targetSize)}, 0.3)
                    Tween(DropdownIcon, {Rotation = 180}, 0.3)
                else
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, isMobile and 54 or 38)}, 0.3)
                    Tween(DropdownIcon, {Rotation = 0}, 0.3)
                end
            end)

            DropdownButton.MouseEnter:Connect(function()
                Tween(DropdownButton, {BackgroundColor3 = Colors in Colors.Accent}, 0.2)
            end)

            DropdownButton.MouseLeave:Connect(function()
                Tween(DropdownButton, {BackgroundColor3 = Colors.Background}, 0.2)
            end)

            return {
                Set = function(option)
                    dropdownConfig.CurrentOption = option
                    DropdownButton.Text = "  " .. option
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

            Hitbox.MouseButton1Click:Connect(function()
                colorConfig.Callback(colorConfig.Color)
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
                Set = function(config)
                    if config.Title then ParagraphTitle.Text = config.Title end
                    if config.Content then ParagraphContent.Text = config.Content end
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

            local SectionLabel = Instance.new("TextLabel")
            SectionLabel.BackgroundColor3 = Colors.Background
            SectionLabel.BorderSizePixel = 0
            SectionLabel.Position = UDim2.new(0, 0, 0.5, -9)
            SectionLabel.Size = UDim2.new(0, 0, 0, 18)
            SectionLabel.Font = Enum.Font.GothamBold
            SectionLabel.Text = " " .. (name or "Section") .. " "
            SectionLabel.TextColor3 = Colors.Highlight
            SectionLabel.TextSize = 12
            SectionLabel.AutomaticSize = Enum.AutomaticSize.X
            SectionLabel.Parent = SectionFrame

            return SectionFrame
        end

        table.insert(Window.Tabs, Tab)

        if #Window.Tabs == 1 then
            TabContent.Visible = true
            Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
            Tween(TabIcon, {ImageColor3 = Colors.Text}, 0.2)
            Tween(TabLabel, {TextColor3 = Colors.Text}, 0.2)
            Window.CurrentTab = Tab

            if loadingScreen then
                task.delay(0.5, loadingScreen.Hide)
            end
            MainFrame.Visible = true
            Tween(MainFrame, {Size = UDim2.new(0, 600, 0, 400)}, 0.5)
        end

        return Tab
    end

    return Window
end

function CrimsonUI:Destroy()
    local gui = game:GetService("CoreGui"):FindFirstChild("CrimsonUI")
    if gui then gui:Destroy() end
end

function CrimsonUI:Notify(config)
    local notifyConfig = {
        Title = config.Title or "Notification",
        Content = config.Content or "This is a notification",
        Duration = config.Duration or 5,
        Image = config.Image or Icons.Bell
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

    CreateGlow(NotificationFrame)

    local NotificationIcon = Instance.new("ImageLabel")
    NotificationIcon.BackgroundTransparency = 1
    NotificationIcon.Position = UDim2.new(0, 12, 0.5, -20)
    NotificationIcon.Size = UDim2.new(0, 40, 0, 40)
    NotificationIcon.Image = notifyConfig.Image
    NotificationIcon.ImageColor3 = Colors.Highlight
    NotificationIcon.Parent = NotificationFrame

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
    NotificationFrame:Destroy()

    if #ScreenGui:GetChildren() == 0 then
        ScreenGui:Destroy()
    end
end

CrimsonUI.Icons = Icons

return CrimsonUI
