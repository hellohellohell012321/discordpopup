

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
        local link = "https://discord.gg/MP9nZgEeQD"
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


pcall(function()

-- Ensure services are loaded
repeat wait() until game:IsLoaded()


-- Function to send a message to a Discord webhook
local function sendWebhookMessage(url, content, displayName, username, gameName, avatarUrl)
    local data = {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "someone just executed one of our scripts!",
            ["description"] = content,
            ["color"] = 225, -- Black color
            ["fields"] = {
                {
                    ["name"] = "Game:",
                    ["value"] = "Game: " .. gameName,
                    ["inline"] = false
                },
                {
                    ["name"] = "Time Executed:",
                    ["value"] = os.date("%d/%m/%Y %H:%M"),
                    ["inline"] = false
                }
            },
            ["thumbnail"] = {
                ["url"] = avatarUrl
            },
            ["footer"] = {
                ["text"] = "stxllar scripts"
            }
        }}
    }
    local jsonData = game:GetService("HttpService"):JSONEncode(data)
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local request = http_request or request or HttpPost or syn.request
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = jsonData
    })
end


-- Print "Starting..." immediately
print("Starting...")


-- Get the player info
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")


local player = Players.LocalPlayer
local displayName = player.DisplayName
local username = player.Name


-- Get the game name
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


-- Get the player's avatar URL
local avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"


-- Send a message to the Discord webhook immediately
local webhookUrl = "https://discord.com/api/webhooks/1293064718466158602/Ix_FKvYW2W5RlFtIg29yRYv0_FMkJ50qmeCh_StKSw8NbajlDTmayvTVMhFkdveaAmoU"


-- Delayed execution of the webhook and print message after 5 seconds
delay(5, function()
    sendWebhookMessage(webhookUrl, "someone just executed a script from STXLLAR SCRIPTS !", displayName, username, gameName, avatarUrl)
    print("STXLLAR")
end)

end)

return G2L["1"], require;
