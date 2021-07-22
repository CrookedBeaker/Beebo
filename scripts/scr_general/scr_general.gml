//This is probably the only script I'll need
function SetSFXGain(val) {
	audio_sound_gain(snd_blockbreak,val,0);
	audio_sound_gain(snd_death,val,0);
	audio_sound_gain(snd_fall,val,0);
	audio_sound_gain(snd_jump,val,0);
	audio_sound_gain(snd_knifeget,val,0);
	audio_sound_gain(snd_knifeswing,val,0);
	audio_sound_gain(snd_land,val,0);
	
	global.sound = val;
}

function SetMusicGain(val) {
	audio_sound_gain(mus_main,val,0);
	audio_sound_gain(mus_title,val,0);
	
	global.music = val;
}

function LoadSound() {
	ini_open("Options.sav");
	
	global.sound = ini_read_real("Options","sound",0.3);
	global.music = ini_read_real("Options","music",1);
	
	ini_close();
}

function SaveSound() {
	if file_exists("Options.sav") {file_delete("Options.sav")}
	
	ini_open("Options.sav");
	
	ini_write_real("Options","sound",global.sound);
	ini_write_real("Options","music",global.music);
	
	ini_close();
}

function SetDefaultGlobals(){
	global.pause = false;
	global.knife = true;
	global.blockRespawn = false;
}

LoadSound();
SetDefaultGlobals();
SetSFXGain(global.sound);
SetMusicGain(global.music);
display_set_gui_size(128,128);

//Transitions
function Transition(room) {
	if !instance_exists(obj_transition) {
		var inst = instance_create_depth(0,0,0,obj_transition);
		inst.target = room;
	}
}