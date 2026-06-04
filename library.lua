-- // services
local players = game:GetService('Players')

-- // variables
local localplayer = players.LocalPlayer
local playergui = localplayer.PlayerGui

local module = {
	elementzone = {
		tabs = {},
	},
	
	tabzone = {
		currentY = 4,
		
		sections = {},
		tabs = {},	
	},
}

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
	mainframe.Selectable = true
	mainframe.Draggable = true
	mainframe.Position = UDim2.new(0.295, 0, 0.216, 0)
	mainframe.Parent = uiv2
	mainframe.Active = true
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
	--
	for index, value in next, {{position = UDim2.new(0, 1, 0.093, 0), size = UDim2.new(0, 655, 0, 1), }, {position = UDim2.new(0.259, 0, 0, 0), size = UDim2.new(0, 1, 0, 450), }, {position = UDim2.new(-0.002, 0, 0.896, 0), size = UDim2.new(0, 170, 0, 1), }} do
		local line = Instance.new('Frame')
		line.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
		line.BorderSizePixel = 0
		line.BorderColor3 = Color3.fromRGB(27, 24, 53)
		line.Position = value.position
		line.Parent = mainframe
		line.Size = value.size
	end
	--
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
	--
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
	imagelabel2.Image = 'rbxthumb://type=AvatarHeadShot&id=' .. localplayer.UserId .. '&w=180&h=180'
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
	textlabel3.Text = localplayer.Name
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
	--
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
	textlabel5.RichText = true
	textlabel5.Position = UDim2.new(0.072, 0, 0.31, 0)
	textlabel5.Parent = frame3
	textlabel5.Font = Enum.Font.SourceSansBold
	textlabel5.Size = UDim2.new(0, 300, 0, 15)
	textlabel5.Text = '<font color="rgb(133,133,133)">Settings    /    </font><font color="rgb(255,255,255)">Settings</font>'
	--
	local uipadding = Instance.new('UIPadding')
	uipadding.PaddingBottom = UDim.new(0, 0)
	uipadding.PaddingRight = UDim.new(0, 2)
	uipadding.PaddingLeft = UDim.new(0, 2)
	uipadding.PaddingTop = UDim.new(0, 0)
	uipadding.Parent = textlabel5
	--
	local tabzone = Instance.new('Frame')
	tabzone.BackgroundTransparency = 1
	tabzone.BorderSizePixel = 0
	tabzone.Position = UDim2.new(0, 0, 0.096, 0)
	tabzone.Parent = mainframe
	tabzone.Size = UDim2.new(0, 170, 0, 364)
	tabzone.Name = 'TabZone'
	--
	local elementzone = Instance.new('ScrollingFrame')
	elementzone.BackgroundTransparency = 1
	elementzone.ScrollBarImageColor3 = Color3.fromRGB(145, 3, 239)
	elementzone.ScrollBarThickness = 0
	elementzone.ScrollingDirection = Enum.ScrollingDirection.Y
	elementzone.BorderSizePixel = 0
	elementzone.CanvasSize = UDim2.new(0, 0, 0, 0)
	elementzone.Position = UDim2.new(0.26, 0, 0.096, 0)
	elementzone.Parent = mainframe
	elementzone.Size = UDim2.new(0, 485, 0, 406)
	elementzone.Name = 'ElementZone'
	--
	local functions; functions = {
		createsection = function(...)
			local args = ...
			if not args then return end
			--
			module.tabzone.sections[args.name] = {
				yPosition = module.tabzone.currentY,
				buttons = {},
			}
			--
			local textlabel6 = Instance.new('TextLabel')
			textlabel6.BackgroundTransparency = 1
			textlabel6.BorderSizePixel = 0
			textlabel6.TextXAlignment = Enum.TextXAlignment.Left
			textlabel6.TextColor3 = Color3.fromRGB(133, 133, 133)
			textlabel6.TextSize = 13
			textlabel6.Position = UDim2.new(0, 14, 0, module.tabzone.currentY)
			textlabel6.Parent = tabzone
			textlabel6.Font = Enum.Font.SourceSansBold
			textlabel6.Size = UDim2.new(0, 140, 0, 16)
			textlabel6.Text = args.name
			--
			return args.name
		end,
		--
		createtab = function(...)
			local args = ...
			if not args then return end
			--
			if not module.tabzone.sections[args.section] then functions.createsection({name = args.section}) end
			--
			local buttonY = nil
			if #module.tabzone.sections[args.section].buttons == 0 then
				buttonY = module.tabzone.currentY + 20
			else
				local lastbutton = module.tabzone.tabs[module.tabzone.sections[args.section].buttons[#module.tabzone.sections[args.section].buttons]]
				buttonY = lastbutton.yPosition + 29
			end
			--
			table.insert(module.tabzone.sections[args.section].buttons, args.name)
			--
			module.tabzone.tabs[args.name] = {
				section = args.section,
				yPosition = buttonY,
			}
			--
			local textbutton = Instance.new('TextButton')
			textbutton.BackgroundTransparency = 1
			textbutton.BorderSizePixel = 0
			textbutton.Position = UDim2.new(0, 8, 0, buttonY)
			textbutton.Parent = tabzone
			textbutton.Font = Enum.Font.SourceSans
			textbutton.Size = UDim2.new(0, 146, 0, 25)
			textbutton.Text = ''
			--
			local uicorner3 = Instance.new('UICorner')
			uicorner3.CornerRadius = UDim.new(0, 7)
			uicorner3.Parent = textbutton
			--
			local textlabel7 = Instance.new('TextLabel')
			textlabel7.BackgroundTransparency = 1
			textlabel7.BorderSizePixel = 0
			textlabel7.TextXAlignment = Enum.TextXAlignment.Left
			textlabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
			textlabel7.TextSize = 14
			textlabel7.Position = UDim2.new(0, 36, 0, 0)
			textlabel7.Parent = textbutton
			textlabel7.Font = Enum.Font.SourceSansBold
			textlabel7.Size = UDim2.new(1, -40, 1, 0)
			textlabel7.Text = args.name
			--
			local imagelabel4 = Instance.new('ImageLabel')
			imagelabel4.BackgroundTransparency = 1
			imagelabel4.BorderSizePixel = 0
			imagelabel4.Position = UDim2.new(0, 14, 0.5, -8)
			imagelabel4.Parent = textbutton
			imagelabel4.Image = args.icon
			imagelabel4.Size = UDim2.new(0, 16, 0, 16)
			--
			local frame4 = Instance.new('Frame')
			frame4.BackgroundTransparency = 1
			frame4.BorderSizePixel = 0
			frame4.AutomaticSize = Enum.AutomaticSize.Y
			frame4.Position = UDim2.new(0, 0, 0, 0)
			frame4.Visible = false
			frame4.Parent = elementzone
			frame4.Size = UDim2.new(1, 0, 0, 0)
			frame4.Name = args.name
			--
			local uilistlayout = Instance.new('UIListLayout')
			uilistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
			uilistlayout.Padding = UDim.new(0, 8)
			uilistlayout.Parent = frame4
			--
			local uipadding2 = Instance.new('UIPadding')
			uipadding2.PaddingBottom = UDim.new(0, 7)
			uipadding2.PaddingRight = UDim.new(0, 13)
			uipadding2.PaddingLeft = UDim.new(0, 13)
			uipadding2.PaddingTop = UDim.new(0, 7)
			uipadding2.Parent = frame4
			--
			if #tabzone:GetChildren() == 2 then
				frame4.Visible = true
				textbutton.Transparency = 0.9
				--
				textlabel7.TextColor3 = Color3.fromRGB(145, 3, 239)
				imagelabel4.ImageColor3 = Color3.fromRGB(145, 3, 239)
				--
				textlabel5.Text = '<font color="rgb(133,133,133)">' .. args.section  .. '    /    ' ..  '</font><font color="rgb(255,255,255)">' .. args.name .. '</font>'
			end
			--
			textbutton.MouseButton1Click:Connect(function()
				if textbutton.Transparency > 0.9 then
					frame4.Visible = true
					textbutton.Transparency = 0.9
					--
					textlabel7.TextColor3 = Color3.fromRGB(145, 3, 239)
					imagelabel4.ImageColor3 = Color3.fromRGB(145, 3, 239)
				end
				--
				for index, value in next, tabzone:GetChildren() do
					if not value:IsA('TextButton') or value == textbutton then continue end
					value.Transparency = 1
					--
					value:FindFirstChild('TextLabel').TextColor3 = Color3.fromRGB(255, 255, 255)
					value:FindFirstChild('ImageLabel').ImageColor3 = Color3.fromRGB(255, 255, 255)
				end
				--
				for index, value in next, elementzone:GetChildren() do
					if not value:IsA('Frame') or value == frame4 then continue end
					--
					value.Visible = false
				end
				--
				textlabel5.Text = '<font color="rgb(133,133,133)">' .. args.section  .. '    /    ' ..  '</font><font color="rgb(255,255,255)">' .. args.name .. '</font>'
			end)
			--
			if not module.elementzone.tabs[args.name] then
				module.elementzone.tabs[args.name] = {
					sections = {},
					order = 0,
				}
			end
			--
			module.tabzone.currentY = buttonY + 37
			--
			local functions2; functions2 = {
				createsection = function(...)
					local args2 = ...
					if not args2 or module.elementzone.tabs[args.name].sections[args2.name] then return end
					--
					module.elementzone.tabs[args.name].order += 99
					--
					if #module.elementzone.tabs[args.name].sections > 0 then
						local frame5 = Instance.new('Frame')
						frame5.BackgroundTransparency = 1
						frame5.BorderSizePixel = 0
						frame5.LayoutOrder = module.elementzone.tabs[args.name].order
						frame5.Parent = frame4
						frame5.Size = UDim2.new(1, 0, 0, 2)
						--
						module.elementzone.tabs[args.name].order += 1
					end
					--
					local textlabel8 = Instance.new('TextLabel')
					textlabel8.BackgroundTransparency = 1
					textlabel8.BorderSizePixel = 0
					textlabel8.TextXAlignment = Enum.TextXAlignment.Left
					textlabel8.LayoutOrder = module.elementzone.tabs[args.name].order
					textlabel8.TextColor3 = Color3.fromRGB(133, 133, 133)
					textlabel8.TextSize = 13
					textlabel8.Parent = frame4
					textlabel8.Font = Enum.Font.SourceSansBold
					textlabel8.Size = UDim2.new(1, 0, 0, 14)
					textlabel8.Text = args2.name
					--
					local uipadding3 = Instance.new('UIPadding')
					uipadding3.PaddingBottom = UDim.new(0, 0)
					uipadding3.PaddingRight = UDim.new(0, 0)
					uipadding3.PaddingLeft = UDim.new(0, 10)
					uipadding3.PaddingTop = UDim.new(0, 0)
					uipadding3.Parent = textlabel8
					--
					module.elementzone.tabs[args.name].sections[args2.name] = {
						order = module.elementzone.tabs[args.name].order,
						items = {},
					}
					--
					table.insert(module.elementzone.tabs[args.name].sections, args2.name)
					--
					return args2.name
				end,
				--
				createbutton = function(...)
					local args2 = ...
					if not args2 then return end
					--
					if not module.elementzone.tabs[args.name].sections[args2.section] then functions2.createsection({name = args2.section}) end
					--
					local layoutorder = module.elementzone.tabs[args.name].sections[args2.section].order + #module.elementzone.tabs[args.name].sections[args2.section].items + 2
					--
					local frame6 = Instance.new('Frame')
					frame6.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
					frame6.BorderSizePixel = 0
					frame6.LayoutOrder = layoutorder
					frame6.Size = UDim2.new(1, 0, 0, 45)
					frame6.Parent = frame4
					frame6.Name = args2.name
					--
					local uicorner4 = Instance.new('UICorner')
					uicorner4.CornerRadius = UDim.new(0, 8)
					uicorner4.Parent = frame6
					--
					local uistroke = Instance.new('UIStroke')
					uistroke.Transparency = 0.9
					--
					local textlabel9 = Instance.new('TextLabel')
					textlabel9.BackgroundTransparency = 1
					textlabel9.BorderSizePixel = 0
					textlabel9.TextXAlignment = Enum.TextXAlignment.Left
					textlabel9.TextColor3 = Color3.fromRGB(255, 255, 255)
					textlabel9.TextSize = 16
					textlabel9.Position = UDim2.new(0.027, 0, 0.5, -8)
					textlabel9.Parent = frame6
					textlabel9.Font = Enum.Font.SourceSansBold
					textlabel9.Size = UDim2.new(0, 200, 0, 16)
					textlabel9.Text = args2.name
					textlabel9.Name = 'Name'
					--
					local textbutton2 = Instance.new('TextButton')
					textbutton2.BackgroundColor3 = Color3.fromRGB(145, 3, 239)
					textbutton2.BorderSizePixel = 0
					textbutton2.TextColor3 = Color3.fromRGB(255, 255, 255)
					textbutton2.Position = UDim2.new(0.781, 0, 0.205, 0)
					textbutton2.TextSize = 13
					textbutton2.Parent = frame6
					textbutton2.Font = Enum.Font.SourceSansBold
					textbutton2.Size = UDim2.new(0, 90, 0, 25)
					textbutton2.Text = args2.text
					--
					local uicorner5 = Instance.new('UICorner')
					uicorner5.CornerRadius = UDim.new(0, 5)
					uicorner5.Parent = textbutton2
					--
					textbutton2.MouseButton1Click:Connect(function()
						args2.callback()
					end)
					--
					table.insert(module.elementzone.tabs[args.name].sections[args2.section].items, args2.name)
					--
					return {}
				end,
				--
				createtoggle = function(...)
					local args2 = ...
					if not args2 or not module.elementzone.tabs[args.name].sections[args2.section] then return end
					--
					local layoutorder = module.elementzone.tabs[args.name].sections[args2.section].order + #module.elementzone.tabs[args.name].sections[args2.section].items + 2
					--
					local frame7 = Instance.new('Frame')
					frame7.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
					frame7.BorderSizePixel = 0
					frame7.LayoutOrder = layoutorder
					frame7.Size = UDim2.new(1, 0, 0, 45)
					frame7.Parent = frame4
					frame7.Name = args2.name
					--
					local uicorner6 = Instance.new('UICorner')
					uicorner6.CornerRadius = UDim.new(0, 8)
					uicorner6.Parent = frame7
					--
					local uistroke2 = Instance.new('UIStroke')
					uistroke2.Transparency = 0.9
					--
					local textlabel10 = Instance.new('TextLabel')
					textlabel10.BackgroundTransparency = 1
					textlabel10.BorderSizePixel = 0
					textlabel10.TextXAlignment = Enum.TextXAlignment.Left
					textlabel10.TextColor3 = Color3.fromRGB(255, 255, 255)
					textlabel10.TextSize = 16
					textlabel10.Position = UDim2.new(0.027, 0, args2.note ~= nil and 0 or 0.5, args2.note ~= nil and 0 or -8)
					textlabel10.Parent = frame7
					textlabel10.Font = Enum.Font.SourceSansBold
					textlabel10.Size = UDim2.new(0, 200, 0, args2.note ~= nil and 28 or 16)
					textlabel10.Text = args2.name
					textlabel10.Name = 'Name'
					--
					if args2.note then
						local textlabel11 = Instance.new('TextLabel')
						textlabel11.BackgroundTransparency = 1
						textlabel11.BorderSizePixel = 0
						textlabel11.TextXAlignment = Enum.TextXAlignment.Left
						textlabel11.TextColor3 = Color3.fromRGB(133, 133, 133)
						textlabel11.TextSize = 12
						textlabel11.Position = UDim2.new(0.027, 0, 0, 26)
						textlabel11.Parent = frame7
						textlabel11.Font = Enum.Font.SourceSansBold
						textlabel11.Size = UDim2.new(0, 200, 0, 18)
						textlabel11.Text = args2.note
						textlabel11.Name = 'Note'
					end
					--
					local textbutton3 = Instance.new('TextButton')
					textbutton3.BackgroundColor3 = args2.default and Color3.fromRGB(145, 2, 239) or Color3.fromRGB(28, 29, 28)
					textbutton3.BorderSizePixel = 0
					textbutton3.Position = UDim2.new(0.913, 0, 0.322, 0)
					textbutton3.Parent = frame7
					textbutton3.Font = Enum.Font.SourceSansBold
					textbutton3.Size = UDim2.new(0, 30, 0, 16)
					textbutton3.Text = ''
					--
					local uicorner7 = Instance.new('UICorner')
					uicorner7.CornerRadius = UDim.new(0, 8)
					uicorner7.Parent = textbutton3
					--
					local frame8 = Instance.new('Frame')
					frame8.BackgroundColor3 = args2.default and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(115, 115, 115)
					frame8.BorderSizePixel = 0
					frame8.Position = UDim2.new(0, 2, 0.125, 0)
					frame8.Parent = textbutton3
					frame8.Size = UDim2.new(0, 12, 0, 12)
					--
					local uicorner8 = Instance.new('UICorner')
					uicorner8.CornerRadius = UDim.new(1, 0)
					uicorner8.Parent = frame8
					--
					textbutton3.MouseButton1Click:Connect(function()
						if textbutton3.BackgroundColor3 == Color3.fromRGB(145, 2, 239) then
							textbutton3.BackgroundColor3 = Color3.fromRGB(28, 29, 28)
							frame8.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
							--
						else
							textbutton3.BackgroundColor3 = Color3.fromRGB(145, 2, 239)
							frame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							--
						end
						--
						args2.callback(textbutton3.BackgroundColor3 == Color3.fromRGB(145, 2, 239) and true or false)
					end)
					--
					local functions3; functions3 = {
						set = function(value)
							if value then
								textbutton3.BackgroundColor3 = Color3.fromRGB(145, 2, 239)
								frame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							else
								textbutton3.BackgroundColor3 = Color3.fromRGB(28, 29, 28)
								frame8.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
							end
							--
							args2.callback(textbutton3.BackgroundColor3 == Color3.fromRGB(145, 2, 239) and true or false)
						end,
						--
						get = function()
							return textbutton3.BackgroundColor3 == Color3.fromRGB(145, 2, 239) and true or false
						end,
					}
					--
                    table.insert(module.elementzone.tabs[args.name].sections[args2.section].items, args2.name)
					--
					return functions3
				end,
			}
			--
			return functions2
		end,
	}
	--
	return functions
end

-- // return
return module
