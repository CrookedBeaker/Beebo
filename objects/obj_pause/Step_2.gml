/// @description Menu stuff

if keyboard_check_pressed(vk_down) {
	index++;
	//Play menu sound
}
if keyboard_check_pressed(vk_up) {
	index--;
	//Play menu sound
}

if index < 0 {index = 2};
if index > 2 {index = 0};

if !options { //Paused!

	if keyboard_check_pressed(ord("Z")) {
		switch index {
			case 0: //Resume
				Close();
				break;
			case 1: //Options
				options = true;
				index = 0;
				break;
			case 2: //Exit
				instance_destroy();
				Transition(rm_title);
				break;
		}
	}

} else { //Options!
	
	if index = 0 { //Adjust sound!
		
		if keyboard_check_pressed(vk_left) {
			SetSFXGain(clamp(global.sound-0.1,0,1));
		}
		
		if keyboard_check_pressed(vk_right) {
			SetSFXGain(clamp(global.sound+0.1,0,1));
		}
		
	} else if index = 1 { //Adjust music!
		
		if keyboard_check_pressed(vk_left) {
			SetMusicGain(clamp(global.music-0.1,0,1));
		}
		
		if keyboard_check_pressed(vk_right) {
			SetMusicGain(clamp(global.music+0.1,0,1));
		}
		
	}
	
	if (keyboard_check_pressed(ord("Z")) && index = 2) { //Save and go back :3
		SaveSound();
		options = false;
		index = 0;
	}
	
}

//Other ways of closing
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"))) && !firstFrame {
	Close();
}

firstFrame = false;