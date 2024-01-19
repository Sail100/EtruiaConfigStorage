-- Sail100, installer.lua

-- THIS SCRIPT WILL BE FOR DEVELOPMENT AND OTHER PURPOSES.  EXPECT THIS NOT TO WORK SOMETIMES.

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installion UI is loading.."})

local lplr = game.Players.LocalPlayer
local creation = 'CreatedFile'
    

local function notify(name, text, time)
     OrionLib:MakeNotification({
	Name = name,
	Content = text,
	Image = "rbxassetid://4483345998",
	Time = time,
})
end

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

local function install()
    local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/guiPos.txt")
    local profile = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/profiles.txt")
    
    wait(.5)
    
    
    
    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Installing...",
	Image = "rbxassetid://4483345998",
	Time = 3
})

task.wait(1)
    
    print('Installing..')
    
    delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
    delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')


    wait(.5)
   
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Deleted old profiles.",
	Image = "rbxassetid://4483345998",
	Time = 7
})
 
    
    print('Writing Files..')
    
    task.wait(1)
    
    writefile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt', profile)
    print('Writen Profile')
   wait(.5)
    writefile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt', GUIPostions)
    wait(.5)
    print('Writing Profiles + GUIPostions')
    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Sucessfully installed Etruia!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

  
    wait(.5)
end
local function installv2()
    local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
    local profile = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/Render_Blurple6872274481.vapeprofile.txt")
    local profile2 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/EtruiaV2Updatev2.0.1/Render_Blurple6872265039.vapeprofile.txt")
    
    wait(.5)
    
    
    
  
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Installing V2.0.1...",
	Image = "rbxassetid://4483345998",
	Time = 3
})

task.wait(1)
    
    print('Installing..')
    
    delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
    delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')
   


    wait(.5)
   
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Deleted old profiles.",
	Image = "rbxassetid://4483345998",
	Time = 7
})
 
    
    print('Writing Files..')
    
    task.wait(1)
    
    writefile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt', profile)
    print('Writen Profile')
   wait(.5)
    writefile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt', GUIPostions)
    wait(.5)
    writefile('vape/Profiles/Render_Blurple6872265039.vapeprofile.txt', profile2)
    print('Writing Profiles + GUIPostions')
    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Sucessfully installed Etruia update v.2.0.1!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

  
    wait(.5)
end

local ETab = Window:MakeTab({
	Name = "Install Etruia",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local UTab = Window:MakeTab({
	Name = "Uninstall Etruia",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ETab:AddButton({
	Name = "Install V2",
	Callback = function()
      	print("button pressed")
                       install() 
  	end    
})

local ETabS = ETab:AddSection({
	Name = "Installation of update v2.0.1"
})

ETab:AddButton({
	Name = "Install V2.0.1",
	Callback = function()
      	print("button pressed")
                       installv2()
  	end    
})


UTab:AddButton({
	Name = "Remove V2",
	Callback = function()
      		print("button pressed")
    local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
    local profile = game:HttpGet("https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/Profiles/Render_Blurple6872265039.vapeprofile.txt")
   
    wait(.5)
    

    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Uninstalling...",
	Image = "rbxassetid://4483345998",
	Time = 3
})
    
    print('Uninstalling..')
    
    delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
    delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')
    
    wait(3)
   
OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Deleted old profiles.",
	Image = "rbxassetid://4483345998",
	Time = 7
})
    print('Writing Files..')
    
    writefile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt', profile)
    print('Writen Profile')
   wait(.5)
    writefile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt', GUIPostions)
    wait(.5)
    print('Writen Profiles + GUIPostions')
    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Successfully uninstalled Etruia!",
	Image = "rbxassetid://4483345998",
	Time = 10
})
    
    wait(.5)
   
   
    
  	end    
})

