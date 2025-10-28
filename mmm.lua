local CrimsonUI = {}
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
local Colors = {
	Background = Color3.fromRGB(30,30,36),
	Secondary = Color3.fromRGB(40,40,46),
	Accent = Color3.fromRGB(65,20,30),
	Primary = Color3.fromRGB(180,25,45),
	Highlight = Color3.fromRGB(220,35,55),
	Text = Color3.fromRGB(245,245,245),
	TextDark = Color3.fromRGB(180,180,180)
}
local Themes = {
	Crimson = {Primary=Color3.fromRGB(180,25,45),Highlight=Color3.fromRGB(220,35,55),Accent=Color3.fromRGB(65,20,30),Secondary=Color3.fromRGB(40,40,46),Background=Color3.fromRGB(30,30,36),Text=Color3.fromRGB(245,245,245),TextDark=Color3.fromRGB(180,180,180)},
	Midnight = {Primary=Color3.fromRGB(30,30,60),Highlight=Color3.fromRGB(50,50,90),Accent=Color3.fromRGB(20,20,40),Secondary=Color3.fromRGB(25,25,50),Background=Color3.fromRGB(15,15,30),Text=Color3.fromRGB(200,200,200),TextDark=Color3.fromRGB(150,150,150)},
	Ocean = {Primary=Color3.fromRGB(0,120,215),Highlight=Color3.fromRGB(0,160,255),Accent=Color3.fromRGB(0,90,160),Secondary=Color3.fromRGB(0,100,180),Background=Color3.fromRGB(0,80,140),Text=Color3.fromRGB(255,255,255),TextDark=Color3.fromRGB(200,200,200)},
	Forest = {Primary=Color3.fromRGB(34,139,34),Highlight=Color3.fromRGB(50,205,50),Accent=Color3.fromRGB(25,100,25),Secondary=Color3.fromRGB(30,120,30),Background=Color3.fromRGB(20,90,20),Text=Color3.fromRGB(255,255,255),TextDark=Color3.fromRGB(180,180,180)},
	Sunset = {Primary=Color3.fromRGB(255,94,0),Highlight=Color3.fromRGB(255,140,0),Accent=Color3.fromRGB(200,70,0),Secondary=Color3.fromRGB(220,80,0),Background=Color3.fromRGB(180,60,0),Text=Color3.fromRGB(255,255,255),TextDark=Color3.fromRGB(220,220,220)},
	Violet = {Primary=Color3.fromRGB(138,43,226),Highlight=Color3.fromRGB(186,85,211),Accent=Color3.fromRGB(100,30,160),Secondary=Color3.fromRGB(110,40,170),Background=Color3.fromRGB(90,25,140),Text=Color3.fromRGB(255,255,255),TextDark=Color3.fromRGB(200,200,200)},
	Rose = {Primary=Color3.fromRGB(220,20,60),Highlight=Color3.fromRGB(255,20,80),Accent=Color3.fromRGB(180,15,50),Secondary=Color3.fromRGB(200,30,70),Background=Color3.fromRGB(160,20,55),Text=Color3.fromRGB(255,220,230),TextDark=Color3.fromRGB(220,180,190)},
	Aqua = {Primary=Color3.fromRGB(0,200,200),Highlight=Color3.fromRGB(0,255,255),Accent=Color3.fromRGB(0,150,150),Secondary=Color3.fromRGB(0,170,170),Background=Color3.fromRGB(0,130,130),Text=Color3.fromRGB(255,255,255),TextDark=Color3.fromRGB(200,230,230)},
	Lime = {Primary=Color3.fromRGB(50,205,50),Highlight=Color3.fromRGB(100,255,100),Accent=Color3.fromRGB(30,150,30),Secondary=Color3.fromRGB(40,180,40),Background=Color3.fromRGB(25,130,25),Text=Color3.fromRGB(220,255,220),TextDark=Color3.fromRGB(180,220,180)},
	Amber = {Primary=Color3.fromRGB(255,191,0),Highlight=Color3.fromRGB(255,220,0),Accent=Color3.fromRGB(200,150,0),Secondary=Color3.fromRGB(220,170,0),Background=Color3.fromRGB(180,130,0),Text=Color3.fromRGB(255,255,220),TextDark=Color3.fromRGB(220,220,180)},
	Indigo = {Primary=Color3.fromRGB(75,0,130),Highlight=Color3.fromRGB(100,0,180),Accent=Color3.fromRGB(55,0,100),Secondary=Color3.fromRGB(65,0,120),Background=Color3.fromRGB(45,0,90),Text=Color3.fromRGB(220,200,255),TextDark=Color3.fromRGB(180,160,220)},
	Graphite = {Primary=Color3.fromRGB(100,100,100),Highlight=Color3.fromRGB(130,130,130),Accent=Color3.fromRGB(70,70,70),Secondary=Color3.fromRGB(80,80,80),Background=Color3.fromRGB(50,50,50),Text=Color3.fromRGB(240,240,240),TextDark=Color3.fromRGB(180,180,180)}
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
	Minimize = "rbxassetid://7733964640",
	DownArrow = "rbxassetid://10709791437"
}
CrimsonUI.Icons = Icons
local function Tween(obj,props,dur)
	local info = TweenInfo.new(dur or .3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
	local tween = TweenService:Create(obj,info,props)
	tween:Play()
	return tween
end
local function CreateGlow(p)
	local g = Instance.new("ImageLabel")
	g.Name="Glow"
	g.BackgroundTransparency=1
	g.Image="rbxassetid://5028857084"
	g.ImageColor3=Colors.Highlight
	g.ImageTransparency=.75
	g.ScaleType=Enum.ScaleType.Slice
	g.SliceCenter=Rect.new(24,24,276,276)
	g.Size=UDim2.new(1,24,1,24)
	g.Position=UDim2.new(0,-12,0,-12)
	g.ZIndex=0
	g.Parent=p
	return g
end
local function CreateLoadingScreen(p,c)
	local f = Instance.new("Frame")
	f.Name="LoadingScreen"
	f.BackgroundColor3=Colors.Background
	f.Size=UDim2.new(1,0,1,0)
	f.ZIndex=100
	f.Parent=p
	Instance.new("UICorner",f).CornerRadius=UDim.new(0,12)
	local t = Instance.new("TextLabel")
	t.BackgroundTransparency=1
	t.Position=UDim2.new(.5,0,.4,0)
	t.AnchorPoint=Vector2.new(.5,.5)
	t.Size=UDim2.new(.8,0,0,40)
	t.Font=Enum.Font.GothamBold
	t.Text=c.LoadingTitle or "Crimson UI"
	t.TextColor3=Colors.Text
	t.TextSize=28
	t.Parent=f
	local s = Instance.new("TextLabel")
	s.BackgroundTransparency=1
	s.Position=UDim2.new(.5,0,.5,0)
	s.AnchorPoint=Vector2.new(.5,.5)
	s.Size=UDim2.new(.8,0,0,20)
	s.Font=Enum.Font.Gotham
	s.Text=c.LoadingSubtitle or "by Luca Davincci"
	s.TextColor3=Colors.TextDark
	s.TextSize=16
	s.Parent=f
	local sp = Instance.new("ImageLabel")
	sp.BackgroundTransparency=1
	sp.Position=UDim2.new(.5,0,.6,0)
	sp.AnchorPoint=Vector2.new(.5,.5)
	sp.Size=UDim2.new(0,48,0,48)
	sp.Image="rbxassetid://6031097225"
	sp.ImageColor3=Colors.Highlight
	sp.Parent=f
	local spin = TweenService:Create(sp,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1),{Rotation=360})
	spin:Play()
	return {Hide=function()
		Tween(f,{BackgroundTransparency=1},.4)
		Tween(t,{TextTransparency=1},.4)
		Tween(s,{TextTransparency=1},.4)
		Tween(sp,{ImageTransparency=1},.4)
		task.delay(.5,function()f:Destroy()end)
	end}
end
local function UpdateAllElements(g)
	local mf = g:FindFirstChild("MainFrame")
	if not mf then return end
	mf.BackgroundColor3=Colors.Background
	local glow = mf:FindFirstChild("Glow")
	if glow then glow.ImageColor3=Colors.Highlight end
	local tb = mf:FindFirstChild("TopBar")
	if tb then
		tb.BackgroundColor3=Colors.Accent
		tb:FindFirstChild("TopBarFix").BackgroundColor3=Colors.Accent
	end
	local tc = mf:FindFirstChild("TabContainer")
	if tc then tc.BackgroundColor3=Colors.Secondary end
	local cc = mf:FindFirstChild("ContentContainer")
	if cc then
		for _,tab in ipairs(cc:GetChildren())do
			if tab:IsA("ScrollingFrame")then
				tab.ScrollBarImageColor3=Colors.Highlight
				for _,el in ipairs(tab:GetChildren())do
					if el:IsA("Frame")then
						el.BackgroundColor3=Colors.Secondary
						if el:FindFirstChild("SliderBackground")then
							el.SliderBackground.BackgroundColor3=Colors.Background
							el.SliderFill.BackgroundColor3=Colors.Highlight
						end
						if el:FindFirstChild("InputBox")then el.InputBox.BackgroundColor3=Colors.Background end
						if el:FindFirstChild("ToggleButton")then
							local tog = el.ToggleButton
							local cir = tog:FindFirstChild("ToggleCircle")
							if cir and cir.Position.X.Offset>10 then tog.BackgroundColor3=Colors.Highlight else tog.BackgroundColor3=Colors.Background end
						end
						if el:FindFirstChild("DropdownButton")then
							el.DropdownButton.BackgroundColor3=Colors.Background
							local ic = el.DropdownButton:FindFirstChild("DropdownIcon")
							if ic then ic.ImageColor3=Colors.TextDark end
						end
						if el:FindFirstChild("KeybindButton")then
							el.KeybindButton.BackgroundColor3=Colors.Background
							el.KeybindButton.TextColor3=Colors.Highlight
						end
					end
				end
			end
		end
	end
	local mi = tb and tb:FindFirstChild("MinimizeButton"):FindFirstChild("Icon")
	if mi then mi.ImageColor3=Colors.TextDark end
end
function CrimsonUI:SetTheme(n)
	if not Themes[n] then return end
	for k,v in pairs(Themes[n])do Colors[k]=v end
	local g = CoreGui:FindFirstChild("CrimsonUI")
	if g then UpdateAllElements(g) end
end
function CrimsonUI:CreateWindow(c)
	local cfg = {Name=c.Name or "Crimson UI",LoadingEnabled=c.LoadingEnabled~=false,LoadingTitle=c.LoadingTitle or "Crimson UI",LoadingSubtitle=c.LoadingSubtitle or "by Luca Davincci"}
	local sg = Instance.new("ScreenGui")
	sg.Name="CrimsonUI"
	sg.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	sg.ResetOnSpawn=false
	sg.Parent=CoreGui
	local mf = Instance.new("Frame")
	mf.Name="MainFrame"
	mf.BackgroundColor3=Colors.Background
	mf.Position=UDim2.new(.5,-300,.5,-200)
	mf.Size=UDim2.new(0,0,0,0)
	mf.ClipsDescendants=true
	mf.Visible=false
	mf.Parent=sg
	Instance.new("UICorner",mf).CornerRadius=UDim.new(0,12)
	CreateGlow(mf)
	local ls
	if cfg.LoadingEnabled then ls=CreateLoadingScreen(sg,cfg) end
	local tb = Instance.new("Frame")
	tb.Name="TopBar"
	tb.BackgroundColor3=Colors.Accent
	tb.Size=UDim2.new(1,0,0,45)
	tb.Parent=mf
	Instance.new("UICorner",tb).CornerRadius=UDim.new(0,12)
	local tbf = Instance.new("Frame")
	tbf.Name="TopBarFix"
	tbf.BackgroundColor3=Colors.Accent
	tbf.Position=UDim2.new(0,0,1,-12)
	t0.Size=UDim2.new(1,0,0,12)
	tbf.Parent=tb
	local title = Instance.new("TextLabel")
	title.Name="Title"
	title.BackgroundTransparency=1
	title.Position=UDim2.new(0,20,0,0)
	title.Size=UDim2.new(.5,0,1,0)
	title.Font=Enum.Font.GothamBold
	title.Text=cfg.Name
	title.TextColor3=Colors.Text
	title.TextSize=16
	title.TextXAlignment=Enum.TextXAlignment.Left
	title.Parent=tb
	local min = Instance.new("TextButton")
	min.Name="MinimizeButton"
	min.BackgroundTransparency=1
	min.Position=UDim2.new(1,-50,.5,-14)
	min.Size=UDim2.new(0,28,0,28)
	min.Text=""
	min.ZIndex=10
	min.Parent=tb
	local mi = Instance.new("ImageLabel")
	mi.Name="Icon"
	mi.BackgroundTransparency=1
	mi.Size=UDim2.new(1,0,1,0)
	mi.Image=Icons.Minimize
	mi.ImageColor3=Colors.TextDark
	mi.Parent=min
	local tc = Instance.new("Frame")
	tc.Name="TabContainer"
	tc.BackgroundColor3=Colors.Secondary
	tc.Position=UDim2.new(0,0,0,45)
	tc.Size=UDim2.new(1,0,0,45)
	tc.Parent=mf
	local tl = Instance.new("ScrollingFrame")
	tl.Name="TabList"
	tl.BackgroundTransparency=1
	tl.Position=UDim2.new(0,10,0,0)
	tl.Size=UDim2.new(1,-20,1,0)
	tl.ScrollBarThickness=0
	tl.CanvasSize=UDim2.new(0,0,0,0)
	tl.ScrollingDirection=Enum.ScrollingDirection.X
	tl.Parent=tc
	local tll = Instance.new("UIListLayout")
	tll.FillDirection=Enum.FillDirection.Horizontal
	tll.Padding=UDim.new(0,8)
	tll.SortOrder=Enum.SortOrder.LayoutOrder
	tll.Parent=tl
	local cc = Instance.new("Frame")
	cc.Name="ContentContainer"
	cc.BackgroundTransparency=1
	cc.Position=UDim2.new(0,0,0,90)
	cc.Size=UDim2.new(1,0,1,-90)
	cc.Parent=mf
	local dragging,dragInput,dragStart,startPos
	local function update(i)
		local d = i.Position-dragStart
		mf.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
	end
	tb.InputBegan:Connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 or (isMobile and i.UserInputType==Enum.UserInputType.Touch)then
			dragging=true
			dragStart=i.Position
			startPos=mf.Position
			i.Changed:Connect(function()
				if i.UserInputState==Enum.UserInputState.End then dragging=false end
			end)
		end
	end)
	tb.InputChanged:Connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseMovement or (isMobile and i.UserInputType==Enum.UserInputType.Touch)then
			dragInput=i
		end
	end)
	UserInputService.InputChanged:Connect(function(i)
		if i==dragInput and dragging then update(i) end
	end)
	local minimized=false
	min.MouseButton1Click:Connect(function()
		minimized=not minimized
		if minimized then
			Tween(mf,{Size=UDim2.new(0,600,0,45)},.3)
			Tween(mi,{Rotation=180},.3)
		else
			Tween(mf,{Size=UDim2.new(0,600,0,400)},.3)
			Tween(mi,{Rotation=0},.3)
		end
	end)
	min.MouseEnter:Connect(function()Tween(mi,{ImageColor3=Colors.Highlight},.2)end)
	min.MouseLeave:Connect(function()Tween(mi,{ImageColor3=Colors.TextDark},.2)end)
	tll:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		tl.CanvasSize=UDim2.new(0,tll.AbsoluteContentSize.X+20,0,0)
	end)
	local win={Tabs={},CurrentTab=nil}
	function win:CreateTab(c)
		local cfg={Name=c.Name or "Tab",Icon=c.Icon or Icons.Home}
		local tb = Instance.new("TextButton")
		tb.Name=cfg.Name
		tb.BackgroundColor3=Colors.Background
		tb.Size=UDim2.new(0,100,0,35)
		tb.AutoButtonColor=false
		tb.Text=""
		tb.Parent=tl
		if isMobile then tb.Size=UDim2.new(0,120,0,50) end
		Instance.new("UICorner",tb).CornerRadius=UDim.new(0,8)
		local ti = Instance.new("ImageLabel")
		ti.Name="Icon"
		ti.BackgroundTransparency=1
		ti.Position=UDim2.new(0,8,.5,-10)
		ti.Size=UDim2.new(0,20,0,20)
		ti.Image=cfg.Icon
		ti.ImageColor3=Colors.TextDark
		ti.Parent=tb
		local tlbl = Instance.new("TextLabel")
		tlbl.Name="Label"
		tlbl.BackgroundTransparency=1
		tlbl.Position=UDim2.new(0,32,0,0)
		tlbl.Size=UDim2.new(1,-36,1,0)
		tlbl.Font=Enum.Font.GothamMedium
		tlbl.Text=cfg.Name
		tlbl.TextColor3=Colors.TextDark
		tlbl.TextSize=13
		tlbl.TextXAlignment=Enum.TextXAlignment.Left
		tlbl.Parent=tb
		local tc = Instance.new("ScrollingFrame")
		tc.Name=cfg.Name.."Content"
		tc.BackgroundTransparency=1
		tc.Size=UDim2.new(1,0,1,0)
		tc.ScrollBarThickness=4
		tc.ScrollBarImageColor3=Colors.Highlight
		tc.CanvasSize=UDim2.new(0,0,0,0)
		tc.Visible=false
		tc.Parent=cc
		local cl = Instance.new("UIListLayout")
		cl.Padding=UDim.new(0,8)
		cl.SortOrder=Enum.SortOrder.LayoutOrder
		cl.Parent=tc
		local cp = Instance.new("UIPadding")
		cp.PaddingTop=UDim.new(0,12)
		cp.PaddingBottom=UDim.new(0,12)
		cp.PaddingLeft=UDim.new(0,16)
		cp.PaddingRight=UDim.new(0,16)
		cp.Parent=tc
		cl:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			tc.CanvasSize=UDim2.new(0,0,0,cl.AbsoluteContentSize.Y+24)
		end)
		local tab={Button=tb,Content=tc,Elements={}}
		tb.MouseButton1Click:Connect(function()
			for _,t in pairs(win.Tabs)do
				t.Content.Visible=false
				Tween(t.Button,{BackgroundColor3=Colors.Background},.2)
				Tween(t.Button.Icon,{ImageColor3=Colors.TextDark},.2)
				Tween(t.Button.Label,{TextColor3=Colors.TextDark},.2)
			end
			tc.Visible=true
			Tween(tb,{BackgroundColor3=Colors.Primary},.2)
			Tween(ti,{ImageColor3=Colors.Text},.2)
			Tween(tlbl,{TextColor3=Colors.Text},.2)
			win.CurrentTab=tab
		end)
		tb.MouseEnter:Connect(function()
			if win.CurrentTab~=tab then Tween(tb,{BackgroundColor3=Colors.Accent},.2) end
		end)
		tb.MouseLeave:Connect(function()
			if win.CurrentTab~=tab then Tween(tb,{BackgroundColor3=Colors.Background},.2) end
		end)
		function tab:CreateButton(c)
			local cfg={Name=c.Name or "Button",Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 54 or 38)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local h = Instance.new("TextButton")
			h.BackgroundTransparency=1
			h.Size=UDim2.new(1,isMobile and 20 or 0,1,isMobile and 20 or 0)
			h.Position=UDim2.new(0,isMobile and -10 or 0,0,isMobile and -10 or 0)
			h.Text=""
			h.ZIndex=2
			h.Parent=f
			local b = Instance.new("TextButton")
			b.BackgroundTransparency=1
			b.Size=UDim2.new(1,0,1,0)
			b.Font=Enum.Font.GothamMedium
			b.Text=cfg.Name
			b.TextColor3=Colors.Text
			b.TextSize=13
			b.Parent=f
			h.MouseButton1Click:Connect(function()
				Tween(f,{BackgroundColor3=Colors.Highlight},.1)
				task.delay(.1,function()Tween(f,{BackgroundColor3=Colors.Secondary},.1)end)
				cfg.Callback()
			end)
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return b
		end
		function tab:CreateToggle(c)
			local cfg={Name=c.Name or "Toggle",CurrentValue=c.CurrentValue or false,Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 54 or 38)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local h = Instance.new("TextButton")
			h.BackgroundTransparency=1
			h.Size=UDim2.new(1,isMobile and 20 or 0,1,isMobile and 20 or 0)
			h.Position=UDim2.new(0,isMobile and -10 or 0,0,isMobile and -10 or 0)
			h.Text=""
			h.ZIndex=2
			h.Parent=f
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,0)
			l.Size=UDim2.new(.7,0,1,0)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local tog = Instance.new("TextButton")
			tog.Name="ToggleButton"
			tog.BackgroundColor3=cfg.CurrentValue and Colors.Highlight or Colors.Background
			tog.Position=UDim2.new(1,-52,.5,-11)
			tog.Size=UDim2.new(0,42,0,22)
			tog.AutoButtonColor=false
			tog.Text=""
			tog.Parent=f
			Instance.new("UICorner",tog).CornerRadius=UDim.new(1,0)
			local cir = Instance.new("Frame")
			cir.Name="ToggleCircle"
			cir.BackgroundColor3=Colors.Text
			cir.Position=cfg.CurrentValue and UDim2.new(1,-20,.5,-9) or UDim2.new(0,2,.5,-9)
			cir.Size=UDim2.new(0,18,0,18)
			cir.Parent=tog
			Instance.new("UICorner",cir).CornerRadius=UDim.new(1,0)
			h.MouseButton1Click:Connect(function()
				cfg.CurrentValue=not cfg.CurrentValue
				if cfg.CurrentValue then
					Tween(tog,{BackgroundColor3=Colors.Highlight},.2)
					Tween(cir,{Position=UDim2.new(1,-20,.5,-9)},.2)
				else
					Tween(tog,{BackgroundColor3=Colors.Background},.2)
					Tween(cir,{Position=UDim2.new(0,2,.5,-9)},.2)
				end
				cfg.Callback(cfg.CurrentValue)
			end)
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return {Set=function(v)
				cfg.CurrentValue=v
				if v then
					Tween(tog,{BackgroundColor3=Colors.Highlight},.2)
					Tween(cir,{Position=UDim2.new(1,-20,.5,-9)},.2)
				else
					Tween(tog,{BackgroundColor3=Colors.Background},.2)
					Tween(cir,{Position=UDim2.new(0,2,.5,-9)},.2)
				end
			end}
		end
		function tab:CreateSlider(c)
			local cfg={Name=c.Name or "Slider",Range=c.Range or {0,100},Increment=c.Increment or 1,CurrentValue=c.CurrentValue or 50,Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 70 or 54)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local h = Instance.new("TextButton")
			h.BackgroundTransparency=1
			h.Size=UDim2.new(1,isMobile and 20 or 0,1,isMobile and 20 or 0)
			h.Position=UDim2.new(0,isMobile and -10 or 0,0,isMobile and -10 or 0)
			h.Text=""
			h.ZIndex=2
			h.Parent=f
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,8)
			l.Size=UDim2.new(.7,0,0,16)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local v = Instance.new("TextLabel")
			v.BackgroundTransparency=1
			v.Position=UDim2.new(.7,0,0,8)
			v.Size=UDim2.new(.3,-12,0,16)
			v.Font=Enum.Font.GothamBold
			v.Text=tostring(cfg.CurrentValue)
			v.TextColor3=Colors.Highlight
			v.TextSize=13
			v.TextXAlignment=Enum.TextXAlignment.Right
			v.Parent=f
			local bg = Instance.new("Frame")
			bg.Name="SliderBackground"
			bg.BackgroundColor3=Colors.Background
			bg.Position=UDim2.new(0,12,0,isMobile and 40 or 32)
			bg.Size=UDim2.new(1,-24,0,6)
			bg.Parent=f
			Instance.new("UICorner",bg).CornerRadius=UDim.new(1,0)
			local fill = Instance.new("Frame")
			fill.Name="SliderFill"
			fill.BackgroundColor3=Colors.Highlight
			fill.Size=UDim2.new((cfg.CurrentValue-cfg.Range[1])/(cfg.Range[2]-cfg.Range[1]),0,1,0)
			fill.Parent=bg
			Instance.new("UICorner",fill).CornerRadius=UDim.new(1,0)
			local dragging=false
			local function update(i)
				local p = math.clamp((i.Position.X-bg.AbsolutePosition.X)/bg.AbsoluteSize.X,0,1)
				local val = math.floor(((p*(cfg.Range[2]-cfg.Range[1])+cfg.Range[1])/cfg.Increment+.5))*cfg.Increment
				val = math.clamp(val,cfg.Range[1],cfg.Range[2])
				cfg.CurrentValue=val
				v.Text=tostring(val)
				Tween(fill,{Size=UDim2.new(p,0,1,0)},.1)
				cfg.Callback(val)
			end
			h.InputBegan:Connect(function(i)
				if i.UserInputType==Enum.UserInputType.MouseButton1 or (isMobile and i.UserInputType==Enum.UserInputType.Touch)then
					dragging=true
					update(i)
				end
			end)
			h.InputChanged:Connect(function(i)
				if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or (isMobile and i.UserInputType==Enum.UserInputType.Touch))then
					update(i)
				end
			end)
			UserInputService.InputEnded:Connect(function(i)
				if i.UserInputType==Enum.UserInputType.MouseButton1 or (isMobile and i.UserInputType==Enum.UserInputType.Touch)then
					dragging=false
				end
			end)
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return {Set=function(val)
				val = math.clamp(val,cfg.Range[1],cfg.Range[2])
				cfg.CurrentValue=val
				v.Text=tostring(val)
				local p = (val-cfg.Range[1])/(cfg.Range[2]-cfg.Range[1])
				Tween(fill,{Size=UDim2.new(p,0,1,0)},.2)
			end}
		end
		function tab:CreateInput(c)
			local cfg={Name=c.Name or "Input",PlaceholderText=c.PlaceholderText or "Enter text...",RemoveTextAfterFocusLost=c.RemoveTextAfterFocusLost or false,Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 80 or 64)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,8)
			l.Size=UDim2.new(1,-24,0,16)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local box = Instance.new("TextBox")
			box.Name="InputBox"
			box.BackgroundColor3=Colors.Background
			box.Position=UDim2.new(0,12,0,isMobile and 40 or 32)
			box.Size=UDim2.new(1,-24,0,isMobile and 32 or 26)
			box.Font=Enum.Font.Gotham
			box.PlaceholderText=cfg.PlaceholderText
			box.PlaceholderColor3=Colors.TextDark
			box.Text=""
			box.TextColor3=Colors.Text
			box.TextSize=13
			box.TextXAlignment=Enum.TextXAlignment.Left
			box.ClearTextOnFocus=false
			box.Parent=f
			Instance.new("UICorner",box).CornerRadius=UDim.new(0,6)
			Instance.new("UIPadding",box).PaddingLeft=UDim.new(0,8)
			Instance.new("UIPadding",box).PaddingRight=UDim.new(0,8)
			box.FocusLost:Connect(function(ep)
				if ep then
					cfg.Callback(box.Text)
					if cfg.RemoveTextAfterFocusLost then box.Text="" end
				end
				Tween(box,{BackgroundColor3=Colors.Background},.2)
			end)
			box.Focused:Connect(function()Tween(box,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return box
		end
		function tab:CreateDropdown(c)
			local cfg={Name=c.Name or "Dropdown",Options=c.Options or {"Option 1","Option 2","Option 3"},CurrentOption=c.CurrentOption or c.Options[1],Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 54 or 38)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,0)
			l.Size=UDim2.new(.5,0,1,0)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local btn = Instance.new("TextButton")
			btn.Name="DropdownButton"
			btn.BackgroundColor3=Colors.Background
			btn.Position=UDim2.new(.5,4,.5,-13)
			btn.Size=UDim2.new(.5,-16,0,26)
			btn.AutoButtonColor=false
			btn.Font=Enum.Font.Gotham
			btn.Text=cfg.CurrentOption
			btn.TextColor3=Colors.Text
			btn.TextSize=12
			btn.TextXAlignment=Enum.TextXAlignment.Left
			btn.Parent=f
			Instance.new("UICorner",btn).CornerRadius=UDim.new(0,6)
			Instance.new("UIPadding",btn).PaddingLeft=UDim.new(0,8)
			local ic = Instance.new("ImageLabel")
			ic.Name="DropdownIcon"
			ic.BackgroundTransparency=1
			ic.Position=UDim2.new(1,-22,.5,-8)
			ic.Size=UDim2.new(0,16,0,16)
			ic.Image=Icons.DownArrow
			ic.ImageColor3=Colors.TextDark
			ic.Parent=btn
			local list = Instance.new("ScrollingFrame")
			list.Name="DropdownList"
			list.BackgroundColor3=Colors.Background
			list.Size=UDim2.new(.5,-16,0,0)
			list.Position=UDim2.new(.5,4,1,2)
			list.CanvasSize=UDim2.new(0,0,0,0)
			list.ScrollBarThickness=2
			list.ScrollBarImageColor3=Colors.Highlight
			list.Visible=false
			list.ClipsDescendants=true
			list.Parent=f
			Instance.new("UICorner",list).CornerRadius=UDim.new(0,6)
			local ll = Instance.new("UIListLayout")
			ll.Padding=UDim.new(0,2)
			ll.SortOrder=Enum.SortOrder.LayoutOrder
			ll.Parent=list
			local lp = Instance.new("UIPadding")
			lp.PaddingTop=UDim.new(0,4)
			lp.PaddingBottom=UDim.new(0,4)
			lp.PaddingLeft=UDim.new(0,4)
			lp.PaddingRight=UDim.new(0,4)
			lp.Parent=list
			local open=false
			local closeConn
			local function updateSize()
				local h = ll.AbsoluteContentSize.Y+8
				list.Size=UDim2.new(.5,-16,0,math.min(h,120))
				list.CanvasSize=UDim2.new(0,0,0,ll.AbsoluteContentSize.Y+8)
			end
			local function add(o)
				local b = Instance.new("TextButton")
				b.BackgroundColor3=Colors.Background
				b.Size=UDim2.new(1,0,0,28)
				b.AutoButtonColor=false
				b.Font=Enum.Font.Gotham
				b.Text=o
				b.TextColor3=Colors.Text
				b.TextSize=12
				b.Parent=list
				Instance.new("UICorner",b).CornerRadius=UDim.new(0,4)
				b.MouseButton1Click:Connect(function()
					cfg.CurrentOption=o
					btn.Text=o
					cfg.Callback(o)
					open=false
					list.Visible=false
					Tween(ic,{Rotation=0},.3)
					if closeConn then closeConn:Disconnect() end
				end)
				b.MouseEnter:Connect(function()Tween(b,{BackgroundColor3=Colors.Accent},.2)end)
				b.MouseLeave:Connect(function()Tween(b,{BackgroundColor3=Colors.Background},.2)end)
			end
			for _,o in ipairs(cfg.Options)do add(o) end
			ll:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)
			local function openList()
				open=true
				list.Visible=true
				updateSize()
				Tween(ic,{Rotation=180},.3)
				closeConn = UserInputService.InputBegan:Connect(function(i)
					if i.UserInputType==Enum.UserInputType.MouseButton1 or (isMobile and i.UserInputType==Enum.UserInputType.Touch)then
						local mp = i.Position
						local lr = list.AbsolutePosition
						local ls = list.AbsoluteSize
						local br = btn.AbsolutePosition
						local bs = btn.AbsoluteSize
						local inList = mp.X>=lr.X and mp.X<=lr.X+ls.X and mp.Y>=lr.Y and mp.Y<=lr.Y+ls.Y
						local inBtn = mp.X>=br.X and mp.X<=br.X+bs.X and mp.Y>=br.Y and mp.Y<=br.Y+bs.Y
						if not (inList or inBtn)then
							open=false
							list.Visible=false
							Tween(ic,{Rotation=0},.3)
							if closeConn then closeConn:Disconnect() end
						end
					end
				end)
			end
			btn.MouseButton1Click:Connect(function()
				if open then
					open=false
					list.Visible=false
					Tween(ic,{Rotation=0},.3)
					if closeConn then closeConn:Disconnect() end
				else
					openList()
				end
			end)
			btn.MouseEnter:Connect(function()
				if not open then Tween(btn,{BackgroundColor3=Colors.Accent},.2) end
			end)
			btn.MouseLeave:Connect(function()
				if not open then Tween(btn,{BackgroundColor3=Colors.Background},.2) end
			end)
			return {Set=function(o)
				if table.find(cfg.Options,o)then
					cfg.CurrentOption=o
					btn.Text=o
				end
			end,Add=function(o)
				table.insert(cfg.Options,o)
				add(o)
				updateSize()
			end,Remove=function(o)
				local i = table.find(cfg.Options,o)
				if i then
					table.remove(cfg.Options,i)
					for _,c in ipairs(list:GetChildren())do
						if c:IsA("TextButton")and c.Text==o then c:Destroy() break end
					end
					updateSize()
				end
			end}
		end
		function tab:CreateColorPicker(c)
			local cfg={Name=c.Name or "Color Picker",Color=c.Color or Color3.fromRGB(255,255,255),Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 54 or 38)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local h = Instance.new("TextButton")
			h.BackgroundTransparency=1
			h.Size=UDim2.new(1,isMobile and 20 or 0,1,isMobile and 20 or 0)
			h.Position=UDim2.new(0,isMobile and -10 or 0,0,isMobile and -10 or 0)
			h.Text=""
			h.ZIndex=2
			h.Parent=f
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,0)
			l.Size=UDim2.new(.7,0,1,0)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local disp = Instance.new("Frame")
			disp.Name="ColorDisplay"
			disp.BackgroundColor3=cfg.Color
			disp.Position=UDim2.new(1,-40,.5,-11)
			disp.Size=UDim2.new(0,32,0,22)
			disp.Parent=f
			Instance.new("UICorner",disp).CornerRadius=UDim.new(0,6)
			h.MouseButton1Click:Connect(function()cfg.Callback(cfg.Color)end)
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return {Set=function(col)
				cfg.Color=col
				disp.BackgroundColor3=col
			end}
		end
		function tab:CreateLabel(t)
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 48 or 32)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Size=UDim2.new(1,0,1,0)
			l.Font=Enum.Font.GothamMedium
			l.Text=t or "Label"
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.Parent=f
			return {Set=function(nt)l.Text=nt end}
		end
		function tab:CreateParagraph(c)
			local cfg={Title=c.Title or "Paragraph",Content=c.Content or "Content"}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 90 or 70)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local ti = Instance.new("TextLabel")
			ti.BackgroundTransparency=1
			ti.Position=UDim2.new(0,12,0,8)
			ti.Size=UDim2.new(1,-24,0,18)
			ti.Font=Enum.Font.GothamBold
			ti.Text=cfg.Title
			ti.TextColor3=Colors.Highlight
			ti.TextSize=13
			ti.TextXAlignment=Enum.TextXAlignment.Left
			ti.TextYAlignment=Enum.TextYAlignment.Top
			ti.Parent=f
			local co = Instance.new("TextLabel")
			co.BackgroundTransparency=1
			co.Position=UDim2.new(0,12,0,28)
			co.Size=UDim2.new(1,-24,1,-36)
			co.Font=Enum.Font.Gotham
			co.Text=cfg.Content
			co.TextColor3=Colors.TextDark
			co.TextSize=12
			co.TextWrapped=true
			co.TextXAlignment=Enum.TextXAlignment.Left
			co.TextYAlignment=Enum.TextYAlignment.Top
			co.Parent=f
			return {Set=function(nc)
				if nc.Title then ti.Text=nc.Title end
				if nc.Content then co.Text=nc.Content end
			end}
		end
		function tab:CreateKeybind(c)
			local cfg={Name=c.Name or "Keybind",CurrentKeybind=c.CurrentKeybind or "NONE",HoldToInteract=c.HoldToInteract or false,Callback=c.Callback or function()end}
			local f = Instance.new("Frame")
			f.BackgroundColor3=Colors.Secondary
			f.Size=UDim2.new(1,0,0,isMobile and 54 or 38)
			f.Parent=tc
			Instance.new("UICorner",f).CornerRadius=UDim.new(0,8)
			local h = Instance.new("TextButton")
			h.BackgroundTransparency=1
			h.Size=UDim2.new(1,isMobile and 20 or 0,1,isMobile and 20 or 0)
			h.Position=UDim2.new(0,isMobile and -10 or 0,0,isMobile and -10 or 0)
			h.Text=""
			h.ZIndex=2
			h.Parent=f
			local l = Instance.new("TextLabel")
			l.BackgroundTransparency=1
			l.Position=UDim2.new(0,12,0,0)
			l.Size=UDim2.new(.5,0,1,0)
			l.Font=Enum.Font.GothamMedium
			l.Text=cfg.Name
			l.TextColor3=Colors.Text
			l.TextSize=13
			l.TextXAlignment=Enum.TextXAlignment.Left
			l.Parent=f
			local kb = Instance.new("TextButton")
			kb.Name="KeybindButton"
			kb.BackgroundColor3=Colors.Background
			kb.Position=UDim2.new(.5,4,.5,-13)
			kb.Size=UDim2.new(.5,-16,0,26)
			kb.AutoButtonColor=false
			kb.Font=Enum.Font.Gotham
			kb.Text=cfg.CurrentKeybind
			kb.TextColor3=Colors.Highlight
			kb.TextSize=12
			kb.Parent=f
			Instance.new("UICorner",kb).CornerRadius=UDim.new(0,6)
			local waiting=false
			h.MouseButton1Click:Connect(function()
				waiting=true
				kb.Text="..."
				Tween(kb,{BackgroundColor3=Colors.Highlight},.2)
			end)
			UserInputService.InputBegan:Connect(function(i,gp)
				if waiting and not gp then
					local kn = i.KeyCode.Name
					if kn~="Unknown"then
						cfg.CurrentKeybind=kn
						kb.Text=kn
						waiting=false
						Tween(kb,{BackgroundColor3=Colors.Background},.2)
					end
				end
				if not gp and i.KeyCode.Name==cfg.CurrentKeybind then
					if cfg.HoldToInteract then cfg.Callback(true) else cfg.Callback() end
				end
			end)
			if cfg.HoldToInteract then
				UserInputService.InputEnded:Connect(function(i,gp)
					if not gp and i.KeyCode.Name==cfg.CurrentKeybind then cfg.Callback(false) end
				end)
			end
			f.MouseEnter:Connect(function()Tween(f,{BackgroundColor3=Colors.Accent},.2)end)
			f.MouseLeave:Connect(function()Tween(f,{BackgroundColor3=Colors.Secondary},.2)end)
			return {Set=function(k)
				cfg.CurrentKeybind=k
				kb.Text=k
			end}
		end
		function tab:CreateSection(n)
			local f = Instance.new("Frame")
			f.BackgroundTransparency=1
			f.Size=UDim2.new(1,0,0,26)
			f.Parent=tc
			local ln = Instance.new("Frame")
			ln.BackgroundColor3=Colors.Highlight
			ln.Position=UDim2.new(0,0,.5,0)
			ln.Size=UDim2.new(1,0,0,1)
			ln.Parent=f
			local lbl = Instance.new("TextLabel")
			lbl.BackgroundColor3=Colors.Background
			lbl.Position=UDim2.new(.5,0,.5,-9)
			lbl.AnchorPoint=Vector2.new(.5,.5)
			lbl.Size=UDim2.new(0,0,0,18)
			lbl.Font=Enum.Font.GothamBold
			lbl.Text=n or "Section"
			lbl.TextColor3=Colors.Highlight
			lbl.TextSize=12
			lbl.AutomaticSize=Enum.AutomaticSize.X
			lbl.Parent=f
			return f
		end
		table.insert(win.Tabs,tab)
		if #win.Tabs==1 then
			tc.Visible=true
			Tween(tb,{BackgroundColor3=Colors.Primary},.2)
			Tween(ti,{ImageColor3=Colors.Text},.2)
			Tween(tlbl,{TextColor3=Colors.Text},.2)
			win.CurrentTab=tab
			if ls then task.delay(.5,ls.Hide) end
			mf.Visible=true
			Tween(mf,{Size=UDim2.new(0,600,0,400)},.5)
		end
		return tab
	end
	return win
end
function CrimsonUI:Destroy()
	local g = CoreGui:FindFirstChild("CrimsonUI")
	if g then g:Destroy() end
end
function CrimsonUI:Notify(c)
	local cfg={Title=c.Title or "Notification",Content=c.Content or "This is a notification",Duration=c.Duration or 5,Image=c.Image or Icons.Bell}
	local sg = CoreGui:FindFirstChild("CrimsonUI_Notifications")
	if not sg then
		sg = Instance.new("ScreenGui")
		sg.Name="CrimsonUI_Notifications"
		sg.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
		sg.ResetOnSpawn=false
		sg.Parent=CoreGui
	end
	local nf = Instance.new("Frame")
	nf.BackgroundColor3=Colors.Secondary
	nf.Position=UDim2.new(1,10,1,-90)
	nf.Size=UDim2.new(0,320,0,80)
	nf.ClipsDescendants=true
	nf.Parent=sg
	Instance.new("UICorner",nf).CornerRadius=UDim.new(0,10)
	CreateGlow(nf).ImageColor3=Colors.Highlight
	local ic = Instance.new("ImageLabel")
	ic.BackgroundTransparency=1
	ic.Position=UDim2.new(0,12,.5,-20)
	ic.Size=UDim2.new(0,40,0,40)
	ic.Image=cfg.Image
	ic.ImageColor3=Colors.Highlight
	ic.Parent=nf
	local ti = Instance.new("TextLabel")
	ti.BackgroundTransparency=1
	ti.Position=UDim2.new(0,64,0,12)
	ti.Size=UDim2.new(1,-76,0,18)
	ti.Font=Enum.Font.GothamBold
	ti.Text=cfg.Title
	ti.TextColor3=Colors.Text
	ti.TextSize=14
	ti.TextXAlignment=Enum.TextXAlignment.Left
	ti.Parent=nf
	local co = Instance.new("TextLabel")
	co.BackgroundTransparency=1
	co.Position=UDim2.new(0,64,0,32)
	co.Size=UDim2.new(1,-76,0,36)
	co.Font=Enum.Font.Gotham
	co.Text=cfg.Content
	co.TextColor3=Colors.TextDark
	co.TextSize=12
	co.TextWrapped=true
	co.TextXAlignment=Enum.TextXAlignment.Left
	co.TextYAlignment=Enum.TextYAlignment.Top
	co.Parent=nf
	Tween(nf,{Position=UDim2.new(1,-330,1,-90)},.3)
	task.delay(cfg.Duration,function()
		Tween(nf,{Position=UDim2.new(1,10,1,-90)},.3)
		task.delay(.3,function()nf:Destroy()end)
	end)
end
return CrimsonUI
