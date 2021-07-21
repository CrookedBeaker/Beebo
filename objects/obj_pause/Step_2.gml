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

if keyboard_check_pressed(ord("Z")) {
	switch index {
		case 0: //Resume
			Close();
			break;
		case 1: //Options
			//???
			break;
		case 2: //Exit
			instance_destroy();
			Transition(rm_title);
			break;
	}
}

//Other ways of closing
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"))) && !firstFrame {
	Close();
}

firstFrame = false;