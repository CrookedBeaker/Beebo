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
SetSFXGain(0.5);