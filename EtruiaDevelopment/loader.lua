-- Sail100, newloader.lua
-- Currently, BETA Loader

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installion UI is loading.."})
local lplr = game.Players.LocalPlayer
local arceus = false
local tweenService = game:GetService('TweenService')
local httpService = game:GetService('HttpService')
local old = false
local executor = (identifyexecutor or getexecutorname or function() return 'your executor' end)()
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 
if shared == nil then -- delta is literal garbage looool
    getgenv().shared = {}
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

if executor == 'Delta' then 
			pcall(function() lplr:Kick("Etruia's Installer isn't supported with: ' ..exexecutor.. ' check back later.')
		return
end

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
    local File1 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/Updatev.2.1/6872265039GUIPositions.vapeprofile.txt")
    local File2 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/Updatev.2.1/6872265039Render_BlurpleGUIPositions.vapeprofile.txt")
    local File3 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/Updatev.2.1/6872274481.vapeprofiles.txt")
    local File4 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/Updatev.2.1/Render_Blurple6872265039.vapeprofile.txt")
    local File5 = game:HttpGet("https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/etruiav2/Updatev.2.1/Render_Blurple6872274481.vapeprofile.txt")

    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', File1)
    writefile('vape/Profiles/6872265039Render_BlurpleGUIPositions.vapeprofile.txt', File2)
    writefile('vape/Profiles/6872274481.vapeprofiles.txt', File3)
    writefile('vape/Profiles/Render_Blurple6872265039.vapeprofile.txt', File4)
    writefile('vape/Profiles/Render_Blurple6872274481.vapeprofile.txt', File5)
end


function install() -- Installs ETRUIA v2.1
    print("Installing Etruia V2.1.")
    wait(.5)
    notify("Installer", "Starting Install of Etruia. (v2.1)")
    ResetProfiles()
    wait(1.1)
    notify("Installer", "Deleted your Profiles Folder. Writing Profiles..")
    InstallProfiles()
    notify("Installer", "Sucessfully installed Etruia.")
end

--[[function testInstaller()
    ResetProfiles()
    wait(.1)
    notify("Test Uninstaller", "Attempting to fetch profiles. (If there isn't any notification soon after this, reinstall render)")
    local pd = {}
    local profilesReset
    local profiles = httpService:JSONDecode(httprequest({Url = 'https://api.github.com/repos/SystemXVoid/Render/contents/Libraries/'..(old and 'arceusxmoment' or 'Profiles')}).Body)
	for i,v in next, profiletab do 
        assert(v.name, 'no name found lol')
        table.insert(profiledata, v.name) 
    end
    profilesReset = true
    task.wait(0.5)
    notify("Test Uninstaller", "Fetched.")

	repeat task.wait() until profilesReset 

    notify("Test Uninstaller", "Attempting to install profiles (If there isn't any notification soon after this, reinstall render).")
    local p = {}
    for i,v in next, pd do
        local contents = httprequest({Url = 'https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/'..(old and 'arceusxmoment' or 'Profiles')..'/'..v}).Body
        if v:find('vapeprofiles') then
            if v:find('vapeprofiles') and isfile('vape/Profiles/'..v) then 
                local onlinedata = httpService:JSONDecode(contents)
                local localdata = httpService:JSONDecode(readfile('vape/Profiles/'..v))
                local default = true
                for i2, v2 in next, onlinedata do 
                    if localdata[i2] == nil or v2.Selected then 
                        if not default then 
                            default = (v2.Selected ~= true) 
                        end
                        localdata[i2] = {Selected = v2.Selected or localdata[i2].Selected, Keybind = v2.Keybind == '' and localdata[i2].Keybind or v2.Keybind}
                    end
                end
                localdata.default = (localdata.default or {Selected = default, Keybind = ''})
                localdata.default.Selected = default
                writefile('vape/Profiles/'..v, httpService:JSONEncode(localdata)) 
            else
                writefile('vape/Profiles/' ..v, contents)
    end
    notify("Test Uninstaller", "Sucessfully uninstalled. Check if Etruia was uninstalled.")
end--]]

function uninstall() -- Installs ETRUIA v2.1
   lplr:Kick("No uninstall method yet. Reinstall Render.")
end
-- UI 

function CreateUI()
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


    section("Disclaimer", ETab, "Due to the rewrite on 2/3/2024, Etruia's past verisons have been removed.")

    
    ETab:AddButton({
    	Name = "Install Etruia",
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
    section("UUTabUpd7", UUTab, "2/3/24 | - Rewriten Etruia Installer")	
    UUTab:AddLabel("More updates coming soon!")
end
CreateUI()
