return(function(ria)
    local httpService = game:GetService('HttpService')
    local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
	local initiate
	local isfile = isfile or function(file)
		local success, filecontents = pcall(function() return readfile(file) end)
		return success and type(filecontents) == 'string'
	end 
    local lplr = game.Players.LocalPlayer
    ria = base64_decode(ria)
    if type(shared.GuiLibrary) == 'table' then
		pcall(shared.GuiLibrary.SelfDestruct or function() end)
	end
	
	for i,v in next, ({'vape', 'vape/assets', 'vape/Profiles', 'vape/Libraries', 'vape/CustomModules'}) do 
		if not isfolder(v) then 
			makefolder(v) 
		end 
	end
	
	for i,v in next, ({'vape/Render', 'vape/Render/Libraries'}) do 
		if not isfolder(v) then 
			makefolder(v) 
		end 
	end
	
	local core = {'Universal.lua', 'MainScript.lua', 'NewMainScript.lua', 'GuiLibrary.lua'}
	for i,v in next, listfiles('vape/CustomModules') do 
		if isfile(v) then 
			delfile(v) 
		end 
	end

	for i,v in next, core do 
		if isfile('vape/'..v) then 
			delfile('vape/'..v)
		end 
	end


    wait(3)

    print("Vailding RIA key.")

    wait(.4)

    if ria == 'RENDER-3a620fcf-f346-4edf-ae5e-f075ac420015' then 
        task.wait(9e9)
    end
    if ria == 'RENDER-1f766c1b-6f86-4901-937e-f396b1288365' then 
        progresstext.Text = 'nice leak sunlight :troll:'
        progresstext.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(9e9) 
    end
    local requested, userdata = pcall(function() return httpService:JSONDecode(httprequest({Url = 'https://api.renderintents.xyz/ria', Headers = {RIA = ria}}).Body) end)
    if requested then 
        if type(userdata) ~= 'table' or userdata.disabled then 
           lplr:Kick('The current RIA key is invalid/revoked. Try generating a new installer script from the discord.')
        end 
    else
        lplr:Kick('Failed to validate RIA from the api. Maybe try again later.')
       
    end
end

print("Writing files..")

wait(3)


local customs = {}
local customsLoaded
    local contents = httprequest({Url = 'https://raw.githubusercontent.com/SystemXVoid/Render/source/packages/'..v}).Body
    writefile('vape/'..v, contents)
end

print("Getting CustomModules..")
wait(3)

local customsTab = httprequest:JSONDecode(httprequest({Url = 'https://raw.githubusercontent.com/SystemXVoid/Render/source/Libraries/games.json'}).Body)
for i,v in next, customsTab do
    local number = tonumber(v)
    if number then
        table.insert(customs, v..'lua')
    end
end
customsLoaded = true
task.wait(0.5)

repeat task.wait() until customsLoaded 

print("Writing modules..")

for i,v in next, customs do
    local contents = httprequest({Url = 'https://raw.githubusercontent.com/SystemXVoid/Render/source/packages/'..v}).Body
    writefile('vape/CustomModules/'..v,contents)
end

print("Installing profiles..")

wait(5)

local profiledata = {}
local profilesLoaded
local profiletab = httpService:JSONDecode(httprequest({Url = 'https://api.github.com/repos/SystemXVoid/Render/Contents/Libaries/Profiles'})).Body
for i,v in next, profiletab do
    assert(v.name, "no name found lol")
    table.insert(profiledata, v.name)
end
profilesLoaded = true
task.wait(0.5)

repeat task.wait() until profilesLoaded 

local profiles = {}
for i,v in next, profiledata do
    local contents = httprequest({Url = 'https://raw.githubusercontent.com/SystemXVoid/Render/source/Libaries/Profiles'..v}).Body
    if v:find('vapeprofiles') and isfile('vape/Profiles'..v) the
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
        writefile('vape/Profiles/'..v,contents)
    end
end

writefile('ria.json', httpService:JSONEncode({Key = ria, Client = game:GetService('RbxAnalyticsService'):GetClientId()}))
local contentinsidedata = "Installed FIX for INSTALLER.LUA"
writefile('data.json', contentinsidedata)


print("Getting Assets..")
task.wait(4)
local assetsloaded 
local assets = {}
local assetTab = httpService:JSONDecode(httprequest({Url = 'https://api.github.com/repos/7GrandDadPGN/VapeV4ForRoblox/contents/assets'}).Body)
for i,v in next, assetTab do 
    assert(v.name, 'no name found lol')
    table.insert(assets, v.name) 
end
assetsloaded = true
task.wait(0.5)

repeat task.wait() until assetsloaded 

for i,v in next, assets do
    if not isfile('vape/assets/'..v) then
        local contents = game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/assets/'..v)
        writefile('vape/assets/'..v, contents) 
    end
end

    writefile('vape/commithash.txt', 'main')
    task.wait(0.2)
    lplr:Kick("Done.")


end)


--[[
return (function(ria)
    local httpService = game:GetService('HttpService')
    local httprequest = (http and http.request or http_request or fluxus and fluxus.request or request or function() end)
	local initiate
	local isfile = isfile or function(file)
		local success, filecontents = pcall(function() return readfile(file) end)
		return success and type(filecontents) == 'string'
	end 
    local lplr = game.Players.LocalPlayer
    ria = base64_decode(ria)
    if type(shared.GuiLibrary) == 'table' then
		pcall(shared.GuiLibrary.SelfDestruct or function() end)
	end
	
	for i,v in next, ({'vape', 'vape/assets', 'vape/Profiles', 'vape/Libraries', 'vape/CustomModules'}) do 
		if not isfolder(v) then 
			makefolder(v) 
		end 
	end
	
	for i,v in next, ({'vape/Render', 'vape/Render/Libraries'}) do 
		if not isfolder(v) then 
			makefolder(v) 
		end 
	end
	
	local core = {'Universal.lua', 'MainScript.lua', 'NewMainScript.lua', 'GuiLibrary.lua'}
	for i,v in next, listfiles('vape/CustomModules') do 
		if isfile(v) then 
			delfile(v) 
		end 
	end

	for i,v in next, core do 
		if isfile('vape/'..v) then 
			delfile('vape/'..v)
		end 
	end
    
    

end)

--]]
