/// @description Woop
function Return() {
	if (x != origin[0] && y != origin[1]) {
		instance_create_depth(x-4,y-4,depth,obj_poof);
		x = origin[0];
		y = origin[1];
		instance_create_depth(x-4,y-4,depth+1,obj_poof);
	}
	spd = 0;
	motion_set(startDir,0);
	noticed = false;
}