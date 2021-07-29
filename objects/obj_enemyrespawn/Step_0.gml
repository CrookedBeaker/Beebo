/// @description Respawn the orb!

if !instance_exists(obj_beebo) {
	instance_create_depth(x,y,depth,obj_skelebad);
	instance_create_depth(x-4,y-4,depth-1,obj_poof);
	instance_destroy();
}