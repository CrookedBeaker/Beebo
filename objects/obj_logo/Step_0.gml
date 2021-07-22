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
			case 0: //Start!
				Transition(rm_lvl_intro);
				break;
			case 1: //Load!
				Transition(loadRoom);
				break;
			case 2: //Options!
				//?????????????
				break;
		}
	}
}

flash--;
if (flash = 0) {
	flash = flashMax;
	show = !show;
}