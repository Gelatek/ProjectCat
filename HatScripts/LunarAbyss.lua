
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
    local reanimhat = game.Players.LocalPlayer.Character
    RJ = reanim.HumanoidRootPart.RootJoint
    reanim.Animate:Destroy()
reanim.Humanoid.Animator:Destroy()
    reanimhat.Animate:Destroy()
reanimhat.Humanoid.Animator:Destroy()
    RS = reanim.Torso['Right Shoulder']
    LS = reanim.Torso['Left Shoulder']
    RH = reanim.Torso['Right Hip']
    LH = reanim.Torso['Left Hip']
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
    local attackp2 = false
    local attackp2 = false
    local attacking = false
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local SoundShot = Instance.new("Sound", workspace[Game.Players.LocalPlayer.Name].Torso)
    SoundShot.SoundId = "rbxassetid://5649752576"
    SoundShot.Playing = false
    SoundShot.PlaybackSpeed = 1
    SoundShot.Looped = true
    Mouse.Button1Down:connect(function()
    attackp1 = true
    attacking = true
    wait(0.2)
    attackp1 = false
    attackp2 = true
    SoundShot:Play()
    end)
    
    reanim.Humanoid.WalkSpeed = 20
    Mouse.Button1Up:connect(function()
        attackp1 = false
        attacking = false
        attackp2 = false
        SoundShot:Stop()
    end)
    

    

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
        AlignOrientation.MaxTorque = math.huge
        AlignOrientation.ReactionTorqueEnabled = false
        AlignPosition.ReactionForceEnabled = false
        AlignOrientation.Responsiveness = 300
        AlignPosition.RigidityEnabled = true
        AlignOrientation.RigidityEnabled = false
        Attachment1.Position = Position or Vector3.new(0,0,0)
        Attachment1.Orientation = Rotate or Vector3.new(0,0,0)
    end
    local Gun1 = reanimhat['VN9K [Back]'].Handle
    local Gun2 = reanimhat['VN9K [Front]'].Handle
    local RightArm = reanim['Right Arm'] 
    local LeftArm = reanim['Left Arm']
    
    local Music = Instance.new("Sound", reanim.Torso)
    Music.SoundId = "rbxassetid://561833161"
    Music.Playing = true
    Music.Looped = true
    Music.Volume = 0.5
    
    


    if Gun1:FindFirstChild("AccessoryWeld") then
        Gun1.AccessoryWeld:Destroy()
    end
    if Gun2:FindFirstChild("AccessoryWeld") then
        Gun2.AccessoryWeld:Destroy()
    end
    AlignObject(Gun1,RightArm,Vector3.new(0.5,-0.3,0),Vector3.new(90,180,90))
    AlignObject(Gun2,LeftArm,Vector3.new(0.5,-0.3,0),Vector3.new(90,180,90))
    
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
local askl = game.Players.LocalPlayer.Character:FindFirstChild("Dummy")
game:GetService("RunService").Heartbeat:Connect(function()
    if attacking == true then
    bp.Position = game.Players.LocalPlayer:GetMouse().Hit.p
    else
    bp.Position = askl["Torso"].Position + Vector3.new(0,-50,0)
    end
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

    coroutine.wrap(function()
    while true do -- anim changer
    if HumanDied then break end
    sine = sine + speed
    if attacking == false and Root.Velocity.y > 1 then -- jump
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(7+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(25+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.8+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    elseif attacking == false and Root.Velocity.y < -1 then -- fall
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-11+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(25+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.8+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    elseif attacking == false and Root.Velocity.Magnitude < 2 then -- idle
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(25+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(47+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(41+-5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    elseif attacking == false and Root.Velocity.Magnitude < 20 then -- walk
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-57+30*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-53+25*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13))),.1)
    elseif attacking == false and Root.Velocity.Magnitude > 20 then -- run
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-57+30*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-53+25*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(7+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+52*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13))),.1)
    elseif attackp1 == true and attackp2 == false then 
        NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
        RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
        RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.1)
        LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(92+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(16+0*math.cos(sine/13))),.1)
        RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.1)
        LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-8+0*math.cos(sine/13))),.1)
    elseif attackp1 == false and attackp2 == true then 
        
    NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0.1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
    RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(81+5*math.cos(sine/2)),RAD(3+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.1)
    LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(79+-5*math.cos(sine/2)),RAD(-6+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.1)
    RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13))),.1)
    LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-8+0*math.cos(sine/13))),.1)
    
    end
    srv.RenderStepped:Wait()
    end
    end)()
