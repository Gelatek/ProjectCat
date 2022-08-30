local function Message(text)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text,
		Color = Color3.fromRGB(255,255, 255),
		TextSize = 18,
	});
end

Message("Project Cat is now fully discountinued, Join the discord to get update about new hub.")

if not _G.Reanimated then _G.Reanimated = false end
if not _G.BotReanim then _G.BotReanim = false end
if not _G.ScriptRunning then _G.ScriptRunning = false end



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/UILibraries/main/RobloxScripts.lua"))()
local Main = Library.new("Project: Cat 1.2.1b - By Gelatek")

local MainSection = Main:NewSection("Home")
local ReanimateSection = Main:NewSection("Reanimations")
local FSSection = Main:NewSection("Free Scripts")
local HSSection = Main:NewSection("Hat Scripts")
local HatsSection = Main:NewSection("Hats")

MainSection:NewButton("Copy Discord Invite", function()
setclipboard("https://discord.gg/MXH3MyQ3wA")
end)

function ShortLoadstring(text)
	loadstring(game:HttpGet(text))()
end
ReanimateSection:NewButton("Simple Reanimate", function()
if _G.Reanimated ~= true then
ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/Reanimate/SimpleReanimate.lua")
else
Message("Project Cat: Already Reanimated!")
end
end)

ReanimateSection:NewButton("Bot Reanimate", function()
	if _G.Reanimated ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/Reanimate/BotReanimate.lua")
        
	else
		Message("Project Cat: Already Reanimated!")
	end
end)

ReanimateSection:NewButton("Copy Bot hats (stop crying)", function()
    scb("62724852,62234425,48474294,451220849,63690008,48474313,617605556")
end)

ReanimateSection:NewButton("R15 Simple Reanimate (dont run twice or on r6)", function()

function AlignObject(Part0,Part1,Position,Rotate)
	local AlignPosition = Instance.new("AlignPosition", Part0)
	local AlignOrientation = Instance.new("AlignOrientation", Part0)
	local Attachment1 = Instance.new("Attachment", Part0)
	local Attachment2 = Instance.new("Attachment", Part1)
	AlignPosition.Attachment0 = Attachment1
	AlignOrientation.Attachment0 = Attachment1
	AlignPosition.Attachment1 = Attachment2
	AlignOrientation.Attachment1 = Attachment2
	AlignPosition.Responsiveness = 300
	AlignPosition.MaxForce = 5e9
	AlignOrientation.MaxTorque = 5e9
	AlignOrientation.Responsiveness = 300
	Attachment1.Position = Position or Vector3.new(0,0,0)
	Attachment1.Orientation = Rotate or Vector3.new(0,0,0)
end

Character = game.Players.LocalPlayer.Character
Character.Archivable = true
local ReanimateCharacter = game:GetObjects("rbxassetid://8025310296")[1]
ReanimateCharacter.Parent = Character
ReanimateCharacter.Name = "Dummy"
ReanimateCharacter.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame
for i, v in pairs(Character:GetChildren()) do
	if v:IsA("Accessory") then
		v:Clone().Parent = ReanimateCharacter
	end
end

for i, v in pairs(ReanimateCharacter:GetDescendants()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

game.Players.LocalPlayer.Backpack:ClearAllChildren()
ReanimateCharacter.Head.face.Transparency = 1
ReanimateCharacter.Animate.Disabled = true
Character.Animate.Disabled = true
ReanimateCharacter.Humanoid.DisplayDistanceType = "None"
local Collider
function Noclip()
	Character.Humanoid.Died:Connect(function()
		Collider:Disconnect()
		return
	end)
	
	for i, v in pairs(ReanimateCharacter:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
	
	for i, v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
end
Collider = game:GetService("RunService").Stepped:Connect(Noclip)
--[[
game:GetService("RunService").Heartbeat:Connect(function()
	if Character.Humanoid.Health ~= 0 then
		Character.UpperTorso.CFrame = ReanimateCharacter.Torso.CFrame * CFrame.new(0,0.19,0)
	end
end)
]]--
local NetlessTrigger
function Netless()
	if _G.Reanimated == false then
		NetlessTrigger:Disconnect()
		return
	end
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			v.Handle.Velocity = Vector3.new(35,0,0)
		elseif v:IsA("BasePart") then
			v.Velocity = Vector3.new(35,0,0)
		end
	end
end

NetlessTrigger = game:GetService("RunService").Heartbeat:Connect(Netless) 

--\\ Inspired by pare lol //--
function Align(Part1,Part2,Position,Rotate)
	for i,v in pairs(Character[Part1]:GetChildren()) do
		if v:IsA('Motor6D') then 
			v:Destroy() 
		end
	end
AlignObject(Character[Part1],ReanimateCharacter[Part2],Position,Rotate)
end

Align('RightUpperArm','Right Arm',Vector3.new(0,-.4,0),Vector3.new(0,0,0))
Align('RightLowerArm','Right Arm',Vector3.new(0,.2,0),Vector3.new(0,0,0))
Align('RightHand','Right Arm',Vector3.new(0,.85,0),Vector3.new(0,0,0))
Align('LeftUpperArm','Left Arm',Vector3.new(0,-.4,0),Vector3.new(0,0,0))
Align('LeftLowerArm','Left Arm',Vector3.new(0,.2,0),Vector3.new(0,0,0))
Align('LeftHand','Left Arm',Vector3.new(0,.85,0),Vector3.new(0,0,0))
Align('LeftUpperLeg','Left Leg',Vector3.new(0,-.4,0),Vector3.new(0,0,0))
Align('LeftLowerLeg','Left Leg',Vector3.new(0,.2,0),Vector3.new(0,0,0))
Align('LeftFoot','Left Leg',Vector3.new(0,.85,0),Vector3.new(0,0,0))
Align('RightUpperLeg','Right Leg',Vector3.new(0,-.4,0),Vector3.new(0,0,0))
Align('RightLowerLeg','Right Leg',Vector3.new(0,.2,0),Vector3.new(0,0,0))
Align('RightFoot','Right Leg',Vector3.new(0,.85,0),Vector3.new(0,0,0))
Align('HumanoidRootPart','HumanoidRootPart',Vector3.new(0,0,0),Vector3.new(0,0,0))
Align('HumanoidRootPart','HumanoidRootPart',Vector3.new(0,0,0),Vector3.new(0,0,0))
Align('UpperTorso','Torso',Vector3.new(0,-.18,0),Vector3.new(0,0,0))
Align('LowerTorso','Torso',Vector3.new(0,.85,0),Vector3.new(0,0,0))

local Humanoid = ReanimateCharacter:FindFirstChild("Humanoid")
workspace.Camera.CameraSubject = Humanoid
    game:GetService("UserInputService").JumpRequest:connect(function()
        if Humanoid.FloorMaterial ~= Enum.Material.Air then 
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) Humanoid.Sit = false 
        end 
    end)
    game:GetService('RunService').RenderStepped:Connect(function()
        Humanoid:Move(Character.Humanoid.MoveDirection, false)
        local AnimationTracks = Character.Humanoid:GetPlayingAnimationTracks()
            for n,Anims in pairs(AnimationTracks) do 
                Anims:Stop()
		end 
end)


end)

FSSection:NewButton("Sonic", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/Sonic.lua")
	else
		Message("Project Cat: Script Already Running!")
	end
end)


FSSection:NewButton("Memeus", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/Memeus.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

FSSection:NewButton("Gale Fighter", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/GaleFighter.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)


FSSection:NewButton("Ender", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/Ender.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)


FSSection:NewButton("Krystal Dance", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/KrystalDance.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)


FSSection:NewButton("Xester", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/Xester.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

FSSection:NewButton("Master Of Elememts", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/FreeScripts/MasterOfElements.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

--// Hat Scripts

HSSection:NewButton("Ban Hammer", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/BanHammer.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Lustris Sword", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/LustrisV2.lua")
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Bootleg Cannon", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/BootlegCanon.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Neptunian V", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/NeptunianV.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Lunar Abyss", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/LunarAbyss.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Yellow Lightning Blade", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/LightningBlade.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Dual Ultima", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/DualUltima.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Infinity Banisher", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/InfinityBanisher.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Elio Biasto", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/ElioBiasto.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Shotgun", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/Shotgun.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Zenith Rifle", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/ZenithRifle.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("Star Glitcher", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/StarGlitcher.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)

HSSection:NewButton("(BUGGY) Hoverboard", function()
	if _G.ScriptRunning ~= true then
		ShortLoadstring("https://raw.githubusercontent.com/Gelatek/ProjectCat/main/HatScripts/Hoverboard.lua")
        _G.ScriptRunning = true
	else
		Message("Project Cat: Script Already Running!")
	end
end)


function scb(t)
setclipboard(t)
end


HatsSection:NewButton("Copy Ban Hammer Hats", function()
scb("4739580137")
end)

HatsSection:NewButton("Copy Lustris Sword Hats", function()
    scb("4458601937 -- or any greatsword")
end)
    
HatsSection:NewButton("Copy Bootleg Cannon Hats", function()
    scb("7284888361,4623059912")
end)

HatsSection:NewButton("Copy Neptunian V Hats", function()
    scb("4458601937 -- or any greatsword")
end)
    
HatsSection:NewButton("Copy Lunar Abyss Hats", function()
    scb("6703871350,6682176741")
end)

HatsSection:NewButton("Copy Yellow Lightning Blade Hats Hats", function()
    scb("7100996921")
end)
    
HatsSection:NewButton("Copy Elio Biasto Hats", function()
    scb("6095036377")
end)

HatsSection:NewButton("Copy Hoverboard Hats", function()
    scb("6510064271")
end)
    
HatsSection:NewButton("Copy Dual Ultima Hats", function()
    scb("6203508889,6203503410")
end)
    
HatsSection:NewButton("Copy Star Glitcher Hats", function()
    scb("4458601937,4315489767,4794315940,4506945409,4524991457,4820152700")
end)
    
HatsSection:NewButton("Copy Infinity Banisher Hats", function()
    scb("4623059912")
end)
    
HatsSection:NewButton("Copy Shotgun Hats", function()
    scb("6065664286")
end)

HatsSection:NewButton("Copy Zenith Rifle Hats", function()
    scb("6497604093")
end)

