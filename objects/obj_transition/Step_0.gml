/// @description Cool!
global.pause = true;

position += 4;
if (position = 152) {
	if out {
		global.pause = false;
		instance_destroy();
	} else {
		room_goto(target);
	}
}