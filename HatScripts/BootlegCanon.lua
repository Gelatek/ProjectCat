--[[

Notes:
I made this script in a day
The code is shit

Please don't steal it. Obfuscating it just made it buggy so that is why it's open source.
]]
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character.Dummy
reanimhats = game.Players.LocalPlayer.Character
reanim.Animate:Destroy()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
local huma = reanim.Humanoid
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
reanimhats['Angel wings'].Handle.AccessoryWeld.Part1 = reanim['Torso']
reanimhats['Angel wings'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

-- variable setup



huma.WalkSpeed = 45

local dance = false
local mainattackphase1 = false
local mainattackphase2 = false
local attacking = false
local tripleshotsphase1 = false
local tripleshotsphase2 = false
local tripleshotsphase3 = false
local tripleshotsphase4 = false

local laserphase1 = false
local laserphase2 = false

local cooldown = false
local lock = false

local player = game.Players.LocalPlayer
local Mouse = player:GetMouse()
local T = reanim.Torso
local SoundShot = Instance.new("Sound", T)
SoundShot.SoundId = "rbxassetid://1874883944"
SoundShot.Playing = false




local Soundmega = Instance.new("Sound", T)
Soundmega.SoundId = "rbxassetid://1874883944"
Soundmega.Playing = false


local RollingGirl = Instance.new("Sound", T)
RollingGirl.SoundId = "rbxassetid://4532152563"
RollingGirl.Playing = false


local funny = Instance.new("Sound", T)
funny.SoundId = "rbxassetid://5649752576"
funny.Playing = false
funny.PlaybackSpeed = 1.5

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.X then
        if cooldown == false and lock == false then
            laserphase1 = true
            lock = true
            huma.WalkSpeed = 0
			
            wait(1.5)
			attacking = true
            funny:Play()
            laserphase2 = true
            laserphase1 = false
            huma.WalkSpeed = 30
            wait(5)
            funny:Stop()
            laserphase2 = false
            laserphase1 = false
            huma.WalkSpeed = 45
            attacking = false
            cooldown = false
            lock = false
        end
	end
end)


if _G.BotReanim == true then
--FLING
local HatName = "Torso" -- hat name
local Char = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:wait()
HatName = Char:FindFirstChild(HatName)

--workspace.Camera.CameraSubject = HatName.Handle
--HatName.Parent = workspace
wait(0.2)
--coroutine.wrap(function()
    local bp = Instance.new("BodyPosition",HatName)
    bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    bp.P = 10000

    bp.D = 125

--bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
    bp.Position = game.Players.LocalPlayer:GetMouse().Hit.p     
    local bt = Instance.new("BodyThrust",HatName)
    bt.Force = Vector3.new(3000,3000,3000)
    bt.Location = Vector3.new(10,5,-10)
    local hatpos = game.Players.LocalPlayer:GetMouse().Hit.p
    --HatName.Handle.CFrame = CFrame.new(hatpos)
    while true do
        for _=1,2 do
            game:GetService("RunService").RenderStepped:wait()
        end
        if not HatName or HatName.Parent ~= workspace then print("Sad"); break end
        HatName.CanCollide = false
       -- bp.Position = game.Players.LocalPlayer:GetMouse().Hit.p
    end
--end)()

local mouse = game.Players.LocalPlayer:GetMouse()


game:GetService("RunService").Heartbeat:Connect(function()
	pcall(function()
    if attacking == true then
    bp.Position = game.Players.LocalPlayer:GetMouse().Hit.p
    else
    bp.Position = reanim["Torso"].Position + Vector3.new(0,-50,0)
    end
end)
end)

HatName.Transparency = 0
local Outline = Instance.new("SelectionBox", HatName)

Outline.LineThickness = 0.08
game:GetService("RunService").Heartbeat:Connect(function()
local t = 5
local hue = tick() % t / t
Outline.Color3 = Color3.fromHSV(hue, 1, 1)
end)

Outline.Adornee = HatName
    Char["Right Arm"]:BreakJoints()
    Char["Right Leg"]:BreakJoints()
    Char["Left Arm"]:BreakJoints()
    Char["Left Leg"]:BreakJoints()	
end

UserInputService.InputBegan:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.T then
        if cooldown == false and lock == false then
            dance = true
            lock = true
            RollingGirl:Play()
            cooldown = true
            huma.WalkSpeed = 35
        end
	end
end)

UserInputService.InputBegan:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.Y then
        if cooldown == true and lock == true then
            dance = false
            cooldown = false
            lock = false
            RollingGirl:Stop()
            huma.WalkSpeed = 45
        end
	end
end)

UserInputService.InputBegan:Connect(function(Key)
	if Key.KeyCode == Enum.KeyCode.C then
        if cooldown == false and lock == false then
            lock = true
			attacking = true
            huma.WalkSpeed = 0
            tripleshotsphase1 = true
            wait(.4)
            tripleshotsphase1 = false
            tripleshotsphase2 = true
            wait(.3)
            tripleshotsphase1 = false
            tripleshotsphase2 = false
            tripleshotsphase3 = true
            wait(.4)
            Soundmega:Play()
			attacking = true
            tripleshotsphase1 = false
            tripleshotsphase2 = false
           tripleshotsphase3 = false
            tripleshotsphase4 = true
            wait(1)
            tripleshotsphase1 = true
            tripleshotsphase2 = false
           tripleshotsphase3 = false
           tripleshotsphase4 = false
            cooldown = true
            wait(1)
            huma.WalkSpeed = 45
            tripleshotsphase1 = false
            attacking = false
            cooldown = false
            lock = false
        end
	end
end)



Mouse.Button1Down:connect(function()
if cooldown == false and lock == false then 
mainattackphase1 = true
attacking = true
huma.WalkSpeed = 0
cooldown = true
lock = true
wait(.8)
mainattackphase1 = false
mainattackphase2 = true
SoundShot:Play()
wait(0.4)
mainattackphase1 = false
cooldown = false
lock = false
attacking = false
huma.WalkSpeed = 45
mainattackphase2 = false
end
end)




-- WINGS/GUN SETUP
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.Part1 = reanim['Right Arm']
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)

reanimhats['Angel wings'].Handle.AccessoryWeld.Part1 = reanim['Torso']
reanimhats['Angel wings'].Handle.AccessoryWeld.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)



coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed

--- DEFAULT STUFF YES

if Root.Velocity.y > 1 and dance == false and attacking == false then -- jump
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(12+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-33+5*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+-4*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.3+0*math.cos(sine/13),-0.6+.04*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-22+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.y < -1 and dance == false and attacking == false then -- fall
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-17+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-33+5*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+-4*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.3+0*math.cos(sine/13),-0.6+.04*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-22+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and attacking == false then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(139+5*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(32+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(27+-4*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),-0.6+.04*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.8+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(0+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude > 20 and dance == false and attacking == false then -- run
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-48+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-33+5*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+-4*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13),-0.6+.04*math.cos(sine/13))*ANGLES(RAD(-33+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-.9+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-22+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
-- MAINATTACK

elseif Root.Velocity.Magnitude < 2 and dance == false and mainattackphase1 == true and mainattackphase2 == false then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and mainattackphase1 == false and mainattackphase2 == true then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(128+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)

-- MAIN
elseif Root.Velocity.Magnitude < 2 and dance == false and tripleshotsphase1 == true and tripleshotsphase2 == false and tripleshotsphase3 == false and tripleshotsphase4 == false then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(25+0*math.cos(sine/13)),RAD(-13+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+360*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and tripleshotsphase1 == false and tripleshotsphase2 == true and tripleshotsphase3 == false and tripleshotsphase4 == false then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(186+0*math.cos(sine/13)),RAD(-13+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and tripleshotsphase1 == false and tripleshotsphase2 == false and tripleshotsphase3 == true and tripleshotsphase4 == false then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),1.4+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(206+1*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and tripleshotsphase1 == false and tripleshotsphase2 == false and tripleshotsphase3 == false and tripleshotsphase4 == true then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),6+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(163+1*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)

elseif Root.Velocity.Magnitude < 2 and dance == true and attacking == false then -- idle
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),49+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),63+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+2*math.cos(sine/2),0+0*math.cos(sine/13),0+-1*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(92+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-92+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/13),-1.2+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(56+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.8+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.1)
elseif Root.Velocity.Magnitude > 20 and dance == true and attacking == false then -- idle
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),49+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),63+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+2*math.cos(sine/2),0+0*math.cos(sine/13),0+-1*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(92+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-92+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.8+0*math.cos(sine/13),-1.2+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(56+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.8+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.1)




elseif Root.Velocity.Magnitude < 2 and dance == false and laserphase1 == true then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+1*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(45+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(81+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
elseif Root.Velocity.Magnitude < 2 and dance == false and laserphase2 == true then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+1*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(45+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(81+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)

elseif Root.Velocity.Magnitude > 20 and dance == false and laserphase2 == true then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),3+.3*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+1*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(45+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(81+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(.5+0*math.cos(sine/13),-0.6+0.04*math.cos(sine/13),-0.6+-0.1*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-.5+0*math.cos(sine/13),-0.5+.1*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(-8+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Angel wings'].Handle.AccessoryWeld.C0 = reanimhats['Angel wings'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.35+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(-2+10*math.cos(sine/13)),RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0 = reanimhats['Starslayer Railgun'].Handle.AccessoryWeld.C0:Lerp(CF(-1.2+0*math.cos(sine/13),0.2+0*math.cos(sine/13),-0+0*math.cos(sine/13))*ANGLES(RAD(-80+0*math.cos(sine/13)),RAD(-138+0*math.cos(sine/13)),RAD(-80+0*math.cos(sine/13))),.1)
    
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
