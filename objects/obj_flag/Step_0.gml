/// @description Checkpoint!

if place_meeting(x,y,obj_beebo) && !active { //Disable all others and activate
	with obj_flag {active = false}
	active = true;
	if !audio_is_playing(snd_flag) {audio_play_sound(snd_flag,10,false)};
}

image_index = active;