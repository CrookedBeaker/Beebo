/// @description Respawn the orb!

if !instance_exists(obj_beebo) {
	instance_create_depth(x,y,depth,obj_orb);
	instance_create_depth(x,y,depth-1,obj_poof);
	instance_destroy();
}