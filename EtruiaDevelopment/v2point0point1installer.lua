-- Etruia Installiton

print("loader")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local function notify(name, text, time)
OrionLib:MakeNotification({
   Name = name,
   Content = text,
   Image = "rbxassetid://4483345998",
   Time = time,
})
end

function test() 
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

test()

local installui = Instance.new("ScreenGui")
local InstallMain = Instance.new("Frame")
local Cornor = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local Cornor_2 = Instance.new("UICorner")
local TTL = Instance.new("TextLabel")
local Install = Instance.new("TextButton")

local Cornor_3 = Instance.new("UICorner")
local VER = Instance.new("TextLabel")
local MainLoading = Instance.new("Frame")
local Icon_2 = Instance.new("ImageLabel")
local Cornor_4 = Instance.new("UICorner")
local TTL_2 = Instance.new("TextLabel")
local VER_2 = Instance.new("TextLabel")
local progress = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Cornor_5 = Instance.new("UICorner")
local CloseUIS = Instance.new("TextButton")
local Cornor_6 = Instance.new("UICorner")
local Close10 = Instance.new("TextButton")
local Cornor_10 = Instance.new("UICorner")

	installui.Name = tostring(math.random())
	installui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	installui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	InstallMain.Name = "InstallMain"
	InstallMain.Parent = installui
	InstallMain.AnchorPoint = Vector2.new(0.5, 0.5)
	InstallMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	InstallMain.BackgroundTransparency = 0.300
	InstallMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
	InstallMain.BorderSizePixel = 0
	InstallMain.Position = UDim2.new(0.499547511, 0, 0.49999994, 0)
	InstallMain.Size = UDim2.new(0, 366, 0, 166)
	InstallMain.Visible = true

	Cornor.CornerRadius = UDim.new(0, 9)
	Cornor.Name = "Cornor"
	Cornor.Parent = InstallMain

	Icon.Name = "Icon"
	Icon.Parent = InstallMain
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Size = UDim2.new(0, 78, 0, 77)
	Icon.Image = "rbxassetid://16054689262"

	Cornor_2.CornerRadius = UDim.new(0, 5)
	Cornor_2.Name = "Cornor"
	Cornor_2.Parent = Icon

	TTL.Name = "TTL"
	TTL.Parent = InstallMain
	TTL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TTL.BackgroundTransparency = 1.000
	TTL.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TTL.BorderSizePixel = 0
	TTL.Position = UDim2.new(0.27868852, 0, 0.0783132538, 0)
	TTL.Size = UDim2.new(0, 200, 0, 50)
	TTL.Font = Enum.Font.Ubuntu
	TTL.Text = "Install Etruia"
	TTL.TextColor3 = Color3.fromRGB(255, 255, 255)
	TTL.TextSize = 20.000

	Install.Name = "Install"
	Install.Parent = InstallMain
	Install.BackgroundColor3 = Color3.fromRGB(67, 194, 47)
	Install.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Install.BorderSizePixel = 0
	Install.Position = UDim2.new(0.336065561, 0, 0.722891569, 0)
	Install.Size = UDim2.new(0, 157, 0, 32)
	Install.Font = Enum.Font.GothamBold
	Install.Text = "Install"
	Install.TextColor3 = Color3.fromRGB(255, 255, 255)
	Install.TextSize = 30.000
	Install.TextWrapped = true


	Close10.Name = "Close"
	Close10.Parent = InstallMain
	Close10.BackgroundColor3 = Color3.fromRGB(67, 194, 47)
	Close10.BackgroundTransparency = 1.000
	Close10.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close10.BorderSizePixel = 0
	Close10.Position = UDim2.new(0.825136602, 0, 0, 0)
	Close10.Size = UDim2.new(0, 70, 0, 33)
	Close10.Font = Enum.Font.GothamBold
	Close10.Text = "X"
	Close10.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close10.TextSize = 14.000
	Close10.TextWrapped = true

	Cornor_10.CornerRadius = UDim.new(0, 5)
	Cornor_10.Name = "Cornor"
	Cornor_10.Parent = Close

	

	Cornor_4.CornerRadius = UDim.new(0, 5)
	Cornor_4.Name = "Cornor"
	Cornor_4.Parent = Install

	VER.Name = "VER"
	VER.Parent = InstallMain
	VER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VER.BackgroundTransparency = 1.000
	VER.BorderColor3 = Color3.fromRGB(0, 0, 0)
	VER.BorderSizePixel = 0
	VER.Position = UDim2.new(0.0109289614, 0, 0.915662646, 0)
	VER.Size = UDim2.new(0, 74, 0, 12)
	VER.Font = Enum.Font.Ubuntu
	VER.Text = ""
	VER.TextColor3 = Color3.fromRGB(255, 255, 255)
	VER.TextSize = 14.000



	MainLoading.Name = "MainLoading"
	MainLoading.Parent = installui
	MainLoading.AnchorPoint = Vector2.new(0.5, 0.5)
	MainLoading.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainLoading.BackgroundTransparency = 0.400
	MainLoading.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainLoading.BorderSizePixel = 0
	MainLoading.Position = UDim2.new(0.499547511, 0, 0.5, 0)
	MainLoading.Size = UDim2.new(1, 0, 1, 0)
	MainLoading.Visible = false

	Icon_2.Name = "Icon"
	Icon_2.Parent = MainLoading
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.00633484172, 0, 0, 0)
	Icon_2.Size = UDim2.new(0, 221, 0, 216)
	Icon_2.Image = "rbxassetid://16054689262"

	Cornor_4.CornerRadius = UDim.new(0, 5)
	Cornor_4.Name = "Cornor"
	Cornor_4.Parent = Icon_2

	TTL_2.Name = "TTL"
	TTL_2.Parent = MainLoading
	TTL_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TTL_2.BackgroundTransparency = 1.000
	TTL_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TTL_2.BorderSizePixel = 0
	TTL_2.Position = UDim2.new(0.219864979, 0, 0.0561289601, 0)
	TTL_2.Size = UDim2.new(0, 619, 0, 74)
	TTL_2.Font = Enum.Font.Ubuntu
	TTL_2.Text = "Installing Etruia.."
	TTL_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TTL_2.TextSize = 30.000
	TTL_2.TextWrapped = true

	VER_2.Name = ""
	VER_2.Parent = MainLoading
	VER_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VER_2.BackgroundTransparency = 1.000
	VER_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	VER_2.BorderSizePixel = 0
	VER_2.Position = UDim2.new(0.00640407577, 0, 0.963444233, 0)
	VER_2.Size = UDim2.new(0, 74, 0, 12)
	VER_2.Font = Enum.Font.Ubuntu
	VER_2.Text = "v.2.01"
	VER_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	VER_2.TextSize = 14.000

	progress.Name = "progress"
	progress.Parent = MainLoading
	progress.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	progress.BackgroundTransparency = 1.000
	progress.BorderColor3 = Color3.fromRGB(0, 0, 0)
	progress.BorderSizePixel = 0
	progress.Position = UDim2.new(0.20629032, 0, 0.489576072, 0)
	progress.Size = UDim2.new(0, 619, 0, 74)
	progress.Font = Enum.Font.Ubuntu
	progress.Text = "Starting install.."
	progress.TextColor3 = Color3.fromRGB(255, 255, 255)
	progress.TextSize = 30.000
	progress.TextWrapped = true

	Close.Name = "Close"
	Close.Parent = MainLoading
	Close.BackgroundColor3 = Color3.fromRGB(161, 20, 30)
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.765929818, 0, 0.0556560941, 0)
	Close.Size = UDim2.new(0, 157, 0, 32)
	Close.Font = Enum.Font.GothamBold
	Close.Text = "Close"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextSize = 30.000
	Close.TextWrapped = true

	Cornor_5.CornerRadius = UDim.new(0, 5)
	Cornor_5.Name = "Cornor"
	Cornor_5.Parent = Close

	CloseUIS.Name = "CloseUIS"
	CloseUIS.Parent = MainLoading
	CloseUIS.BackgroundColor3 = Color3.fromRGB(161, 20, 30)
	CloseUIS.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseUIS.BorderSizePixel = 0
	CloseUIS.Position = UDim2.new(0.765929818, 0, 0.127328455, 0)
	CloseUIS.Size = UDim2.new(0, 228, 0, 32)
	CloseUIS.Font = Enum.Font.GothamBold
	CloseUIS.Text = "Close All UIS"
	CloseUIS.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseUIS.TextSize = 30.000
	CloseUIS.TextWrapped = true

	Cornor_6.CornerRadius = UDim.new(0, 5)
	Cornor_6.Name = "Cornor"
	Cornor_6.Parent = CloseUIS



    function InstallV21()
        wait(3)
        notify("Installiton of V2.0.1", "Installing...", 4)
    
        local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
        local profile = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/Render_Blurple6872274481.vapeprofile.txt")
        local profile2 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/Render_Blurple6872265039.vapeprofile.txt")
    
        wait(1)
    
        print("[INSTALLING] Deleting profiles...")
    
      delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')
        task.wait(1)
        updateProgress("Deleted: vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
        wait(1)    
        delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
        task.wait(0.1)
        updateProgress("Deleted: vape/Profiles/Render_Blurple6872274481.vapeprofile.txt")
        wait(1)
        delfile('vape/Profiles/Render_Blurple6872265039.vapeprofile.txt')
        task.wait(0.1)
        updateProgress("Deleted: vape/Profiles/Render_Blurple6872265039.vapeprofile.txt")
        wait(1)
        notify("Installation of V2.0.1", "Writing Files...", 4)
	      print("[INSTALLING] Writing profiles...")
        writefile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt', GUIPostions)
        task.wait(1)
        updateProgress("Writen: vape/Profiles/vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
        wait(1)    
        writefile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt', profile)
        task.wait(0.1)
        updateProgress("Writen: vape/Profiles/Render_Blurple6872274481.vapeprofile.txt")
        wait(1)
        writefile('vape/Profiles/Render_Blurple6872265039.vapeprofile.txt', profile2)
        task.wait(0.1)
        updateProgress("Writen: vape/Profiles/Render_Blurple6872265039.vapeprofile.txt")
        wait(1)
	print("[INSTALLING] Finished!")
        updateProgress("Finished installation, you may CLOSE the UI.")
        notify("Installation", "Finished installation!", 4)
	wait(1)
	task.wait(10)
	updateProgress("")
    end 
function updateProgress(text)
	progress.Text = text
end

function updateVerison(VERISON)
	VER_2.Text = VERISON
	VER.Text = VERISON
end



Install.MouseButton1Click:Connect(function()
	MainLoading.Visible = true
	wait(3)
	InstallV21()
	
end)

Close.MouseButton1Click:Connect(function()
	MainLoading.Visible = false
	wait(1)
end)


CloseUIS.MouseButton1Click:Connect(function()
	MainLoading.Visible = false
	wait(1)
	InstallMain.Visible = false
end)

updateVerison("V0.0.1 UI")

