/// @description Save the progress dummy

function Save() {
	if file_exists("Save.sav") {file_delete("Save.sav")};
	
	ini_open("Save.sav");
	
	ini_write_real("General","room",room);
	ini_write_real("General","crystals",global.crystals);
	
	ini_close();
}