local CrimsonUI = {}

local Colors = {
    Background = Color3.fromRGB(77, 71, 79),
    Secondary = Color3.fromRGB(40, 47, 50),
    Accent = Color3.fromRGB(55, 18, 17),
    Primary = Color3.fromRGB(125, 20, 22),
    Highlight = Color3.fromRGB(192, 25, 31),
    Bright = Color3.fromRGB(229, 30, 27),
    Text = Color3.fromRGB(255, 255, 255),
    TextDark = Color3.fromRGB(200, 200, 200)
}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

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
    glow.ImageTransparency = 0.7
    glow.ScaleType = Enum.ScaleType.Slice
    glow.SliceCenter = Rect.new(24, 24, 276, 276)
    glow.Size = UDim2.new(1, 30, 1, 30)
    glow.Position = UDim2.new(0, -15, 0, -15)
    glow.Parent = parent
    return glow
end

function CrimsonUI:CreateWindow(config)
    local windowConfig = {
        Name = config.Name or "Crimson UI",
        LoadingEnabled = config.LoadingEnabled ~= false,
        LoadingTitle = config.LoadingTitle or "Crimson UI",
        LoadingSubtitle = config.LoadingSubtitle or "by Luca Davincci",
        ConfigurationSaving = config.ConfigurationSaving or {},
        Discord = config.Discord or {},
        KeySystem = config.KeySystem ~= true
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
    MainFrame.Position = UDim2.new(0.5, -350, 0.5, -250)
    MainFrame.Size = UDim2.new(0, 700, 0, 500)
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = ScreenGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = MainFrame

    CreateGlow(MainFrame)

    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.BackgroundColor3 = Colors.Accent
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(1, 0, 0, 50)
    TopBar.Parent = MainFrame

    local TopBarCorner = Instance.new("UICorner")
    TopBarCorner.CornerRadius = UDim.new(0, 10)
    TopBarCorner.Parent = TopBar

    local TopBarFix = Instance.new("Frame")
    TopBarFix.BackgroundColor3 = Colors.Accent
    TopBarFix.BorderSizePixel = 0
    TopBarFix.Position = UDim2.new(0, 0, 1, -10)
    TopBarFix.Size = UDim2.new(1, 0, 0, 10)
    TopBarFix.Parent = TopBar

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.Size = UDim2.new(0.5, 0, 1, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = windowConfig.Name
    Title.TextColor3 = Colors.Text
    Title.TextSize = 18
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TopBar

    local CloseButton = Instance.new("TextButton")
    CloseButton.Name = "CloseButton"
    CloseButton.BackgroundColor3 = Colors.Primary
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(1, -40, 0.5, -15)
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Colors.Text
    CloseButton.TextSize = 16
    CloseButton.Parent = TopBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 6)
    CloseCorner.Parent = CloseButton

    local TabContainer = Instance.new("Frame")
    TabContainer.Name = "TabContainer"
    TabContainer.BackgroundColor3 = Colors.Secondary
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 10, 0, 60)
    TabContainer.Size = UDim2.new(0, 150, 1, -70)
    TabContainer.Parent = MainFrame

    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 8)
    TabCorner.Parent = TabContainer

    local TabList = Instance.new("ScrollingFrame")
    TabList.Name = "TabList"
    TabList.BackgroundTransparency = 1
    TabList.BorderSizePixel = 0
    TabList.Position = UDim2.new(0, 5, 0, 5)
    TabList.Size = UDim2.new(1, -10, 1, -10)
    TabList.ScrollBarThickness = 4
    TabList.ScrollBarImageColor3 = Colors.Highlight
    TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabList.Parent = TabContainer

    local TabListLayout = Instance.new("UIListLayout")
    TabListLayout.Padding = UDim.new(0, 5)
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Parent = TabList

    local ContentContainer = Instance.new("Frame")
    ContentContainer.Name = "ContentContainer"
    ContentContainer.BackgroundTransparency = 1
    ContentContainer.Position = UDim2.new(0, 170, 0, 60)
    ContentContainer.Size = UDim2.new(1, -180, 1, -70)
    ContentContainer.Parent = MainFrame

    local dragging = false
    local dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
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
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    CloseButton.MouseButton1Click:Connect(function()
        Tween(CloseButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
        Tween(MainFrame, {Size = UDim2.new(0, 0, 0, 0)}, 0.3)
        wait(0.3)
        ScreenGui:Destroy()
    end)

    CloseButton.MouseEnter:Connect(function()
        Tween(CloseButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
    end)

    CloseButton.MouseLeave:Connect(function()
        Tween(CloseButton, {BackgroundColor3 = Colors.Primary}, 0.2)
    end)

    TabListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabList.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 10)
    end)

    local Window = {
        Tabs = {},
        CurrentTab = nil
    }

    function Window:CreateTab(config)
        local tabConfig = {
            Name = config.Name or "Tab",
            Icon = config.Icon or "rbxassetid://4370318685"
        }

        local TabButton = Instance.new("TextButton")
        TabButton.Name = tabConfig.Name
        TabButton.BackgroundColor3 = Colors.Background
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(1, 0, 0, 40)
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = "  " .. tabConfig.Name
        TabButton.TextColor3 = Colors.TextDark
        TabButton.TextSize = 14
        TabButton.TextXAlignment = Enum.TextXAlignment.Left
        TabButton.Parent = TabList

        local TabCorner = Instance.new("UICorner")
        TabCorner.CornerRadius = UDim.new(0, 6)
        TabCorner.Parent = TabButton

        local TabIcon = Instance.new("ImageLabel")
        TabIcon.Name = "Icon"
        TabIcon.BackgroundTransparency = 1
        TabIcon.Position = UDim2.new(1, -35, 0.5, -15)
        TabIcon.Size = UDim2.new(0, 30, 0, 30)
        TabIcon.Image = tabConfig.Icon
        TabIcon.ImageColor3 = Colors.TextDark
        TabIcon.Parent = TabButton

        local TabContent = Instance.new("ScrollingFrame")
        TabContent.Name = tabConfig.Name .. "Content"
        TabContent.BackgroundTransparency = 1
        TabContent.BorderSizePixel = 0
        TabContent.Size = UDim2.new(1, 0, 1, 0)
        TabContent.ScrollBarThickness = 6
        TabContent.ScrollBarImageColor3 = Colors.Highlight
        TabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabContent.Visible = false
        TabContent.Parent = ContentContainer

        local ContentLayout = Instance.new("UIListLayout")
        ContentLayout.Padding = UDim.new(0, 10)
        ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContentLayout.Parent = TabContent

        local ContentPadding = Instance.new("UIPadding")
        ContentPadding.PaddingTop = UDim.new(0, 10)
        ContentPadding.PaddingBottom = UDim.new(0, 10)
        ContentPadding.PaddingLeft = UDim.new(0, 10)
        ContentPadding.PaddingRight = UDim.new(0, 10)
        ContentPadding.Parent = TabContent

        ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabContent.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 20)
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
                local icon = tab.Button:FindFirstChild("Icon")
                if icon then
                    Tween(icon, {ImageColor3 = Colors.TextDark}, 0.2)
                end
            end
            
            TabContent.Visible = true
            Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
            Tween(TabButton, {TextColor3 = Colors.Text}, 0.2)
            Tween(TabIcon, {ImageColor3 = Colors.Text}, 0.2)
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
            ButtonFrame.Name = "Button"
            ButtonFrame.BackgroundColor3 = Colors.Secondary
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Size = UDim2.new(1, 0, 0, 40)
            ButtonFrame.Parent = TabContent

            local ButtonCorner = Instance.new("UICorner")
            ButtonCorner.CornerRadius = UDim.new(0, 8)
            ButtonCorner.Parent = ButtonFrame

            local Button = Instance.new("TextButton")
            Button.Name = "ButtonClick"
            Button.BackgroundTransparency = 1
            Button.Size = UDim2.new(1, 0, 1, 0)
            Button.Font = Enum.Font.Gotham
            Button.Text = buttonConfig.Name
            Button.TextColor3 = Colors.Text
            Button.TextSize = 14
            Button.Parent = ButtonFrame

            Button.MouseButton1Click:Connect(function()
                Tween(ButtonFrame, {BackgroundColor3 = Colors.Highlight}, 0.1)
                wait(0.1)
                Tween(ButtonFrame, {BackgroundColor3 = Colors.Secondary}, 0.1)
                buttonConfig.Callback()
            end)

            Button.MouseEnter:Connect(function()
                Tween(ButtonFrame, {BackgroundColor3 = Colors.Accent}, 0.2)
            end)

            Button.MouseLeave:Connect(function()
                Tween(ButtonFrame, {BackgroundColor3 = Colors.Secondary}, 0.2)
            end)

            return Button
        end

        function Tab:CreateToggle(config)
            local toggleConfig = {
                Name = config.Name or "Toggle",
                CurrentValue = config.CurrentValue or false,
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local ToggleFrame = Instance.new("Frame")
            ToggleFrame.Name = "Toggle"
            ToggleFrame.BackgroundColor3 = Colors.Secondary
            ToggleFrame.BorderSizePixel = 0
            ToggleFrame.Size = UDim2.new(1, 0, 0, 40)
            ToggleFrame.Parent = TabContent

            local ToggleCorner = Instance.new("UICorner")
            ToggleCorner.CornerRadius = UDim.new(0, 8)
            ToggleCorner.Parent = ToggleFrame

            local ToggleLabel = Instance.new("TextLabel")
            ToggleLabel.Name = "Label"
            ToggleLabel.BackgroundTransparency = 1
            ToggleLabel.Position = UDim2.new(0, 15, 0, 0)
            ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
            ToggleLabel.Font = Enum.Font.Gotham
            ToggleLabel.Text = toggleConfig.Name
            ToggleLabel.TextColor3 = Colors.Text
            ToggleLabel.TextSize = 14
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            ToggleLabel.Parent = ToggleFrame

            local ToggleButton = Instance.new("TextButton")
            ToggleButton.Name = "ToggleButton"
            ToggleButton.BackgroundColor3 = toggleConfig.CurrentValue and Colors.Highlight or Colors.Background
            ToggleButton.BorderSizePixel = 0
            ToggleButton.Position = UDim2.new(1, -55, 0.5, -12)
            ToggleButton.Size = UDim2.new(0, 45, 0, 24)
            ToggleButton.Text = ""
            ToggleButton.Parent = ToggleFrame

            local ToggleButtonCorner = Instance.new("UICorner")
            ToggleButtonCorner.CornerRadius = UDim.new(1, 0)
            ToggleButtonCorner.Parent = ToggleButton

            local ToggleCircle = Instance.new("Frame")
            ToggleCircle.Name = "Circle"
            ToggleCircle.BackgroundColor3 = Colors.Text
            ToggleCircle.BorderSizePixel = 0
            ToggleCircle.Position = toggleConfig.CurrentValue and UDim2.new(1, -22, 0.5, -10) or UDim2.new(0, 2, 0.5, -10)
            ToggleCircle.Size = UDim2.new(0, 20, 0, 20)
            ToggleCircle.Parent = ToggleButton

            local CircleCorner = Instance.new("UICorner")
            CircleCorner.CornerRadius = UDim.new(1, 0)
            CircleCorner.Parent = ToggleCircle

            ToggleButton.MouseButton1Click:Connect(function()
                toggleConfig.CurrentValue = not toggleConfig.CurrentValue
                
                if toggleConfig.CurrentValue then
                    Tween(ToggleButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
                    Tween(ToggleCircle, {Position = UDim2.new(1, -22, 0.5, -10)}, 0.2)
                else
                    Tween(ToggleButton, {BackgroundColor3 = Colors.Background}, 0.2)
                    Tween(ToggleCircle, {Position = UDim2.new(0, 2, 0.5, -10)}, 0.2)
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
                        Tween(ToggleCircle, {Position = UDim2.new(1, -22, 0.5, -10)}, 0.2)
                    else
                        Tween(ToggleButton, {BackgroundColor3 = Colors.Background}, 0.2)
                        Tween(ToggleCircle, {Position = UDim2.new(0, 2, 0.5, -10)}, 0.2)
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
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local SliderFrame = Instance.new("Frame")
            SliderFrame.Name = "Slider"
            SliderFrame.BackgroundColor3 = Colors.Secondary
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Size = UDim2.new(1, 0, 0, 60)
            SliderFrame.Parent = TabContent

            local SliderCorner = Instance.new("UICorner")
            SliderCorner.CornerRadius = UDim.new(0, 8)
            SliderCorner.Parent = SliderFrame

            local SliderLabel = Instance.new("TextLabel")
            SliderLabel.Name = "Label"
            SliderLabel.BackgroundTransparency = 1
            SliderLabel.Position = UDim2.new(0, 15, 0, 5)
            SliderLabel.Size = UDim2.new(0.7, 0, 0, 20)
            SliderLabel.Font = Enum.Font.Gotham
            SliderLabel.Text = sliderConfig.Name
            SliderLabel.TextColor3 = Colors.Text
            SliderLabel.TextSize = 14
            SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            SliderLabel.Parent = SliderFrame

            local SliderValue = Instance.new("TextLabel")
            SliderValue.Name = "Value"
            SliderValue.BackgroundTransparency = 1
            SliderValue.Position = UDim2.new(0.7, 0, 0, 5)
            SliderValue.Size = UDim2.new(0.3, -15, 0, 20)
            SliderValue.Font = Enum.Font.GothamBold
            SliderValue.Text = tostring(sliderConfig.CurrentValue)
            SliderValue.TextColor3 = Colors.Highlight
            SliderValue.TextSize = 14
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right
            SliderValue.Parent = SliderFrame

            local SliderBackground = Instance.new("Frame")
            SliderBackground.Name = "SliderBg"
            SliderBackground.BackgroundColor3 = Colors.Background
            SliderBackground.BorderSizePixel = 0
            SliderBackground.Position = UDim2.new(0, 15, 0, 35)
            SliderBackground.Size = UDim2.new(1, -30, 0, 15)
            SliderBackground.Parent = SliderFrame

            local SliderBgCorner = Instance.new("UICorner")
            SliderBgCorner.CornerRadius = UDim.new(1, 0)
            SliderBgCorner.Parent = SliderBackground

            local SliderFill = Instance.new("Frame")
            SliderFill.Name = "Fill"
            SliderFill.BackgroundColor3 = Colors.Highlight
            SliderFill.BorderSizePixel = 0
            SliderFill.Size = UDim2.new((sliderConfig.CurrentValue - sliderConfig.Range[1]) / (sliderConfig.Range[2] - sliderConfig.Range[1]), 0, 1, 0)
            SliderFill.Parent = SliderBackground

            local SliderFillCorner = Instance.new("UICorner")
            SliderFillCorner.CornerRadius = UDim.new(1, 0)
            SliderFillCorner.Parent = SliderFill

            local SliderButton = Instance.new("TextButton")
            SliderButton.Name = "SliderButton"
            SliderButton.BackgroundTransparency = 1
            SliderButton.Size = UDim2.new(1, 0, 1, 0)
            SliderButton.Text = ""
            SliderButton.Parent = SliderBackground

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

            SliderButton.MouseButton1Down:Connect(function()
                dragging = true
            end)

            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    updateSlider(input)
                end
            end)

            SliderButton.MouseButton1Click:Connect(function()
                local mousePos = UserInputService:GetMouseLocation()
                updateSlider({Position = Vector2.new(mousePos.X, mousePos.Y)})
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
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local InputFrame = Instance.new("Frame")
            InputFrame.Name = "Input"
            InputFrame.BackgroundColor3 = Colors.Secondary
            InputFrame.BorderSizePixel = 0
            InputFrame.Size = UDim2.new(1, 0, 0, 70)
            InputFrame.Parent = TabContent

            local InputCorner = Instance.new("UICorner")
            InputCorner.CornerRadius = UDim.new(0, 8)
            InputCorner.Parent = InputFrame

            local InputLabel = Instance.new("TextLabel")
            InputLabel.Name = "Label"
            InputLabel.BackgroundTransparency = 1
            InputLabel.Position = UDim2.new(0, 15, 0, 5)
            InputLabel.Size = UDim2.new(1, -30, 0, 20)
            InputLabel.Font = Enum.Font.Gotham
            InputLabel.Text = inputConfig.Name
            InputLabel.TextColor3 = Colors.Text
            InputLabel.TextSize = 14
            InputLabel.TextXAlignment = Enum.TextXAlignment.Left
            InputLabel.Parent = InputFrame

            local InputBox = Instance.new("TextBox")
            InputBox.Name = "InputBox"
            InputBox.BackgroundColor3 = Colors.Background
            InputBox.BorderSizePixel = 0
            InputBox.Position = UDim2.new(0, 15, 0, 30)
            InputBox.Size = UDim2.new(1, -30, 0, 30)
            InputBox.Font = Enum.Font.Gotham
            InputBox.PlaceholderText = inputConfig.PlaceholderText
            InputBox.PlaceholderColor3 = Colors.TextDark
            InputBox.Text = ""
            InputBox.TextColor3 = Colors.Text
            InputBox.TextSize = 14
            InputBox.TextXAlignment = Enum.TextXAlignment.Left
            InputBox.Parent = InputFrame

            local InputBoxCorner = Instance.new("UICorner")
            InputBoxCorner.CornerRadius = UDim.new(0, 6)
            InputBoxCorner.Parent = InputBox

            local InputBoxPadding = Instance.new("UIPadding")
            InputBoxPadding.PaddingLeft = UDim.new(0, 10)
            InputBoxPadding.PaddingRight = UDim.new(0, 10)
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
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local DropdownFrame = Instance.new("Frame")
            DropdownFrame.Name = "Dropdown"
            DropdownFrame.BackgroundColor3 = Colors.Secondary
            DropdownFrame.BorderSizePixel = 0
            DropdownFrame.Size = UDim2.new(1, 0, 0, 40)
            DropdownFrame.ClipsDescendants = true
            DropdownFrame.Parent = TabContent

            local DropdownCorner = Instance.new("UICorner")
            DropdownCorner.CornerRadius = UDim.new(0, 8)
            DropdownCorner.Parent = DropdownFrame

            local DropdownLabel = Instance.new("TextLabel")
            DropdownLabel.Name = "Label"
            DropdownLabel.BackgroundTransparency = 1
            DropdownLabel.Position = UDim2.new(0, 15, 0, 0)
            DropdownLabel.Size = UDim2.new(0.6, 0, 0, 40)
            DropdownLabel.Font = Enum.Font.Gotham
            DropdownLabel.Text = dropdownConfig.Name
            DropdownLabel.TextColor3 = Colors.Text
            DropdownLabel.TextSize = 14
            DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
            DropdownLabel.Parent = DropdownFrame

            local DropdownButton = Instance.new("TextButton")
            DropdownButton.Name = "DropdownButton"
            DropdownButton.BackgroundColor3 = Colors.Background
            DropdownButton.BorderSizePixel = 0
            DropdownButton.Position = UDim2.new(0.6, 5, 0.5, -15)
            DropdownButton.Size = UDim2.new(0.4, -20, 0, 30)
            DropdownButton.Font = Enum.Font.Gotham
            DropdownButton.Text = dropdownConfig.CurrentOption
            DropdownButton.TextColor3 = Colors.Text
            DropdownButton.TextSize = 12
            DropdownButton.Parent = DropdownFrame

            local DropdownButtonCorner = Instance.new("UICorner")
            DropdownButtonCorner.CornerRadius = UDim.new(0, 6)
            DropdownButtonCorner.Parent = DropdownButton

            local DropdownIcon = Instance.new("TextLabel")
            DropdownIcon.Name = "Icon"
            DropdownIcon.BackgroundTransparency = 1
            DropdownIcon.Position = UDim2.new(1, -20, 0.5, -10)
            DropdownIcon.Size = UDim2.new(0, 20, 0, 20)
            DropdownIcon.Font = Enum.Font.GothamBold
            DropdownIcon.Text = "▼"
            DropdownIcon.TextColor3 = Colors.Highlight
            DropdownIcon.TextSize = 10
            DropdownIcon.Parent = DropdownButton

            local DropdownList = Instance.new("Frame")
            DropdownList.Name = "List"
            DropdownList.BackgroundTransparency = 1
            DropdownList.Position = UDim2.new(0, 10, 0, 45)
            DropdownList.Size = UDim2.new(1, -20, 0, 0)
            DropdownList.Parent = DropdownFrame

            local ListLayout = Instance.new("UIListLayout")
            ListLayout.Padding = UDim.new(0, 3)
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ListLayout.Parent = DropdownList

            local isOpen = false

            for _, option in ipairs(dropdownConfig.Options) do
                local OptionButton = Instance.new("TextButton")
                OptionButton.Name = option
                OptionButton.BackgroundColor3 = Colors.Background
                OptionButton.BorderSizePixel = 0
                OptionButton.Size = UDim2.new(1, 0, 0, 30)
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
                    DropdownButton.Text = option
                    dropdownConfig.Callback(option)
                    
                    isOpen = false
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, 40)}, 0.3)
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
                DropdownList.Size = UDim2.new(1, -20, 0, ListLayout.AbsoluteContentSize.Y)
            end)

            DropdownButton.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                if isOpen then
                    local targetSize = 50 + ListLayout.AbsoluteContentSize.Y
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, targetSize)}, 0.3)
                    Tween(DropdownIcon, {Rotation = 180}, 0.3)
                else
                    Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, 40)}, 0.3)
                    Tween(DropdownIcon, {Rotation = 0}, 0.3)
                end
            end)

            DropdownButton.MouseEnter:Connect(function()
                Tween(DropdownButton, {BackgroundColor3 = Colors.Accent}, 0.2)
            end)

            DropdownButton.MouseLeave:Connect(function()
                Tween(DropdownButton, {BackgroundColor3 = Colors.Background}, 0.2)
            end)

            return {
                Set = function(option)
                    dropdownConfig.CurrentOption = option
                    DropdownButton.Text = option
                end,
                Refresh = function(newOptions)
                    dropdownConfig.Options = newOptions
                    for _, child in ipairs(DropdownList:GetChildren()) do
                        if child:IsA("TextButton") then
                            child:Destroy()
                        end
                    end
                    
                    for _, option in ipairs(newOptions) do
                        local OptionButton = Instance.new("TextButton")
                        OptionButton.Name = option
                        OptionButton.BackgroundColor3 = Colors.Background
                        OptionButton.BorderSizePixel = 0
                        OptionButton.Size = UDim2.new(1, 0, 0, 30)
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
                            DropdownButton.Text = option
                            dropdownConfig.Callback(option)
                            
                            isOpen = false
                            Tween(DropdownFrame, {Size = UDim2.new(1, 0, 0, 40)}, 0.3)
                            Tween(DropdownIcon, {Rotation = 0}, 0.3)
                        end)

                        OptionButton.MouseEnter:Connect(function()
                            Tween(OptionButton, {BackgroundColor3 = Colors.Accent}, 0.2)
                        end)

                        OptionButton.MouseLeave:Connect(function()
                            Tween(OptionButton, {BackgroundColor3 = Colors.Background}, 0.2)
                        end)
                    end
                end
            }
        end

        function Tab:CreateColorPicker(config)
            local colorConfig = {
                Name = config.Name or "Color Picker",
                Color = config.Color or Color3.fromRGB(255, 255, 255),
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local ColorFrame = Instance.new("Frame")
            ColorFrame.Name = "ColorPicker"
            ColorFrame.BackgroundColor3 = Colors.Secondary
            ColorFrame.BorderSizePixel = 0
            ColorFrame.Size = UDim2.new(1, 0, 0, 40)
            ColorFrame.Parent = TabContent

            local ColorCorner = Instance.new("UICorner")
            ColorCorner.CornerRadius = UDim.new(0, 8)
            ColorCorner.Parent = ColorFrame

            local ColorLabel = Instance.new("TextLabel")
            ColorLabel.Name = "Label"
            ColorLabel.BackgroundTransparency = 1
            ColorLabel.Position = UDim2.new(0, 15, 0, 0)
            ColorLabel.Size = UDim2.new(0.7, 0, 1, 0)
            ColorLabel.Font = Enum.Font.Gotham
            ColorLabel.Text = colorConfig.Name
            ColorLabel.TextColor3 = Colors.Text
            ColorLabel.TextSize = 14
            ColorLabel.TextXAlignment = Enum.TextXAlignment.Left
            ColorLabel.Parent = ColorFrame

            local ColorDisplay = Instance.new("Frame")
            ColorDisplay.Name = "ColorDisplay"
            ColorDisplay.BackgroundColor3 = colorConfig.Color
            ColorDisplay.BorderSizePixel = 0
            ColorDisplay.Position = UDim2.new(1, -45, 0.5, -12)
            ColorDisplay.Size = UDim2.new(0, 35, 0, 24)
            ColorDisplay.Parent = ColorFrame

            local ColorDisplayCorner = Instance.new("UICorner")
            ColorDisplayCorner.CornerRadius = UDim.new(0, 6)
            ColorDisplayCorner.Parent = ColorDisplay

            local ColorButton = Instance.new("TextButton")
            ColorButton.Name = "ColorButton"
            ColorButton.BackgroundTransparency = 1
            ColorButton.Size = UDim2.new(1, 0, 1, 0)
            ColorButton.Text = ""
            ColorButton.Parent = ColorDisplay

            local PickerFrame = Instance.new("Frame")
            PickerFrame.Name = "Picker"
            PickerFrame.BackgroundColor3 = Colors.Background
            PickerFrame.BorderSizePixel = 0
            PickerFrame.Position = UDim2.new(0.5, -100, 0.5, -100)
            PickerFrame.Size = UDim2.new(0, 200, 0, 200)
            PickerFrame.Visible = false
            PickerFrame.Parent = ScreenGui
            PickerFrame.ZIndex = 10

            local PickerCorner = Instance.new("UICorner")
            PickerCorner.CornerRadius = UDim.new(0, 8)
            PickerCorner.Parent = PickerFrame

            local RSlider = Instance.new("Frame")
            RSlider.Name = "R"
            RSlider.BackgroundColor3 = Colors.Secondary
            RSlider.BorderSizePixel = 0
            RSlider.Position = UDim2.new(0, 10, 0, 20)
            RSlider.Size = UDim2.new(1, -20, 0, 30)
            RSlider.Parent = PickerFrame

            local RCorner = Instance.new("UICorner")
            RCorner.CornerRadius = UDim.new(0, 6)
            RCorner.Parent = RSlider

            local RLabel = Instance.new("TextLabel")
            RLabel.BackgroundTransparency = 1
            RLabel.Position = UDim2.new(0, 10, 0, 0)
            RLabel.Size = UDim2.new(0, 20, 1, 0)
            RLabel.Font = Enum.Font.GothamBold
            RLabel.Text = "R"
            RLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            RLabel.TextSize = 14
            RLabel.Parent = RSlider

            local RValue = Instance.new("TextLabel")
            RValue.BackgroundTransparency = 1
            RValue.Position = UDim2.new(1, -40, 0, 0)
            RValue.Size = UDim2.new(0, 30, 1, 0)
            RValue.Font = Enum.Font.Gotham
            RValue.Text = tostring(math.floor(colorConfig.Color.R * 255))
            RValue.TextColor3 = Colors.Text
            RValue.TextSize = 12
            RValue.Parent = RSlider

            local GSlider = Instance.new("Frame")
            GSlider.Name = "G"
            GSlider.BackgroundColor3 = Colors.Secondary
            GSlider.BorderSizePixel = 0
            GSlider.Position = UDim2.new(0, 10, 0, 60)
            GSlider.Size = UDim2.new(1, -20, 0, 30)
            GSlider.Parent = PickerFrame

            local GCorner = Instance.new("UICorner")
            GCorner.CornerRadius = UDim.new(0, 6)
            GCorner.Parent = GSlider

            local GLabel = Instance.new("TextLabel")
            GLabel.BackgroundTransparency = 1
            GLabel.Position = UDim2.new(0, 10, 0, 0)
            GLabel.Size = UDim2.new(0, 20, 1, 0)
            GLabel.Font = Enum.Font.GothamBold
            GLabel.Text = "G"
            GLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            GLabel.TextSize = 14
            GLabel.Parent = GSlider

            local GValue = Instance.new("TextLabel")
            GValue.BackgroundTransparency = 1
            GValue.Position = UDim2.new(1, -40, 0, 0)
            GValue.Size = UDim2.new(0, 30, 1, 0)
            GValue.Font = Enum.Font.Gotham
            GValue.Text = tostring(math.floor(colorConfig.Color.G * 255))
            GValue.TextColor3 = Colors.Text
            GValue.TextSize = 12
            GValue.Parent = GSlider

            local BSlider = Instance.new("Frame")
            BSlider.Name = "B"
            BSlider.BackgroundColor3 = Colors.Secondary
            BSlider.BorderSizePixel = 0
            BSlider.Position = UDim2.new(0, 10, 0, 100)
            BSlider.Size = UDim2.new(1, -20, 0, 30)
            BSlider.Parent = PickerFrame

            local BCorner = Instance.new("UICorner")
            BCorner.CornerRadius = UDim.new(0, 6)
            BCorner.Parent = BSlider

            local BLabel = Instance.new("TextLabel")
            BLabel.BackgroundTransparency = 1
            BLabel.Position = UDim2.new(0, 10, 0, 0)
            BLabel.Size = UDim2.new(0, 20, 1, 0)
            BLabel.Font = Enum.Font.GothamBold
            BLabel.Text = "B"
            BLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
            BLabel.TextSize = 14
            BLabel.Parent = BSlider

            local BValue = Instance.new("TextLabel")
            BValue.BackgroundTransparency = 1
            BValue.Position = UDim2.new(1, -40, 0, 0)
            BValue.Size = UDim2.new(0, 30, 1, 0)
            BValue.Font = Enum.Font.Gotham
            BValue.Text = tostring(math.floor(colorConfig.Color.B * 255))
            BValue.TextColor3 = Colors.Text
            BValue.TextSize = 12
            BValue.Parent = BSlider

            local ConfirmButton = Instance.new("TextButton")
            ConfirmButton.Name = "Confirm"
            ConfirmButton.BackgroundColor3 = Colors.Highlight
            ConfirmButton.BorderSizePixel = 0
            ConfirmButton.Position = UDim2.new(0, 10, 0, 150)
            ConfirmButton.Size = UDim2.new(1, -20, 0, 35)
            ConfirmButton.Font = Enum.Font.GothamBold
            ConfirmButton.Text = "Confirm"
            ConfirmButton.TextColor3 = Colors.Text
            ConfirmButton.TextSize = 14
            ConfirmButton.Parent = PickerFrame

            local ConfirmCorner = Instance.new("UICorner")
            ConfirmCorner.CornerRadius = UDim.new(0, 6)
            ConfirmCorner.Parent = ConfirmButton

            local r, g, b = colorConfig.Color.R, colorConfig.Color.G, colorConfig.Color.B

            local function updateColor()
                local newColor = Color3.fromRGB(r * 255, g * 255, b * 255)
                ColorDisplay.BackgroundColor3 = newColor
                colorConfig.Color = newColor
                colorConfig.Callback(newColor)
            end

            ColorButton.MouseButton1Click:Connect(function()
                PickerFrame.Visible = not PickerFrame.Visible
            end)

            ConfirmButton.MouseButton1Click:Connect(function()
                PickerFrame.Visible = false
                updateColor()
            end)

            ConfirmButton.MouseEnter:Connect(function()
                Tween(ConfirmButton, {BackgroundColor3 = Colors.Bright}, 0.2)
            end)

            ConfirmButton.MouseLeave:Connect(function()
                Tween(ConfirmButton, {BackgroundColor3 = Colors.Highlight}, 0.2)
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
                    r, g, b = color.R, color.G, color.B
                    RValue.Text = tostring(math.floor(r * 255))
                    GValue.Text = tostring(math.floor(g * 255))
                    BValue.Text = tostring(math.floor(b * 255))
                end
            }
        end

        function Tab:CreateLabel(text)
            local LabelFrame = Instance.new("Frame")
            LabelFrame.Name = "Label"
            LabelFrame.BackgroundColor3 = Colors.Secondary
            LabelFrame.BorderSizePixel = 0
            LabelFrame.Size = UDim2.new(1, 0, 0, 35)
            LabelFrame.Parent = TabContent

            local LabelCorner = Instance.new("UICorner")
            LabelCorner.CornerRadius = UDim.new(0, 8)
            LabelCorner.Parent = LabelFrame

            local Label = Instance.new("TextLabel")
            Label.Name = "LabelText"
            Label.BackgroundTransparency = 1
            Label.Size = UDim2.new(1, 0, 1, 0)
            Label.Font = Enum.Font.Gotham
            Label.Text = text or "Label"
            Label.TextColor3 = Colors.Text
            Label.TextSize = 14
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
            ParagraphFrame.Name = "Paragraph"
            ParagraphFrame.BackgroundColor3 = Colors.Secondary
            ParagraphFrame.BorderSizePixel = 0
            ParagraphFrame.Size = UDim2.new(1, 0, 0, 80)
            ParagraphFrame.Parent = TabContent

            local ParagraphCorner = Instance.new("UICorner")
            ParagraphCorner.CornerRadius = UDim.new(0, 8)
            ParagraphCorner.Parent = ParagraphFrame

            local ParagraphTitle = Instance.new("TextLabel")
            ParagraphTitle.Name = "Title"
            ParagraphTitle.BackgroundTransparency = 1
            ParagraphTitle.Position = UDim2.new(0, 15, 0, 5)
            ParagraphTitle.Size = UDim2.new(1, -30, 0, 25)
            ParagraphTitle.Font = Enum.Font.GothamBold
            ParagraphTitle.Text = paragraphConfig.Title
            ParagraphTitle.TextColor3 = Colors.Highlight
            ParagraphTitle.TextSize = 14
            ParagraphTitle.TextXAlignment = Enum.TextXAlignment.Left
            ParagraphTitle.TextYAlignment = Enum.TextYAlignment.Top
            ParagraphTitle.Parent = ParagraphFrame

            local ParagraphContent = Instance.new("TextLabel")
            ParagraphContent.Name = "Content"
            ParagraphContent.BackgroundTransparency = 1
            ParagraphContent.Position = UDim2.new(0, 15, 0, 30)
            ParagraphContent.Size = UDim2.new(1, -30, 1, -35)
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
                    if config.Title then
                        ParagraphTitle.Text = config.Title
                    end
                    if config.Content then
                        ParagraphContent.Text = config.Content
                    end
                end
            }
        end

        function Tab:CreateKeybind(config)
            local keybindConfig = {
                Name = config.Name or "Keybind",
                CurrentKeybind = config.CurrentKeybind or "NONE",
                HoldToInteract = config.HoldToInteract or false,
                Flag = config.Flag or "",
                Callback = config.Callback or function() end
            }

            local KeybindFrame = Instance.new("Frame")
            KeybindFrame.Name = "Keybind"
            KeybindFrame.BackgroundColor3 = Colors.Secondary
            KeybindFrame.BorderSizePixel = 0
            KeybindFrame.Size = UDim2.new(1, 0, 0, 40)
            KeybindFrame.Parent = TabContent

            local KeybindCorner = Instance.new("UICorner")
            KeybindCorner.CornerRadius = UDim.new(0, 8)
            KeybindCorner.Parent = KeybindFrame

            local KeybindLabel = Instance.new("TextLabel")
            KeybindLabel.Name = "Label"
            KeybindLabel.BackgroundTransparency = 1
            KeybindLabel.Position = UDim2.new(0, 15, 0, 0)
            KeybindLabel.Size = UDim2.new(0.6, 0, 1, 0)
            KeybindLabel.Font = Enum.Font.Gotham
            KeybindLabel.Text = keybindConfig.Name
            KeybindLabel.TextColor3 = Colors.Text
            KeybindLabel.TextSize = 14
            KeybindLabel.TextXAlignment = Enum.TextXAlignment.Left
            KeybindLabel.Parent = KeybindFrame

            local KeybindButton = Instance.new("TextButton")
            KeybindButton.Name = "KeybindButton"
            KeybindButton.BackgroundColor3 = Colors.Background
            KeybindButton.BorderSizePixel = 0
            KeybindButton.Position = UDim2.new(0.6, 5, 0.5, -15)
            KeybindButton.Size = UDim2.new(0.4, -20, 0, 30)
            KeybindButton.Font = Enum.Font.Gotham
            KeybindButton.Text = keybindConfig.CurrentKeybind
            KeybindButton.TextColor3 = Colors.Highlight
            KeybindButton.TextSize = 12
            KeybindButton.Parent = KeybindFrame

            local KeybindButtonCorner = Instance.new("UICorner")
            KeybindButtonCorner.CornerRadius = UDim.new(0, 6)
            KeybindButtonCorner.Parent = KeybindButton

            local waitingForKey = false

            KeybindButton.MouseButton1Click:Connect(function()
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
            SectionFrame.Name = "Section"
            SectionFrame.BackgroundTransparency = 1
            SectionFrame.Size = UDim2.new(1, 0, 0, 30)
            SectionFrame.Parent = TabContent

            local SectionLine = Instance.new("Frame")
            SectionLine.BackgroundColor3 = Colors.Highlight
            SectionLine.BorderSizePixel = 0
            SectionLine.Position = UDim2.new(0, 0, 0.5, -1)
            SectionLine.Size = UDim2.new(1, 0, 0, 2)
            SectionLine.Parent = SectionFrame

            local SectionLabel = Instance.new("TextLabel")
            SectionLabel.BackgroundColor3 = Colors.Background
            SectionLabel.BorderSizePixel = 0
            SectionLabel.Position = UDim2.new(0.5, -50, 0.5, -10)
            SectionLabel.Size = UDim2.new(0, 100, 0, 20)
            SectionLabel.Font = Enum.Font.GothamBold
            SectionLabel.Text = name or "Section"
            SectionLabel.TextColor3 = Colors.Highlight
            SectionLabel.TextSize = 13
            SectionLabel.Parent = SectionFrame

            return SectionFrame
        end

        table.insert(Window.Tabs, Tab)

        if #Window.Tabs == 1 then
            TabContent.Visible = true
            Tween(TabButton, {BackgroundColor3 = Colors.Primary}, 0.2)
            Tween(TabButton, {TextColor3 = Colors.Text}, 0.2)
            Tween(TabIcon, {ImageColor3 = Colors.Text}, 0.2)
            Window.CurrentTab = Tab
        end

        return Tab
    end

    Tween(MainFrame, {Size = UDim2.new(0, 700, 0, 500)}, 0.5)

    return Window
end

function CrimsonUI:Destroy()
    if game:GetService("CoreGui"):FindFirstChild("CrimsonUI") then
        game:GetService("CoreGui"):FindFirstChild("CrimsonUI"):Destroy()
    end
end

function CrimsonUI:Notify(config)
    local notifyConfig = {
        Title = config.Title or "Notification",
        Content = config.Content or "This is a notification",
        Duration = config.Duration or 5,
        Image = config.Image or "rbxassetid://4384403532",
        Actions = config.Actions or {}
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
    NotificationFrame.Name = "Notification"
    NotificationFrame.BackgroundColor3 = Colors.Secondary
    NotificationFrame.BorderSizePixel = 0
    NotificationFrame.Position = UDim2.new(1, 10, 1, -80)
    NotificationFrame.Size = UDim2.new(0, 300, 0, 70)
    NotificationFrame.ClipsDescendants = true
    NotificationFrame.Parent = ScreenGui

    local NotificationCorner = Instance.new("UICorner")
    NotificationCorner.CornerRadius = UDim.new(0, 10)
    NotificationCorner.Parent = NotificationFrame

    CreateGlow(NotificationFrame)

    local NotificationIcon = Instance.new("ImageLabel")
    NotificationIcon.Name = "Icon"
    NotificationIcon.BackgroundTransparency = 1
    NotificationIcon.Position = UDim2.new(0, 10, 0.5, -20)
    NotificationIcon.Size = UDim2.new(0, 40, 0, 40)
    NotificationIcon.Image = notifyConfig.Image
    NotificationIcon.Parent = NotificationFrame

    local NotificationTitle = Instance.new("TextLabel")
    NotificationTitle.Name = "Title"
    NotificationTitle.BackgroundTransparency = 1
    NotificationTitle.Position = UDim2.new(0, 60, 0, 8)
    NotificationTitle.Size = UDim2.new(1, -70, 0, 20)
    NotificationTitle.Font = Enum.Font.GothamBold
    NotificationTitle.Text = notifyConfig.Title
    NotificationTitle.TextColor3 = Colors.Text
    NotificationTitle.TextSize = 14
    NotificationTitle.TextXAlignment = Enum.TextXAlignment.Left
    NotificationTitle.Parent = NotificationFrame

    local NotificationContent = Instance.new("TextLabel")
    NotificationContent.Name = "Content"
    NotificationContent.BackgroundTransparency = 1
    NotificationContent.Position = UDim2.new(0, 60, 0, 28)
    NotificationContent.Size = UDim2.new(1, -70, 0, 34)
    NotificationContent.Font = Enum.Font.Gotham
    NotificationContent.Text = notifyConfig.Content
    NotificationContent.TextColor3 = Colors.TextDark
    NotificationContent.TextSize = 12
    NotificationContent.TextWrapped = true
    NotificationContent.TextXAlignment = Enum.TextXAlignment.Left
    NotificationContent.TextYAlignment = Enum.TextYAlignment.Top
    NotificationContent.Parent = NotificationFrame

    Tween(NotificationFrame, {Position = UDim2.new(1, -310, 1, -80)}, 0.5)

    task.wait(notifyConfig.Duration)

    Tween(NotificationFrame, {Position = UDim2.new(1, 10, 1, -80)}, 0.5)
    task.wait(0.5)
    NotificationFrame:Destroy()

    if #ScreenGui:GetChildren() == 0 then
        ScreenGui:Destroy()
    end
end

return CrimsonUI
