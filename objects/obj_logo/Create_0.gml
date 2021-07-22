/// @description Set it up with the room to load

ini_open("Save.sav");

loadRoom = ini_read_real("General","room",rm_lvl_intro);

ini_close();