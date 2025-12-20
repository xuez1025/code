local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

function aimAt(target)
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = target.Character.HumanoidRootPart.Position
        local myPosition = player.Character.HumanoidRootPart.Position
        local direction = (targetPosition - myPosition).unit
        local newCFrame = CFrame.new(myPosition, myPosition + direction)
        player.Character.HumanoidRootPart.CFrame = newCFrame
    end
end

while true do
    wait(0.1) -- 每0.1秒檢查一次
    local closestEnemy = nil
    local closestDistance = math.huge

    for _, enemy in pairs(game.Players:GetPlayers()) do
        if enemy ~= player and enemy.Character and enemy.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - enemy.Character.HumanoidRootPart.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestEnemy = enemy
            end
        end
    end

    if closestEnemy then
        aimAt(closestEnemy)
    end
end
