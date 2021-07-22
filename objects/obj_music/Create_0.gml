/// @description Play some music!
if (!audio_is_playing(song)) {

//Stop all music!
audio_stop_sound(mus_title);
audio_stop_sound(mus_main);

if (song != noone) { //Play the song!
	audio_play_sound(song,9,true);
}

}

instance_destroy();