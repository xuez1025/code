local player = game.Players.LocalPlayer

-- ScreenGui
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name, gui.ResetOnSpawn = "MyScriptGui", false


local frame = Instance.new("Frame", gui)
frame.Size = UDim2.fromOffset(300, 200)
frame.Position = UDim2.fromScale(0.5, 0.5) - UDim2.fromOffset(150, 100)
frame.BackgroundColor3 = Color3.fromRGB(35,35,35)
frame.BorderSizePixel, frame.Active, frame.Draggable = 0, true, true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0,10)


local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.BackgroundColor3 = Color3.fromRGB(45,45,45)
title.Text, title.TextSize = "Xu-hub", 18
title.TextColor3, title.Font, title.BorderSizePixel =
	Color3.new(1,1,1), Enum.Font.SourceSansBold, 0
Instance.new("UICorner", title).CornerRadius = UDim.new(0,10)


local btn = Instance.new("TextButton", frame)
btn.Size = UDim2.fromOffset(200,50)
btn.Position = UDim2.fromScale(0.5,0.5) + UDim2.fromOffset(-100,10)
btn.Text, btn.TextSize = "我是你爹", 20
btn.Font, btn.BorderSizePixel = Enum.Font.SourceSans, 0
btn.BackgroundColor3, btn.TextColor3 =
	Color3.fromRGB(0,150,255), Color3.new(1,1,1)
Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)

btn.MouseButton1Click:Connect(function()
	print("功能已執行！")
end)


local close = Instance.new("TextButton", frame)
close.Size = UDim2.fromOffset(30,30)
close.Position = UDim2.new(1,-35,0,5)
close.Text, close.Font, close.TextSize = "X", Enum.Font.SourceSansBold, 18
close.BackgroundColor3, close.TextColor3 =
	Color3.fromRGB(200,50,50), Color3.new(1,1,1)
close.BorderSizePixel = 0
Instance.new("UICorner", close).CornerRadius = UDim.new(1,0)

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
