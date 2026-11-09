local v8 = game:GetService("Players")
local v9 = game:GetService("RunService")
local v10 = game:GetService("UserInputService")
local v11 = game:GetService("Workspace")
local v12 = v11.CurrentCamera
local v13 = v8.LocalPlayer
local v14 = v13:FindFirstChildOfClass("PlayerGui") or v13:WaitForChild("PlayerGui", 10)
if v14 and v14:FindFirstChild("JukeMasterUI") then
    v14.JukeMasterUI:Destroy()
end
local v15 = false
local v16 = 0
local v18 = false
local v20 = Instance.new("ScreenGui")
v20.Name = "JukeMasterUI"
v20.ResetOnSpawn = false
v20.Parent = v14
local v24 = Instance.new("Frame")
v24.Size = UDim2.new(0, 180, 0, 56)
v24.Position = UDim2.new(0.5, -90, 0.22, 0)
v24.BackgroundTransparency = 1
v24.Parent = v20
local v29 = Instance.new("Frame")
v29.Size = UDim2.new(1, 0, 0, 18)
v29.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v29.BackgroundTransparency = 0.2
v29.Active = true
v29.Parent = v24
local v35 = Instance.new("UICorner")
v35.CornerRadius = UDim.new(0, 6)
v35.Parent = v29
local v38 = Instance.new("TextLabel")
v38.Size = UDim2.new(1, 0, 1, 0)
v38.BackgroundTransparency = 1
v38.Text = "≡ DRAG HERE ≡"
v38.TextColor3 = Color3.fromRGB(150, 150, 150)
v38.Font = Enum.Font.GothamBold
v38.TextSize = 9
v38.Parent = v29
local v47 = Instance.new("TextButton")
v47.Size = UDim2.new(1, 0, 0, 34)
v47.Position = UDim2.new(0, 0, 0, 22)
v47.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
v47.BackgroundTransparency = 0.1
v47.Text = "Deofuscated LOL [OFF]"
v47.TextColor3 = Color3.fromRGB(255, 0, 0)
v47.Font = Enum.Font.GothamBold
v47.TextSize = 11
v47.Parent = v24
local v57 = Instance.new("UICorner")
v57.CornerRadius = UDim.new(0, 8)
v57.Parent = v47
local v60 = Instance.new("UIStroke")
v60.Color = Color3.fromRGB(255, 0, 0)
v60.Thickness = 2.5
v60.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v60.Parent = v47
local v66 = Instance.new("TextLabel")
v66.Size = UDim2.new(1, 0, 0, 12)
v66.Position = UDim2.new(0, 0, 1, 3)
v66.BackgroundTransparency = 1
v66.Text = "Deofuscated By Khanh Beo"
v66.TextColor3 = Color3.fromRGB(180, 180, 180)
v66.Font = Enum.Font.GothamMedium
v66.TextSize = 8
v66.TextStrokeTransparency = 0.5
v66.Parent = v47
local v77, v78, v79, v80 = false, nil, nil, nil
v29.InputBegan:Connect(function(v93)
    if v93.UserInputType == Enum.UserInputType.MouseButton1 or v93.UserInputType == Enum.UserInputType.Touch then
        v77, v79, v80 = true, v93.Position, v24.Position
    end
end)
v29.InputChanged:Connect(function(v94)
    if v94.UserInputType == Enum.UserInputType.MouseMovement or v94.UserInputType == Enum.UserInputType.Touch then
        v78 = v94
    end
end)
v10.InputChanged:Connect(function(v95)
    if v95 == v78 and v77 then
        local v148 = v95.Position - v79
        v24.Position = UDim2.new(v80.X.Scale, v80.X.Offset + v148.X, v80.Y.Scale, v80.Y.Offset + v148.Y)
    end
end)
v47.MouseButton1Click:Connect(function()
    v15 = not v15
    if v15 then
        v47.Text = "Deofuscated LOL [ON]"
        v47.TextColor3 = Color3.fromRGB(0, 255, 60)
        v60.Color = Color3.fromRGB(0, 255, 60)
    else
        local v178 = 0
        while true do
            if v178 == 1 then
                v60.Color = Color3.fromRGB(255, 0, 0)
                break
            end
            if v178 == 0 then
                v47.Text = "Deofuscated LOL [OFF]"
                v47.TextColor3 = Color3.fromRGB(255, 0, 0)
                v178 = 1
            end
        end
    end
end)
local function v81(v97)
    local v98 = 0
    local v100
    local v99
    while true do
        if v98 == 3 then
            return false
        end
        if 1 == v98 then
            if v99 then
                for v228, v229 in ipairs(v99:GetChildren()) do
                    local v231 = v229.Name:lower()
                    if v229:IsA("Tool") or v231:find("bomb") or v231:find("tag") or v231:find("tnt") or v231:find("ball") then
                        return true
                    end
                end
                for v232, v233 in ipairs(v99:GetDescendants()) do
                    if v233:IsA("BasePart") or v233:IsA("Model") then
                        local v237 = v233.Name:lower()
                        if v237:find("bomb") or v237:find("tnt") or v237:find("tag") then
                            return true
                        end
                    end
                end
            end
            v100 = v97:FindFirstChild("Backpack")
            v98 = 2
        end
        if 2 == v98 then
            if v100 then
                for v186, v187 in ipairs(v100:GetChildren()) do
                    local v188 = v187.Name:lower()
                    if v188:find("bomb") or v188:find("tag") or v188:find("tnt") then
                        return true
                    end
                end
            end
            if v97:GetAttribute("HasBomb") == true or v97:GetAttribute("IsIt") == true or v97:GetAttribute("Tagged") == true then
                return true
            end
            v98 = 3
        end
        if v98 == 0 then
            if not v97 then
                return false
            end
            v99 = v97.Character
            v98 = 1
        end
    end
end
local v82 = {}
local v83 = v11:FindFirstChild("JukeMasterPaths") or Instance.new("Folder")
v83.Name = "JukeMasterPaths"
v83.Parent = v11
local function v86(v101, v102, v103)
    local v104 = 0
    local v105
    local v106
    local v108, v108_1
    local v107
    local v109
    while true do
        if v104 == 0 then
            v83:ClearAllChildren()
            v105 = Instance.new("Part")
            v105.Size = Vector3.new(0.2, 0.2, 0.2)
            v105.Position = v101
            v104 = 1
        end
        if v104 == 6 then
            v109.Transparency = NumberSequence.new(0)
            v109.Parent = v105
            task.delay(0.5, function()
                if v105 and v105.Parent then
                    v105:Destroy()
                end
                if v106 and v106.Parent then
                    v106:Destroy()
                end
            end)
            break
        end
        if v104 == 2 then
            v106 = Instance.new("Part")
            v106.Size = Vector3.new(0.2, 0.2, 0.2)
            v106.Position = v102
            v106.Transparency = 1
            v104 = 3
        end
        if v104 == 4 then
            v108_1 = Instance.new("Attachment", v106)
            v109 = Instance.new("Beam")
            v109.Attachment0 = v107
            v109.Attachment1 = v108_1
            v104 = 5
        end
        if v104 == 5 then
            v109.Color = ColorSequence.new(v103)
            v109.Width0 = 0.6
            v109.Width1 = 0.6
            v109.FaceCamera = true
            v104 = 6
        end
        if v104 == 3 then
            v106.Anchored = true
            v106.CanCollide = false
            v106.Parent = v83
            v107 = Instance.new("Attachment", v105)
            v104 = 4
        end
        if v104 == 1 then
            v105.Transparency = 1
            v105.Anchored = true
            v105.CanCollide = false
            v105.Parent = v83
            v104 = 2
        end
    end
end
v82.AdvancedScanAndPredict = function(v110, v111)
    local v112 = 0
    local v114
    local v116
    local v118
    local v113
    local v119
    local v117
    while true do
        local v135 = 0
        while true do
            if v135 == 1 then
                if 0 == v112 then
                    v113 = v110.Position
                    v114 = {}
                    v116 = v111.Position + v111.AssemblyLinearVelocity * 0.4
                    v112 = 1
                end
                if v112 == 1 then
                    local v191 = 0
                    while true do
                        if v191 == 1 then
                            v118 = {
                                45,
                                -45,
                                90,
                                -90,
                                135,
                                -135,
                                180,
                            }
                            v119 = RaycastParams.new()
                            v191 = 2
                        end
                        if v191 == 2 then
                            v112 = 2
                            break
                        end
                        if v191 == 0 then
                            local v117_3 = v113 - v116
                            if v117_3.Magnitude == 0 then
                                v117 = v110.CFrame.LookVector * -1
                            else
                                v117 = v117_3.Unit
                            end
                            v191 = 1
                        end
                    end
                end
                break
            end
            if v135 == 0 then
                if 2 == v112 then
                    v119.FilterType = Enum.RaycastFilterType.Exclude
                    v119.IgnoreWater = true
                    v119.FilterDescendantsInstances = {v13.Character, v83}
                    for v200, v201 in ipairs(v118) do
                        local v202 = CFrame.Angles(0, math.rad(v201), 0) * v117
                        local v203 = v113 + v202 * 16
                        local v204 = v11:Raycast(v113, v203 - v113, v119)
                        local v205 = 10
                        if v204 then
                            v205 = 2
                            v203 = v204.Position - v202 * 2
                        else
                            local v221 = (v203 - v116).Magnitude
                            v205 = math.clamp(v221, 1, 20)
                        end
                        table.insert(v114, {Score = v205, Position = v203, Direction = v202})
                    end
                    v112 = 3
                end
                if v112 == 3 then
                    table.sort(v114, function(v206, v207)
                        return v206.Score > v207.Score
                    end)
                    return v114[1] or {Position = v113 + v117 * 16, Direction = v117}
                end
                v135 = 1
            end
        end
    end
end
v82.ExecuteSmartJuke = function(v120, v121, v122)
    local v123 = 0
    local v125
    local v124
    local v126
    while true do
        if v123 == 0 then
            local v170 = 0
            while true do
                if v170 == 0 then
                    v124 = v82.AdvancedScanAndPredict(v120, v122)
                    v125 = v124.Position
                    v170 = 1
                end
                if v170 == 1 then
                    v123 = 1
                    break
                end
            end
        end
        if v123 == 2 then
            v121.WalkSpeed = v126 and 25 or 22
            v121:MoveTo(v125)
            v123 = 3
        end
        if v123 == 1 then
            v86(v120.Position, v125, Color3.fromRGB(0, 255, 120))
            v126 = v81(v13)
            v123 = 2
        end
        if 3 == v123 then
            if v124.Direction then
                local v181 = 0
                local v183
                while true do
                    if v181 == 0 then
                        v183 = CFrame.lookAt(v12.CFrame.Position, v125 + Vector3.new(0, 2, 0))
                        v181 = 1
                    end
                    if 1 == v181 then
                        v12.CFrame = v183
                        v12.FieldOfView = 85
                        v181 = 2
                    end
                    if v181 == 2 then
                        task.delay(0.25, function()
                            if v12 then
                                v12.FieldOfView = 70
                            end
                        end)
                        break
                    end
                end
            end
            task.delay(0.03, function()
                if v121 and v121.Parent then
                    v121.Jump = true
                end
            end)
            break
        end
    end
end
local function v89(v127)
    local v128 = v127:WaitForChild("Humanoid", 10)
    local v129 = v127:WaitForChild("HumanoidRootPart", 10)
    if not v128 or not v129 then
        return
    end
    local v130 = false
    local v131 = false
    v128.StateChanged:Connect(function(v136, v137)
        if v137 == Enum.HumanoidStateType.Landed then
            v130 = false
            v131 = false
        elseif v137 == Enum.HumanoidStateType.Freefall then
            task.delay(0.15, function()
                if v128:GetState() == Enum.HumanoidStateType.Freefall then
                    v131 = true
                end
            end)
        end
    end)
    v10.JumpRequest:Connect(function()
        if not v127.Parent or v128.Health <= 0 then
            return
        end
        if v81(v13) and v131 and not v130 then
            v130 = true
            v131 = false
            v128:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
    local function v132(v138, v139, v140)
        local v141 = 0
        local v142
        while true do
            if 2 == v141 then
                v128.WalkSpeed = v142 and 20 or 16
                v18 = false
                break
            end
            if 1 == v141 then
                task.wait(0.35)
                v142 = v81(v13)
                v141 = 2
            end
            if v141 == 0 then
                v18 = true
                v82.ExecuteSmartJuke(v138, v139, v140)
                v141 = 1
            end
        end
    end
    local v133 = Vector3.new(9, 9, 9)
    v9.Heartbeat:Connect(function()
        local v143 = 0
        local v144
        while true do
            if v143 == 2 then
                if not v18 and tick() - v16 >= 0.9 and not v144 then
                    for v208, v209 in ipairs(v8:GetPlayers()) do
                        if v209 ~= v13 and v209.Character then
                            local v222 = v209.Character:FindFirstChild("HumanoidRootPart")
                            if v222 then
                                local v227 = (v129.Position - v222.Position).Magnitude
                                if v227 <= 17 and v81(v209) and v129.Position.Y <= v222.Position.Y + 3.5 then
                                    v16 = tick()
                                    v132(v129, v128, v222)
                                    break
                                end
                            end
                        end
                    end
                end
                if not v18 then
                    v128.WalkSpeed = v144 and 20 or 16
                end
                break
            end
            if v143 == 0 then
                if not v127.Parent or v128.Health <= 0 then
                    return
                end
                v144 = v81(v13)
                v143 = 1
            end
            if 1 == v143 then
                if not v15 then
                    local v199 = 0
                    while true do
                        if v199 == 1 then
                            return
                        end
                        if v199 == 0 then
                            v128.WalkSpeed = v144 and 20 or 16
                            v83:ClearAllChildren()
                            v199 = 1
                        end
                    end
                end
                for v184, v185 in ipairs(v8:GetPlayers()) do
                    if v185 ~= v13 and v185.Character then
                        local v210 = 0
                        local v212
                        local v211
                        while true do
                            if v210 == 1 then
                                local v213_5 = v211:FindFirstChildOfClass("Humanoid")
                                if v212 and v213_5 and v213_5.Health > 0 then
                                    local v234 = 0
                                    while true do
                                        if v234 == 1 then
                                            v212.CanCollide = false
                                            break
                                        end
                                        if 0 == v234 then
                                            v212.Size = v133
                                            v212.Transparency = 1
                                            v234 = 1
                                        end
                                    end
                                end
                                break
                            end
                            if v210 == 0 then
                                local v224 = 0
                                while true do
                                    if v224 == 0 then
                                        v211 = v185.Character
                                        v212 = v211:FindFirstChild("HumanoidRootPart")
                                        v224 = 1
                                    end
                                    if 1 == v224 then
                                        v210 = 1
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
                v143 = 2
            end
        end
    end)
end
if v13.Character then
    v89(v13.Character)
end
v13.CharacterAdded:Connect(v89)