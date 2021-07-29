/// @description Wuh oh
if (!global.pause && !alarmSet) {
image_speed = noticed;
if (direction > 90 && direction < 270) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if instance_exists(obj_beebo) {

if !noticed { //Wait...
	sprite_index = spr_skelebig_idle;
	
	if (!instance_exists(obj_orb) && x < 920) {
		noticed = true;
	}
} else { //OH SHIT THE ORB
	sprite_index = spr_skelebig;
	spd = clamp(spdMax-lerp(spdMax-spd,0,0.02),0,spdMax);
	motion_set(direction,spd);
	
	if (x >= 920) {
		noticed = false;
		x = 920;
		motion_set(startDir,0);
	}
}

} else { //Return to original position upon Beebo's death
	image_index = 0;
	image_speed = 0;
	motion_set(startDir,0);
	alarm[0] = 180;
	alarmSet = true;
}
} else {
	image_speed = 0;
	motion_set(direction,0);
}