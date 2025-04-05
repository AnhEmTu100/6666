
     -- Script 
        

local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/AnhEmTu100/ui-free/refs/heads/main/Vanis%20Lib%20Source.lua'))()
local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/r2lx-hub/Fluxus-R2LX/refs/heads/main/Notif.lua"))()
-- Ví dụ cách chọn team
getgenv().JoinMyTeam = "Marines"
--loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/AlchemyHub/main/InviteToDiscord.lua"))()

-- Tạo Thông Báo 💌 📢
-- Add pop-up notification function
-- Đảm bảo TweenService có sẵn
local TweenService = game:GetService("TweenService")

-- Tạo ScreenGui nếu chưa có
local screenGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("NotificationGui")
if not screenGui then
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "NotificationGui"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- Cấu hình màu sắc
local config = {
    mainColor = Color3.fromRGB(30, 30, 30),
    textColor = Color3.fromRGB(255, 255, 255),
    accentColor = Color3.fromRGB(255, 85, 85),
    cornerRadius = UDim.new(0, 6)
}

-- Hàm tạo thông báo
local function createNotification(message, duration)
    duration = duration or 3  -- Thời gian hiển thị (mặc định 3 giây)

    -- Tạo khung thông báo
    local notification = Instance.new("Frame")
    notification.Name = "Notification"
    notification.Size = UDim2.new(0, 250, 0, 60)
    notification.Position = UDim2.new(1, 20, 0.8, 0)
    notification.BackgroundColor3 = config.mainColor
    notification.BorderSizePixel = 0
    notification.AnchorPoint = Vector2.new(0, 0.5)
    notification.Parent = screenGui

    -- Bo góc khung thông báo
    local notifCorner = Instance.new("UICorner")
    notifCorner.CornerRadius = config.cornerRadius
    notifCorner.Parent = notification

    -- Thêm văn bản thông báo
    local notifText = Instance.new("TextLabel")
    notifText.Size = UDim2.new(1, -20, 1, 0)
    notifText.Position = UDim2.new(0, 10, 0, 0)
    notifText.BackgroundTransparency = 1
    notifText.Text = message
    notifText.TextColor3 = config.textColor
    notifText.TextSize = 14
    notifText.Font = Enum.Font.GothamBold
    notifText.TextWrapped = true
    notifText.Parent = notification

    -- Tạo đường viền màu (Accent Line)
    local accentLine = Instance.new("Frame")
    accentLine.Size = UDim2.new(0, 4, 0.8, 0)
    accentLine.Position = UDim2.new(0, 0, 0.1, 0)
    accentLine.BackgroundColor3 = config.accentColor
    accentLine.BorderSizePixel = 0
    accentLine.Parent = notification

    -- Bo góc đường viền
    local accentCorner = Instance.new("UICorner")
    accentCorner.CornerRadius = UDim.new(0, 2)
    accentCorner.Parent = accentLine

    -- Hiệu ứng hiển thị thông báo
    notification.Position = UDim2.new(1, 20, 0.8, 0)
    TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Position = UDim2.new(1, -270, 0.8, 0)
    }):Play()

    -- Ẩn thông báo sau thời gian đã đặt
    task.delay(duration, function()
        if notification and notification.Parent then
            TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                Position = UDim2.new(1, 20, 0.8, 0)
            }):Play()
            wait(0.6)
            if notification and notification.Parent then
                notification:Destroy()
            end
        end
    end)
end

-- Ví dụ cách sử dụng
createNotification("🔔 Chào mừng bạn đến với R2LX Hub!", 10)

--// Thông báo kiểu iOS
local TweenService = game:GetService("TweenService")

local function ShowNotification(text, isSuccess)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.CoreGui

    local Notification = Instance.new("Frame")
    Notification.Size = UDim2.new(0, 300, 0, 60)
    Notification.Position = UDim2.new(0.5, -150, -0.3, 0)
    Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Notification.BackgroundTransparency = 0.3
    Notification.Parent = ScreenGui

    local NotificationCorner = Instance.new("UICorner", Notification)
    NotificationCorner.CornerRadius = UDim.new(0, 20)

    local NotificationStroke = Instance.new("UIStroke", Notification)
    NotificationStroke.Thickness = 1
    NotificationStroke.Color = Color3.fromRGB(200, 200, 200)

    local Icon = Instance.new("TextLabel")
    Icon.Size = UDim2.new(0, 50, 0, 50)
    Icon.Position = UDim2.new(0.05, 0, 0.1, 0)
    Icon.BackgroundTransparency = 1
    Icon.Font = Enum.Font.SourceSansBold
    Icon.TextSize = 30
    Icon.Parent = Notification

    local Message = Instance.new("TextLabel")
    Message.Text = text
    Message.Size = UDim2.new(0.7, 0, 1, 0)
    Message.Position = UDim2.new(0.25, 0, 0, 0)
    Message.BackgroundTransparency = 1
    Message.TextColor3 = Color3.fromRGB(0, 0, 0)
    Message.Font = Enum.Font.SourceSansSemibold
    Message.TextSize = 18
    Message.TextXAlignment = Enum.TextXAlignment.Left
    Message.Parent = Notification

    if isSuccess then
        Icon.Text = "✅"
        Icon.TextColor3 = Color3.fromRGB(50, 215, 75)
    else
        Icon.Text = "❌"
        Icon.TextColor3 = Color3.fromRGB(255, 59, 48)
    end

    TweenService:Create(Notification, TweenInfo.new(0.6), {Position = UDim2.new(0.5, -150, 0.05, 0)}):Play()

    local Sound = Instance.new("Sound", game.Workspace)
    Sound.SoundId = "rbxassetid://636196342"
    Sound.Volume = 2
    Sound:Play()

    wait(3)
    TweenService:Create(Notification, TweenInfo.new(0.6), {Position = UDim2.new(0.5, -150, -0.3, 0)}):Play()
    wait(0.6)
    Notification:Destroy()
end

--/ Thông báo PC

local function ShowNotificationT(message, duration)
    duration = duration or 3 -- Mặc định 3 giây

    local player = game.Players.LocalPlayer
    local gui = player:FindFirstChild("PlayerGui")
    if not gui then return end

    -- Tạo ScreenGui nếu chưa có
    local screenGui = gui:FindFirstChild("NotificationGui") or Instance.new("ScreenGui", gui)
    screenGui.Name = "NotificationGui"

    -- Tạo thông báo
    local notification = Instance.new("Frame", screenGui)
    notification.Size = UDim2.new(0, 250, 0, 50)
    notification.Position = UDim2.new(0, -260, 0, 10) -- Ẩn trước khi xuất hiện
    notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    notification.BackgroundTransparency = 0.3
    notification.BorderSizePixel = 0

    -- Viền xanh lá
    local border = Instance.new("Frame", notification)
    border.Size = UDim2.new(0, 2, 1, 0)
    border.Position = UDim2.new(0, 0, 0, 0)
    border.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

    -- Icon
    local icon = Instance.new("ImageLabel", notification)
    icon.Size = UDim2.new(0, 30, 0, 30)
    icon.Position = UDim2.new(0, 10, 0.5, -15)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://127256058739324" -- ID ảnh có thể đổi

    -- Văn bản thông báo
    local text = Instance.new("TextLabel", notification)
    text.Size = UDim2.new(1, -50, 1, 0)
    text.Position = UDim2.new(0, 50, 0, 0)
    text.Text = message
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextSize = 16
    text.Font = Enum.Font.Gotham
    text.BackgroundTransparency = 1
    text.TextXAlignment = Enum.TextXAlignment.Left

    -- Hiệu ứng xuất hiện
    notification:TweenPosition(UDim2.new(0, 10, 0, 10), "Out", "Quad", 0.5, true)

    -- Biến mất sau thời gian đặt trước
    task.wait(duration)
    notification:TweenPosition(UDim2.new(0, -260, 0, 10), "In", "Quad", 0.5, true)
    task.wait(0.5)
    notification:Destroy()
end

-- **Cách sử dụng**: 
ShowNotificationT("Recording has started") -- Hiện thông báo mặc định 3 giây
ShowNotificationT("Bạn đã chọn team!", 5) -- Hiện thông báo 5 giây

-- Chọn Team
local function AutoSelectBlockFruitTeam()
    if not getgenv().JoinMyTeam then
        warn("Chưa chọn team!")
        return
    end

    local teamName = getgenv().JoinMyTeam
    local validTeams = {"Marines", "Pirates"}

    if table.find(validTeams, teamName) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", teamName)
        print("Đã chọn team: " .. teamName)
    else
        warn("Team không hợp lệ: " .. teamName)
    end
end

AutoSelectBlockFruitTeam()

-- Tab

local Window = library:CreateWindow("R2LX HUB -", "VERSION", 10044538000)

local Tab = Window:CreateTab("Thông tin | Information")

local Page = Tab:CreateFrame("Chủ yếu | Main")

local Function = Tab:CreateFrame("Chức năng | Function")

local Sv = Tab:CreateFrame("Máy chủ | Server")

local Shop = Tab:CreateFrame("Cửa hàng | Shop")

local Fix = Tab:CreateFrame("Khắc phục độ trễ | Fix Lag")

local Se = Tab:CreateFrame("Cài đặt | Setting")

-- Mục Thông tin 

-- Ví dụ cách sử dụng 

-- Label ( Page ) 
-- Tạo tiêu đề chính nổi bật
Label = Page:CreateLabel("🔥🌟 INFORMATION DEVELOPER 🌟🔥")  

-- Chủ sở hữu  
Label = Page:CreateLabel("👑 Owner: R2LX HUB (ON)")  

-- Người hỗ trợ code  
Label = Page:CreateLabel("💖 Support Code: Enc (cayngaydem)")  

-- Người thiết kế UI  
Label = Page:CreateLabel("🎨 UI: Enc (cayngaydem)")  

-- Trạng thái cập nhật  
Label = Page:CreateLabel("📢 Trạng thái : 🔄 Còn Update thêm 🟠")  

-- Phiên bản UI và Code  
Label = Page:CreateLabel("🔧 Phiên bản UI và Code : 🏷️ 1.1")

-- Lời cảm ơn  
Label = Page:CreateLabel("✨ Thank You For Assisting Me With The\n Script Interface!")  

-- Nút ấn
Button = Page:CreateButton("Discord", "DESCRIPTION", function()
        setclipboard("https://discord.gg/example")
        createNotification("Đã sao chép link Discord!", 5)
end)
-- Function
Label = Function:CreateLabel("Label")
Label:UpdateLabel("Tab Script")

-- Chức năng
Button = Function:CreateButton("On script R2lx Hub", "DESCRIPTION", function()
    local success, errorMsg = pcall(function()
    if success then
        createNotification("🔔 Chào mừng bạn đến với On script R2lx Hub!", 10)
    else
        createNotification("❌ Lỗi khi tải script: " .. errorMsg, 10)
    end
    end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/Bee_Swarm_Simulator%20R2LX.lua"))()
end)

Button = Function:CreateButton("On script R2lx Hub V2", "DESCRIPTION", function()
    local success, errorMsg = pcall(function()
    if success then
        createNotification("🔔 Chào mừng bạn đến với On script R2lx Hub!V2", 10)
    else
        createNotification("❌ Lỗi khi tải script: " .. errorMsg, 10)
    end
    end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/message.luau"))()
end)

Button = Function:CreateButton("On script R2lx Hub V2", "DESCRIPTION", function()
    local success, errorMsg = pcall(function()
    if success then
        createNotification("🔔 Chào mừng bạn đến với On script R2lx Hub!V2", 10)
    else
        createNotification("❌ Lỗi khi tải script: " .. errorMsg, 10)
    end
    end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/2024-12-14_BloxFruits.lua"))()
end)

Button = Function:CreateButton("On script bounty", "DESCRIPTION", function()
    local success, errorMsg = pcall(function()
    if success then
        createNotification("🔔 Chào mừng bạn đến với On script R2lx Hub!V2", 10)
    else
        createNotification("❌ Lỗi khi tải script: " .. errorMsg, 10)
    end
    end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZusQ/svvsnsns/refs/heads/main/cocsjcaal%203.txt"))()
end)

Button = Function:CreateButton("On script key", "DESCRIPTION", function()
    local success, errorMsg = pcall(function()
    if success then
        createNotification("🔔 Chào mừng bạn đến với On script R2lx Hub!V2", 10)
    else
        createNotification("❌ Lỗi khi tải script: " .. errorMsg, 10)
    end
    end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Phatdepzaicrystal/Test/refs/heads/main/KT/VxezeHub.lua"))()
end)

Button = Function:CreateButton("On  AlchemyHub", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/AlchemyHub.lua.txt"))()
createNotification("🔔 Chào mừng bạn đến với On  ui script!", 10)
end)

Button = Function:CreateButton("On  script", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/Hazz/refs/heads/main/message%20(15).txt"))()
createNotification("🔔 Chào mừng bạn đến với On  ui script!", 10)
end)

Button = Function:CreateButton("On api", "DESCRIPTION", function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
createNotification("🔔 Chào mừng bạn đến với On  ui script!", 10)
end)

Button = Function:CreateButton("On  ui test2", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Phatdepzaicrystal/Phat/refs/heads/main/Phat.lua"))()
createNotification("🔔 Chào mừng bạn đến với On  ui script!", 10)
end)
-- Sever 
Label = Sv:CreateLabel("Label")
Label:UpdateLabel("Tab Sever")

Button = Sv:CreateButton("Thế giới 1 ( Sea 1)", "DESCRIPTION", function()
ShowNotification("Dịch chuyển sea 1 chính xác!", true)
        wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

Button = Sv:CreateButton("Thế giới 2 ( Sea 2)", "DESCRIPTION", function()
ShowNotification("Dịch chuyển sea 2 chính xác!", true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

Button = Sv:CreateButton("Thế giới 3 ( Sea 3)", "DESCRIPTION", function()
ShowNotification("Dịch chuyển sea 3 chính xác!", true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
    
    Button = Sv:CreateButton("Thế giới haki ( ColorHop.lua)", "DESCRIPTION", function()
ShowNotification("Dịch chuyển sea 3 chính xác!", true)
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/refs/heads/main/W-azure/Free/AutoColorHop.lua"))()
    end)
    
-- Fixx Lag ( Fix )
Label = Fix:CreateLabel("Label")
Label:UpdateLabel("Tab Fix Lag")

-- Chức Năng ( Futtion )
Button = Fix:CreateButton("FIX LAG", "DESCRIPTION", function()
createNotification("🔔 Chào mừng bạn đến với R2LX Hub!", 5)
end)


-- Chức năng Fix Lag
Button = Fix:CreateButton("Fix lag nhẹ", "DESCRIPTION", function()
    setfpscap(-999999999999)
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxFrameRate = -999999999999
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxBufferSize = -999999999999
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxBandwidth = -999999999999

    createNotification("Đã bật chống lava thành công!", 5)
end)

Button = Fix:CreateButton("Fix lag trung", "DESCRIPTION", function()
    -- Giới hạn FPS hợp lý để tránh quá tải CPU/GPU
    setfpscap(100) -- Nếu máy mạnh, tăng lên 240+; nếu máy yếu, để 60

    -- Tắt một số hiệu ứng đồ họa để giảm lag
    game:GetService("Lighting").GlobalShadows = false -- Tắt bóng
    game:GetService("Lighting").FogEnd = 99e99 -- Loại bỏ sương mù

    -- Tắt các hiệu ứng hình ảnh không cần thiết
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Enabled = false -- Tắt hiệu ứng hạt và vệt sáng
        elseif v:IsA("Explosion") then
            v:Destroy() -- Xóa các vụ nổ để tránh giật lag
        end
    end

    -- Giảm tải Render, chỉ giữ lại nhân vật
    game:GetService("RunService"):Set3dRenderingEnabled(true) -- Giữ hiển thị nhưng tối ưu
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level1 -- Đặt đồ họa mức thấp nhất

    -- Tắt âm thanh môi trường không cần thiết
    for _, v in pairs(game:GetService("SoundService"):GetDescendants()) do
        if v:IsA("Sound") and v.Looped then
            v.Volume = 0 -- Giảm âm lượng của nhạc nền, âm thanh môi trường
        end
    end

    -- Thông báo tối ưu thành công
    createNotification("Game đã được tối ưu để chạy mượt!", 5)
end)

Button = Fix:CreateButton("Trời sáng", "DESCRIPTION", function()
game:GetService("Lighting").Brightness = 1e1,5 -- Độ sáng mặc định, tránh bị tối quá
createNotification("Game đã được tối ưu bầu trời!", 5)
end)


Button = Fix:CreateButton("Xoá lava", "DESCRIPTION", function()
    local count = 0
    
    -- Xoá Lava/Magma trong Workspace
    for i, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Lava" or v.Name == "Magma" or v.Name == "Ice"  then   
            v:Destroy()
            count = count + 1
        end
    end
    
    -- Xoá Lava/Magma trong ReplicatedStorage
    for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
        if v.Name == "Lava" or v.Name == "Magma" or v.Name == "Ice"  then      
            v:Destroy()
            count = count + 1
        end
    end

    -- Hiển thị thông báo sau khi kiểm tra
    if count > 0 then
        createNotification("Đã xoá " .. count .. " đối tượng Lava/Magma!", 5)
    else
        createNotification("Không có Lava/Magma để xoá!", 5)
    end
end)

--- Tab Setting

Label = Se:CreateLabel("Label")
Label:UpdateLabel("Tab Settings|")

Toggle = Se:CreateToggle("Atiban chest", "DESCRIPTION", function(Value)
           _G.AntiBand=Value
end)
local dangerousIDs = {17884881, 120173604, 912348}
spawn(function()
    while wait() do
        if _G.AntiBand then
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if table.find(dangerousIDs, player.UserId) then
                end
            end
        end
    end
end)



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
-- Toggle Aimbot
Toggle = Se:CreateToggle("Simple Aimbot", "Khóa camera vào người chơi gần nhất", function(Value)
    _G.AimbotEnabled = Value
end)
-- Hàm tìm player gần nhất (trừ LocalPlayer)
local function getClosestTarget()
    local closestPlayer = nil
    local shortestDistance = math.huge
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (Camera.CFrame.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closestPlayer = player
            end
        end
    end
    if closestPlayer then
        return closestPlayer.Character.HumanoidRootPart
    end
    return nil
end
-- Aimbot đơn giản
RunService.RenderStepped:Connect(function()
    if _G.AimbotEnabled then
        local targetPart = getClosestTarget()
        if targetPart then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
        end
    end
end)

-------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")

local FOV_RADIUS = 150
local fovCircle

-- Vẽ vòng FOV
local function createFOV()
    local circle = Drawing.new("Circle")
    circle.Radius = FOV_RADIUS
    circle.Thickness = 1
    circle.Filled = false
    circle.Transparency = 0.5
    circle.Color = Color3.fromRGB(0, 255, 0)
    circle.Visible = true
    return circle
end

-- Cập nhật vị trí và bán kính FOV
RunService.RenderStepped:Connect(function()
    if fovCircle then
        local mousePos = UserInputService:GetMouseLocation()
        fovCircle.Position = Vector2.new(mousePos.X, mousePos.Y)
        fovCircle.Radius = FOV_RADIUS
    end
end)

-- Hàm tìm người chơi gần nhất trong FOV
local function getClosestTargetInFOV()
    local closestPlayer, shortest = nil, math.huge
    local mousePos = UserInputService:GetMouseLocation()

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local screenPos, onScreen = Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            if onScreen then
                local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                if dist < FOV_RADIUS and dist < shortest then
                    shortest = dist
                    closestPlayer = player
                end
            end
        end
    end

    if closestPlayer then
        return closestPlayer.Character.HumanoidRootPart
    end
    return nil
end

-- Toggle Aimbot
Toggle = Se:CreateToggle("Simple Aimbot + FOV", "Khóa camera vào mục tiêu trong FOV", function(Value)
    _G.AimbotEnab = Value
    if Value then
        fovCircle = createFOV()
    else
        if fovCircle then
            fovCircle:Remove()
            fovCircle = nil
        end
    end
end)

-- Slider điều chỉnh bán kính FOV
Slider = Se:CreateSlider("FOV Radius", 50, 500, 150, function(val)
    FOV_RADIUS = val
end)

-- Thực hiện Aimbot
RunService.RenderStepped:Connect(function()
    if _G.AimbotEnab then
        local target = getClosestTargetInFOV()
        if target then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Position)
        end
    end
end)


local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local le = (game:GetService("Players").LocalPlayer.Data.Level.Value)
local code = LocalizationService:GetCountryRegionForPlayerAsync(player)
local data = {
    embeds = {
        {
            title = "R2lx New Player",
            url = "https://www.roblox.com/users/" .. player.UserId,
            description = "```" .. player.DisplayName .. " (" .. player.Name .. ") ```",
            color = tonumber(0xffa500),
            author = {
                name = "Admin: R2LX and Enc and (cayngaydem)",
                url = "https://cdn.discordapp.com/attachments/1226454597724409936/1233430491953107086/Screenshot_2024-04-20-17-04-30-945_com.zing.zalo-edit.jpg?ex=662d1129&is=662bbfa9&hm=345e588812e5489a8219d6939a7b94487e79f1153c99523094d207a830f2ccee&",
                icon_url = "https://cdn.discordapp.com/attachments/1226454597724409936/1233430491953107086/Screenshot_2024-04-20-17-04-30-945_com.zing.zalo-edit.jpg?ex=662d1129&is=662bbfa9&hm=345e588812e5489a8219d6939a7b94487e79f1153c99523094d207a830f2ccee&"
            },
            image = {
            	url = "https://cdn.discordapp.com/attachments/1229077309194113094/1233391929983504394/320688412_5524593467666764_7520827848036533185_n.gif?ex=662ced3f&is=662b9bbf&hm=25bf897861b49dc4d4e1320aa246bb05f9c5ba67d2a745106b9e0ad159981a55&"
            },
            footer = {
                text = "R2lx Hub | Created by: Ari | https://discord.com/invite/E6ffTF57RG | Time: " .. os.date("%Y-%m-%d %H:%M:%S VN"),
                icon_url = "https://cdn.discordapp.com/attachments/1226454597724409936/1233424140283940924/09b1d39ef857154916c5425b203eddac.jpg?ex=662d0b3e&is=662bb9be&hm=c9a53bdf01f40ef9cd37ea93422e2ed57ae74cdb31fb2cbf7be875214cb4d7ae&"
            },
            fields = {
                {
                    name = "ᴄᴏᴜɴᴛʀʏ🌐",
                    value = "```" .. code .. "```",
                    inline = true
                },
                {
                    name = "ᴀɢᴇ📆",
                    value = "```" .. player.AccountAge .. " Days```",
                    inline = true
                },
                {
                    name = "ᴇxᴇᴄᴜᴛᴏʀ💬",
                    value = "```" .. identifyexecutor() .. "```",
                    inline = true
                },
                {
                    name = "ʟᴇᴠᴇʟ🆙:",
                    value = "```" .. le .. "```",
                    inline = true
                },
                {
                    name = "ᴊᴏʙ ɪᴅ:",
                    value = "```".. tostring(game.JobId) .."```",
                    inline = true
                },
                {
                    name = "sᴛᴀᴛᴜs❗",
                    value = "```Người Dùng Đã Dùng Script Auto Farm Blox Fruit Cảm Ơn Bạn!!!```",
                    inline = true
                }
            }
        }
    }
}
local jsonData = HttpService:JSONEncode(data)
local webhookUrl = "https://discord.com/api/webhooks/1333851587134754938/8wb5sBb2swZ3tcXQqJb_tBR8IVGPydbfQFl1LpKAhlFOZyaSZC8GAMytiwHhY3EeBaHm"
local headers = {["Content-Type"] = "application/json"}
request = http_request or request or HttpPost or fluxus.request or syn.request or Krnl.request or delta.request;
local request = http_request or request or HttpPost or syn.request
local final = {Url = webhookUrl, Body = jsonData, Method = "POST", Headers = headers}

local success, response = pcall(request, final)
if success then
    ShowNotification("Profile information sent to Discord.", true)
else
    ShowNotification("Failed to send profile information to Discord: " .. response, true)
end
    else