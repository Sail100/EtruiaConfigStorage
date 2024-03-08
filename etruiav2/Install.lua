local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Etruia Installation", HidePremium = false, IntroText = "Etruia installion UI is loading.."})
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

notify("Etruia", "This installer is deprecated. Running new loadstring..")
task.wait(3.7)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Sail100/EtruiaConfigStorage/main/EtruiaDevelopment/loader.lua')))()
