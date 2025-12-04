    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "JumpscareOverlay"
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 999999
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Tạo ImageLabel
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.BackgroundTransparency = 1
    imageLabel.BorderSizePixel = 0
    imageLabel.Position = UDim2.new(0, 0, 0, 0)
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.ScaleType = Enum.ScaleType.Stretch
    imageLabel.ImageTransparency = 0
    imageLabel.Visible = true
    imageLabel.Parent = screenGui

    local jumpscareImage1 = "rbxassetid://94547864377343"
    local jumpscareImage2 = "rbxassetid://236542974"
    local flashDuration = 1.6

    ----------------------------------------------------
    -- FADE-IN
    ----------------------------------------------------
    imageLabel.Image = jumpscareImage1
    local tween = TweenInfo.new(0.6, Enum.EasingStyle.Linear)
    TweenService:Create(imageLabel, tween, {ImageTransparency = 1}):Play()

    ----------------------------------------------------
    -- FLASH
    ----------------------------------------------------
    local start = tick()
    while tick() - start < flashDuration do
        imageLabel.Image = jumpscareImage1
        task.wait()
        imageLabel.Image = jumpscareImage2
        task.wait()
end
