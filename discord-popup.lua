

local G2L = {}
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(68, 71, 75)
G2L["2"]["Size"] = UDim2.new(0, 200, 0, 195)
G2L["2"]["Position"] = UDim2.new(0.5, -100, 0.5, -97)
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["3"] = Instance.new("TextButton", G2L["2"])
G2L["3"]["BorderSizePixel"] = 0
G2L["3"]["TextSize"] = 23
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 38)
G2L["3"]["FontFace"] =
    Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["3"]["Size"] = UDim2.new(0, 130, 0, 26)
G2L["3"]["Name"] = [[close]]
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["3"]["Text"] = [[fuck off]]
G2L["3"]["Position"] = UDim2.new(0.5, -65, 0.8, 0)
G2L["4"] = Instance.new("TextButton", G2L["2"])
G2L["4"]["TextWrapped"] = true
G2L["4"]["BorderSizePixel"] = 0
G2L["4"]["TextSize"] = 27
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(116, 139, 220)
G2L["4"]["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["4"]["Size"] = UDim2.new(0, 152, 0, 30)
G2L["4"]["Name"] = [[copy]]
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["4"]["Text"] = [[copy link]]
G2L["4"]["Position"] = UDim2.new(0.5, -76, 0.6, 0)
G2L["5"] = Instance.new("UICorner", G2L["4"])
G2L["5"]["CornerRadius"] = UDim.new(0, 2)
G2L["6"] = Instance.new("TextLabel", G2L["2"])
G2L["6"]["TextWrapped"] = true
G2L["6"]["BorderSizePixel"] = 0
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["6"]["TextSize"] = 30
G2L["6"]["FontFace"] =
    Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["6"]["BackgroundTransparency"] = 1
G2L["6"]["Size"] = UDim2.new(0, 200, 0, 61)
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["6"]["Text"] = [[join the discord :3]]
G2L["6"]["Name"] = [[join]]
G2L["6"]["Position"] = UDim2.new(0.5, -100, 0, 0)
G2L["7"] = Instance.new("UICorner", G2L["2"])
G2L["7"]["CornerRadius"] = UDim.new(0, 4)
G2L["8"] = Instance.new("ImageLabel", G2L["2"])
G2L["8"]["BorderSizePixel"] = 0
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["8"]["Image"] = [[rbxassetid://18817097052]]
G2L["8"]["Size"] = UDim2.new(0, 73, 0, 75)
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["8"]["BackgroundTransparency"] = 1
G2L["8"]["Position"] = UDim2.new(0.695, -36, 0.21025, 0)
G2L["9"] = Instance.new("ImageLabel", G2L["2"])
G2L["9"]["BorderSizePixel"] = 0
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["9"]["Image"] = [[rbxassetid://18817519330]]
G2L["9"]["Size"] = UDim2.new(0, 100, 0, 66)
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["9"]["BackgroundTransparency"] = 1
G2L["9"]["Position"] = UDim2.new(0.29, -50, 0.25641, 0)
G2L["a"] = Instance.new("LocalScript", G2L["2"])
G2L["a"]["Name"] = [[close]]
G2L["b"] = Instance.new("LocalScript", G2L["2"])
G2L["b"]["Name"] = [[copy]]
G2L["c"] = Instance.new("LocalScript", G2L["2"])
local function C_a()
    local script = G2L["a"]
    local TweenService = game:GetService("TweenService")
    local player = game.Players.LocalPlayer
    local screenGui = script.Parent.Parent
    local frame = screenGui:WaitForChild("Frame")
    local closeButton = frame:WaitForChild("close")
    local fadeOutTime = 1
    local function fadeOutFrameAndContents(frame)
        for _, descendant in ipairs(frame:GetDescendants()) do
            if descendant:IsA("GuiObject") then
                local tweenInfo = {}
                if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
                    tweenInfo.TextTransparency = 1
                end
                if descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
                    tweenInfo.ImageTransparency = 1
                end
                tweenInfo.BackgroundTransparency = 1
                local fadeTween = TweenService:Create(descendant, TweenInfo.new(fadeOutTime), tweenInfo)
                fadeTween:Play()
            end
        end
        local frameTween = TweenService:Create(frame, TweenInfo.new(fadeOutTime), {BackgroundTransparency = 1})
        frameTween:Play()
        frameTween.Completed:Connect(
            function()
                frame.Visible = false
            end
        )
    end
    closeButton.MouseButton1Click:Connect(
        function()
            fadeOutFrameAndContents(frame)
        end
    )
end
task.spawn(C_a)
local function C_b()
    local script = G2L["b"]
    local player = game.Players.LocalPlayer
    local screenGui = script.Parent.Parent
    local frame = screenGui:WaitForChild("Frame")
    local copyButton = frame:WaitForChild("copy")
    local function onCopyButtonClicked()
        local link = "https://discord.gg/stxllar"
        setclipboard(link)
    end
    copyButton.MouseButton1Click:Connect(onCopyButtonClicked)
end
task.spawn(C_b)
local function C_c()
    local script = G2L["c"]
    local TweenService = game:GetService("TweenService")
    local player = game.Players.LocalPlayer
    local screenGui = script.Parent.Parent
    local frame = screenGui:WaitForChild("Frame")
    local popOutTime = 0.5
    frame.Size = UDim2.new(0, 0, 0, 0)
    frame.Visible = true
    local tweenInfo = TweenInfo.new(popOutTime, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
    local targetSize = UDim2.new(0, 200, 0, 195)
    local popOutTween = TweenService:Create(frame, tweenInfo, {Size = targetSize})
    popOutTween:Play()
end
task.spawn(C_c)











local G2L = {};

-- StarterGui.nigga
G2L["n"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["n"]["Name"] = [[nigga]];
G2L["n"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.nigga.Frame
G2L["i"] = Instance.new("Frame", G2L["n"]);
G2L["i"]["BorderSizePixel"] = 0;
G2L["i"]["BackgroundColor3"] = Color3.fromRGB(255, 145, 122);
G2L["i"]["Size"] = UDim2.new(0, 0, 0, 0);  -- Start from 0 size for pop-out effect
G2L["i"]["AnchorPoint"] = Vector2.new(0.5, 0.5); -- Anchor to center
G2L["i"]["Position"] = UDim2.new(0.5, 0, 0.5, 0); -- Centered on screen
G2L["i"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- Pop-out animation
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local goal = {Size = UDim2.new(0, 308, 0, 127)} -- Final size of the frame
local tween = TweenService:Create(G2L["i"], tweenInfo, goal)
tween:Play()  -- Play pop-out animation

-- StarterGui.nigga.Frame.TextLabel
G2L["g"] = Instance.new("TextLabel", G2L["i"]);
G2L["g"]["TextWrapped"] = true;
G2L["g"]["BorderSizePixel"] = 0;
G2L["g"]["TextScaled"] = true;
G2L["g"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["g"]["TextSize"] = 14;
G2L["g"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["g"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["g"]["BackgroundTransparency"] = 1;
G2L["g"]["Size"] = UDim2.new(0, 308, 0, 50);
G2L["g"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["g"]["Text"] = [[yo bro! did you use a keysystem for this script?]];

-- StarterGui.nigga.Frame.TextLabel
G2L["a"] = Instance.new("TextLabel", G2L["i"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextSize"] = 14;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0, 263, 0, 58);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[funny thing is, you dont actually need to! some skid stole our script cause they were so untalented and they coudnt make their own script ):]];
G2L["a"]["Position"] = UDim2.new(0.07143, 0, 0.32677, 0);

-- StarterGui.nigga.Frame.understood
G2L["s"] = Instance.new("TextButton", G2L["i"]);
G2L["s"]["TextWrapped"] = true;
G2L["s"]["BorderSizePixel"] = 0;
G2L["s"]["TextSize"] = 14;
G2L["s"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["s"]["TextScaled"] = true;
G2L["s"]["BackgroundColor3"] = Color3.fromRGB(161, 188, 255);
G2L["s"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["s"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["s"]["Name"] = [[understood]];
G2L["s"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["s"]["Text"] = [[understood]];
G2L["s"]["Position"] = UDim2.new(0.17532, 0, 0.78346, 0);

-- StarterGui.nigga.Frame.ImageLabel
G2L["h"] = Instance.new("ImageLabel", G2L["i"]);
G2L["h"]["ZIndex"] = -2;
G2L["h"]["BorderSizePixel"] = 0;
G2L["h"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["h"]["ImageColor3"] = Color3.fromRGB(255, 214, 205);
G2L["h"]["Image"] = [[http://www.roblox.com/asset/?id=10078767149]];
G2L["h"]["Size"] = UDim2.new(0, 77, 0, 69);
G2L["h"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["h"]["BackgroundTransparency"] = 1;
G2L["h"]["Position"] = UDim2.new(0, 0, 0.45669, 0);

-- Destroy GUI when 'understood' button is clicked
G2L["s"].MouseButton1Click:Connect(function()
    G2L["n"]:Destroy()
end)

return G2L["1"], require;
