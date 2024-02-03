-- Sail100, prisminstaller.lua

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Prism Installation", HidePremium = false, IntroText = "Prism installion UI is loading.."})
local lplr = game.Players.LocalPlayer
local arceus = false


local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 


  
function notify(name, text)
  OrionLib:MakeNotification({
    Name = name,
   Content = text,
   Image = "rbxassetid://4483345998",
   Time = 6,
})
end

function section(sectionname, tab, text)
   local sectionname = tab:AddSection({
   Name = text
})
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


function InstallProfiles()
    local File1 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872274481.vapeprofile.txt")
    local File2 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872265039GUIPositions.vapeprofile.txt")
    local File3 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872265039.vapeprofile.txt")   

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
end


function install() -- Installs Prism 
    print("Installing Prism...")
    wait(.5)
    notify("Installer", "Starting Install of Prism")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles()
    notify("Installer", "Sucessfully installed Prism.")
end

function uninstall() 
   lplr:Kick("No uninstall method yet. Reinstall Render.")
end
-- UI 

function CreateUI()
    local MTab = Window:MakeTab({
    	Name = "Main Tab",
    	Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
    })


    section("StatsS01", MTab, "Welcome to Prism's Installer.")
    section("StatsS02", MTab, "Here, you install Prism.")
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
    section("TTabS2", TTab, "To install Prism, first go into the tab called: 'Install Prism' ")
    section("TTabS3", TTab, "Click on 'Install Prism' button inside the tab.")
    section("TTabS4", TTab, "Wait for it to finish installing and its done. Its that simple.")


    local ETab = Window:MakeTab({
	    Name = "Install Prism",
	    Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local UTab = Window:MakeTab({
	    Name = "Uninstall Prism",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    
    ETab:AddButton({
    	Name = "Install Prism",
	    Callback = function()
            install() 
  	    end    
    })
    
    UTab:AddButton({
    	Name = "Remove Prism",
	    Callback = function()
           uninstall()
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
    section("UUTabUpd6", UUTab, "1/30/24 | - Updated Profiles, Fixed Github formatting, removed some useless code.")
    section("UUTabUpd7", UUTab, "1/30/24 | - Updated Test Installer")	
    section("UUTabUpd7", UUTab, "2/3/24 | - Rewriten Etruia Installer")	
    UUTab:AddLabel("More updates coming soon!")
end

CreateUI()