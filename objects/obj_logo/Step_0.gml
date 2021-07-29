/// @description Title menu

if !menu { //Press Start!
	if keyboard_check_pressed(ord("Z")) && flashMax != 5 {
		alarm[0] = 60;
		show = false;
		flash = 1;
		flashMax = 5;
	}
} else { //Select an option :3
	if keyboard_check_pressed(vk_down) {
		index++;
		audio_play_sound(snd_bleep,10,false);
	}
	if keyboard_check_pressed(vk_up) {
		index--;
		audio_play_sound(snd_bleep,10,false);
	}
	
	if index < 0 {index = 2};
	if index > 2 {index = 0};
	
	if !options { //Normal menu
	
	if keyboard_check_pressed(ord("Z")) {
		switch index {
			case 0: //Start!
				Transition(rm_lvl_5);
				global.crystals = 0;
				break;
			case 1: //Load!
				Transition(loadRoom);
				break;
			case 2: //Options!
				options = true;
				index = 0;
				audio_play_sound(snd_bleep,10,false);
				break;
		}
	}
	
	} else { //Options!
	
	if index = 0 { //Adjust sound!
		
		if keyboard_check_pressed(vk_left) {
			SetSFXGain(clamp(global.sound-0.1,0,1));
			audio_play_sound(snd_bleep,10,false);
		}
		
		if keyboard_check_pressed(vk_right) {
			SetSFXGain(clamp(global.sound+0.1,0,1));
			audio_play_sound(snd_bleep,10,false);
		}
		
	} else if index = 1 { //Adjust music!
		
		if keyboard_check_pressed(vk_left) {
			SetMusicGain(clamp(global.music-0.1,0,1));
			audio_play_sound(snd_bleep,10,false);
		}
		
		if keyboard_check_pressed(vk_right) {
			SetMusicGain(clamp(global.music+0.1,0,1));
			audio_play_sound(snd_bleep,10,false);
		}
		
	}
	
	if (keyboard_check_pressed(ord("Z")) && index = 2) { //Save and go back :3
		SaveSound();
		options = false;
		index = 0;
		audio_play_sound(snd_bleep,10,false);
	}
	
	}
}

flash--;
if (flash = 0) {
	flash = flashMax;
	show = !show;
}