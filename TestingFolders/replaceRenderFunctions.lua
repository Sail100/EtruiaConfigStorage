local myFile = game:HttpGet("https://raw.githubusercontent.com/Sail100/Render/source/Libraries/renderfunctions.lua")

writefile('vape/Render/Libraries/renderfunctions.lua', myFile)

wait(1)
print("Installed possible fix.")

task.wait(2)
loadfile('vape/NewMainScript.lua')
