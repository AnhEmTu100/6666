local World1, World2, World3 = false, false, false

if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game:GetService("Players").LocalPlayer:Kick("Do not Support, Please wait...")
end
local isStudio
local Support = false
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "GOGO HUB | DRAGON UPDATE",
    LoadingTitle = "GOGO Hub",
    LoadingSubtitle = "V4.1",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "GOGHub",
        FileName = 'GOGO Hub'
    },
    KeySystem = true,
    KeySettings = {
        Title = "GOGO Hub | Key",
        Subtitle = "Key System",
        Note = "The key is: gogodragon",
        FileName = "gogohubkey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"gogodragon"}
    }
})

-- Abas especificadas
local InfoTab = Window:CreateTab("Info", "laptop")
local TabSection = InfoTab:CreateSection("Info")
-- Info
local Label = InfoTab:CreateLabel("Bem vindo "..game.Players.LocalPlayer.Name.." ao GOGO Hub", 4483362458, Color3.fromRGB(10, 10, 10), false) -- Title, Icon, Color, IgnoreTheme
local ExecutorParagraph = InfoTab:CreateParagraph({Title = (isStudio and "Debugging (Studio)" or identifyexecutor()) or "Your Executor Does Not Support identifyexecutor.", Content = "Text"})
	if "Xeno" or "Solara" or "Swift" == identifyexecutor() then
        ExecutorParagraph:Set({Title = (isStudio and "Debugging (Studio)" or identifyexecutor()) or "Your Executor Does Not Support identifyexecutor.", Content = "Este executor é suportado e todos os elementos funcionarão"})
        Support = true
	else
        ExecutorParagraph:Set({Title = (isStudio and "Debugging (Studio)" or identifyexecutor()) or "Your Executor Does Not Support identifyexecutor.", Content = "Este executor não é suportado no momento"})
        Support = false
	end
-- Resto das abas

local GeneralTab = Window:CreateTab("General", "laptop")
local EspTab = Window:CreateTab("Esp", "eye")
local FruitsTab = Window:CreateTab("Fruits", "apple")
local SeaTab = Window:CreateTab("Sea", "waves")
local PvpTab = Window:CreateTab("PVP", "swords")
local RaidTab = Window:CreateTab("Raid", "skull")
local RaceV4Tab = Window:CreateTab("Race V4", "person-standing")
local ShopTab = Window:CreateTab("Shop", "shopping-cart")
local DragonTab = Window:CreateTab("Dragon", "egg")
local TeleportTab = Window:CreateTab("Teleport", "map-pin")
local StatsTab = Window:CreateTab("Stats", "route")
local MiscTab = Window:CreateTab("Misc", "user-cog")

-- TabsSection
local TabSection = GeneralTab:CreateSection("Principal")
GeneralTab:CreateParagraph({ Title = "GOGO Hub", Content = "Versão: 4.1 | Feito por berhddb"})
local TabSection = EspTab:CreateSection("ESP")
local TabSection = FruitsTab:CreateSection("Frutas")
local TabSection = RaceV4Tab:CreateSection("Race V4")
local TabSection = SeaTab:CreateSection("Sea")
local TabSection = PvpTab:CreateSection("PVP")
local TabSection = StatsTab:CreateSection("Stats/Points")
local TabSection = MiscTab:CreateSection("Misc")

-- OTHER
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end

function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end

function Click()
    wait(.1)
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function BTP(P)
    repeat wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TP1(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function topos(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TPB(CFgo)
    local tween_s = game:GetService("TweenService")
    local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude / 300, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

function TPP(CFgo)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then 
        tween:Cancel() 
        repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
        wait(7) 
        return 
    end
    local tween_s = game:GetService("TweenService")
    local info = TweenInfo.new((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFgo.Position).Magnitude / 325, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = CFgo})
    tween:Play()

    local tweenfunc = {}

    function tweenfunc:Stop()
        tween:Cancel()
    end

    return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                local K = Instance.new("Part", game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1, 0.5, 1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
            local z = game:GetService("TweenService")
            local B = TweenInfo.new((p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300, Enum.EasingStyle.Linear)
            local S, g = pcall(function()
                local q = z:Create(game.Players.LocalPlayer.Character.Root, B, {CFrame = p})
                q:Play()
            end)
            if not S then 
                return g
            end
            game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 10 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
        end)
    end)
end

Type = 1
spawn(function()
    while wait(0.1) do
        if Type == 1 then
            Pos = CFrame.new(0, PosY, 0)
        elseif Type == 2 then
            Pos = CFrame.new(0, PosY, -30)
        elseif Type == 3 then
            Pos = CFrame.new(30, PosY, 0)
        elseif Type == 4 then
            Pos = CFrame.new(0, PosY, 30)
        elseif Type == 5 then
            Pos = CFrame.new(-30, PosY, 0)
        elseif Type == 6 then
            Pos = CFrame.new(0, 35, 0)
        end
    end
end)

spawn(function()
    while wait(0.1) do
        Type = 1
        wait(0.5)
        Type = 2
        wait(0.5)
        Type = 3
        wait(0.5)
        Type = 4
        wait(0.5)
        Type = 5
        wait(0.5)
    end
end)

---------Tween

  function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance/Speed)
    _G.Clip2 = false
    end
   
-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

--BTP
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end
------Bypass TP 2
 function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
    end
end


   function toTarget(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then tween:Cancel() end
        repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end

    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
        tween:Play()
    end)

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end

------

function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end


---------

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end
-- Auto Farm

--// Check Quest
function CheckLevel()
local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
if World1 then
if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
Ms = "Bandit"
NameQuest = "BanditQuest1"
QuestLv = 1
NameMon = "Bandit"
CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
Ms = "Monkey"
NameQuest = "JungleQuest"
QuestLv = 1
NameMon = "Monkey"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
Ms = "Gorilla"
NameQuest = "JungleQuest"
QuestLv = 2
NameMon = "Gorilla"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
Ms = "Pirate"
NameQuest = "BuggyQuest1"
QuestLv = 1
NameMon = "Pirate"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
Ms = "Brute"
NameQuest = "BuggyQuest1"
QuestLv = 2
NameMon = "Brute"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
Ms = "Desert Bandit"
NameQuest = "DesertQuest"
QuestLv = 1
NameMon = "Desert Bandit"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
Ms = "Desert Officer"
NameQuest = "DesertQuest"
QuestLv = 2
NameMon = "Desert Officer"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit" or SelectArea == 'Snow' then -- Snow Bandit
Ms = "Snow Bandit"
NameQuest = "SnowQuest"
QuestLv = 1
NameMon = "Snow Bandit"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman" or SelectArea == 'Snow' then -- Snowman
Ms = "Snowman"
NameQuest = "SnowQuest"
QuestLv = 2
NameMon = "Snowman"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
Ms = "Chief Petty Officer"
NameQuest = "MarineQuest2"
QuestLv = 1
NameMon = "Chief Petty Officer"
CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
Ms = "Sky Bandit"
NameQuest = "SkyQuest"
QuestLv = 1
NameMon = "Sky Bandit"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
Ms = "Dark Master"
NameQuest = "SkyQuest"
QuestLv = 2
NameMon = "Dark Master"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
Ms = "Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 1
NameMon = "Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
Ms = "Dangerous Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 2
NameMon = "Dangerous Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
Ms = "Toga Warrior"
NameQuest = "ColosseumQuest"
QuestLv = 1
NameMon = "Toga Warrior"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
Ms = "Gladiator"
NameQuest = "ColosseumQuest"
QuestLv = 2
NameMon = "Gladiator"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
Ms = "Military Soldier"
NameQuest = "MagmaQuest"
QuestLv = 1
NameMon = "Military Soldier"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
Ms = "Military Spy"
NameQuest = "MagmaQuest"
QuestLv = 2
NameMon = "Military Spy"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
Ms = "Fishman Warrior"
NameQuest = "FishmanQuest"
QuestLv = 1
NameMon = "Fishman Warrior"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
Ms = "Fishman Commando"
NameQuest = "FishmanQuest"
QuestLv = 2
NameMon = "Fishman Commando"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
Ms = "God's Guard"
NameQuest = "SkyExp1Quest"
QuestLv = 1
NameMon = "God's Guard"
CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
Ms = "Shanda"
NameQuest = "SkyExp1Quest"
QuestLv = 2
NameMon = "Shanda"
CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
Ms = "Royal Squad"
NameQuest = "SkyExp2Quest"
QuestLv = 1
NameMon = "Royal Squad"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
Ms = "Royal Soldier"
NameQuest = "SkyExp2Quest"
QuestLv = 2
NameMon = "Royal Soldier"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
Ms = "Galley Pirate"
NameQuest = "FountainQuest"
QuestLv = 1
NameMon = "Galley Pirate"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
Ms = "Galley Captain"
NameQuest = "FountainQuest"
QuestLv = 2
NameMon = "Galley Captain"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
end
end
if World2 then
if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
Ms = "Raider"
NameQuest = "Area1Quest"
QuestLv = 1
NameMon = "Raider"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
Ms = "Mercenary"
NameQuest = "Area1Quest"
QuestLv = 2
NameMon = "Mercenary"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
Ms = "Swan Pirate"
NameQuest = "Area2Quest"
QuestLv = 1
NameMon = "Swan Pirate"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
Ms = "Factory Staff"
NameQuest = "Area2Quest"
QuestLv = 2
NameMon = "Factory Staff"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
Ms = "Marine Lieutenant"
NameQuest = "MarineQuest3"
QuestLv = 1
NameMon = "Marine Lieutenant"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
Ms = "Marine Captain"
NameQuest = "MarineQuest3"
QuestLv = 2
NameMon = "Marine Captain"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
Ms = "Zombie"
NameQuest = "ZombieQuest"
QuestLv = 1
NameMon = "Zombie"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
Ms = "Vampire"
NameQuest = "ZombieQuest"
QuestLv = 2
NameMon = "Vampire"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper" or SelectArea == 'Snow Mountain' then -- Snow Trooper
Ms = "Snow Trooper"
NameQuest = "SnowMountainQuest"
QuestLv = 1
NameMon = "Snow Trooper"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'Snow Mountain' then -- Winter Warrior
Ms = "Winter Warrior"
NameQuest = "SnowMountainQuest"
QuestLv = 2
NameMon = "Winter Warrior"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
Ms = "Lab Subordinate"
NameQuest = "IceSideQuest"
QuestLv = 1
NameMon = "Lab Subordinate"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
Ms = "Horned Warrior"
NameQuest = "IceSideQuest"
QuestLv = 2
NameMon = "Horned Warrior"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
Ms = "Magma Ninja"
NameQuest = "FireSideQuest"
QuestLv = 1
NameMon = "Magma Ninja"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
Ms = "Lava Pirate"
NameQuest = "FireSideQuest"
QuestLv = 2
NameMon = "Lava Pirate"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
Ms = "Ship Deckhand"
NameQuest = "ShipQuest1"
QuestLv = 1
NameMon = "Ship Deckhand"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
Ms = "Ship Engineer"
NameQuest = "ShipQuest1"
QuestLv = 2
NameMon = "Ship Engineer"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
Ms = "Ship Steward"
NameQuest = "ShipQuest2"
QuestLv = 1
NameMon = "Ship Steward"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
Ms = "Ship Officer"
NameQuest = "ShipQuest2"
QuestLv = 2
NameMon = "Ship Officer"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
Ms = "Arctic Warrior"
NameQuest = "FrostQuest"
QuestLv = 1
NameMon = "Arctic Warrior"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
end
elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker" or SelectArea == 'Frost' then -- Snow Lurker
Ms = "Snow Lurker"
NameQuest = "FrostQuest"
QuestLv = 2
NameMon = "Snow Lurker"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
Ms = "Sea Soldier"
NameQuest = "ForgottenQuest"
QuestLv = 1
NameMon = "Sea Soldier"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
Ms = "Water Fighter"
NameQuest = "ForgottenQuest"
QuestLv = 2
NameMon = "Water Fighter"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
end
end
if World3 then
if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
Ms = "Pirate Millionaire"
NameQuest = "PiratePortQuest"
QuestLv = 1
NameMon = "Pirate Millionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
Ms = "Pistol Billionaire"
NameQuest = "PiratePortQuest"
QuestLv = 2
NameMon = "Pistol Billionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
Ms = "Dragon Crew Warrior"
NameQuest = "AmazonQuest"
QuestLv = 1
NameMon = "Dragon Crew Warrior"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
Ms = "Dragon Crew Archer"
NameQuest = "AmazonQuest"
QuestLv = 2
NameMon = "Dragon Crew Archer"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
Ms = "Female Islander"
NameQuest = "AmazonQuest2"
QuestLv = 1
NameMon = "Female Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
Ms = "Giant Islander"
NameQuest = "AmazonQuest2"
QuestLv = 2
NameMon = "Giant Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
Ms = "Marine Commodore"
NameQuest = "MarineTreeIsland"
QuestLv = 1
NameMon = "Marine Commodore"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
Ms = "Marine Rear Admiral"
NameQuest = "MarineTreeIsland"
QuestLv = 2
NameMon = "Marine Rear Admiral"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
Ms = "Fishman Raider"
NameQuest = "DeepForestIsland3"
QuestLv = 1
NameMon = "Fishman Raider"
CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
Ms = "Fishman Captain"
NameQuest = "DeepForestIsland3"
QuestLv = 2
NameMon = "Fishman Captain"
CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
Ms = "Forest Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 1
NameMon = "Forest Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
Ms = "Mythological Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 2
NameMon = "Mythological Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
Ms = "Jungle Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 1
NameMon = "Jungle Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
Ms = "Musketeer Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 2
NameMon = "Musketeer Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
Ms = "Reborn Skeleton"
NameQuest = "HauntedQuest1"
QuestLv = 1
NameMon = "Reborn Skeleton"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
Ms = "Living Zombie"
NameQuest = "HauntedQuest1"
QuestLv = 2
NameMon = "Living Zombie"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
Ms = "Demonic Soul"
NameQuest = "HauntedQuest2"
QuestLv = 1
NameMon = "Demonic Soul"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
Ms = "Posessed Mummy"
NameQuest = "HauntedQuest2"
QuestLv = 2
NameMon = "Posessed Mummy"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
Ms = "Peanut Scout"
NameQuest = "NutsIslandQuest"
QuestLv = 1
NameMon = "Peanut Scout"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
Ms = "Peanut President"
NameQuest = "NutsIslandQuest"
QuestLv = 2
NameMon = "Peanut President"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Chef"
NameQuest = "IceCreamIslandQuest"
QuestLv = 1
NameMon = "Ice Cream Chef"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Commander"
NameQuest = "IceCreamIslandQuest"
QuestLv = 2
NameMon = "Ice Cream Commander"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
Ms = "Cookie Crafter"
NameQuest = "CakeQuest1"
QuestLv = 1
NameMon = "Cookie Crafter"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
Ms = "Cake Guard"
NameQuest = "CakeQuest1"
QuestLv = 2
NameMon = "Cake Guard"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
Ms = "Baking Staff"
NameQuest = "CakeQuest2"
QuestLv = 1
NameMon = "Baking Staff"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
Ms = "Head Baker"
NameQuest = "CakeQuest2"
QuestLv = 2
NameMon = "Head Baker"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
Ms = "Cocoa Warrior"
NameQuest = "ChocQuest1"
QuestLv = 1
NameMon = "Cocoa Warrior"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
Ms = "Chocolate Bar Battler"
NameQuest = "ChocQuest1"
QuestLv = 2
NameMon = "Chocolate Bar Battler"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
Ms = "Sweet Thief"
NameQuest = "ChocQuest2"
QuestLv = 1
NameMon = "Sweet Thief"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
Ms = "Candy Rebel"
NameQuest = "ChocQuest2"
QuestLv = 2
NameMon = "Candy Rebel"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
Ms = "Candy Pirate"
NameQuest = "CandyQuest1"
QuestLv = 1
NameMon = "Candy Pirate"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "Snow Demon" or SelectArea == 'Candy Island' then
Ms = "Snow Demon"
NameQuest = "CandyQuest1"
QuestLv = 2
NameMon = "Snow Demon"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Outlaw"
NameQuest = "TikiQuest1"
QuestLv = 1
NameMon = "Isle Outlaw"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
elseif Lv == 2475 or Lv <= 2524 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then
Ms = "Island Boy"
NameQuest = "TikiQuest1"
QuestLv = 2
NameMon = "Island Boy"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
elseif Lv == 2525 or Lv <= 2549 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Champion"
NameQuest = "TikiQuest2"
QuestLv = 2
NameMon = "Isle Champion"
CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
elseif Lv == 2550 or Lv <= 2574 or SelectMonster == "Serpent Hunter" or SelectArea == 'Tiki Outpost' then
Ms = "Serpent Hunter"
NameQuest = "TikiQuest3"
QuestLv = 1
NameMon = "Serpent Hunter"
CFrameQ = CFrame.new(-16674.37305, 105.25569, 1578.28455)
CFrameMon = CFrame.new(-16555.95898, 167.49406, 1358.57385)
elseif Lv >= 2575 or SelectMonster == "Skull Slayer" or SelectArea == 'Tiki Outpost' then
Ms = "Skull Slayer"
NameQuest = "TikiQuest3"
QuestLv = 2
NameMon = "Skull Slayer"
CFrameQ = CFrame.new(-16674.37305, 105.25569, 1578.28455)
CFrameMon = CFrame.new(-16966.10156, 128.75183, 1656.39062)
end
end
end

--// Select Monster
if World1 then
tableMon = {
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
}
elseif World2 then
tableMon = {
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
}
elseif World3 then
tableMon = {
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
}
end

--// Select Island
if World1 then
AreaList = {
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
}
elseif World2 then
AreaList = {
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
}
elseif World3 then
AreaList = {
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end

--// Check Boss Quest
function CheckBossQuest()
if World1 then
if SelectBoss == "The Gorilla King" then
BossMon = "The Gorilla King"
NameBoss = 'The Gorrila King'
NameQuestBoss = "JungleQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$2,000\n7,000 Exp."
CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
elseif SelectBoss == "Bobby" then
BossMon = "Bobby"
NameBoss = 'Bobby'
NameQuestBoss = "BuggyQuest1"
QuestLvBoss = 3
RewardBoss = "Reward:\n$8,000\n35,000 Exp."
CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss == "The Saw" then
BossMon = "The Saw"
NameBoss = 'The Saw'
CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss == "Yeti" then
BossMon = "Yeti"
NameBoss = 'Yeti'
NameQuestBoss = "SnowQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif SelectBoss == "Mob Leader" then
BossMon = "Mob Leader"
NameBoss = 'Mob Leader'
CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss == "Vice Admiral" then
BossMon = "Vice Admiral"
NameBoss = 'Vice Admiral'
NameQuestBoss = "MarineQuest2"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss == "Saber Expert" then
NameBoss = 'Saber Expert'
BossMon = "Saber Expert"
CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
elseif SelectBoss == "Warden" then
BossMon = "Warden"
NameBoss = 'Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 1
RewardBoss = "Reward:\n$6,000\n850,000 Exp."
CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Chief Warden" then
BossMon = "Chief Warden"
NameBoss = 'Chief Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Swan" then
BossMon = "Swan"
NameBoss = 'Swan'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Magma Admiral" then
BossMon = "Magma Admiral"
NameBoss = 'Magma Admiral'
NameQuestBoss = "MagmaQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss == "Fishman Lord" then
BossMon = "Fishman Lord"
NameBoss = 'Fishman Lord'
NameQuestBoss = "FishmanQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss == "Wysper" then
BossMon = "Wysper"
NameBoss = 'Wysper'
NameQuestBoss = "SkyExp1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif SelectBoss == "Thunder God" then
BossMon = "Thunder God"
NameBoss = 'Thunder God'
NameQuestBoss = "SkyExp2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
elseif SelectBoss == "Cyborg" then
BossMon = "Cyborg"
NameBoss = 'Cyborg'
NameQuestBoss = "FountainQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss == "Ice Admiral" then
BossMon = "Ice Admiral"
NameBoss = 'Ice Admiral'
CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
elseif SelectBoss == "Greybeard" then
BossMon = "Greybeard"
NameBoss = 'Greybeard'
CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if World2 then
if SelectBoss == "Diamond" then
BossMon = "Diamond"
NameBoss = 'Diamond'
NameQuestBoss = "Area1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss == "Jeremy" then
BossMon = "Jeremy"
NameBoss = 'Jeremy'
NameQuestBoss = "Area2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss == "Fajita" then
BossMon = "Fajita"
NameBoss = 'Fajita'
NameQuestBoss = "MarineQuest3"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
elseif SelectBoss == "Don Swan" then
BossMon = "Don Swan"
NameBoss = 'Don Swan'
CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss == "Smoke Admiral" then
BossMon = "Smoke Admiral"
NameBoss = 'Smoke Admiral'
NameQuestBoss = "IceSideQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif SelectBoss == "Awakened Ice Admiral" then
BossMon = "Awakened Ice Admiral"
NameBoss = 'Awakened Ice Admiral'
NameQuestBoss = "FrostQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
elseif SelectBoss == "Tide Keeper" then
BossMon = "Tide Keeper"
NameBoss = 'Tide Keeper'
NameQuestBoss = "ForgottenQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
elseif SelectBoss == "Darkbeard" then
BossMon = "Darkbeard"
NameBoss = 'Darkbeard'
CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
elseif SelectBoss == "Cursed Captain" then
BossMon = "Cursed Captain"
NameBoss = 'Cursed Captain'
CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss == "Order" then
BossMon = "Order"
NameBoss = 'Order'
CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if World3 then
if SelectBoss == "Stone" then
BossMon = "Stone"
NameBoss = 'Stone'
NameQuestBoss = "PiratePortQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss == "Island Empress" then
BossMon = "Island Empress"
NameBoss = 'Island Empress'
NameQuestBoss = "AmazonQuest2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss == "Kilo Admiral" then
BossMon = "Kilo Admiral"
NameBoss = 'Kilo Admiral'
NameQuestBoss = "MarineTreeIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
elseif SelectBoss == "Captain Elephant" then
BossMon = "Captain Elephant"
NameBoss = 'Captain Elephant'
NameQuestBoss = "DeepForestIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
elseif SelectBoss == "Beautiful Pirate" then
BossMon = "Beautiful Pirate"
NameBoss = 'Beautiful Pirate'
NameQuestBoss = "DeepForestIsland2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
elseif SelectBoss == "Cake Queen" then
BossMon = "Cake Queen"
NameBoss = 'Cake Queen'
NameQuestBoss = "IceCreamIslandQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
elseif SelectBoss == "Longma" then
BossMon = "Longma"
NameBoss = 'Longma'
CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
elseif SelectBoss == "Soul Reaper" then
BossMon = "Soul Reaper"
NameBoss = 'Soul Reaper'
CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss == "rip_indra True Form" then
BossMon = "rip_indra True Form"
NameBoss = 'rip_indra True Form'
CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
end
end
end


function AttackNoCoolDown()
        if not AutoFarmMasDevilFruit or AutoFarmMasGun then
            if not Auto_Raid then
                local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end

local function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

--Attack Mastery
    function NormalAttack()
        if not _G.NormalAttack then
            local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end

    --Sword Weapon
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

local FastAttackOptions = {'Fast Attack', 'Normal Attack', 'Super Fast Attack'}

local DropdownDelayAttack = GeneralTab:CreateDropdown({
   Name = "Select Fast Attack",
   Options = FastAttackOptions,
   CurrentOption = {'Super Fast Attack'},
   MultipleOptions = false,
   Flag = "DropdownDelayAttack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   _G.FastAttackFaiFao_Mode = Value
        if _G.FastAttackFaiFao_Mode == "Fast Attack" then
            _G.Fast_Delay = 0.029
        elseif _G.FastAttackFaiFao_Mode == "Normal Attack" then
            _G.Fast_Delay = 2
        elseif _G.FastAttackFaiFao_Mode == "Super Fast Attack" then
            _G.Fast_Delay = 0.0005
        end
   end,
})

DropdownDelayAttack:Set('Super Fast Attack')

local TurnFastAttack = GeneralTab:CreateToggle({
    Name = "Fast Attack",
    CurrentValue = true,
    Flag = "FastAttack_Toggle",
    Callback = function(value)
        _G.FastAttack = value
    end,
})

task.spawn(function()
    pcall(function()
        while task.wait(_G.Fast_Delay) do
            if _G.FastAttack then
                AttackFunction()
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while task.wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        CurrentEquipGun = v.Name
                    end
                end
            end
        end
    end)
end)

-- Loop contínuo para auto-farm na Ilha Pré-histórica
spawn(function()
    while wait(0.5) do
        if _G.AutoPrehistoricIsland and game.Workspace:FindFirstChild("PrehistoricIsland") then
            pcall(function()
                local target = game.Workspace.PrehistoricIsland:FindFirstChild("Meshes/dragonbones1_Cube", true)
                if target then
                    local targetPos = target.Position + Vector3.new(0, 3, 0)
                    Tween2(CFrame.new(targetPos))

                    -- Verifica se há pedras
                    local rocks = {}
                    for _, rock in pairs(game.Workspace.PrehistoricIsland.Core.VolcanoRocks:GetDescendants()) do
                        if rock:IsA("BasePart") and rock.Name:find("volcanorock") then
                            table.insert(rocks, rock)
                        end
                    end

                    if #rocks > 0 then
                        -- Move-se para cada pedra e usa habilidades
                        for _, rock in ipairs(rocks) do
                            if _G.AutoPrehistoricIsland and game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.PrehistoricRaidTimer.Visible == true then
                                local newPos = rock.Position + Vector3.new(0, 2, 0)
                                Tween2(CFrame.new(newPos))
                                aimAtRock(rock)
                                useSkills()
                                wait(0.5) -- Pequena espera para garantir que a ação foi concluída
                            end
                        end
                    else
                        -- Move para a localização do escudo pré-histórico se não houver pedras
                        local shieldPos = game.Workspace.Map.PrehistoricIsland.Core.PrehistoricRelic.Shield.Position + Vector3.new(0, 3, 0)
                        Tween2(CFrame.new(shieldPos))
                    end

                    -- Volta para a posição original
                    Tween2(CFrame.new(targetPos))
                else
                    print("Target not found")
                end

                -- Ataca inimigos
                attackEnemies()
            end)
        end
    end
end)


-- Função para equipar a arma
function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(0.5)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

-- Dropdown para selecionar arma
local DropdownSelectWeapon = GeneralTab:CreateDropdown({
    Name = "Weapon",
    Options = {'Melee', 'Sword'},
    CurrentOption = 'Melee',
    Multi = false,
    Callback = function(Value)
        ChooseWeapon = Value
    end,
})

DropdownSelectWeapon:Set('Melee')

spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                            DropdownSelectWeapon:Set('Melee')
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                            DropdownSelectWeapon:Set('Sword')
                        end
                    end
                end
end
        end)
    end
end)

-- Toggle para auto farm
local ToggleLevel = GeneralTab:CreateToggle({
    Name = "Auto Farm (Broken)",
    CurrentValue = false,
    Flag = "AutoLevel",
    Callback = function(Value)
        _G.AutoLevel = Value
        if Value == false then
            wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end,
})

ToggleLevel:Set(false)

spawn(function()
        while task.wait() do
        if _G.AutoLevel then
        pcall(function()
          CheckLevel()
          if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          toTarget(CFrameQ)
          if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name == Ms then
          repeat wait(_G.Fast_Delay)
          AttackNoCoolDown()
          bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
          bringmob = false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
            toTarget(v.CFrame * CFrame.new(posX,posY,posZ))
          end
          end
          end
          end
          end)
        end
        end
        end)

-- Variável para ativar/desativar o Auto Haki
local autoHakiEnabled = false
-- Função para verificar e ativar o Buso Haki continuamente se desativado
local function checkHaki()
    while autoHakiEnabled do
        pcall(function()
            AutoHaki()
        end)
        wait(1) -- Verificar a cada 1 segundo
    end
end

local BringMobToggle = GeneralTab:CreateToggle({
    Name = "Bring Mob",
    CurrentValue = true,
    Flag = "ToggleBringMob",
    Callback = function(Value)
        _G.BringMob = Value
    end,
})

BringMobToggle:Set(true)

spawn(function()
            while wait() do
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.BringMob and bringmob then
                            if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Factory Staff" then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 300 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == MonFarm then
                                    if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 300 then
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.CFrame = FarmPos
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                                    end
                                end
                            end)
                    end
                end)
           

            task.spawn(function()
                while task.wait() do
             if _G.BringMob and bringmob then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                if InMyNetWork(v.HumanoidRootPart) then
                v.HumanoidRootPart.CFrame = FarmPos
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
                end
                end
                end
                end
                end)
              end
              end
              end)
            
            task.spawn(function()
              while true do wait()
              if setscriptable then
              setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)
              end
              if sethiddenproperty then
              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
              end
              end
              end)
            
            function InMyNetWork(object)
            if isnetworkowner then
            return isnetworkowner(object)
            else
              if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
            return true
            end
            return false
            end
            end
-- ESP
-- Variável para controlar o estado do ESP
local espEnabled = {
    players = false,
    fruits = false,
    advancedNPC = false
}

-- Função para criar ESP
local function createESP(object, color, text)
    if not object:FindFirstChild("ESP") then
        local billboardGui = Instance.new("BillboardGui", object)
        billboardGui.Name = "ESP"
        billboardGui.Size = UDim2.new(0, 200, 0, 50)
        billboardGui.StudsOffset = Vector3.new(0, 2, 0)
        billboardGui.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel", billboardGui)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = text
        textLabel.TextColor3 = color
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextScaled = true
    else
        object.ESP.TextLabel.Text = text
    end
end

-- Função para remover ESP
local function removeESP(object)
    if object:FindFirstChild("ESP") then
        object.ESP:Destroy()
    end
end

-- Função para atualizar o ESP de jogadores
local function updatePlayerESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= game.Players.LocalPlayer then
            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
            if espEnabled.players then
                createESP(player.Character.HumanoidRootPart, Color3.fromRGB(0, 255, 0), player.Name .. " [" .. distance .. "m]")
            else
                removeESP(player.Character.HumanoidRootPart)
            end
        end
    end
end

-- Função para atualizar o ESP de frutas
local function updateFruitESP()
    for _, fruit in pairs(game.Workspace:GetChildren()) do
        if fruit:IsA("Tool") and fruit:FindFirstChild("Handle") then
            local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - fruit.Handle.Position).Magnitude)
            if espEnabled.fruits then
                createESP(fruit.Handle, Color3.fromRGB(255, 165, 0), fruit.Name .. " [" .. distance .. "m]")
            else
                removeESP(fruit.Handle)
            end
        end
    end
end

-- Toggle do ESP na aba Esp
EspTab:CreateToggle({
    Name = "ESP Players",
    CurrentValue = false,
    Flag = "espPlayers",
    Callback = function(Value)
        espEnabled.players = Value
        if not Value then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    removeESP(player.Character.HumanoidRootPart)
                end
            end
        end
        updatePlayerESP()
    end
})

EspTab:CreateToggle({
    Name = "ESP Fruits",
    CurrentValue = false,
    Flag = "espFruits",
    Callback = function(Value)
        espEnabled.fruits = Value
        if not Value then
            for _, fruit in pairs(game.Workspace:GetChildren()) do
                if fruit:IsA("Tool") and fruit:FindFirstChild("Handle") then
                    removeESP(fruit.Handle)
                end
            end
        end
        updateFruitESP()
    end
})

-- Fruits
-- Variável para ativar/desativar o Auto Store Fruit
local autoStoreFruitEnabled = false

-- Adicionando o toggle para Auto Store Fruit na aba de Fruit
FruitsTab:CreateToggle({
    Name = "Auto Store Fruit",
    CurrentValue = false,
    Flag = "autoStoreFruit",
    Callback = function(Value)
        autoStoreFruitEnabled = Value
    end    
})

-- Função para armazenar as frutas
local function storeFruit(fruitName, fruitInstance)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", fruitName, fruitInstance)
end

-- Função para verificar e armazenar frutas
local function checkAndStoreFruits()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack

    local fruits = {
        ["Bomb Fruit"] = "Bomb-Bomb",
        ["Spike Fruit"] = "Spike-Spike",
        ["Blade Fruit"] = "Blade-Blade",
        ["Spring Fruit"] = "Spring-Spring",
        ["Rocket Fruit"] = "Rocket-Rocket",
        ["Smoke Fruit"] = "Smoke-Smoke",
        ["Spin Fruit"] = "Spin-Spin",
        ["Flame Fruit"] = "Flame-Flame",
        ["Falcon Fruit"] = "Falcon-Falcon",
        ["Ice Fruit"] = "Ice-Ice",
        ["Sand Fruit"] = "Sand-Sand",
        ["Dark Fruit"] = "Dark-Dark",
        ["Ghost Fruit"] = "Ghost-Ghost",
        ["Diamond Fruit"] = "Diamond-Diamond",
        ["Light Fruit"] = "Light-Light",
        ["Love Fruit"] = "Love-Love",
        ["Rubber Fruit"] = "Rubber-Rubber",
        ["Rumble Fruit"] = "Rumble-Rumble",
        ["Barrier Fruit"] = "Barrier-Barrier",
        ["Sound Fruit"] = "Sound-Sound",
        ["Magma Fruit"] = "Magma-Magma",
        ["Pain Fruit"] = "Pain-Pain",
        ["Blizzard Fruit"] = "Blizzard-Blizzard",
        ["Portal Fruit"] = "Portal-Portal",
        ["Quake Fruit"] = "Quake-Quake",
        ["Buddha Fruit"] = "Buddha-Buddha",
        ["Spider Fruit"] = "Spider-Spider",
        ["Phoenix Fruit"] = "Pheonix-Pheonix",
        ["Gravity Fruit"] = "Gravity-Gravity",
        ["T-Rex Fruit"] = "Trex-Trex",
        ["Mammoth Fruit"] = "Mammoth-Mammoth",
        ["Dough Fruit"] = "Dough-Dough",
        ["Spirit Fruit"] = "Spirit-Spirit",
        ["Gas Fruit"] = "Gas-Gas",
        ["Shadow Fruit"] = "Shadow-Shadow",
        ["Venom Fruit"] = "Venom-Venom",
        ["Control Fruit"] = "Control-Control",
        ["Kitsune Fruit"] = "Kitsune-Kitsune",
        ["Leopard Fruit"] = "Leopard-Leopard",
        ["Dragon Fruit"] = "Dragon-Dragon"
    }

    for fruit, name in pairs(fruits) do
        if character:FindFirstChild(fruit) or backpack:FindFirstChild(fruit) then
            storeFruit(name, backpack:FindFirstChild(fruit) or character:FindFirstChild(fruit))
        end
    end
end

-- Verificar e armazenar frutas continuamente enquanto o toggle estiver ativado
spawn(function()
    while wait(0.3) do
        if autoStoreFruitEnabled then
            pcall(checkAndStoreFruits)
        end
    end
end)

-- Variável para ativar/desativar o Random Fruit
local randomFruitEnabled = false

-- Adicionando o toggle para Random Fruit na aba de Fruit
FruitsTab:CreateToggle({
    Name = "Random Fruit",
    CurrentValue = false,
    Flag = "randomFruit",
    Callback = function(Value)
        randomFruitEnabled = Value
    end    
})

-- Função para comprar frutas aleatórias
local function buyRandomFruit()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
end

-- Verificar continuamente enquanto o toggle estiver ativado
spawn(function()
    while wait(0.1) do
        if randomFruitEnabled then
            pcall(buyRandomFruit)
        end
    end
end)

local ToggleCollect = FruitsTab:CreateToggle({
    Name = "Collect Devil Fruit",
    CurrentValue = false,
    Flag = "ToggleCollect",
    Callback = function(Value)
        _G.Tweenfruit = Value
    end,
})

spawn(function()
    while wait(0.1) do
        if _G.Tweenfruit then
            for _, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") and v:FindFirstChild("Handle") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
    end
end)

-- Sea

if World3 then
    -- Cria o toggle para Auto Sea Beast
    local ToggleSeaBeAst = SeaTab:CreateToggle({
        Name = "Auto Sea Beast",
        CurrentValue = false,
        Flag = "AutoSeaBeast",
        Callback = function(Value)
            _G.AutoSeaBeast = Value
        end,
    })

    -- Variáveis para habilidades
    _G.SkillZ = true
    _G.SkillX = true
    _G.SkillC = true
    _G.SkillV = true

    -- Função para utilizar habilidades automaticamente
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSeaBeast then
                    if _G.SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(0.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if _G.SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(0.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if _G.SkillC then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(0.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if _G.SkillV then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(0.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)

    -- Função para comprar barco, mover-se e atacar Sea Beast
    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSeaBeast then
                    if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            local buyb = TweenBoat(CFrame.new(-4513.9, 16.76, -2658.82))
                            if (CFrame.new(-4513.9, 16.76, -2658.82).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = "PirateGrandBrigade"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end

                        if game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            local boat = game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade")
                            if boat and boat:FindFirstChild("VehicleSeat") then
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    TweenBoat(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                    repeat wait()
                                        if (boat.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                            TweenShip(CFrame.new(35.0455, 17.7508, 4819.2676))
                                        end
                                    until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.AutoSeaBeast == false
                                end
                            end
                        end
                    end

                    if game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then  
                        for _, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat wait()
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                    TweenBoat(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                    EquipAllWeapon()  
                                    _G.AutoSkill = true
                                    _G.AimBotSkillPosition = v.HumanoidRootPart
                                    _G.Skillaimbot = true
                                until not v:FindFirstChild("HumanoidRootPart") or _G.AutoSeaBeast == false
                                _G.AutoSkill = false
                                _G.Skillaimbot = false
                            end
                        end
                    end
                end
            end)
        end
    end)
end

local TabSection = SeaTab:CreateSection("Kitsune")

if World3 then
    -- Toggle para ESP da ilha Kitsune
    local ToggleEspKitsune = SeaTab:CreateToggle({
        Name = "Esp Kitsune Island",
        CurrentValue = false,
        Flag = "ToggleEspKitsune",
        Callback = function(Value)
            espEnabled.kitsune = Value
            if not Value then
                for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                    if v.Name == "Kitsune Island" then
                        removeESP(v)
                    end
                end
            end
            updateKitsuneIslandESP()
        end
    })

    -- Função para atualizar o ESP da ilha Kitsune
    function updateKitsuneIslandESP()
        for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if espEnabled.kitsune then 
                    if v.Name == "Kitsune Island" then
                        local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude)
                        createESP(v, Color3.fromRGB(80, 245, 245), v.Name .. " [" .. distance .. "m]")
                    else
                        removeESP(v)
                    end
                end
            end)
        end
    end

    -- Toggle para Tween até a ilha Kitsune
    local ToggleTPKitsune = SeaTab:CreateToggle({
        Name = "Tween To Kitsune Island",
        CurrentValue = false,
        Flag = "ToggleTPKitsune",
        Callback = function(Value)
            _G.TweenToKitsune = Value
            if Value then
                spawn(tweenToKitsuneIsland)
            end
        end
    })

    -- Função para Tween até a ilha Kitsune
    function tweenToKitsuneIsland()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while _G.TweenToKitsune do
            local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
            if shrineActive then
                for _, v in pairs(shrineActive:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                        Tween(v.CFrame)
                    end
                end
            end
            wait()
        end
    end

    -- Toggle para coletar Azure Ambers
    local ToggleCollectAzure = SeaTab:CreateToggle({
        Name = "Collect Azure Ambers",
        CurrentValue = false,
        Flag = "ToggleCollectAzure",
        Callback = function(Value)
            _G.CollectAzure = Value
            if Value then
                spawn(collectAzureAmbers)
            end
        end
    })

    -- Função para coletar Azure Ambers
    function collectAzureAmbers()
        while _G.CollectAzure do
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                    print("Azure")
                end
            end)
            wait()
        end
    end
end

local TabSection = SeaTab:CreateSection("Mirage")

-- Função para atualizar o ESP do Advanced Fruit Dealer
local function updateAdvancedNPCESP()
    local npc = game.Workspace.NPCs:FindFirstChild("Advanced Fruit Dealer")
    if npc and npc:FindFirstChild("HumanoidRootPart") then
        local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - npc.HumanoidRootPart.Position).Magnitude)
        if espEnabled.advancedNPC then
            createESP(npc.HumanoidRootPart, Color3.fromRGB(255, 0, 0), "Advanced Fruit Dealer [" .. distance .. "m]")
        else
            removeESP(npc.HumanoidRootPart)
        end
    end
end

-- Toggle do ESP na aba Mirage
SeaTab:CreateToggle({
    Name = "ESP Advanced NPC Dealer",
    CurrentValue = false,
    Flag = "espAdvancedNPC",
    Callback = function(Value)
        espEnabled.advancedNPC = Value
        if not Value then
            local npc = game.Workspace.NPCs:FindFirstChild("Advanced Fruit Dealer")
            if npc then
                removeESP(npc:FindFirstChild("HumanoidRootPart"))
            end
        end
        updateAdvancedNPCESP()
    end
})

SeaTab:CreateButton({
    Name = "Tween to Highest Point",
    Callback = function()
        TwenetoHighestPoint()
    end
})

function TwenetoHighestPoint()
    HighestPoint = getHighestPoint()
    if HighestPoint then
        Tween2(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end

function getHighestPoint()
    if not game.workspace.Map:FindFirstChild("MysticIsland") then
        return nil
    end
    for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
        if v:IsA("MeshPart") and v.MeshId == "rbxassetid://6745037796" then
            return v
        end
    end
    return nil
end

local ToggleTweenGear = SeaTab:CreateToggle({
    Name = "Tween To Gear",
    CurrentValue = false,
    Flag = "ToggleTweenGear",
    Callback = function(Value)
        _G.TweenToGear = Value
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
                        if v:IsA("MeshPart") and v.Material == Enum.Material.Neon then  
                            Tween2(v.CFrame)
                        end
                    end
                end
            end
        end
    end)
end)

local Togglelockmoon = SeaTab:CreateToggle({
    Name = "Lock Moon and Use Race Skill",
    CurrentValue = false,
    Flag = "Togglelockmoon",
    Callback = function(Value)
        _G.AutoLockMoon = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
            end
        end)
    end
end)

-- Conexão com o RunService para verificar constantemente o estado do ESP
game:GetService("RunService").Heartbeat:Connect(function()
    if espEnabled.players then
        updatePlayerESP()
    end
    if espEnabled.fruits then
        updateFruitESP()
    end
    if espEnabled.advancedNPC then
        updateAdvancedNPCESP()
    end
end)

-- PVP

local Playerslist = {}
for i, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v.Name)
end

local SelectedPly = PvpTab:CreateDropdown({
    Name = "Select Player",
    Options = Playerslist,
    CurrentOption = {"nil"},
    MultipleOptions = false,
    Flag = "SelectedPly", -- Identificador único para salvar configuração
    Callback = function(Options)
        _G.SelectPly = Options[1]
        print("Selected player: " .. _G.SelectPly) -- Depuração
    end
})

PvpTab:CreateButton({
    Name = "Refresh Player",
    Callback = function()
        table.clear(Playerslist)
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist, v.Name)
        end
        SelectedPly:Set(Playerslist) -- Atualiza as opções do dropdown
    end
})

local ToggleTeleport = PvpTab:CreateToggle({
    Name = "Teleport To Player",
    CurrentValue = false,
    Flag = "ToggleTeleport",
    Callback = function(Value)
        _G.TeleportPly = Value
        if not Value then
            wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        else
            print("Teleport enabled") -- Depuração
        end
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.TeleportPly then
                if game.Players:FindFirstChild(_G.SelectPly) then
                    print("Teleporting to: " .. _G.SelectPly) -- Depuração
                    toTarget(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                else
                    print("Player not found: " .. _G.SelectPly) -- Depuração
                end
            end
        end)
    end
end)


local TabDivider = PvpTab:CreateSection("Combat")

-- Cria uma lista com os jogadores
local Playerslist = {}
for i, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v.Name)
end

-- Cria um dropdown para selecionar o jogador
local SelectedPly = PvpTab:CreateDropdown({
    Name = "Select Player",
    Options = Playerslist,
    CurrentOption = {"nil"},
    MultipleOptions = false,
    Flag = "SelectedPly", -- Identificador único para salvar configuração
    Callback = function(Options)
        _G.SelectPly = Options[1]
        print("Selected player: " .. _G.SelectPly) -- Depuração
    end
})

PvpTab:CreateButton({
    Name = "Refresh Player",
    Callback = function()
        table.clear(Playerslist)
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist, v.Name)
        end
        SelectedPly:Set(Playerslist) -- Atualiza as opções do dropdown
    end
})

-- Variáveis para controlar o estado do aimbot
local aimbotEnabled = false
local aimbotActive = false

-- Função para ativar o Aimbot
local function aimbot()
    if aimbotEnabled and aimbotActive then
        local selectedPlayer = game.Players:FindFirstChild(_G.SelectPly)

        if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Faz o mouse seguir o jogador selecionado
            local player = game.Players.LocalPlayer
            local camera = game.Workspace.CurrentCamera
            local playerPos = player.Character.HumanoidRootPart.Position
            local selectedPos = selectedPlayer.Character.HumanoidRootPart.Position

            -- Calcula a direção entre o jogador e o alvo selecionado
            local direction = (selectedPos - playerPos).unit
            local lookAtPos = playerPos + direction * 1000

            -- Faz a câmera olhar para o alvo selecionado
            camera.CFrame = CFrame.new(camera.CFrame.Position, lookAtPos)
        end
    end
end

-- Toggle do Aimbot na aba PVP
PvpTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "aimbot",
    Callback = function(Value)
        aimbotEnabled = Value
        if not aimbotEnabled then
            aimbotActive = false  -- Desativa o aimbot se o toggle for desligado
        end
    end
})

-- Função de controle para a tecla G
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.G and aimbotEnabled then
        aimbotActive = not aimbotActive
        Rayfield:Notify({
            Title = aimbotActive and "Aimbot Ativado" or "Aimbot Desativado",
            Content = aimbotActive and "O Aimbot está agora ativado!" or "O Aimbot foi desativado!",
            Duration = 3,
            Image = aimbotActive and "power" or "power-off",
        })
    end
end)

-- Conexão com o RunService para verificar constantemente o estado do aimbot
game:GetService("RunService").Heartbeat:Connect(function()
    aimbot() -- Chama a função de aimbot
end)


-- Raids

local TabDivider = RaidTab:CreateSection("Select Chip")

local Chips = {"Flame", "Ice", "Quake", "Light", "Dark", "Spider", "Rumble", "Magma", "Buddha", "Sand", "Phoenix", "Dough"}
local SelectChip = "nil"

local ChipDropdown = RaidTab:CreateDropdown({
    Name = "Select Chip",
    Options = Chips,
    CurrentOption = {"nil"},
    MultipleOptions = false,
    Flag = "ChipDropdown",
    Callback = function(Options)
        SelectChip = Options[1]
        Rayfield:Notify({
            Title = "NOTIFICAÇÃO!",
            Content = "Chip atual selecionado: " .. SelectChip,
            Duration = 2,
            Image = "cpu",
        })
    end,
})

-- Toggle para comprar o chip
local ToggleBuy = RaidTab:CreateToggle({
    Name = "Auto Buy Chip",
    CurrentValue = false,
    Flag = "ToggleBuy",
    Callback = function(Value)
        if SelectChip ~= "nil" then
            _G.Auto_Buy_Chips_Dungeon = Value
        else
            Rayfield:Notify({
                Title = "Erro",
                Content = "Nenhum chip foi selecionado",
                Duration = 2,
                Image = "x",
            })
        end
    end,
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Buy_Chips_Dungeon and SelectChip ~= "nil" then
                local args = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = SelectChip
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end)
    end
end)


local TabSection = RaidTab:CreateSection("Raid")

-- Toggle para iniciar o raid
local ToggleStart = RaidTab:CreateToggle({
    Name = "Start Raid",
    CurrentValue = false,
    Flag = "ToggleStart",
    Callback = function(Value)
        _G.Auto_StartRaid = Value
    end,
})

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                            wait(1)
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

-- Toggle para Kill Aura
local ToggleKillAura = RaidTab:CreateToggle({
    Name = "Kill Aura",
    CurrentValue = false,
    Flag = "ToggleKillAura",
    Callback = function(Value)
        KillAura = Value
    end,
})

spawn(function()
    while wait() do
        if KillAura then
            if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
        end
    end
end)

local ToggleNextIsland = RaidTab:CreateToggle({
    Name = "Next Island",
    CurrentValue = false,
    Flag = "ToggleNextIsland",
    Callback = function(Value)
        AutoNextIsland = Value
    end,
})

spawn(function()
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0, 70, 100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0, 70, 100))
                    end
                end
            end)
        end
    end
end)

local ToggleGetFruit = RaidTab:CreateToggle({
    Name = "Get Fruit Low Beli",
    CurrentValue = false,
    Flag = "ToggleGetFruit",
    Callback = function(Value)
        _G.Autofruit = Value
    end,
})

-- Race V4

RaceV4Tab:CreateButton({
    Name = "Timple Of Time",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
})

RaceV4Tab:CreateButton({
    Name = "Lever Pull",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(0.5)
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})

RaceV4Tab:CreateButton({
    Name = "Acient One",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(0.5)
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})

local Section = RaceV4Tab:CreateSection("Auto Race")

RaceV4Tab:CreateButton({
    Name = "Race Door",
    Callback = function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
                    wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})

spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

local ToggleHumanandghoul = RaceV4Tab:CreateToggle({
    Name = "Auto [ Human / Ghoul ] Trial",
    CurrentValue = false,
    Flag = "ToggleHumanandghoul",
    Callback = function(Value)
        KillAura = Value
    end,
})

local ToggleAutotrial = RaceV4Tab:CreateToggle({
    Name = "Auto Trial",
    CurrentValue = false,
    Flag = "ToggleAutotrial",
    Callback = function(Value)
        _G.AutoQuestRace = Value
    end,
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							BTPZ(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							Tween(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							Tween(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

local Section = RaceV4Tab:CreateSection("Auto Train")

local ToggleAutoAcientQuest = RaceV4Tab:CreateToggle({
    Name = "Auto Train",
    CurrentValue = false,
    Flag = "ToggleAutoAcientQuest",
    Callback = function(Value)
        AutoFarmAcient = Value
    end,
})

local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    AutoFarmAcient = false
                    toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    bringmob = true
                                    repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                          bringmob = false
                            end
                        end
                    end
                else
                toTarget(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if AutoFarmAcient then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)
-- Shop

local MasterySection = ShopTab:CreateSection("Shop")

local ToggleRandomBone = ShopTab:CreateToggle({
    Name = "Random Bone",
    CurrentValue = false,
    Flag = "ToggleRandomBone",
    Callback = function(Value)
        _G.AutoRandomBone = Value
    end,
})

spawn(function()
    while wait(0.0000000001) do
        if _G.AutoRandomBone then
            local args = {
                [1] = "Bones",
                [2] = "Buy",
                [3] = 1,
                [4] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

local MasterySection = ShopTab:CreateSection("Ability's")

ShopTab:CreateButton({
    Name = "Geppo",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
})

ShopTab:CreateButton({
    Name = "Buso Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

ShopTab:CreateButton({
    Name = "Soru",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})

ShopTab:CreateButton({
    Name = "Observation Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
})

local MasterySection = ShopTab:CreateSection("Fighting Styles")

ShopTab:CreateButton({
    Name = "Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

ShopTab:CreateButton({
    Name = "Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

ShopTab:CreateButton({
    Name = "Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

ShopTab:CreateButton({
    Name = "Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

ShopTab:CreateButton({
    Name = "Superhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

ShopTab:CreateButton({
    Name = "Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

ShopTab:CreateButton({
    Name = "Sharkman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

ShopTab:CreateButton({
    Name = "Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

ShopTab:CreateButton({
    Name = "Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

ShopTab:CreateButton({
    Name = "Godhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

ShopTab:CreateButton({
    Name = "Sanguine Art",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})

local MiscItemsSection = ShopTab:CreateSection("Misc Items")

ShopTab:CreateButton({
    Name = "Refund Stats",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})

ShopTab:CreateButton({
    Name = "Reroll Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

ShopTab:CreateButton({
    Name = "Cyborg Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
    end
})

ShopTab:CreateButton({
    Name = "Ghoul Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4)
    end
})
-- Dragon

local Section = DragonTab:CreateSection("Dragon")
-- Opção "Change to draco race" na aba Dragon
DragonTab:CreateButton({
    Name = "Dracon Race (Change)",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Data.Race.Value ~= "Draco" then
            player.Data.Race.Value = "Draco"
            Rayfield:Notify({
                Title = "Raça Alterada",
                Content = "Sua raça atual agora é Draco",
                Duration = 3,
                Image = "check",
            })
        else
            Rayfield:Notify({
                Title = "Erro",
                Content = "Sua raça atual já é Draco",
                Duration = 3,
                Image = "x",
            })
        end
    end
})

DragonTab:CreateButton({
    Name = "Go to Dragon Dojo",
    Callback = function()
         Rayfield:Notify({
                    Title = "NOTIFICAÇÃO!",
                    Content = "Indo para o Dragon Dojo",
                    Duration = 6.5,
                    Image = "check",
                })
        -- Teleport to initial location
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5302734375, 1013.0552368164062, -334.9619140625))
        
        -- Wait for 1.2 seconds before teleporting to the final location
        wait(1.2)
        
        -- Teleport to final location
        toTarget(CFrame.new(5714.25732421875, 1305.01904296875, 1011.1974487304688))
    end,
})

local Section = DragonTab:CreateSection("Pre-Historic Island")

local Toggle = DragonTab:CreateButton({
    Name = "Tween to Pre-Historic Island",
    Flag = "GoToPrehistoricIsland", -- Assegure-se de usar um identificador único
    Callback = function(Value)
        _G.GoToPrehistoricIsland = Value
            local PrehistoricIsland = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
            if PrehistoricIsland then
                local target = PrehistoricIsland:FindFirstChild("Meshes/dragonbones1_Cube", true)
                if target then
                    local TargetCFrame = target.CFrame
                    local tween = toTarget(TargetCFrame)
                    Rayfield:Notify({
                        Title = "NOTIFICAÇÃO!",
                        Content = "Indo para a ilha Pré-Histórica",
                        Duration = 6.5,
                        Image = "check",
                    })
                else
                    Rayfield:Notify({
                        Title = "Erro",
                        Content = "Meshes/dragonbones1_Cube não encontrado na ilha Pré-Histórica",
                        Duration = 6.5,
                        Image = "x",
                    })
                end
            else
                Rayfield:Notify({
                    Title = "Erro",
                    Content = "Nenhuma ilha Pré-Histórica encontrada",
                    Duration = 6.5,
                    Image = "x",
                })
            end
    end,
})

local TabDivider = DragonTab:CreateDivider()

-- Cria toggles para skills
local ToggleSkillZ = DragonTab:CreateToggle({
    Name = "Skill Z",
    CurrentValue = false,
    Flag = "SkillZ",
    Callback = function(Value)
        _G.SkillZ = Value
    end,
})

local ToggleSkillX = DragonTab:CreateToggle({
    Name = "Skill X",
    CurrentValue = false,
    Flag = "SkillX",
    Callback = function(Value)
        _G.SkillX = Value
    end,
})

local ToggleSkillC = DragonTab:CreateToggle({
    Name = "Skill C",
    CurrentValue = false,
    Flag = "SkillC",
    Callback = function(Value)
        _G.SkillC = Value
    end,
})

local ToggleSkillV = DragonTab:CreateToggle({
    Name = "Skill V",
    CurrentValue = false,
    Flag = "SkillV",
    Callback = function(Value)
        _G.SkillV = Value
    end,
})

local ToggleSkillF = DragonTab:CreateToggle({
    Name = "Skill F",
    CurrentValue = false,
    Flag = "SkillF",
    Callback = function(Value)
        _G.SkillF = Value
    end,
})

-- Cria o toggle para Auto Pre-historic Island
local ToggleAutoPrehistoric = DragonTab:CreateToggle({
    Name = "Auto Pre-historic Island (In development)",
    CurrentValue = false,
    Flag = "AutoPrehistoricIsland",
    Callback = function(Value)
        -- _G.AutoPrehistoricIsland = Value

    end,
})

-- Função para ativar habilidades
local function useSkills()
    if _G.SkillZ then game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game) game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game) end
    if _G.SkillX then game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game) game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game) end
    if _G.SkillC then game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game) game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game) end
    if _G.SkillV then game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game) game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game) end
    if _G.SkillF then game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game) game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game) end
end

-- Função para mirar na pedra
local function aimAtRock(rock)
    local player = game.Players.LocalPlayer
    local camera = game.Workspace.CurrentCamera
    local playerPos = player.Character.HumanoidRootPart.Position
    local rockPos = rock.Position
    local direction = (rockPos - playerPos).unit
    local lookAtPos = playerPos + direction * 1000
    camera.CFrame = CFrame.new(camera.CFrame.Position, lookAtPos)
end

-- Função para atacar inimigos chamados "Lava Golem" a 5000 metros ou menos
local function attackEnemies()
    if game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.PrehistoricRaidTimer.Visible == true then
        for i, v in pairs(game.Workspace:GetDescendants()) do
            local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            if v:IsA("Model") and v.Name:find("Lava Golem") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                local enemyPos = v.HumanoidRootPart.Position
                if (playerPos - enemyPos).magnitude <= 5000 then
                    repeat task.wait()
                        sethiddenproperty(game:GetService('Players').LocalPlayer, "SimulationRadius", math.huge)
                        v.Humanoid.Health = 0
                        v.HumanoidRootPart.CanCollide = false
                    until not _G.AutoPrehistoricIsland or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end
    end
end

-- Loop contínuo para auto-farm na Ilha Pré-histórica
spawn(function()
    while wait(0.5) do
        if _G.AutoPrehistoricIsland and game.Workspace:FindFirstChild("PrehistoricIsland") then
            pcall(function()
                local target = game.Workspace.PrehistoricIsland:FindFirstChild("Meshes/dragonbones1_Cube", true)
                if target then
                    local targetPos = target.Position + Vector3.new(0, 3, 0)
                    Tween2(CFrame.new(targetPos))

                    -- Verifica se há pedras
                    local rocks = {}
                    for _, rock in pairs(game.Workspace.PrehistoricIsland.Core.VolcanoRocks:GetDescendants()) do
                        if rock:IsA("BasePart") and rock.Name:find("volcanorock") then
                            table.insert(rocks, rock)
                        end
                    end

                    if #rocks > 0 then
                        -- Move-se para cada pedra e usa habilidades
                        for _, rock in ipairs(rocks) do
                            if _G.AutoPrehistoricIsland and game.Players.LocalPlayer.PlayerGui.Main.TopHUDList.PrehistoricRaidTimer.Visible == true then
                                local newPos = rock.Position + Vector3.new(0, 2, 0)
                                Tween(CFrame.new(newPos)) -- Usa a função Tween para se mover até a pedra
                                aimAtRock(rock)
                                useSkills()
                                wait(0.5) -- Pequena espera para garantir que a ação foi concluída
                            end
                        end
                    else
                        -- Move para a localização do escudo pré-histórico se não houver pedras
                        local shieldPos = game.Workspace.Map.PrehistoricIsland.Core.PrehistoricRelic.Shield.Position + Vector3.new(0, 3, 0)
                        Tween(CFrame.new(shieldPos))
                    end

                    -- Ataca inimigos
                    attackEnemies()

                    -- Volta para a posição original
                    Tween(CFrame.new(targetPos))
                else
                    print("Target not found")
                end
            end)
        end
    end
end)

-- Teleport

local TabSection = TeleportTab:CreateSection("Sea Travel")

if World2 or World3 then
-- Adicionando os botões de teleporte
TeleportTab:CreateButton({
    Name = "First Sea",
    Description = "Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
end

if World3 or World1 then
TeleportTab:CreateButton({
    Name = "Second Sea",
    Description = "Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
end

if World2 or World1 then
TeleportTab:CreateButton({
    Name = "Third Sea",
    Description = "Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
end

-- Seção de Teleport World
local TabSection = TeleportTab:CreateSection("Island Travel")

-- Variável para armazenar a ilha selecionada
local selectedIsland

-- Definindo a lista de ilhas com base no mundo
local IslandList = {}
if World1 then
    IslandList = {
        "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", "Desert", "Snow Island",
        "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison",
        "Magma Village", "Under Water Island", "Fountain City", "Shank Room", "Mob Island"
    }
elseif World2 then
    IslandList = {
        "The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", "Green Zone",
        "Factory", "Colossuim", "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship",
        "Ice Castle", "Forgotten Island", "Ussop Island", "Mini Sky Island"
    }
elseif World3 then
    IslandList = {
        "Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island",
        "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island",
        "Cocoa Island", "Candy Island", "Tiki Outpost"
    }
end

-- Função para criar os botões de teleporte
local function createTeleportButtons(islands)
    for _, island in ipairs(islands) do
        TeleportTab:CreateButton({
            Name = island,
            Callback = function()
                if island == "WindMill" then
                    toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif island == "Marine" then
                    toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif island == "Middle Town" then
                    toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif island == "Jungle" then
                    toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif island == "Pirate Village" then
                    toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif island == "Desert" then
                    toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif island == "Snow Island" then
                    toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif island == "MarineFord" then
                    toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif island == "Colosseum" then
                    toTarget(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif island == "Sky Island 1" then
                    toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif island == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif island == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif island == "Prison" then
                    toTarget(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif island == "Magma Village" then
                    toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif island == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif island == "Fountain City" then
                    toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif island == "Shank Room" then
                    toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif island == "Mob Island" then
                    toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif island == "The Cafe" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                    wait(0.5)
                    toTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif island == "Frist Spot" then
                    toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif island == "Dark Area" then
                    toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif island == "Flamingo Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                elseif island == "Flamingo Room" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
                elseif island == "Green Zone" then
                    toTarget(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif island == "Factory" then
                    toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif island == "Colossuim" then
                    toTarget(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif island == "Zombie Island" then
                    toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif island == "Two Snow Mountain" then
                    toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif island == "Punk Hazard" then
                    toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif island == "Cursed Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.40197753906, 125.05712890625, 32885.875))
                elseif island == "Ice Castle" then
                    toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif island == "Forgotten Island" then
                    toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif island == "Ussop Island" then
                    toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif island == "Mini Sky Island" then
                    Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                    toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif island == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                elseif island == "MiniSky" then
                    Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif island == "Port Town" then
                    toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif island == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5302734375, 1013.0552368164062, -334.9619140625))
                elseif island == "Floating Turtle" then
                    toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif island == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
                elseif island == "Haunted Castle" then
                    toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif island == "Ice Cream Island" then
                    toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif island == "Peanut Island" then
                    toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif island == "Cake Island" then
                    toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif island == "Cocoa Island" then
                    toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif island == "Candy Island" then
                    toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif island == "Tiki Outpost" then
                    toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                end
            Rayfield:Notify({
            Title = "NOTIFICAÇÃO!",
            Content = "Indo para a ilha "..island,
            Duration = 4,
            Image = "check",
        })
            end
            
        })
    end
end

-- Criar botões de teleporte com base na lista de ilhas do mundo atual
createTeleportButtons(IslandList)

local TabDivider = TeleportTab:CreateDivider()

-- Botão para parar o Tween
TeleportTab:CreateButton({
    Name = "Stop Tween",
    Callback = function()
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        Rayfield:Notify({
            Title = "NOTIFICAÇÃO!",
            Content = "O tween foi parado",
            Duration = 2,
            Image = "circle-pause",
        })
    end
})

-- Stats/Points

local ToggleMelee = StatsTab:CreateToggle({
    Name = "Auto Melee",
    CurrentValue = false,
    Flag = "ToggleMelee", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.Auto_Stats_Melee = Value
    end
})

local ToggleDefense = StatsTab:CreateToggle({
    Name = "Auto Defense",
    CurrentValue = false,
    Flag = "ToggleDefense", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.Auto_Stats_Defense = Value
    end
})

local ToggleSword = StatsTab:CreateToggle({
    Name = "Auto Sword",
    CurrentValue = false,
    Flag = "ToggleSword", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.Auto_Stats_Sword = Value
    end
})

local ToggleGun = StatsTab:CreateToggle({
    Name = "Auto Gun",
    CurrentValue = false,
    Flag = "ToggleGun", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.Auto_Stats_Gun = Value
    end
})

local ToggleFruit = StatsTab:CreateToggle({
    Name = "Auto Demon Fruit",
    CurrentValue = false,
    Flag = "ToggleFruit", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.Auto_Stats_Devil_Fruit = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

-- Misc

MiscTab:CreateParagraph({
    Title = "Estado da Lua",
    Content = "O estado para lua cheia é: Em desenvolvimento.",
})

local ToggleNoClip = MiscTab:CreateToggle({
    Name = "No Clip",
    CurrentValue = false,
    Flag = "ToggleNoClip", -- Identificador único para salvar configuração
    Callback = function(Value)
        _G.LOf = Value
        print("No Clip: " .. tostring(Value)) -- Depuração
    end
})

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

local ToggleRemoveNotify = MiscTab:CreateToggle({
    Name = "Enable or Remove All Notify",
    CurrentValue = false,
    Flag = "ToggleRemoveNotify", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.RemoveNotify = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end)
    end
end)

-- Botão para ativar/desativar o Auto Haki na aba Misc
MiscTab:CreateToggle({
    Name = "Auto Haki",
    CurrentValue = false,
    Flag = "autoHaki",
    Callback = function(Value)
        autoHakiEnabled = Value
        if autoHakiEnabled then
            checkHaki()
        end
    end
})

-- Variável para ativar/desativar a caminhada sobre a água
local walkOnWaterEnabled = false

-- Adicionando o toggle para Walk on Water na aba Misc
MiscTab:CreateToggle({
    Name = "Walk on Water",
    CurrentValue = false,
    Flag = "walkOnWater",
    Callback = function(Value)
        _G.WalkonWater = Value
    end    
})

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

MiscTab:CreateButton({
    Name = "Remove Fog",
        Callback = function()
            NoFog()
        end
})

function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

MiscTab:CreateButton({
    Name = "Redeem All Code",
        Callback = function()
            UseCode()
        end
})

    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("Sub2Fer999")
    UseCode("Enyu_is_Pro")
    UseCode("Magicbus")
    UseCode("JCWK")
    UseCode("Starcodeheo")
    UseCode("Bluxxy")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")

local TabDivider = MiscTab:CreateSection("Team")

MiscTab:CreateButton({
	Name = "Join Pirates Team",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	end
})

local TabDivider = MiscTab:CreateDivider()

MiscTab:CreateButton({
	Name = "Join Marines Team",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	end
})

local TabDivider = MiscTab:CreateSection("Boat Speed")

-- Cria o slider para ajustar a velocidade do barco
local BoatSpeedSlider = MiscTab:CreateSlider({
    Name = "Boat Speed",
    Range = {0, 500},
    Increment = 5,
    Suffix = "Speed",
    CurrentValue = 100,
    Flag = "BoatSpeed",
    Callback = function(Value)
        _G.BoatSpeed = Value
    end,
})

-- Define o valor inicial do slider
BoatSpeedSlider:Set(100)

-- Cria o toggle para modificar a velocidade do barco
local ToggleBoatSpeed = MiscTab:CreateToggle({
    Name = "Modify Boat Speed",
    CurrentValue = false,
    Flag = "ModifyBoatSpeed",
    Callback = function(Value)
        _G.ModifyBoatSpeed = Value
        if Value then
            -- Função para detectar se o jogador está sentado no barco
            local function detectBoatSeat()
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid and humanoid.Sit then
                        local seat = humanoid.SeatPart
                        if seat and seat:IsDescendantOf(game.Workspace.Boats) then
                            local boat = seat.Parent
                            if boat and boat:FindFirstChild("VehicleSeat") then
                                _G.OriginalMaxSpeed = boat.VehicleSeat.MaxSpeed
                                boat.VehicleSeat.MaxSpeed = _G.BoatSpeed
                                print("Velocidade do barco ajustada para:", _G.BoatSpeed)
                            end
                        end
                    else
                        task.wait(1) -- Espera 1 segundo antes de verificar novamente
                        detectBoatSeat() -- Verifica novamente
                    end
                else
                    task.wait(1) -- Espera 1 segundo antes de verificar novamente
                    detectBoatSeat() -- Verifica novamente
                end
            end

            detectBoatSeat() -- Inicia a detecção
        else
            -- Restaura a velocidade original do barco
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Sit then
                    local seat = humanoid.SeatPart
                    if seat and seat:IsDescendantOf(game.Workspace.Boats) then
                        local boat = seat.Parent
                        if boat and boat:FindFirstChild("VehicleSeat") then
                            boat.VehicleSeat.MaxSpeed = _G.OriginalMaxSpeed
                            print("Velocidade do barco restaurada para:", _G.OriginalMaxSpeed)
                        end
                    end
                end
            end
        end
    end,
})

-- Final

-- Notificar jogador quando uma nova fruta aparecer
game.Workspace.ChildAdded:Connect(function(child)
    if string.find(child.Name, "Fruit") and child:FindFirstChild("Handle") then
        Rayfield:Notify({
            Title = "Fruta encontrada",
            Content = child.Name .. " foi encontrada.",
            Duration = 5,
            Image = "apple",
        })
    end
end)

Rayfield:LoadConfiguration()

-- Finalização do script
Rayfield:Notify({
    Title = "Script Carregado",
    Content = "O script foi carregado corretamente!",
    Duration = 5,
    Image = "book-check",
})