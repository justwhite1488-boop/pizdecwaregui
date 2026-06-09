-- // Services
local UserInputService = game:GetService('UserInputService')
local TweenService = game:GetService('TweenService')
local CoreGui = game:GetService('CoreGui')

-- // Variables
local Library = {
	ElementZone = {
		Colorpickers = {},
		Dropdowns = {
			Minis = {},
		},

		Keybinds = {
			Minis = {},
		},

		Textboxes = {},
		Sliders = {
			Minis = {},
		},

		Toggles = {
			Minis = {},
		},
	},

	Window = nil,
}

local Tabs = {
	CurrentY = 4,
	Sections = {},
}

-- // Functions
function CreateInstance(Class, Properties)
	local Object = Instance.new(Class)
	for Index, Value in next, Properties do
		Object[Index] = Value
	end
	--
	return Object
end

function Library:CreateWindow(Properties)
	Library.Window = CreateInstance('ScreenGui', {
		ResetOnSpawn = false,
		Parent = game.Players.LocalPlayer.PlayerGui,
		Name = 'UIv2',
	})
	--
	local Frame = CreateInstance('Frame', {
		BackgroundTransparency = 0.05,
		BackgroundColor3 = Color3.fromRGB(51, 51, 51),
		BorderSizePixel = 0,
		Position = UDim2.new(0.311, 0, 0.238, 0),
		Parent = Library.Window,
		Size = UDim2.new(0, 656, 0, 450),
		Name = 'MainFrame',
	})
	--
	CreateInstance('UIScale', {
		Parent = Frame,
		Scale = 1,
		Name = 'MainScale',
	})
	--
	CreateInstance('UICorner', {
		CornerRadius = UDim.new(0, 10),
		Parent = Frame,
	})
	--
	local ElementZone = CreateInstance('ScrollingFrame', {
		ScrollBarImageColor3 = Color3.fromRGB(145, 3, 239),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		BorderSizePixel = 0,
		CanvasSize = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.26, 0, 0.096, 0),
		Parent = Frame,
		Size = UDim2.new(0, 485, 0, 406),
		Name = 'ElementZone',
	})
	--
	for Index, Value in {{Position = UDim2.new(0, 1, 0.093, 0), Size = UDim2.new(0, 655, 0, 1)}, {Position = UDim2.new(0.259, 0, 0, 0), Size = UDim2.new(0, 1, 0, 450)}, {Position = UDim2.new(-0.002, 0, 0.896, 0), Size = UDim2.new(0, 170, 0, 1)}} do
		CreateInstance('Frame', {
			BackgroundColor3 = Color3.fromRGB(81, 81, 81),
			BorderSizePixel = 0,
			Position = Value.Position,
			Parent = Frame,
			Size = Value.Size,
		})
	end
	--
	local Top = CreateInstance('Frame', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = Frame,
		Size = UDim2.new(0, 170, 0, 42),
	})
	--
	local ImageLabel = CreateInstance('ImageLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.036, 0, 0.132, 0),
		Parent = Top,
		Image = Properties.Icon or 'rbxassetid://116059932418685',
		Size = UDim2.new(0, 30, 0, 30),
	})
	--
	CreateInstance('UICorner', {
		CornerRadius = UDim.new(0, 5),
		Parent = ImageLabel,
	})
	--
	CreateInstance('TextLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 17,
		Position = UDim2.new(1.333, 0, 0, 0),
		Parent = ImageLabel,
		Font = Enum.Font.SourceSansBold,
		Size = UDim2.new(0, 90, 0, 17),
		Text = Properties.Title or 'PizdecWare',
	})
	--
	CreateInstance('TextLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(133, 133, 133),
		TextSize = 10,
		Position = UDim2.new(1.333, 0, 0.366, 0),
		Parent = ImageLabel,
		Font = Enum.Font.SourceSansBold,
		Size = UDim2.new(0, 90, 0, 19),
		Text = Properties.Subtitle or 'pizdecware.pw',
	})
	--
	local Bottom = CreateInstance('Frame', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.001, 0, 0.905, 0),
		Parent = Frame,
		Size = UDim2.new(0, 170, 0, 42),
	})
	--
	local ImageLabel2 = CreateInstance('ImageLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.059, 0, 0.168, 0),
		Parent = Bottom,
		Image = 'rbxassetid://0',
		Size = UDim2.new(0, 25, 0, 25),
	})
	--
	CreateInstance('UICorner', {
		CornerRadius = UDim.new(1, 0),
		Parent = ImageLabel2,
	})
	--
	local TextLabel = CreateInstance('TextLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12,
		Position = UDim2.new(1.409, 0, -0.222, 0),
		Parent = ImageLabel2,
		Font = Enum.Font.SourceSansBold,
		Size = UDim2.new(0, 112, 0, 23),
		Text = 'Art3sO',
	})
	--
	CreateInstance('UIGradient', {
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.79, 0.81), NumberSequenceKeypoint.new(1, 1)}),
		Parent = TextLabel,
	})
	--
	CreateInstance('TextLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(133, 133, 133),
		TextSize = 10,
		Position = UDim2.new(1.409, 0, 0.364, 0),
		Parent = ImageLabel2,
		Font = Enum.Font.SourceSansBold,
		Size = UDim2.new(0, 63, 0, 18),
		Text = 'Permanent',
	})
	--
	local Bar = CreateInstance('Frame', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.26, 0, 0, 0),
		Parent = Frame,
		Size = UDim2.new(0, 486, 0, 42),
	})
	--
	CreateInstance('ImageLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.023, 0, 0.31, 0),
		Parent = Bar,
		Image = 'rbxassetid://15016878198',
		Size = UDim2.new(0, 17, 0, 17),
	})
	--
	local TextLabel2 = CreateInstance('TextLabel', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		Position = UDim2.new(0.072, 0, 0.31, 0),
		RichText = true,
		Parent = Bar,
		Font = Enum.Font.SourceSansBold,
		Size = UDim2.new(0, 300, 0, 15),
		Text = '<font color="rgb(133,133,133)">Settings    /    </font><font color="rgb(255,255,255)">Settings</font>',
	})
	--
	CreateInstance('UIPadding', {
		PaddingRight = UDim.new(0, 2),
		PaddingLeft = UDim.new(0, 2),
		Parent = TextLabel2,
	})
	--
	local TabZone = CreateInstance('Frame', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0.096, 0),
		Parent = Frame,
		Size = UDim2.new(0, 170, 0, 364),
		Name = 'TabZone',
	})
	--
	local TextButton = CreateInstance('TextButton', {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 5,
		Parent = Frame,
		Size = UDim2.new(1, 0, 0, 42),
		Text = '',
	})
	--
	local StartPosition = UDim2.new()
	local DragStart = Vector2.new()
	--
	local function UpdatePosition()
		local MouseLocation = UserInputService:GetMouseLocation()
		Frame.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + (MouseLocation - DragStart).X, StartPosition.Y.Scale, StartPosition.Y.Offset + (MouseLocation - DragStart).Y)
	end
	--
	local Dragging = false
	--
	TextButton.InputBegan:Connect(function(Input)
		if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
		--
		Dragging = true
		--
		DragStart = UserInputService:GetMouseLocation()
		StartPosition = Frame.Position
		--
		UpdatePosition()
	end)
	--
	TextButton.InputEnded:Connect(function(Input)
		if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
		--
		Dragging = false
	end)
	--
	UserInputService.InputChanged:Connect(function(Input)
		if not Dragging or Input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
		--
		UpdatePosition()
	end)
	--
	local Functions; Functions = {
		CreateSection = function(self, Properties)
			if Tabs.Sections[Properties] then return Properties end
			--
			Tabs.Sections[Properties] = {
				Position = Tabs.CurrentY,
				Buttons = {},
			}
			--
			CreateInstance('TextLabel', {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = Color3.fromRGB(133, 133, 133),
				TextSize = 13,
				Position = UDim2.new(0, 14, 0, Tabs.CurrentY),
				Parent = TabZone,
				Font = Enum.Font.SourceSansBold,
				Size = UDim2.new(0, 140, 0, 16),
				Text = Properties,
			})
			--
			return Properties
		end,

		CreateTab = function(self, Properties)
			if not Tabs.Sections[Properties.Section] then self.CreateSection(self, Properties.Section) end
			--
			local Position = nil
			if #Tabs.Sections[Properties.Section].Buttons == 0 then
				Position = Tabs.CurrentY + 20
			else
				Position = Tabs.Sections[Properties.Section].Buttons[#Tabs.Sections[Properties.Section].Buttons].Position + 29
			end
			--
			Tabs.CurrentY = Position + 37
			Tabs.Sections[Properties.Section].Buttons[Properties.Name] = {
				Position = Position,
			}
			--
			local TextButton2 = CreateInstance('TextButton', {
				BackgroundTransparency = 1,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutoButtonColor = false,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0, Position),
				Parent = TabZone,
				Size = UDim2.new(0, 146, 0, 25),
				Text = '',
			})
			--
			CreateInstance('UICorner', {
				CornerRadius = UDim.new(0, 7),
				Parent = TextButton2,
			})
			--
			local ImageLabel3 = CreateInstance('ImageLabel', {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 14, 0.5, -8),
				Parent = TextButton2,
				Image = Properties.Icon or 'rbxassetid://0',
				Size = UDim2.new(0, 16, 0, 16),
			})
			--
			local TextLabel3 = CreateInstance('TextLabel', {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				Position = UDim2.new(0, 36, 0, 0),
				Parent = TextButton2,
				Font = Enum.Font.SourceSansBold,
				Size = UDim2.new(1, -40, 1, 0),
				Text = Properties.Name,
			})
			--
			if #ElementZone:GetChildren() == 0 then
				TextButton2.Transparency = 0.9
				--
				TextLabel2.Text = '<font color="rgb(133,133,133)">' .. Properties.Section  .. '    /    ' ..  '</font><font color="rgb(255,255,255)">' .. Properties.Name .. '</font>'
				TextLabel3.TextColor3 = Color3.fromRGB(145, 3, 239)
				--
				ImageLabel3.ImageColor3 = Color3.fromRGB(145, 3, 239)
			end
			--
			local Frame2 = CreateInstance('Frame', {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				Visible = #ElementZone:GetChildren() == 0 and true or false,
				Parent = ElementZone,
				Size = UDim2.new(1, 0, 0, 0),
				Name = Properties.Name,
			})
			--
			CreateInstance('UIListLayout', {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
				Parent = Frame2,
			})
			--
			CreateInstance('UIPadding', {
				PaddingBottom = UDim.new(0, 7),
				PaddingRight = UDim.new(0, 13),
				PaddingLeft = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 7),
				Parent = Frame2,
			})
			--
			local Tween = nil
			TextButton2.MouseEnter:Connect(function()
				if TextLabel3.TextColor3 == Color3.fromRGB(145, 3, 239) then return end
				if Tween then Tween:Cancel() end
				--
				Tween = TweenService:Create(TextButton2, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
					Transparency = 0.85
				})
				--
				Tween.Completed:Connect(function() Tween = nil end)
				Tween:Play()
			end)

			TextButton2.MouseLeave:Connect(function()
				if TextLabel3.TextColor3 == Color3.fromRGB(145, 3, 239) then return end
				if Tween then Tween:Cancel() end
				--
				Tween = TweenService:Create(TextButton2, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
					Transparency = 1
				})
				--
				Tween.Completed:Connect(function() Tween = nil end)
				Tween:Play()
			end)
			--
			TextButton2.MouseButton1Click:Connect(function()
				if TextLabel3.TextColor3 == Color3.fromRGB(145, 3, 239) then return end
				if Tween then Tween:Cancel() end
				--
				Frame2.Visible = true
				--
				TextButton2.Transparency = 0.9
				TextLabel2.Text = '<font color="rgb(133,133,133)">' .. Properties.Section  .. '    /    ' ..  '</font><font color="rgb(255,255,255)">' .. Properties.Name .. '</font>'
				--
				TextLabel3.TextColor3 = Color3.fromRGB(145, 3, 239)
				ImageLabel3.ImageColor3 = Color3.fromRGB(145, 3, 239)
				--
				for Index, Value in next, TabZone:GetChildren() do
					if not Value:IsA('TextButton') or Value == TextButton2 then continue end
					--
					Value.Transparency = 1
					Value:FindFirstChild('TextLabel').TextColor3 = Color3.fromRGB(255, 255, 255)
					Value:FindFirstChild('ImageLabel').ImageColor3 = Color3.fromRGB(255, 255, 255)
				end
				--
				for Index, Value in next, ElementZone:GetChildren() do
					if not Value:IsA('Frame') or Value == Frame2 then continue end
					--
					Value.Visible = false
				end
			end)
			--
			local Functions; Functions = {
				CreateColorpicker = function(self, Properties)
					if typeof(Properties.Default) ~= 'Color3' then return end
					--
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextButton3 = CreateInstance('TextButton', {
						BackgroundColor3 = Properties.Default,
						BorderSizePixel = 0,
						Position = UDim2.new(0.901, 0, 0.289, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 36, 0, 20),
						Text = '',
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 6),
						Parent = TextButton3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = TextButton3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					if not Library.ElementZone.Colorpickers[Frame2.Name] then Library.ElementZone.Colorpickers[Frame2.Name] = {} end
					Library.ElementZone.Colorpickers[Frame2.Name][Properties.Name] = Properties.Default
				end,
				--
				CreateDropdown = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextButton3 = CreateInstance('TextButton', {
						BackgroundColor3 = Color3.fromRGB(29, 29, 29),
						AutoButtonColor = false,
						BorderSizePixel = 0,
						Position = UDim2.new(0.673, 0, 0.223, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 140, 0, 24),
						Text = '',
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 4),
						Parent = TextButton3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = TextButton3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('ImageLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.867, 0, 0.265, 0),
						Parent = TextButton3,
						Image = 'rbxassetid://13116390649',
						Size = UDim2.new(0, 10, 0, 10),
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 12,
						Position = UDim2.new(0.056, 0, 0.208, 0),
						Parent = TextButton3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 104, 0, 13),
						Text = Properties.Default,
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					if not Library.ElementZone.Dropdowns[Frame2.Name] then Library.ElementZone.Dropdowns[Frame2.Name] = {} end
					Library.ElementZone.Dropdowns[Frame2.Name][Properties.Name] = Properties.Default
				end,
				--
				CreateKeybind = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextButton3 = CreateInstance('TextButton', {
						BackgroundColor3 = Color3.fromRGB(29, 29, 29),
						BorderSizePixel = 0,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 11,
						Position = UDim2.new(1, -70, 0.5, -9),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 63, 0, 18),
						Text = Properties.Default,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 4),
						Parent = TextButton3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = TextButton3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					if not Library.ElementZone.Keybinds[Frame2.Name] then Library.ElementZone.Keybinds[Frame2.Name] = {} end
					Library.ElementZone.Keybinds[Frame2.Name][Properties.Name] = Properties.Default
				end,
				--
				CreateSection = function(self, Properties)
					local TextLabel4 = CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(133, 133, 133),
						TextSize = 13,
						Parent = Frame2,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(1, 0, 0, 14),
						Text = Properties,
					})
					--
					CreateInstance('UIPadding', {
						PaddingLeft = UDim.new(0, 10), 
						Parent = TextLabel4,
					})
				end,
				--
				CreateTextbox = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextBox = CreateInstance('TextBox', {
						PlaceholderColor3 = Color3.fromRGB(133, 133, 133),
						BackgroundColor3 = Color3.fromRGB(29, 29, 29),
						ClearTextOnFocus = false,
						PlaceholderText = Properties.PlaceholderText,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 12,
						Position = UDim2.new(0.5, 0, 0.5, -10),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Text = '',
						Size = UDim2.new(0.5, -7, 0, 20),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 4),
						Parent = TextBox,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = TextBox,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('UIPadding', {
						PaddingLeft = UDim.new(0, 6),
						Parent = TextBox,
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					TextBox:GetPropertyChangedSignal('Text'):Connect(function()
						Library.ElementZone.Textboxes[Frame2.Name][Properties.Name] = TextBox.Text
						--
						if Properties.Callback then
							Properties.Callback(TextBox.Text)
						end
					end)
					--
					if not Library.ElementZone.Textboxes[Frame2.Name] then Library.ElementZone.Textboxes[Frame2.Name] = {} end
					Library.ElementZone.Textboxes[Frame2.Name][Properties.Name] = TextBox.Text
				end,
				--
				CreateButton = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextButton3 = CreateInstance('TextButton', {
						BackgroundColor3 = Color3.fromRGB(145, 3, 239),
						BorderSizePixel = 0,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 13,
						Position = UDim2.new(0.781, 0, 0.205, 0),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 90, 0, 25),
						Text = Properties.Text,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 5),
						Parent = TextButton3,
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					TextButton3.MouseButton1Click:Connect(function()
						if Properties.Callback then
							Properties.Callback()
						end
					end)
				end,
				--
				CreateToggle = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextButton3 = CreateInstance('TextButton', {
						BackgroundColor3 = Properties.Default and Color3.fromRGB(145, 3, 239) or Color3.fromRGB(29, 29, 29),
						AutoButtonColor = false,
						BorderSizePixel = 0,
						Position = UDim2.new(0.913, 0, 0.322, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 30, 0, 16),
						Text = '',
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(1, 0),
						Parent = TextButton3,
					})
					--
					local Frame4 = CreateInstance('Frame', {
						BackgroundColor3 = Properties.Default and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(115, 115, 115),
						BorderSizePixel = 0,
						Position = UDim2.new(Properties.Default and 0.45 or 0, 2, 0.125, 0),
						Parent = TextButton3,
						Size = UDim2.new(0, 12, 0, 12),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(1, 0),
						Parent = Frame4,
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					local Tween = nil
					TextButton3.MouseButton1Click:Connect(function()
						if Tween then Tween:Cancel() end
						Properties.Default = not Properties.Default
						--
						if Properties.Default then
							TextButton3.BackgroundColor3 = Color3.fromRGB(145, 3, 239)
							Frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							--
							Tween = TweenService:Create(Frame4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
								Position = UDim2.new(0.45, 2, 0.125, 0)
							})
							--
							Tween.Completed:Connect(function() Tween = nil end)
							Tween:Play()
						else
							TextButton3.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
							Frame4.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
							--
							Tween = TweenService:Create(Frame4, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
								Position = UDim2.new(0, 2, 0.125, 0)
							})
							--
							Tween.Completed:Connect(function() Tween = nil end)
							Tween:Play()
						end
						--
						if Properties.Callback then
							Properties.Callback(Properties.Default)
						end
						--
						Library.ElementZone.Toggles[Frame2.Name][Properties.Name] = Properties.Default
					end)
					--
					if Properties.Default and Properties.Callback then
						Properties.Callback(Properties.Default)
					end
					--
					if not Library.ElementZone.Toggles[Frame2.Name] then Library.ElementZone.Toggles[Frame2.Name] = {} end
					Library.ElementZone.Toggles[Frame2.Name][Properties.Name] = Properties.Default
				end,
				--
				CreateSlider = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 45),
						Name = Properties.Name,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 8),
						Parent = Frame3,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame3,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local Frame4 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(29, 29, 29),
						BorderSizePixel = 0,
						Position = UDim2.new(0.588, 0, 0.456, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 128, 0, 4),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(1, 0),
						Parent = Frame4,
					})
					--
					local Frame5 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(145, 3, 239),
						BorderSizePixel = 0,
						Parent = Frame4,
						Size = UDim2.new(0.2, 0, 1, 0),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(1, 0),
						Parent = Frame5,
					})
					--
					local Frame6 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(145, 3, 239),
						BorderSizePixel = 0,
						Position = UDim2.new(0.2, -6, 0.5, -6),
						Parent = Frame4,
						Size = UDim2.new(0, 12, 0, 12),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(1, 0),
						Parent = Frame6,
					})
					--
					local Frame7 = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(29, 29, 29),
						BorderSizePixel = 0,
						Position = UDim2.new(0.894, 0, 0.5, -9),
						Parent = Frame3,
						Size = UDim2.new(0, 36, 0, 18),
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 4),
						Parent = Frame7,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = Frame7,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					local TextBox4 = CreateInstance('TextBox', {
						BackgroundTransparency = 1,
						ClearTextOnFocus = false,
						BorderSizePixel = 0,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 12,
						Parent = Frame7,
						Font = Enum.Font.SourceSans,
						Size = UDim2.new(1, 0, 1, 0),
						Text = Properties.Default,
					})
					--
					CreateInstance('TextLabel', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 16,
						Position = UDim2.new(0.027, 0, Properties.Notice ~= nil and 0 or 0.5, Properties.Notice ~= nil and 0 or -8),
						Parent = Frame3,
						Font = Enum.Font.SourceSansBold,
						Size = UDim2.new(0, 200, 0, Properties.Notice ~= nil and 28 or 16),
						Text = Properties.Name,
						Name = 'Name',
					})
					--
					if Properties.Notice then
						CreateInstance('TextLabel', {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = Color3.fromRGB(133, 133, 133),
							TextSize = 12,
							Position = UDim2.new(0.027, 0, 0, 26),
							Parent = Frame3,
							Font = Enum.Font.SourceSansBold,
							Size = UDim2.new(0, 200, 0, 18),
							Text = Properties.Notice,
							Name = 'Note',
						})
					end
					--
					local Current = Properties.Default
					local function UpdatePosition(Value)
						Value, Current = math.max(Properties.Min, math.min(Properties.Max, Value)), math.max(Properties.Min, math.min(Properties.Max, Value))
						--
						local Percentage = (Value - Properties.Min) / (Properties.Max - Properties.Min)
						Frame5.Size = UDim2.new(Percentage, 0, 1, 0)
						--
						Frame6.Position = UDim2.new(0, (Percentage * Frame4.AbsoluteSize.X) - 4, 0.5, -6)
						--
						Value = string.format('%g', math.floor(Value / Properties.Increment + 0.5) * Properties.Increment)
						--
						TextBox4.Text = Value
						Library.ElementZone.Sliders[Frame2.Name][Properties.Name] = Current
						--
						if Properties.Callback then
							Properties.Callback(tonumber(Value))
						end
					end
					--
					local function UpdateMouse()
						local Value = Properties.Min + (math.clamp(UserInputService:GetMouseLocation().X - Frame4.AbsolutePosition.X, 0, Frame4.AbsolutePosition.X) / Frame4.AbsoluteSize.X * (Properties.Max - Properties.Min))
						Value = math.max(Properties.Min, math.min(Properties.Max, Value))
						--
						UpdatePosition(Value)
					end
					--
					local Dragging = false
					--
					Frame6.InputBegan:Connect(function(Input)
						if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						--
						Dragging = true
						UpdateMouse()
					end)
					--
					Frame6.InputEnded:Connect(function(Input)
						if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
						--
						Dragging = false
					end)
					--
					UserInputService.InputChanged:Connect(function(Input)
						if not Dragging or Input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
						--
						UpdateMouse()
					end)
					--
					TextBox4:GetPropertyChangedSignal('Text'):Connect(function()
						if not tonumber(TextBox4.Text) then return end
						--
						UpdatePosition(tonumber(TextBox4.Text))
					end)
					--
					TextBox4.FocusLost:Connect(function()
						if not tonumber(TextBox4.Text) then TextBox4.Text = Properties.Min return end
					end)
					--
					if not Library.ElementZone.Sliders[Frame2.Name] then Library.ElementZone.Sliders[Frame2.Name] = {} end
					Library.ElementZone.Sliders[Frame2.Name][Properties.Name] = Properties.Default
					--
					UpdatePosition(Properties.Default)
				end,
				--
				CreateMinis = function(self, Properties)
					local Frame3 = CreateInstance('Frame', {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Parent = Frame2,
						Size = UDim2.new(1, 0, 0, 0),
					})
					--
					local MiniRight = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Position = UDim2.new(0, 232, 0, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 220, 0, 0),
						Name = 'Mini_right',
					})
					--
					local MiniLeft = CreateInstance('Frame', {
						BackgroundColor3 = Color3.fromRGB(59, 59, 59),
						BorderSizePixel = 0,
						Position = UDim2.new(0, 6, 0, 0),
						Parent = Frame3,
						Size = UDim2.new(0, 220, 0, 0),
						Name = 'Mini_left',
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 6),
						Parent = MiniRight,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = MiniRight,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('UIListLayout', {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Parent = MiniRight,
					})
					--
					CreateInstance('UICorner', {
						CornerRadius = UDim.new(0, 6),
						Parent = MiniLeft,
					})
					--
					CreateInstance('UIStroke', {
						Transparency = 0.9,
						Parent = MiniLeft,
						Color = Color3.fromRGB(133, 133, 133),
					})
					--
					CreateInstance('UIListLayout', {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Parent = MiniLeft,
					})
					--
					MiniRight.ChildAdded:Connect(function(Child)
						if not Child:IsA('Frame') then return end
						--
						if #MiniRight:GetChildren() == 4 then
							MiniRight.Size = UDim2.new(0, 220, 0, 28)
							Frame3.Size = UDim2.new(1, 0, 0, 28)
						elseif #MiniRight:GetChildren() == 5 then
							MiniRight.Size = UDim2.new(0, 220, 0, 56)
							Frame3.Size = UDim2.new(1, 0, 0, 56)
						end
					end)
					--
					MiniLeft.ChildAdded:Connect(function(Child)
						if not Child:IsA('Frame') then return end
						--
						if #MiniLeft:GetChildren() == 4 then
							MiniLeft.Size = UDim2.new(0, 220, 0, 28)
							Frame3.Size = UDim2.new(1, 0, 0, 28)
						elseif #MiniLeft:GetChildren() == 5 then
							MiniLeft.Size = UDim2.new(0, 220, 0, 56)
							Frame3.Size = UDim2.new(1, 0, 0, 56)
						end
					end)
					--
					local Functions; Functions = {
						CreateDropdown = function(Properties)
							local Frame4 = CreateInstance('Frame', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Parent = Properties.Left and MiniLeft or Properties.Right and MiniRight,
								Size = UDim2.new(1, 0, 0, 28),
							})
							--
							local TextButton3 = CreateInstance('TextButton', {
								BackgroundColor3 = Color3.fromRGB(29, 29, 29),
								AutoButtonColor = false,
								BorderSizePixel = 0,
								Position = UDim2.new(1, -108, 0.5, -9),
								Parent = Frame4,
								Size = UDim2.new(0, 104, 0, 18),
								Text = '',
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 4),
								Parent = TextButton3,
							})
							--
							CreateInstance('UIStroke', {
								Transparency = 0.9,
								Parent = TextButton3,
								Color = Color3.fromRGB(133, 133, 133),
							})
							--
							local ImageLabel4 = CreateInstance('ImageLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Position = UDim2.new(1, -14, 0.5, -5),
								Parent = TextButton3,
								Image = 'rbxassetid://13116390649',
								Size = UDim2.new(0, 10, 0, 10),
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 11,
								Position = UDim2.new(0, 6, 0, 0),
								Parent = TextButton3,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(1, -20, 1, 0),
								Text = Properties.Default,
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 12,
								Position = UDim2.new(0, 8, 0, 0),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0.6, -8, 1, 0),
								Text = Properties.Name,
							})
							--
							if not Library.ElementZone.Dropdowns.Minis[Frame2.Name] then Library.ElementZone.Dropdowns.Minis[Frame2.Name] = {} end
							Library.ElementZone.Dropdowns.Minis[Frame2.Name][Properties.Name] = Properties.Default
						end,
						--
						CreateKeybind = function(self, Properties)
							local Frame4 = CreateInstance('Frame', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Parent = Properties.Left and MiniLeft or Properties.Right and MiniRight,
								Size = UDim2.new(1, 0, 0, 28),
							})
							--
							local TextButton3 = CreateInstance('TextButton', {
								BackgroundColor3 = Color3.fromRGB(29, 29, 29),
								BorderSizePixel = 0,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 10,
								Position = UDim2.new(1, -68, 0.5, -9),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0, 64, 0, 18),
								Text = Properties.Default,
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 3),
								Parent = TextButton3,
							})
							--
							CreateInstance('UIStroke', {
								Transparency = 0.9,
								Parent = TextButton3,
								Color = Color3.fromRGB(133, 133, 133),
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 12,
								Position = UDim2.new(0, 8, 0, 0),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0.6, -8, 1, 0),
								Text = Properties.Name,
							})
							--
							if not Library.ElementZone.Keybinds.Minis[Frame2.Name] then Library.ElementZone.Keybinds.Minis[Frame2.Name] = {} end
							Library.ElementZone.Keybinds.Minis[Frame2.Name][Properties.Name] = Properties.Default
						end,
						--
						CreateButton = function(Properties)
							local Frame4 = CreateInstance('Frame', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Parent = Properties.Left and MiniLeft or Properties.Right and MiniRight,
								Size = UDim2.new(1, 0, 0, 28),
							})
							--
							local TextButton3 = CreateInstance('TextButton', {
								BackgroundColor3 = Color3.fromRGB(145, 3, 239),
								BorderSizePixel = 0,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 11,
								Position = UDim2.new(1, -68, 0.5, -9),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0, 64, 0, 18),
								Text = Properties.Text,
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 4),
								Parent = TextButton3,
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 12,
								Position = UDim2.new(0, 8, 0, 0),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0.6, -8, 1, 0),
								Text = Properties.Name,
							})
							--
							TextButton3.MouseButton1Click:Connect(function()
								if Properties.Callback then
									Properties.Callback()
								end
							end)
						end,
						--
						CreateToggle = function(Properties)
							local Frame4 = CreateInstance('Frame', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Parent = Properties.Left and MiniLeft or Properties.Right and MiniRight,
								Size = UDim2.new(1, 0, 0, 28),
							})
							--
							local TextButton3 = CreateInstance('TextButton', {
								BackgroundColor3 = Properties.Default and Color3.fromRGB(145, 3, 239) or Color3.fromRGB(29, 29, 29),
								AutoButtonColor = false,
								BorderSizePixel = 0,
								Position = UDim2.new(1, -34, 0.5, -8),
								Parent = Frame4,
								Size = UDim2.new(0, 30, 0, 16),
								Text = '',
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(1, 0),
								Parent = TextButton3,
							})
							--
							local Frame5 = CreateInstance('Frame', {
								BackgroundColor3 = Properties.Default and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(115, 115, 115),
								BorderSizePixel = 0,
								Position = UDim2.new(Properties.Default and 1 or 0, Properties.Default and -14 or 2, 0.5, -6),
								Parent = TextButton3,
								Size = UDim2.new(0, 12, 0, 12),
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(1, 0),
								Parent = Frame5,
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 12,
								Position = UDim2.new(0, 8, 0, 0),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0.6, -8, 1, 0),
								Text = Properties.Name,
							})
							--
							local Tween = nil
							TextButton3.MouseButton1Click:Connect(function()
								if Tween then Tween:Cancel() end
								Properties.Default = not Properties.Default
								--
								if Properties.Default then
									TextButton3.BackgroundColor3 = Color3.fromRGB(145, 3, 239)
									Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									--
									Tween = TweenService:Create(Frame5, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
										Position = UDim2.new(1, -14, 0.5, -6)
									})
									--
									Tween.Completed:Connect(function() Tween = nil end)
									Tween:Play()
								else
									TextButton3.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
									Frame5.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
									--
									Tween = TweenService:Create(Frame5, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
										Position = UDim2.new(0, 2, 0.5, -6)
									})
									--
									Tween.Completed:Connect(function() Tween = nil end)
									Tween:Play()
								end
								--
								if Properties.Callback then
									Properties.Callback(Properties.Default)
								end
								--
								Library.ElementZone.Toggles.Minis[Frame2.Name][Properties.Name] = Properties.Default
							end)
							--
							if Properties.Default and Properties.Callback then
								Properties.Callback(Properties.Default)
							end
							--
							if not Library.ElementZone.Toggles.Minis[Frame2.Name] then Library.ElementZone.Toggles.Minis[Frame2.Name] = {} end
							Library.ElementZone.Toggles.Minis[Frame2.Name][Properties.Name] = Properties.Default
						end,
						--
						CreateSlider = function(Properties)
							local Frame4 = CreateInstance('Frame', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								Parent = Properties.Left and MiniLeft or Properties.Right and MiniRight,
								Size = UDim2.new(1, 0, 0, 28),
							})
							--
							local Frame5 = CreateInstance('Frame', {
								BackgroundColor3 = Color3.fromRGB(29, 29, 29),
								BorderSizePixel = 0,
								Position = UDim2.new(0, 103, 0.5, -2),
								Parent = Frame4,
								Size = UDim2.new(0, 75, 0, 4),
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 8),
								Parent = Frame5,
							})
							--
							local Frame6 = CreateInstance('Frame', {
								BackgroundColor3 = Color3.fromRGB(145, 3, 239),
								BorderSizePixel = 0,
								Parent = Frame5,
								Size = UDim2.new(0, 0, 1, 0),
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 8),
								Parent = Frame6,
							})
							--
							local Frame7 = CreateInstance('Frame', {
								BackgroundColor3 = Color3.fromRGB(145, 3, 239),
								BorderSizePixel = 0,
								Position = UDim2.new(0, -4, 0.5, -4),
								ZIndex = 3,
								Parent = Frame5,
								Size = UDim2.new(0, 8, 0, 8),
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(1, 0),
								Parent = Frame7,
							})
							--
							local Frame8 = CreateInstance('Frame', {
								BackgroundColor3 = Color3.fromRGB(29, 29, 29),
								BorderSizePixel = 0,
								Position = UDim2.new(1, -36, 0.5, -9),
								Parent = Frame4,
								Size = UDim2.new(0, 32, 0, 18),
							})
							--
							CreateInstance('UICorner', {
								CornerRadius = UDim.new(0, 3),
								Parent = Frame8,
							})
							--
							CreateInstance('UIStroke', {
								Transparency = 0.9,
								Parent = Frame8,
								Color = Color3.fromRGB(133, 133, 133),
							})
							--
							local TextBox4 = CreateInstance('TextBox', {
								BackgroundTransparency = 1,
								ClearTextOnFocus = false,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 10,
								Parent = Frame8,
								Font = Enum.Font.SourceSans,
								Size = UDim2.new(1, 0, 1, 0),
								Text = Properties.Default,
							})
							--
							CreateInstance('TextLabel', {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextXAlignment = Enum.TextXAlignment.Left,
								TextColor3 = Color3.fromRGB(255, 255, 255),
								TextSize = 12,
								Position = UDim2.new(0, 8, 0, 0),
								Parent = Frame4,
								Font = Enum.Font.SourceSansBold,
								Size = UDim2.new(0.6, -8, 1, 0),
								Text = Properties.Name,
							})
							--
							local Current = Properties.Default
							local function UpdatePosition(Value)
								Value, Current = math.max(Properties.Min, math.min(Properties.Max, Value)), math.max(Properties.Min, math.min(Properties.Max, Value))
								--
								local Percentage = (Value - Properties.Min) / (Properties.Max - Properties.Min)
								Frame6.Size = UDim2.new(Percentage, 0, 1, 0)
								--
								Frame7.Position = UDim2.new(0, (Percentage * Frame5.AbsoluteSize.X) - 4, 0.5, -4)
								--
								Value = string.format('%g', math.floor(Value / Properties.Increment + 0.5) * Properties.Increment)
								--
								TextBox4.Text = Value
								Library.ElementZone.Sliders.Minis[Frame2.Name][Properties.Name] = Current
								--
								if Properties.Callback then
									Properties.Callback(tonumber(Value))
								end
							end
							--
							local function UpdateMouse()
								local Value = Properties.Min + (math.clamp(UserInputService:GetMouseLocation().X - Frame5.AbsolutePosition.X, 0, Frame5.AbsolutePosition.X) / Frame5.AbsoluteSize.X * (Properties.Max - Properties.Min))
								Value = math.max(Properties.Min, math.min(Properties.Max, Value))
								--
								UpdatePosition(Value)
							end
							--
							local Dragging = false
							--
							Frame7.InputBegan:Connect(function(Input)
								if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								--
								Dragging = true
								UpdateMouse()
							end)
							--
							Frame7.InputEnded:Connect(function(Input)
								if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								--
								Dragging = false
							end)
							--
							UserInputService.InputChanged:Connect(function(Input)
								if not Dragging or Input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
								--
								UpdateMouse()
							end)
							--
							TextBox4:GetPropertyChangedSignal('Text'):Connect(function()
								if not tonumber(TextBox4.Text) then return end
								--
								UpdatePosition(tonumber(TextBox4.Text))
							end)
							--
							TextBox4.FocusLost:Connect(function()
								if not tonumber(TextBox4.Text) then TextBox4.Text = Properties.Min return end
							end)
							--
							if not Library.ElementZone.Sliders.Minis[Frame2.Name] then Library.ElementZone.Sliders.Minis[Frame2.Name] = {} end
							Library.ElementZone.Sliders.Minis[Frame2.Name][Properties.Name] = Properties.Default
							--
							UpdatePosition(Properties.Default)
						end,
					}
					--
					for Index, Value in Properties.Elements.Right do
						if not Functions[Index] then continue end
						--
						Value.Right = true
						Functions[Index](Value)
					end
					--
					for Index, Value in Properties.Elements.Left do
						if not Functions[Index] then continue end
						--
						Value.Left = true
						Functions[Index](Value)
					end
					--
					if #Properties.Elements.Right == 0 then
						MiniRight:Destroy()
					elseif #Properties.Elements.Left == 0 then
						MiniLeft:Destroy()
					end
				end,
			}
			--
			return Functions
		end,
	}
	--
	UserInputService.MouseBehavior = Library.Window.Enabled and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter
	--
	return Functions
end

function Library:ApplySettingsTab(Properties)
	Properties:CreateSection('UI')
	--
	Properties:CreateKeybind({
		Callback = function(Value)

		end,
		--
		Default = Enum.KeyCode.RightShift.Name,
		--
		Notice = 'Toggle UI visibility',
		Name = 'Hide Bind',
	})
	--
	Properties:CreateDropdown({
		Callback = function(Value)

		end,
		--
		Options = {'100%', '75%', '50%', '25%'},
		Default = '100%',
		--
		Notice = 'Scale interface size',
		Name = 'UI Scale',
	})
	--
	Properties:CreateSection('Config')
	--
	Properties:CreateTextbox({
		Callback = function(Value)

		end,
		--
		PlaceholderText = 'config name',
		--
		Notice = nil,
		Name = 'New Name',
	})
	--
	Properties:CreateButton({
		Callback = function()
			Library.Window:Destroy()
		end,
		--
		Notice = nil,
		Text = 'Unload',
		Name = 'Unload current gui',
	})
end

-- // Connections
UserInputService.InputBegan:Connect(function(Input, Processed)
	if Processed then return end
	--
	if Input.KeyCode == Enum.KeyCode.RightShift then
		Library.Window.Enabled = not Library.Window.Enabled
		UserInputService.MouseBehavior = Library.Window.Enabled and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter
	end
end)

-- // Return
return Library
