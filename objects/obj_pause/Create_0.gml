/// @description Hello, everybody!
global.pause = true;

function Close() {
	instance_destroy();
	global.pause = false;
}