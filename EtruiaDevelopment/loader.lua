local installmain = Instance.new("ScreenGui")
local UpdateLog = Instance.new("Frame")
local updatesframe = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local date = Instance.new("TextLabel")
local divider = Instance.new("Frame")
local date_2 = Instance.new("TextLabel")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner_2 = Instance.new("UICorner")
local divider_2 = Instance.new("Frame")
local Updates = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local OPENETRUIA = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local MainFrame = Instance.new("Frame")
local copytut = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local Credits = Instance.new("Frame")
local uidevs = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UICorner_5 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local dev1 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIListLayout_2 = Instance.new("UIListLayout")
local dev2 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local dev3 = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Color2 = Instance.new("Frame")
local UnfortunatelyAtutorial = Instance.new("TextLabel")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local UIGradient = Instance.new("UIGradient")
local Color1 = Instance.new("Frame")
local DropShadowHolder_2 = Instance.new("Frame")
local DropShadow_2 = Instance.new("ImageLabel")
local InstallButton = Instance.new("TextButton")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local UICorner_6 = Instance.new("UICorner")
local min = Instance.new("ImageButton")
local updlog = Instance.new("ImageButton")
local uidevs_2 = Instance.new("TextLabel")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local render = Instance.new("TextLabel")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local max = Instance.new("ImageButton")
local close = Instance.new("ImageButton")
local Logo = Instance.new("ImageLabel")
local Installer = Instance.new("ScreenGui")
local rdy = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local InsideFrame = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local FixCorner = Instance.new("Frame")
local CancelButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local TextButtonBG = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local WindowTitle = Instance.new("TextLabel")
local WindowTitle2 = Instance.new("TextLabel")
local InstallProgress = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Inner = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local studio = game:GetService("RunService"):IsStudio()
local text = "NILL"
local lplr = game.Players.LocalPlayer
local httpService = game:GetService('HttpService')
local executor = (identifyexecutor or getexecutorname or function() return 'your executor' end)()
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 
local VERISON = 'Installer Verison: 0.1, Etruia lastest update: V2.30'
print(VERISON)

installmain.Name = "installmain"
installmain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
installmain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
installmain.Enabled = true

UpdateLog.Name = "UpdateLog"
UpdateLog.Parent = installmain
UpdateLog.AnchorPoint = Vector2.new(0.5, 0.5)
UpdateLog.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
UpdateLog.BorderColor3 = Color3.fromRGB(0, 0, 0)
UpdateLog.BorderSizePixel = 0
UpdateLog.Position = UDim2.new(0.5, 0, 0.483539104, 0)
UpdateLog.Size = UDim2.new(0.132748902, 0, 0.467705935, 0)
UpdateLog.Visible = false

updatesframe.Name = "updatesframe"
updatesframe.Parent = UpdateLog
updatesframe.Active = true
updatesframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
updatesframe.BackgroundTransparency = 1.000
updatesframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
updatesframe.BorderSizePixel = 0
updatesframe.Position = UDim2.new(0, 0, 0.129085809, 0)
updatesframe.Size = UDim2.new(1.00000012, 0, 0.770914257, 0)
updatesframe.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
updatesframe.ScrollBarThickness = 0
updatesframe.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

UIListLayout.Parent = updatesframe
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

date.Name = "date"
date.Parent = updatesframe
date.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
date.BackgroundTransparency = 1.000
date.BorderColor3 = Color3.fromRGB(0, 0, 0)
date.BorderSizePixel = 0
date.Position = UDim2.new(-9.98651046e-08, 0, 0, 0)
date.Size = UDim2.new(0, 152, 0, 33)
date.Font = Enum.Font.GothamBold
date.Text = "09/03/2024"
date.TextColor3 = Color3.fromRGB(212, 0, 4)
date.TextSize = 14.000

divider.Name = "divider"
divider.Parent = updatesframe
divider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
divider.BorderSizePixel = 0
divider.Position = UDim2.new(0, 0, 0.109442212, 0)
divider.Size = UDim2.new(1, 0, 0, 1)

date_2.Name = "date"
date_2.Parent = updatesframe
date_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
date_2.BackgroundTransparency = 1.000
date_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
date_2.BorderSizePixel = 0
date_2.Position = UDim2.new(-9.98651046e-08, 0, 0.166697606, 0)
date_2.Size = UDim2.new(0, 152, 0, 33)
date_2.Font = Enum.Font.GothamBold
date_2.Text = "pro ui"
date_2.TextColor3 = Color3.fromRGB(212, 0, 4)
date_2.TextSize = 14.000

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = UpdateLog
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

Close.Name = "Close"
Close.Parent = UpdateLog
Close.Active = false
Close.BackgroundColor3 = Color3.fromRGB(212, 0, 4)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.0186309814, 0, 0.913296998, 0)
Close.Selectable = false
Close.Size = UDim2.new(0.957894862, 0, 0.0740995482, 0)
Close.AutoButtonColor = false
Close.Font = Enum.Font.GothamBold
Close.Text = "Exit"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 24.000
Close.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Close

UITextSizeConstraint.Parent = Close
UITextSizeConstraint.MaxTextSize = 24

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = UpdateLog

divider_2.Name = "divider"
divider_2.Parent = UpdateLog
divider_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
divider_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
divider_2.BorderSizePixel = 0
divider_2.Position = UDim2.new(0, 0, 0.109442212, 0)
divider_2.Size = UDim2.new(1, 0, 0, 1)

Updates.Name = "Updates"
Updates.Parent = UpdateLog
Updates.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Updates.BackgroundTransparency = 1.000
Updates.BorderColor3 = Color3.fromRGB(0, 0, 0)
Updates.BorderSizePixel = 0
Updates.Position = UDim2.new(0.0186309107, 0, 0.0180586912, 0)
Updates.Size = UDim2.new(0.957894862, 0, 0.0740995482, 0)
Updates.Font = Enum.Font.GothamBold
Updates.Text = "Update logs"
Updates.TextColor3 = Color3.fromRGB(255, 255, 255)
Updates.TextScaled = true
Updates.TextSize = 24.000
Updates.TextWrapped = true

UITextSizeConstraint_2.Parent = Updates
UITextSizeConstraint_2.MaxTextSize = 24

OPENETRUIA.Name = "OPENETRUIA"
OPENETRUIA.Parent = installmain
OPENETRUIA.AnchorPoint = Vector2.new(0.5, 0.5)
OPENETRUIA.BackgroundColor3 = Color3.fromRGB(109, 5, 6)
OPENETRUIA.BorderColor3 = Color3.fromRGB(0, 0, 0)
OPENETRUIA.BorderSizePixel = 0
OPENETRUIA.Position = UDim2.new(0.0335003138, 0, 0.938970268, 0)
OPENETRUIA.Size = UDim2.new(0.0469630547, 0, 0.0841975212, 0)
OPENETRUIA.AutoButtonColor = false
OPENETRUIA.Image = "http://www.roblox.com/asset/?id=16683186578"
OPENETRUIA.ScaleType = Enum.ScaleType.Fit
OPENETRUIA.Visible = true

UIAspectRatioConstraint.Parent = OPENETRUIA
UIAspectRatioConstraint.AspectRatio = 0.992

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = OPENETRUIA

MainFrame.Name = "MainFrame"
MainFrame.Parent = installmain
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(41, 43, 41)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.478639811, 0, 0.458797306, 0)
MainFrame.Visible = false
MainFrame.ZIndex = 100

copytut.Name = "copytut"
copytut.Parent = MainFrame
copytut.Active = false
copytut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
copytut.BackgroundTransparency = 1.000
copytut.BorderColor3 = Color3.fromRGB(0, 0, 0)
copytut.BorderSizePixel = 0
copytut.Position = UDim2.new(0.014000372, 0, 0.276267469, 0)
copytut.Selectable = false
copytut.Size = UDim2.new(0.0339999981, 0, 0.0560000017, 0)
copytut.Image = "rbxassetid://16674567989"

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = MainFrame

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.737444937, 0, 0.205539361, 0)
Credits.Size = UDim2.new(0.251101315, 0, 0.771136999, 0)

uidevs.Name = "uidevs"
uidevs.Parent = Credits
uidevs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uidevs.BackgroundTransparency = 1.000
uidevs.BorderColor3 = Color3.fromRGB(0, 0, 0)
uidevs.BorderSizePixel = 0
uidevs.Position = UDim2.new(0.0421051122, 0, 0.00121461926, 0)
uidevs.Size = UDim2.new(0.915789306, 0, 0.0697375834, 0)
uidevs.Font = Enum.Font.GothamBold
uidevs.Text = "UI DEVELOPERS"
uidevs.TextColor3 = Color3.fromRGB(255, 255, 255)
uidevs.TextScaled = true
uidevs.TextSize = 24.000
uidevs.TextWrapped = true

UITextSizeConstraint_3.Parent = uidevs
UITextSizeConstraint_3.MaxTextSize = 24

UICorner_5.CornerRadius = UDim.new(0.0299999993, 0)
UICorner_5.Parent = Credits

ScrollingFrame.Parent = Credits
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.042105265, 0, 0.0945179611, 0)
ScrollingFrame.Size = UDim2.new(0.915789485, 0, 0.879016995, 0)
ScrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

dev1.Name = "dev1"
dev1.Parent = ScrollingFrame
dev1.BackgroundColor3 = Color3.fromRGB(87, 20, 255)
dev1.BackgroundTransparency = 1.000
dev1.BorderColor3 = Color3.fromRGB(0, 0, 0)
dev1.BorderSizePixel = 0
dev1.Position = UDim2.new(0, 0, 0.358074993, 0)
dev1.Size = UDim2.new(1, 0, 0.0815366954, 0)
dev1.Font = Enum.Font.GothamBold
dev1.Text = "dremiexploits"
dev1.TextColor3 = Color3.fromRGB(212, 0, 4)
dev1.TextScaled = true
dev1.TextSize = 21.000
dev1.TextWrapped = true

UITextSizeConstraint_4.Parent = dev1
UITextSizeConstraint_4.MaxTextSize = 21

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

dev2.Name = "dev2"
dev2.Parent = ScrollingFrame
dev2.BackgroundColor3 = Color3.fromRGB(87, 20, 255)
dev2.BackgroundTransparency = 1.000
dev2.BorderColor3 = Color3.fromRGB(0, 0, 0)
dev2.BorderSizePixel = 0
dev2.Position = UDim2.new(0, 0, 0.358074993, 0)
dev2.Size = UDim2.new(1, 0, 0.0815366954, 0)
dev2.Font = Enum.Font.GothamBold
dev2.Text = "sammz"
dev2.TextColor3 = Color3.fromRGB(212, 4, 8)
dev2.TextScaled = true
dev2.TextSize = 21.000
dev2.TextWrapped = true

UITextSizeConstraint_5.Parent = dev2
UITextSizeConstraint_5.MaxTextSize = 21

dev3.Name = "dev3"
dev3.Parent = ScrollingFrame
dev3.BackgroundColor3 = Color3.fromRGB(87, 20, 255)
dev3.BackgroundTransparency = 1.000
dev3.BorderColor3 = Color3.fromRGB(0, 0, 0)
dev3.BorderSizePixel = 0
dev3.Position = UDim2.new(0, 0, 0.358074993, 0)
dev3.Size = UDim2.new(1, 0, 0.0815366954, 0)
dev3.Font = Enum.Font.GothamBold
dev3.Text = "icerock6"
dev3.TextColor3 = Color3.fromRGB(212, 4, 8)
dev3.TextScaled = true
dev3.TextSize = 21.000
dev3.TextWrapped = true

UITextSizeConstraint_6.Parent = dev3
UITextSizeConstraint_6.MaxTextSize = 21

Color2.Name = "Color2"
Color2.Parent = MainFrame
Color2.BackgroundColor3 = Color3.fromRGB(37, 7, 108)
Color2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Color2.BorderSizePixel = 0
Color2.Position = UDim2.new(0, 0, 0.185131192, 0)
Color2.Size = UDim2.new(1, 0, 0.002915452, 0)

UnfortunatelyAtutorial.Name = "UnfortunatelyAtutorial"
UnfortunatelyAtutorial.Parent = MainFrame
UnfortunatelyAtutorial.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnfortunatelyAtutorial.BackgroundTransparency = 1.000
UnfortunatelyAtutorial.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnfortunatelyAtutorial.BorderSizePixel = 0
UnfortunatelyAtutorial.Position = UDim2.new(0.0136025958, 0, 0.20890303, 0)
UnfortunatelyAtutorial.Size = UDim2.new(0.621609747, 0, 0.0525323115, 0)
UnfortunatelyAtutorial.Font = Enum.Font.GothamBold
UnfortunatelyAtutorial.Text = "https://www.youtube.com/watch?v=Jy9HIyK3noo"
UnfortunatelyAtutorial.TextColor3 = Color3.fromRGB(239, 239, 239)
UnfortunatelyAtutorial.TextScaled = true
UnfortunatelyAtutorial.TextSize = 18.000
UnfortunatelyAtutorial.TextWrapped = true
UnfortunatelyAtutorial.TextXAlignment = Enum.TextXAlignment.Left
UnfortunatelyAtutorial.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_7.Parent = UnfortunatelyAtutorial
UITextSizeConstraint_7.MaxTextSize = 18

UIAspectRatioConstraint_2.Parent = MainFrame
UIAspectRatioConstraint_2.AspectRatio = 1.655

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0795294493, 0, 0.0581903458, 0)
Title.Size = UDim2.new(0.4123348, 0, 0.0728862956, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "ruia Installer"
Title.TextColor3 = Color3.fromRGB(229, 229, 229)
Title.TextScaled = true
Title.TextSize = 45.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_8.Parent = Title
UITextSizeConstraint_8.MaxTextSize = 45

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(238, 0, 4)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(136, 12, 35))}
UIGradient.Rotation = 90
UIGradient.Parent = Title

Color1.Name = "Color1"
Color1.Parent = MainFrame
Color1.BackgroundColor3 = Color3.fromRGB(134, 1, 3)
Color1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Color1.BorderSizePixel = 0
Color1.Position = UDim2.new(0, 0, 0.18221575, 0)
Color1.Size = UDim2.new(1, 0, 0.002915452, 0)

DropShadowHolder_2.Name = "DropShadowHolder"
DropShadowHolder_2.Parent = MainFrame
DropShadowHolder_2.BackgroundTransparency = 1.000
DropShadowHolder_2.BorderSizePixel = 0
DropShadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder_2.ZIndex = 0

DropShadow_2.Name = "DropShadow"
DropShadow_2.Parent = DropShadowHolder_2
DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow_2.BackgroundTransparency = 1.000
DropShadow_2.BorderSizePixel = 0
DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow_2.Size = UDim2.new(1, 47, 1, 47)
DropShadow_2.ZIndex = 0
DropShadow_2.Image = "rbxassetid://6015897843"
DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow_2.ImageTransparency = 0.500
DropShadow_2.ScaleType = Enum.ScaleType.Slice
DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

InstallButton.Name = "Install Button"
InstallButton.Parent = MainFrame
InstallButton.BackgroundColor3 = Color3.fromRGB(255, 8, 24)
InstallButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InstallButton.BorderSizePixel = 0
InstallButton.Position = UDim2.new(0.133497298, 0, 0.839805901, 0)
InstallButton.Size = UDim2.new(0.501715124, 0, 0.121359229, 0)
InstallButton.AutoButtonColor = false
InstallButton.Font = Enum.Font.GothamBold
InstallButton.Text = "Install"
InstallButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InstallButton.TextScaled = true
InstallButton.TextSize = 28.000
InstallButton.TextWrapped = true

UITextSizeConstraint_9.Parent = InstallButton
UITextSizeConstraint_9.MaxTextSize = 28

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = InstallButton

min.Name = "min"
min.Parent = MainFrame
min.Active = false
min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
min.BackgroundTransparency = 1.000
min.BorderColor3 = Color3.fromRGB(0, 0, 0)
min.BorderSizePixel = 0
min.Position = UDim2.new(0.833125591, 0, 0.069956772, 0)
min.Selectable = false
min.Size = UDim2.new(0.0340000018, 0, 0.0560000017, 0)
min.Image = "rbxassetid://16674087829"

updlog.Name = "updlog"
updlog.Parent = MainFrame
updlog.Active = false
updlog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
updlog.BackgroundTransparency = 1.000
updlog.BorderColor3 = Color3.fromRGB(0, 0, 0)
updlog.BorderSizePixel = 0
updlog.Position = UDim2.new(0.943354666, 0, 0.069956772, 0)
updlog.Selectable = false
updlog.Size = UDim2.new(0.0341535918, 0, 0.0559313931, 0)
updlog.Image = "rbxassetid://16674469922"

uidevs_2.Name = "uidevs"
uidevs_2.Parent = MainFrame
uidevs_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uidevs_2.BackgroundTransparency = 1.000
uidevs_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
uidevs_2.BorderSizePixel = 0
uidevs_2.Position = UDim2.new(0.580475688, 0, 1.01041353, 0)
uidevs_2.Size = UDim2.new(0.417086601, 0, 0.0452744961, 0)
uidevs_2.Font = Enum.Font.GothamBold
uidevs_2.Text = "@dremiexploits & @sammz - creating the ui"
uidevs_2.TextColor3 = Color3.fromRGB(255, 0, 4)
uidevs_2.TextScaled = true
uidevs_2.TextSize = 13.000
uidevs_2.TextWrapped = true

UITextSizeConstraint_10.Parent = uidevs_2
UITextSizeConstraint_10.MaxTextSize = 13

render.Name = "render"
render.Parent = MainFrame
render.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
render.BackgroundTransparency = 1.000
render.BorderColor3 = Color3.fromRGB(0, 0, 0)
render.BorderSizePixel = 0
render.Position = UDim2.new(-0.0011573782, 0, 0.998277605, 0)
render.Size = UDim2.new(0.397248298, 0, 0.0452744961, 0)
render.Font = Enum.Font.GothamBold
render.Text = "©2024 Render Intents | discord.gg/render"
render.TextColor3 = Color3.fromRGB(255, 0, 34)
render.TextScaled = true
render.TextSize = 13.000
render.TextWrapped = true

UITextSizeConstraint_11.Parent = render
UITextSizeConstraint_11.MaxTextSize = 13

max.Name = "max"
max.Parent = MainFrame
max.Active = false
max.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
max.BackgroundTransparency = 1.000
max.BorderColor3 = Color3.fromRGB(0, 0, 0)
max.BorderSizePixel = 0
max.Position = UDim2.new(0.772481859, 0, 0.069956772, 0)
max.Selectable = false
max.Size = UDim2.new(0.0341535918, 0, 0.0559313931, 0)
max.Image = "rbxassetid://16674079868"

close.Name = "close"
close.Parent = MainFrame
close.Active = false
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.89397186, 0, 0.069956772, 0)
close.Selectable = false
close.Size = UDim2.new(0.0341535918, 0, 0.0559313931, 0)
close.Image = "rbxassetid://16674069762"

Logo.Name = "Logo"
Logo.Parent = MainFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0140969167, 0, 0.0189504381, 0)
Logo.Size = UDim2.new(0.0881057233, 0, 0.145772591, 0)
Logo.Image = "http://www.roblox.com/asset/?id=16683186578"

Installer.Name = "Installer"
Installer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Installer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Installer.Enabled = true

rdy.Name = "rdy"
rdy.Parent = Installer
rdy.AnchorPoint = Vector2.new(0.5, 0.5)
rdy.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
rdy.BorderColor3 = Color3.fromRGB(0, 0, 0)
rdy.BorderSizePixel = 0
rdy.ClipsDescendants = true
rdy.Position = UDim2.new(0.493918329, 0, 0.498971194, 0)
rdy.Size = UDim2.new(0, 410, 0, 173)
rdy.Visible = false

UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = rdy

InsideFrame.Name = "InsideFrame"
InsideFrame.Parent = rdy
InsideFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
InsideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
InsideFrame.BorderSizePixel = 0
InsideFrame.Position = UDim2.new(0.00243309001, 0, 0.664579511, 0)
InsideFrame.Size = UDim2.new(0, 410, 0, 57)

UICorner_8.CornerRadius = UDim.new(0, 12)
UICorner_8.Parent = InsideFrame

FixCorner.Name = "FixCorner"
FixCorner.Parent = InsideFrame
FixCorner.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
FixCorner.BorderColor3 = Color3.fromRGB(0, 0, 0)
FixCorner.BorderSizePixel = 0
FixCorner.Size = UDim2.new(0, 446, 0, 9)

CancelButton.Name = "CancelButton"
CancelButton.Parent = InsideFrame
CancelButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CancelButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CancelButton.BorderSizePixel = 0
CancelButton.Position = UDim2.new(0.35828501, 0, 0.203007743, 0)
CancelButton.Size = UDim2.new(0, 115, 0, 32)
CancelButton.Font = Enum.Font.Gotham
CancelButton.Text = "Cancel"
CancelButton.TextColor3 = Color3.fromRGB(230, 230, 230)
CancelButton.TextSize = 17.000

UICorner_9.CornerRadius = UDim.new(0, 6)
UICorner_9.Parent = CancelButton

TextButtonBG.Name = "TextButtonBG"
TextButtonBG.Parent = InsideFrame
TextButtonBG.Active = true
TextButtonBG.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextButtonBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButtonBG.BorderSizePixel = 0
TextButtonBG.Position = UDim2.new(0.356975585, 0, 0.184912428, 0)
TextButtonBG.Selectable = true
TextButtonBG.Size = UDim2.new(0, 117, 0, 34)
TextButtonBG.ZIndex = 0

UICorner_10.CornerRadius = UDim.new(0, 6)
UICorner_10.Parent = TextButtonBG

WindowTitle.Name = "WindowTitle"
WindowTitle.Parent = rdy
WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WindowTitle.BackgroundTransparency = 1.000
WindowTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
WindowTitle.BorderSizePixel = 0
WindowTitle.Position = UDim2.new(0.258317739, 0, 0.0415880494, 0)
WindowTitle.Size = UDim2.new(0, 196, 0, 21)
WindowTitle.Font = Enum.Font.Gotham
WindowTitle.Text = "Etruia Installer"
WindowTitle.TextColor3 = Color3.fromRGB(230, 230, 230)
WindowTitle.TextSize = 19.000

WindowTitle2.Name = "WindowTitle2"
WindowTitle2.Parent = rdy
WindowTitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WindowTitle2.BackgroundTransparency = 1.000
WindowTitle2.BorderColor3 = Color3.fromRGB(0, 0, 0)
WindowTitle2.BorderSizePixel = 0
WindowTitle2.Position = UDim2.new(0.00243306975, 0, 0.247885644, 0)
WindowTitle2.Size = UDim2.new(0, 409, 0, 21)
WindowTitle2.Font = Enum.Font.Gotham
WindowTitle2.Text = "Ready to Install?"
WindowTitle2.TextColor3 = Color3.fromRGB(230, 230, 230)
WindowTitle2.TextSize = 19.000
WindowTitle2.TextScaled = true

InstallProgress.Name = "InstallProgress"
InstallProgress.Parent = rdy
InstallProgress.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
InstallProgress.BorderColor3 = Color3.fromRGB(0, 0, 0)
InstallProgress.BorderSizePixel = 0
InstallProgress.Position = UDim2.new(0.104199961, 0, 0.462640673, 0)
InstallProgress.Size = UDim2.new(0, 340, 0, 11)

UICorner_11.CornerRadius = UDim.new(1, 0)
UICorner_11.Parent = InstallProgress

Inner.Name = "Inner"
Inner.Parent = InstallProgress
Inner.BackgroundColor3 = Color3.fromRGB(245, 22, 44)
Inner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inner.BorderSizePixel = 0
Inner.Position = UDim2.new(-0.00103093288, 0, -0.0909090936, 0)
Inner.Size = UDim2.new(0, 0, 0, 12)

UICorner_12.CornerRadius = UDim.new(1, 0)
UICorner_12.Parent = Inner


-- scriptin install part

function changeText(txt)
	text = txt
end

function testExecutor() 
	if not isfile then
		lplr:Kick("Executor does not support isfile, use Fluxus or Delta.")
	end

	if not readfile then
		lplr:Kick("Executor does not support readfile, use Fluxus or Delta.")
	end

	if not makefolder then
		lplr:Kick("Executor does not support makefolder, use Fluxus or Delta.")
	end

	if not writefile then
		lplr:Kick("Executor does not support writefile, use Fluxus or Delta.")
	end

	if not delfile then
		lplr:Kick("Executor does not support delfile, use Fluxus or Delta")
	end
end

testExecutor()

function ResetProfiles()
    if not isfolder('vape/Profiles') then
        makefolder('vape/Profiles')
    else
        print("Render Profiles already installed.")
        delfolder('vape/Profiles')
        wait(.1)
        makefolder('vape/Profiles')
    end
end

local complete = false

function InstallProfiles()
    local File1 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/6872265039.vapeprofile.txt', Method ='GET'}).Body
    local File2 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/6872265039GUIPositions.vapeprofile.txt', Method = 'GET'}).Body
    local File3 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/6872265039Voidware%20PinkGUIPositions.vapeprofile.txt', Method = 'GET'}).Body
    local File4 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/6872274481.vapeprofile.txt', Method ='GET'}).Body
    local File5 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/6872274481.vapeprofiles.txt', Method ='GET'}).Body
    local File6 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/Voidware%20Pink6872265039.vapeprofile.txt', Method ='GET'}).Body
    local File7 = httprequest({Url = 'https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/updatefilenew/Voidware%20Pink6872274481.vapeprofile.txt', Method ='GET'}).Body
    
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File1)
    changeText("Writing vape/Profiles/6872265039.vapeprofile.txt")

    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    changeText("Writing vape/Profiles/6872265039GUIPositions.vapeprofile.txt")

    writefile('vape/Profiles/6872265039Voidware PinkGUIPositions.vapeprofile.txt', File3)
    changeText("Writing vape/Profiles/6872265039Voidware PinkGUIPositions.vapeprofile.txt")

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File4)
    changeText("Writing vape/Profiles/6872274481.vapeprofile.txt")

    writefile('vape/Profiles/6872274481.vapeprofiles.txt', File5)
    changeText("Writing vape/Profiles/6872274481.vapeprofiles.txt")

    writefile('vape/Profiles/Voidware Pink6872265039.vapeprofile.txt', File6)
    changeText("Writing vape/Profiles/Voidware Pink6872265039.vapeprofile.txt")

    writefile('vape/Profiles/Voidware Pink6872274481.vapeprofile.txt', File7)
    changeText("Writing vape/Profiles/Voidware Pink6872274481.vapeprofile.txt")

    complete = true
      
    loadfile('vape/NewMainScript.lua')()
    changeText("Finished! [Press cancel!]")
end


local guiObject = installmain
local mf = MainFrame
local close = close
local min = min
local updlog = updlog
local install = InstallButton
local openetruia = OPENETRUIA
local copytut = copytut
local updlogclose = Close
local ui = rdy
local slidepart = Inner
local windowtitle = WindowTitle2
local cancel = CancelButton
local installing = false
local canceled = false

renderGuiVisible = true
updateLogGuiVisible = false
ui.Visible = false
local clickfuncs = {
	[1] = {
		obj = min,
		func = function()
			renderGuiVisible = not renderGuiVisible
			mf.Visible = renderGuiVisible
			OPENETRUIA = not renderGuiVisible
		end
	},

	[2] = {
		obj = close,
		func = function()
			Installer:Destroy()
			guiObject:Destroy()
		end
	},

	[3] = {
		obj = openetruia,
		func = function()
			renderGuiVisible = not renderGuiVisible
			mf.Visible = renderGuiVisible
			OPENETRUIA = true
		end
	},

	[4] = {
		obj = updlog,
		func = function()
			updateLogGuiVisible = not updateLogGuiVisible
			mf.Visible = not updateLogGuiVisible
			UpdateLog.Visible = updateLogGuiVisible
		end
	},

	[5] = {
		obj = copytut,
		func = function()
			if not studio then pcall(function() setclipboard("https://www.youtube.com/watch?v=Jy9HIyK3noo") end) else warn("Could not do setclipboard()\nScript ran in studio.") end
		end
	},

	[6] = {
		obj = updlogclose,
		func = function()
			updateLogGuiVisible = not updateLogGuiVisible
			mf.Visible = not updateLogGuiVisible
			UpdateLog.Visible = updateLogGuiVisible
		end
	},


	[7] = {
		obj = install,
		func = function()
			ui.Visible = true
			mf.Visible = false
			installing = true
			if canceled then
				canceled = false
				installing = true
				slidepart.Size = UDim2.new(0,0,0,12)
				installing = true
			end
			local startTick = tick()
			local m = 814.124

			if installing and not canceled then
				for i = 0, m do
					i += 1
					slidepart.Size = UDim2.new(i / m, 0, 1, 0)
					windowtitle.Text = "Installing (".. math.round((i / m) * 100) .. "%) Name: (" .. text .. ")"
                    InstallProfiles()
					wait()
					if canceled then
						wait(3)
						ui.Visible = false
						mf.Visible = true
						installing = false
						print("Canceled.")
						return
					end
				end
			end
			local endTick = tick() - startTick
			print(endTick)
			print(text)
		end,
	},

	[8] = {
		obj = cancel,
		func = function()
			ui.Visible = false
			mf.Visible = true
			canceled = true
		end,
	}
}

for i, v in clickfuncs do
	v.obj.MouseButton1Click:Connect(v.func)
end	

function colorhehehaha(obj, nw)
	game:GetService("TweenService"):Create((obj), TweenInfo.new(0.3, Enum.EasingStyle.Quart), {BackgroundColor3 = nw}):Play()
end

install.MouseEnter:Connect(function()
	colorhehehaha(install, Color3.fromRGB(189, 1, 10))
end)

install.MouseLeave:Connect(function()
	colorhehehaha(install, Color3.fromRGB(255, 8, 24))
end)

wait(1)
print("Etruia loader has loaded!")
---------------------------------
