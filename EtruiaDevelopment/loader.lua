local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installation is loading.."})
local lplr = game.Players.LocalPlayer
local httpService = game:GetService('HttpService')
local executor = (identifyexecutor or getexecutorname or function() return 'your executor' end)()
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 
local VERISON = 'Installer Verison: v.1.3, Etruia lastest update: V2.30'
print(VERISON)

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
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872265039Voidware PinkGUIPositions.vapeprofile.txt', File3)
    writefile('vape/Profiles/6872274481.vapeprofile.txt', File4)
    writefile('vape/Profiles/6872274481.vapeprofiles.txt', File5)
    writefile('vape/Profiles/Voidware Pink6872265039.vapeprofile.txt', File6)
    writefile('vape/Profiles/Voidware Pink6872274481.vapeprofile.txt', File7)
      
      complete = true
      
      loadfile('vape/NewMainScript.lua')()
end

function install() 
    print("Installing Etruia V2.30")
    wait(.5)
    notify("Installer", "Starting Install of Etruia. (v2.30)")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles()
    notify("Installer", "Sucessfully installed Etruia. Enjoy!")
end

function uninstall() 
   lplr:Kick("No uninstall method yet. Reinstall Render.")
end

-- UI 

local MTab = Window:MakeTab({
    Name = "Main Tab",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
    
section("StatsS01", MTab, "Welcome to Etruia's new Installer.")
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
Name = "Install Etruia [Etruia V2.30],
	 Callback = function()
          install()
  	end    
 })
    
UTab:AddButton({
Name = "Remove Etruia",
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
section("UUTabUpd8", UUTab, "2/3/24 | - Rewriten Etruia Installer")	
section("UUTabUpd9", UUTab, "2-6-24 | Remake Etruia.")
section("UUTabUpd10", UUTab, "3-5-24 | Remade Etruia, deprecated main loader.")
UUTab:AddLabel("More updates coming soon!")
OrionLib:Init()
