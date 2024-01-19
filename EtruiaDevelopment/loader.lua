-- Sail100, loader.lua

-- THIS SCRIPT WILL BE FOR DEVELOPMENT AND OTHER PURPOSES.  EXPECT THIS NOT TO WORK SOMETIMES.

print("loader")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installion UI is loading.."})
local lplr = game.Players.LocalPlayer
    
local function notify(name, text, time)
     OrionLib:MakeNotification({
	Name = name,
	Content = text,
	Image = "rbxassetid://4483345998",
	Time = time,
})
end

function section(sectionname, tab, text)
    local sectionname = tab:AddSection({
	Name = text
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


-- UI 

local MTab = Window:MakeTab({
	Name = " Main Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



section("StatsS01", MTab, "Welcome to Etruia's Installer.")
section("StatsS02", MTab, "Here, you install Etruia.")
section("StatsS03", MTab, "If you need help, look at the Tutorial Tab.")
section("StatsS", MTab, "Stats:")
section("StatsS1", MTab, "Username: " ..lplr.Name)
section("StatsS2", MTab, "ID: " ..lplr.UserId)
section("StatsS3", MTab, "Game Name: " ..game.Name)
section("StatsS4", MTab, "Game ID: "..game.PlaceId)

local TTab = Window:MakeTab({
	Name = "Tutorial",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


section("TTabS1", TTab, "**MAKE SURE YOU HAVE RENDER INSTALLED WITH PROFILES**")
section("TTabS2", TTab, "To install Etruia, first go into the tab called: 'Install Etruia' ")
section("TTabS3", TTab, "After, select the verison you want.")
section("TTabS4", TTab, "Wait for it to finish installing and its done. Its that simple.")

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

local ETabS = ETab:AddSection({
	Name = "Installation of update [UNKNOWN]"
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

local UUTab = Window:MakeTab({
	Name = "Updates",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


section("UUTabUpd1", UUTab, "1-16-24 | - Created github.")
section("UUTabUpd2", UUTab, "1-17-24 | - Added V2 Installion")
section("UUTabUpd3", UUTab, "1-18-24 | - Added V2.0.1 Installation")
section("UUTabUpd4", UUTab, "1/19/24 | - Added Tabs [ Main Tab, Tutorial Tab, and Updates Tab. ] ")
section("UUTabUpd5", UUTab, "1/19/24 | - Updated Installer ")
UUTab:AddLabel("More updates coming soon!")
