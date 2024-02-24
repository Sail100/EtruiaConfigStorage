local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Prism Installation", HidePremium = false, IntroText = "Prism installion UI is loading.."})
local lplr = game.Players.LocalPlayer
local httpService = game:GetService('HttpService')
local old = false
local executor = (identifyexecutor or getexecutorname or function() return 'your executor' end)()
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
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
    notify("Install", "Installing V0 of Prism.")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/6872265039.vapeprofile.txt", Method = 'GET'}).Body

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
    notify("Install", "Successfully installed V0 of Prism.")
end

function InstallProfiles1()
   notify("Install", "Installing V1..")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update2/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url ="https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update2/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url ="https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update2/6872265039.vapeprofile.txt", Method = 'GET'}).Body

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
    
    notify("Install", "Sucessfully installed!")
end

function InstallProfiles2()
   notify("Install", "Installing V2..")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update3/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update3/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url ="https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/update3/6872265039.vapeprofile.txt", Method = 'GET'}).Body

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
    
    notify("Install", "Sucessfully installed!")
end

function installfake()
   notify("Install", "Installing [fake] Closet Config..")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/closetcheat/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/closetcheat/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/closetcheat/6872265039.vapeprofile.txt", Method = 'GET'}).Body 

    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
    
    notify("Install", "Successfully installed!")
end

function sw()
    notify("Install", "Installing skywars client...")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/skywars/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/skywars/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/skywars/6872265039.vapeprofile.txt", Method = 'GET'}).Body
 
    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
     
    notify("Install", "Successfully installed!")
end

function blue()
    notify("Install", "Installing Prism V4 Blue client...")
    local File1 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/prismblue/6872274481.vapeprofile.txt", Method = 'GET'}).Body
    local File2 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/prismblue/6872265039GUIPositions.vapeprofile.txt", Method = 'GET'}).Body
    local File3 = httprequest({Url = "https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/PrismInstaller/prismblue/6872265039.vapeprofile.txt", Method = 'GET'}).Body
 
    writefile('vape/Profiles/6872274481.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', File3)
     
    notify("Install", "Successfully installed!")
end

function install()
    wait(.5)
    notify("Installer", "Starting Install of Prism")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles()
end

function install1()
    print("Installing Prism V1")
    wait(.5)
    notify("Installer", "Starting Install of Prism")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles1()
end


function install2()
    print("Installing Prism V2")
    wait(.5)
    notify("Installer", "Starting Install of Prism")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles2()
end

function fakecloset()
    print("Installing [fake] Closet Config")
    wait(.5)
    notify("Installer", "Starting Install of [fake] Closet Cheat.")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    installfake()
end

function skywarsinstall()
    wait(.5)
    notify("Installer", "Starting Install of skywars client.")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    sw()
end

function blueinstall()
    wait(.5)
    notify("Installer", "Starting Install of Prism V4 Blue client.")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    blue()
end

function uninstall() 
   lplr:Kick("No uninstall method yet. Reinstall Render.")
end

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

ETab:AddButton({
    Name = "Install Prism Update 1",
	Callback = function()
        install1() 
  	end    
})

ETab:AddButton({
    Name = "Install Prism Update 2",
	Callback = function()
        install2() 
  	end    
})
    
ETab:AddButton({
    Name = "Install Prism Closet Cheating Client",
	Callback = function()
        fakecloset() 
  end    
})
     
ETab:AddButton({
    Name = "Install Prism Skywars Client",
	Callback = function()
        skywarsinstall() 
  end    
})
   
ETab:AddButton({
    Name = "Install Prism Blue Client",
	Callback = function()
        blueinstall() 
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


section("UUTabUpd1", UUTab, "2-3-24 | - Make Installer")
section("UUTabUpd2", UUTab, "2-4-24 | - Update log on Github!")
section("UUTabUpd3", UUTab, "2-9-24 | - Rewriten Code, fix, and new Installer Button!")
section("UUTabUpd3", UUTab, "2-24-24 | - Http error fix, 2 new clients, formatting.")
UUTab:AddLabel("More updates coming soon!")
