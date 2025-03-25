local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/AnhEmTu100/ui-free/refs/heads/main/Vanis%20Lib%20Source.lua'))()

-- Ví dụ cách chọn team
getgenv().JoinMyTeam = "Marines"

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

local Page = Tab:CreateFrame("Chủ Yếu | Main")

local Function = Tab:CreateFrame("Chức năng | Function")

local Fix = Tab:CreateFrame("Khắc phục độ trễ | Fix Lag")


-- Mục Thông tin 
Label = Tab:CreateLabel("Tii")
Label:UpdateLabel("Code : R2LX HUB 🤓")
Label:UpdateLabel("Trạng thái : Còn Update thêm 🟠")
Label:UpdateLabel("Phiên bản Ui và Code : 1.1")
Button = Fix:CreateButton({
    Name = "Link mời Discord"
    Callback = function(value)
        setclipboard(" ")
        Notif.New("Đã sao chép link Discord!", 5)
    end
})
-- Ví dụ cách sử dụng 

-- Label ( Page ) 

Label = Page:CreateLabel("Label")
Label:UpdateLabel("New Title")

-- Function
Label = Function:CreateLabel("Label")
Label:UpdateLabel(" Title")

-- Chức năng
Button = Function:CreateButton("ON SCRIPT R2LX HUB", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/Bee_Swarm_Simulator%20R2LX.lua"))()
end)

Button = Function:CreateButton("ON SCRIPT TEST", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/ovl_freemium.lua%20(1).txt"))()
end)

Button = Function:CreateButton("ON SCRIPT", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu100/6666/refs/heads/main/hfdd"))()
end)

-- Fixx Lag ( Fix )
Label = Fix:CreateLabel("Label")
Label:UpdateLabel("New")

-- Chức Năng ( Futtion )
Button = Fix:CreateButton("FIX LAG", "DESCRIPTION", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/Hazz/refs/heads/main/message%20(12).lua"))()
end)


-- Chức năng Fix Lag
Button = Fix:CreateButton("FIX LAG", "DESCRIPTION", function()
    setfpscap(125)
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxFrameRate = 125
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxBufferSize = 1000000000
    game:GetService("Players").LocalPlayer.NetworkSettings.MaxBandwidth = -100000000

    createNotification("Đã bật chống lava thành công!")
end)

-- Chức năng Không Mất Máu Khi Xuống Lava (Sửa lỗi lag thanh máu)
Button = Fix:CreateButton("MIỄN NHIỄM LAVA", "Không mất máu khi đứng trên lava", function()
    spawn(function()
        while wait(0.1) do
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid:SetAttribute("Invulnerable", true) -- Ngăn mọi sát thương
                char.Humanoid.Health = math.max(char.Humanoid.Health, char.Humanoid.MaxHealth) -- Giữ nguyên máu
            end
        end
    end)

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Miễn Nhiễm Lava",
        Text = "Đã bật thành công!",
        Duration = 3
    })
end)