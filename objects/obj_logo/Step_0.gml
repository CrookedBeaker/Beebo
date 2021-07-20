/// @description Title menu

if !menu { //Press Start!
	if keyboard_check_pressed(ord("Z")) {
		menu = true;
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
			case 0:
				room_goto(rm_lvl_intro);
				break;
			case 1:
				//???
				break;
			case 2:
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