/// @description Set some stuff up

function Kill() {
	audio_play_sound(snd_death,10,false);
	instance_destroy();
	instance_create_depth(x-4,y-4,depth,obj_poof);
	
	var inst = instance_create_depth(x,y,depth,obj_respawn);
	inst.origin = origin;
}