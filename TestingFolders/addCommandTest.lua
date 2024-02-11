local myFile = game:HttpGet("https://raw.githubusercontent.com/Sail100/Render/source/packages/Universal.lua")

writefile('vape/Universal.lua', myFile)

wait(1)
print("Installed a new command")
task.wait(2)
loadfile('vape/NewMainScript.lua')();
