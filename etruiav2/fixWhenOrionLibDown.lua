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

    ResetProfiles()
    
    wait()
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

installProfiles()
wait(1)
loadfile('vape/NewMainScript.lua')();
