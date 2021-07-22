/// @description Break!
if !audio_is_playing(snd_blockbreak) {audio_play_sound(snd_blockbreak,10,false)};
instance_destroy();
instance_create_depth(x,y,depth,obj_poof);

//Respawning
if global.blockRespawn {
	instance_create_depth(x,y,depth,obj_blockrespawn);
}