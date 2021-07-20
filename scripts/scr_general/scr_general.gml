//This is probably the only script I'll need
function SetSFXGain(val) {
	audio_sound_gain(snd_blockbreak,val,0);
	audio_sound_gain(snd_death,val,0);
	audio_sound_gain(snd_jump,val,0);
	audio_sound_gain(snd_knifeget,val,0);
	audio_sound_gain(snd_knifeswing,val,0);
	audio_sound_gain(snd_land,val,0);
}

function SetDefaultGlobals(){
	global.pause = false;
	
	global.knife = false;
}

SetDefaultGlobals();
SetSFXGain(0.3);
display_set_gui_size(128,128);

//Transitions
function Transition(room) {
	var inst = instance_create_depth(0,0,0,obj_transition);
	inst.target = room;
}