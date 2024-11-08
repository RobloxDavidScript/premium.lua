-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main frame for the GUI
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker background for contrast
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Parent = screenGui

-- Make the GUI draggable
mainFrame.Active = true
mainFrame.Draggable = true

-- Add a UICorner for rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = mainFrame

-- Add a UIStroke for border shadow
local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(0, 0, 0)
uiStroke.Parent = mainFrame

-- Add shadow effect
local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 20, 1, 20)
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217" -- Shadow asset ID
shadow.ImageTransparency = 0.7
shadow.ZIndex = 0
shadow.Parent = mainFrame

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
closeButton.Text = "X"
closeButton.TextSize = 18
closeButton.Font = Enum.Font.GothamBold
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = mainFrame

-- Add rounded corners to the close button
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Function to close the GUI
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Create the rainbow title label inside the main frame
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -50, 0, 40)
titleLabel.Position = UDim2.new(0.5, 0, 0, 5) -- Position at the top inside the main frame
titleLabel.AnchorPoint = Vector2.new(0.5, 0)
titleLabel.Text = "💵 Premium GUI 💵"
titleLabel.TextSize = 24
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = mainFrame

-- Rainbow effect function for title text
spawn(function()
    while true do
        for hue = 0, 1, 0.01 do
            titleLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
            wait(0.05)
        end
    end
end)

-- Create the container for buttons
local buttonContainer = Instance.new("Frame")
buttonContainer.Size = UDim2.new(0.9, 0, 0.65, 0)
buttonContainer.Position = UDim2.new(0.5, 0, 0.6, 0) -- Adjusted for more space under title
buttonContainer.BackgroundTransparency = 1
buttonContainer.AnchorPoint = Vector2.new(0.5, 0.5)
buttonContainer.Parent = mainFrame

-- Add UIGridLayout to organize buttons
local gridLayout = Instance.new("UIGridLayout")
gridLayout.CellSize = UDim2.new(0.3, 0, 0.25, 0)
gridLayout.CellPadding = UDim2.new(0, 10, 0, 10)
gridLayout.Parent = buttonContainer

-- Create the 9 red buttons with hover effects
for i = 1, 9 do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 100, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
    button.Text = "Button " .. i
    button.TextSize = 18
    button.Font = Enum.Font.Gotham
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Parent = buttonContainer

    -- Add rounded corners to each button
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button

    -- Hover effect
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
    end)
end
