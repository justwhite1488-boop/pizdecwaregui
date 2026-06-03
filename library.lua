-- // services
local players = game:GetService('Players')

-- // variables
local localplayer = players.LocalPlayer
local playergui = localplayer.PlayerGui

local module = {}

-- // library
function module.createwindow()
	local uiv2 = Instance.new('ScreenGui')
	uiv2.ResetOnSpawn = false
	uiv2.Parent = playergui
	uiv2.Name = 'UIv2'
	--
	local mainframe = Instance.new('Frame')
	mainframe.BackgroundTransparency = 0.05
	mainframe.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
	mainframe.BorderSizePixel = 0
	mainframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
	mainframe.Draggable = true
	mainframe.Position = UDim2.new(0.295, 0, 0.216, 0)
	mainframe.Parent = uiv2
	mainframe.Size = UDim2.new(0, 656, 0, 450)
	mainframe.Name = 'MainFrame'
	--
	local mainscale = Instance.new('UIScale')
	mainscale.Parent = mainframe
	mainscale.Scale = 1
	mainscale.Name = 'MainScale'
	--
	local uicorner = Instance.new('UICorner')
	uicorner.CornerRadius = UDim.new(0, 10)
	uicorner.Parent = mainframe
	-- // lines
	local lines = {
		{
			position = UDim2.new(0, 1, 0.093, 0),
			size = UDim2.new(0, 655, 0, 1),
		},

		{
			position = UDim2.new(0.259, 0, 0, 0),
			size = UDim2.new(0, 1, 0, 450),
		},

		{
			position = UDim2.new(-0.002, 0, 0.896, 0),
			size = UDim2.new(0, 170, 0, 1),
		},
	}
	--
	for index, value in next, lines do
		local line = Instance.new('Frame')
		line.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
		line.BorderSizePixel = 0
		line.BorderColor3 = Color3.fromRGB(27, 24, 53)
		line.Position = value.position
		line.Parent = mainframe
		line.Size = value.size
	end
	-- // title
	local frame = Instance.new('Frame')
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0, 0, 0, 0)
	frame.Parent = mainframe
	frame.Size = UDim2.new(0, 170, 0, 42)
	--
	local imagelabel = Instance.new('ImageLabel')
	imagelabel.BackgroundTransparency = 1
	imagelabel.BorderSizePixel = 0
	imagelabel.Position = UDim2.new(0.036, 0, 0.132, 0)
	imagelabel.Parent = frame
	imagelabel.Image = 'rbxassetid://116059932418685'
	imagelabel.Size = UDim2.new(0, 30, 0, 30)
	--
	local uicorner = Instance.new('UICorner')
	uicorner.CornerRadius = UDim.new(0, 5)
	uicorner.Parent = imagelabel
	--
	local textlabel = Instance.new('TextLabel')
	textlabel.BackgroundTransparency = 1
	textlabel.BorderSizePixel = 0
	textlabel.TextXAlignment = Enum.TextXAlignment.Left
	textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textlabel.TextSize = 17
	textlabel.Position = UDim2.new(1.333, 0, 0, 0)
	textlabel.Parent = imagelabel
	textlabel.Font = Enum.Font.SourceSansBold
	textlabel.Size = UDim2.new(0, 90, 0, 17)
	textlabel.Text = 'PizdecWare'
	--
	local textlabel2 = Instance.new('TextLabel')
	textlabel2.BackgroundTransparency = 1
	textlabel2.BorderSizePixel = 0
	textlabel2.TextXAlignment = Enum.TextXAlignment.Left
	textlabel2.TextColor3 = Color3.fromRGB(133, 133, 133)
	textlabel2.TextSize = 10
	textlabel2.Position = UDim2.new(1.333, 0, 0.366, 0)
	textlabel2.Parent = imagelabel
	textlabel2.Font = Enum.Font.SourceSansBold
	textlabel2.Size = UDim2.new(0, 90, 0, 19)
	textlabel2.Text = 'pizdecware.pw'
	-- // player icon, text
	local frame2 = Instance.new('Frame')
	frame2.BackgroundTransparency = 1
	frame2.BorderSizePixel = 0
	frame2.Position = UDim2.new(0.001, 0, 0.905, 0)
	frame2.Parent = mainframe
	frame2.Size = UDim2.new(0, 170, 0, 42)
	--
	local imagelabel2 = Instance.new('ImageLabel')
	imagelabel2.BackgroundTransparency = 1
	imagelabel2.BorderSizePixel = 0
	imagelabel2.Position = UDim2.new(0.036, 0, 0.132, 0)
	imagelabel2.Parent = frame2
	imagelabel2.Image = 'rbxassetid://116059932418685'
	imagelabel2.Size = UDim2.new(0, 25, 0, 25)
	--
	local uicorner2 = Instance.new('UICorner')
	uicorner2.CornerRadius = UDim.new(1, 0)
	uicorner2.Parent = imagelabel2
	--
	local textlabel3 = Instance.new('TextLabel')
	textlabel3.BackgroundTransparency = 1
	textlabel3.BorderSizePixel = 0
	textlabel3.TextXAlignment = Enum.TextXAlignment.Left
	textlabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
	textlabel3.TextSize = 12
	textlabel3.Position = UDim2.new(1.409, 0, -0.222, 0)
	textlabel3.Parent = imagelabel2
	textlabel3.Font = Enum.Font.SourceSansBold
	textlabel3.Size = UDim2.new(0, 112, 0, 23)
	textlabel3.Text = 'Art3sO'
	--
	local textlabel4 = Instance.new('TextLabel')
	textlabel4.BackgroundTransparency = 1
	textlabel4.BorderSizePixel = 0
	textlabel4.TextXAlignment = Enum.TextXAlignment.Left
	textlabel4.TextColor3 = Color3.fromRGB(133, 133, 133)
	textlabel4.TextSize = 10
	textlabel4.Position = UDim2.new(1.409, 0, 0.364, 0)
	textlabel4.Parent = imagelabel2
	textlabel4.Font = Enum.Font.SourceSansBold
	textlabel4.Size = UDim2.new(0, 63, 0, 18)
	textlabel4.Text = 'Permanent'
	-- // topbar
	local frame3 = Instance.new('Frame')
	frame3.BackgroundTransparency = 1
	frame3.BorderSizePixel = 0
	frame3.Position = UDim2.new(0.26, 0, 0, 0)
	frame3.Parent = mainframe
	frame3.Size = UDim2.new(0, 486, 0, 42)
	--
	local imagelabel3 = Instance.new('ImageLabel')
	imagelabel3.BackgroundTransparency = 1
	imagelabel3.BorderSizePixel = 0
	imagelabel3.Position = UDim2.new(0.023, 0, 0.31, 0)
	imagelabel3.Parent = frame3
	imagelabel3.Image = 'rbxassetid://15016878198'
	imagelabel3.Size = UDim2.new(0, 17, 0, 17)
	--
	local textlabel5 = Instance.new('TextLabel')
	textlabel5.BackgroundTransparency = 1
	textlabel5.BorderSizePixel = 0
	textlabel5.TextXAlignment = Enum.TextXAlignment.Left
	textlabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
	textlabel5.TextSize = 14
	textlabel5.Position = UDim2.new(0.072, 0, 0.31, 0)
	textlabel5.Parent = imagelabel2
	textlabel5.Font = Enum.Font.SourceSansBold
	textlabel5.Size = UDim2.new(0, 300, 0, 15)
	textlabel5.Text = '<font color="rgb(133,133,133)">Settings    /    </font><font color="rgb(255,255,255)">Settings</font>'
end

-- // return
return module
