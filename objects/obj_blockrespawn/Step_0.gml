/// @description Respawn blocks!

if !instance_exists(obj_beebo) {
	instance_create_depth(x,y,depth,obj_breakable);
	instance_create_depth(x,y,depth-1,obj_poof);
	instance_destroy();
}