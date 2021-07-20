/// @description Respawn time!
var rX = origin[0];
var rY = origin[1];

if instance_exists(obj_flag) {
	with obj_flag {
		if active {
			rX = x+4;
			rY = y+4;
		}
	}
}

instance_create_depth(rX,rY,depth,obj_beebo);
instance_destroy();