/// @description Set it up with the room to load

ini_open("Save.sav");

loadRoom = ini_read_real("General","room",rm_lvl_intro);
global.crystals = ini_read_real("General","crystals",0);

ini_close();