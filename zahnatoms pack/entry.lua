declare_plugin("zahnatom's pack",

{
displayName   	= _("zahnatom's pack"),
shortName	  	=   "zahnatom's pack",
installed 	 	= true, 
dirName	  	 	= current_mod_path,

encyclopedia_path = current_mod_path..'/Encyclopedia',
	
fileMenuName 	= _("zahnatom's pack"),
version		 	= "1.0.0",		 
state		 	= "installed",
developerName	= "zahnatom",
info		 	= _("zahnatom's pack. anything that he deems to be worthy"),

})
----------------------------------------------------------------------------------------

-- shapes
mount_vfs_model_path	(current_mod_path.."/Shapes")

-- textures
mount_vfs_texture_path  (current_mod_path.."/Textures/SkyNex.zip")

-- weapons
dofile(current_mod_path..'/Database/Weapons/SkyKnight_Missile.lua')
dofile(current_mod_path..'/Database/Weapons/Oerlikon_RGMK3_Guns_Ammo.lua')

-- sensors
dofile(current_mod_path..'/Database/Sensors/Oerlikon_MSU_Sensors.lua')

-- SAM
dofile(current_mod_path..'/Database/SAM/SkyKnight_MLU.lua')

-- vehicle
dofile(current_mod_path..'/Database/Vehicles/Oerlikon_MSU.lua')
dofile(current_mod_path..'/Database/Vehicles/Oerlikon_RGMK3.lua')

plugin_done()
