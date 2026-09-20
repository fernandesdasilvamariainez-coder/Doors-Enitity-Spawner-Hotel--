local killed = false
local ReSt = game:GetService("ReplicatedStorage")
local Plr = game.Players.LocalPlayer
local val = 80
local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camera = workspace.CurrentCamera

local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
	camera.CFrame = camera.CFrame * cf
end)
camShake:Start()
function GetTime(Distance, Speed)
	-- Time = Distance / Speed
	local Time = Distance / Speed
	return Time
end
function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end
function GetGitModel(ModelUrl,ModelName)
	if not isfile(ModelName..".txt") then writefile(ModelName..".txt", game:HttpGet(ModelUrl)) end
	local a=game:GetObjects((getcustomasset or getsynasset)(ModelName..".txt"))[1]
	a.Name=ModelName
	return a
end


function GetLastRoom()
	local roomer = nil
	--pcall(function()
	local gruh = workspace.CurrentRooms
	--for i = game.ReplicatedStorage.GameData.LatestRoom.Value,0,-1 do
	--	if gruh:FindFirstChild(i) then
	--		print("room "..i)
	--		local room = gruh[i]
	--		if room:FindFirstChild("Nodes") then
	--			if 
	--			local roomer = room
	--		end
	--	end
	--end
	--end)
	return game.Workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value + 1]
end
local DEF_SPEED = 99999
local function Move()
	local Reboundspeed = 2
	local ReboundDelay = 2
	local storer = Reboundspeed
	local entityheight = Vector3.new(0,0.6,0)
	----------
	local s = GetGitModel("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/ReboundHardcore.txt?raw=true","ReboundHardcore")
	s.Parent = workspace
	local entity = s.Rebound
	entity.CanCollide = false
	----------------------
	--_SHAKER DO NOT MOD IFY
	-----------OnSpawn----------
	----------------------------


	task.wait(4)

	
	----------Moving------------
	local gruh = workspace.CurrentRooms
	local ReboundMoving = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/ReboundMoving.mp3?raw=true","ReboundMoving")
	ReboundMoving.Parent = entity
	ReboundMoving:Play()
	ReboundMoving.Volume = 9
	entity.CFrame = GetLastRoom().RoomEnd.CFrame
	Reboundspeed = DEF_SPEED
	wait(math.random(1,2))
	--------------
	local function canSeeTarget(target,size)
		if killed == true then
			return
		end
		local origin = entity.Position
		local direction = (target.HumanoidRootPart.Position - entity.Position).unit * size
		local ray = Ray.new(origin, direction)

		local hit, pos = workspace:FindPartOnRay(ray, entity)


		if hit then
			if hit:IsDescendantOf(target) then
				killed = true
				return true
			end
		else
			return false
		end
	end
	-------------------------
	spawn(function()
		while entity ~= nil do wait(0.5)
			local v = game.Players.LocalPlayer
			local parent = script.Parent
			if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then
				if canSeeTarget(v.Character,50) then
					ReboundMoving:Stop()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Tricot676/Doors-Modes/ce3786e511e2869642e85336efdb444e06782a72/HardcoreMode/JumpscareLua.lua"))()
				end
			end
			if v.Character ~= nil then
				if v.Character:FindFirstChild("HumanoidRootPart") and (entity.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude <= val	 then
					camShake:ShakeOnce(9,8,0.1,2,1,6)
				end
			end
		end
	end)
	-----------------------
	
	for i = game.ReplicatedStorage.GameData.LatestRoom.Value + 1,0,-1 do
		if gruh:FindFirstChild(i) then
			print("room "..i)
			local room = gruh[i]
			if room:FindFirstChild("Nodes") then
				local RoomStart = room:FindFirstChild("RoomStart")
				local RoomEnd = room:FindFirstChild("RoomEnd")
				if RoomEnd then
					Reboundspeed = storer
					game.TweenService:Create(entity,TweenInfo.new(Reboundspeed),{CFrame = RoomStart.CFrame + entityheight}):Play()
					wait(ReboundDelay)
				end
			end
		end
		print("looping")
	end
	entity.Anchored = false
	entity.CanCollide = false
end


local function Rebound()
	--------spawning---------
	local Snd = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Entities-Sounds/blob/main/Rebound.mp3?raw=true","ReboundWarning")
	Snd.Parent = workspace
	Snd.Volume = 7
	Snd:Play()

	local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
	Reboundcolor.Name = "Warn"
	Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2
	game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
	camShake:ShakeOnce(10,3,0.1,6,2,0.5)
	----------moving
	Move()
	local maxrebounds = math.random(2,6)
	while wait() and maxrebounds ~= 0 do
		game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
		maxrebounds = maxrebounds - 1
		wait(math.random(1,2))
		Move()
	end
	----------------------
end

pcall(Rebound)
