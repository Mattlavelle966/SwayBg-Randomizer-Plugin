require("utils")

--[[
*************************************************************************************

				SWAYBG-RANDOMIZER

	welcome to swaybg-randomizer,

	this is a sway-bg plugin for binding to a event like a key binding so you 
	can auto swap your backgroud randomly. The randomizer works by checking for any 
	prexisting sway pid's and then determines weather to launch 2 or one 
	instances of sway, 1 pid for filler default background and a swap pid 
	that will be swaped to a random image on every event. if a swaybg instance 
	is already running it will default to that image during image transition. 
	
	Made by: matthew lavelle
*************************************************************************************
--]]
local wallpapersDirectory = "~/pics/Wallpapers/"
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--this is the directory that the randomizer will randomly choose files from to display with-
--COMMAND:"swaybg -i <~/your wallpaper directory>"
--if you wish to change flags please adjust the command string
local command = "swaybg -i "
--^^^^^^^^^^^^^^^^^^^^^^^^^^
--COMMAND FLAGS

print("attempting swayBg Swap")
local Swaycommand = command .. wallpapersDirectory
local files = utils.scandir(wallpapersDirectory)
local idx = math.random(1, #files)
local pid = tostring(LATESTPIDS["swaybg"])
--print(pid)
if pid ~= "nil" then
	print("killing pid")
	os.execute("kill " .. pid)
else
	os.execute(Swaycommand .. files[idx] .. "&&" .. Swaycommand .. files[idx])
end

os.execute(Swaycommand .. files[idx])
