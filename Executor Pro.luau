--contents under this is not made by me

-- Gui to Lua
-- Version: 3.2

-- Instances:

local CodeExecutor = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local ExcuteFrame = Instance.new("ImageLabel")
local CodeFrame = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local OpenClose = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

CodeExecutor.Name = "CodeExecutor"
CodeExecutor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = CodeExecutor
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Position = UDim2.new(0.184995636, 0, 0.293481171, 0)
Frame.Size = UDim2.new(0, 627, 0, 326)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

ExcuteFrame.Name = "Excute Frame"
ExcuteFrame.Parent = Frame
ExcuteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExcuteFrame.BackgroundTransparency = 1.000
ExcuteFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
ExcuteFrame.Position = UDim2.new(0.641490996, 0, 0.781392872, 0)
ExcuteFrame.Size = UDim2.new(0, 213, 0, 61)
ExcuteFrame.Image = "rbxassetid://3570695787"
ExcuteFrame.ImageColor3 = Color3.fromRGB(48, 48, 48)
ExcuteFrame.ScaleType = Enum.ScaleType.Slice
ExcuteFrame.SliceCenter = Rect.new(100, 100, 100, 100)
ExcuteFrame.SliceScale = 0.120

CodeFrame.Name = "Code Frame"
CodeFrame.Parent = Frame
CodeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CodeFrame.BackgroundTransparency = 1.000
CodeFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
CodeFrame.Position = UDim2.new(0.0234996062, 0, 0.145062596, 0)
CodeFrame.Size = UDim2.new(0, 601, 0, 182)
CodeFrame.Image = "rbxassetid://3570695787"
CodeFrame.ImageColor3 = Color3.fromRGB(29, 29, 29)
CodeFrame.ScaleType = Enum.ScaleType.Slice
CodeFrame.SliceCenter = Rect.new(100, 100, 100, 100)
CodeFrame.SliceScale = 0.120

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 9.000
TextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextBox.Position = UDim2.new(0.0234996062, 0, 0.145062596, 0)
TextBox.Size = UDim2.new(0, 600, 0, 181)
TextBox.Font = Enum.Font.Unknown
TextBox.PlaceholderColor3 = Color3.fromRGB(171, 171, 171)
TextBox.PlaceholderText = "Script Here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 100.000
TextBox.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 9.000
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.Position = UDim2.new(0.641490877, 0, 0.81204617, 0)
TextButton.Size = UDim2.new(0, 213, 0, 51)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0214723926, 0)
TextLabel.Size = UDim2.new(0, 198, 0, 40)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Executor Pro"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000

OpenClose.Name = "Open/Close"
OpenClose.Parent = CodeExecutor
OpenClose.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
OpenClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderSizePixel = 0
OpenClose.Position = UDim2.new(0.00998003967, 0, 0.487258971, 0)
OpenClose.Size = UDim2.new(0, 135, 0, 50)
OpenClose.Font = Enum.Font.LuckiestGuy
OpenClose.Text = "Open/Close"
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.TextSize = 14.000

UICorner.Parent = OpenClose

-- Scripts:

local function RZQST_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.ExecuteEvent:FireServer(script.Parent.Parent.TextBox.Text)
		end)
end
coroutine.wrap(RZQST_fake_script)()
local function UFHQ_fake_script() -- Frame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(UFHQ_fake_script)()
local function RJVKNDC_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	
	local Frame = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = true
	end)
end
coroutine.wrap(RJVKNDC_fake_script)()
local function PYNC_fake_script() -- OpenClose.LocalScript 
	local script = Instance.new('LocalScript', OpenClose)

	--You dont need to delete this text.
	--PUT INSIDE a BUTTON in StarterGui
	--Make sure to make a frame for the menu to pop up then go to properties > Visible [Off]
	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Frame.Visible = not script.Parent.Parent.Frame.Visible
	end)
end
coroutine.wrap(PYNC_fake_script)()
