-- Sail100

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installion UI is loading.."})




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
    local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/guiPos.txt")
    local profile = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/profiles.txt")
    
    wait(.5)
    
    -- notification
    
    print('Installing..')
    
    delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
    delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')
    
    wait(.5)
   
    OrionLib:MakeNotification({
	Name = "Installion",
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
    print('Writing Profiles + GUIPostions')
    
    OrionLib:MakeNotification({
	Name = "Installation",
	Content = "Sucessfully installed Etruia!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

  
    wait(.5)
      
      
  	end    
})

UTab:AddButton({
	Name = "Remove V2",
	Callback = function()
      		print("button pressed")
    local GUIPostions = game:HttpGet("https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
    local profile = game:HttpGet("https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/Profiles/Render_Blurple6872265039.vapeprofile.txt")
   
    wait(.5)
    
    -- notification
    
    print('Uninstalling..')
    
    delfile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt')
    delfile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt')
    
    wait(3)
   
OrionLib:MakeNotification({
	Name = "Installion",
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

