/// @description Ouchies

instance_create_depth(x-4,y-4,depth,obj_poof);
if !audio_is_playing(snd_death) {audio_play_sound(snd_death,10,false)};
instance_destroy();