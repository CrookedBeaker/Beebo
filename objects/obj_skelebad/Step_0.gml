/// @description Do stuff!
if !global.pause {
image_speed = noticed;
if (direction > 90 && direction < 270) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if instance_exists(obj_beebo) {

if !noticed { //Look for player
	image_index = 0;
	
	if (!collision_line(x,y,obj_beebo.x,obj_beebo.y,obj_collision,0,0) && distance_to_object(obj_beebo) < 64) {
		noticed = true;
	}
} else {
	spd = clamp(spdMax-lerp(spdMax-spd,0,0.02),0,spdMax);
	motion_set(point_direction(x,y,obj_beebo.x,obj_beebo.y),spd);
	
	if place_meeting(x,y,obj_collision) {Return()};
}

} else { //Return to original position upon Beebo's death
	Return();
}
} else {
	image_speed = 0;
}