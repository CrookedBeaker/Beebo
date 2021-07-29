/// @description Set up what happens when you pick it up
function Pickup() {
	instance_create_depth(origin[0],origin[1],depth,obj_orbrespawn); //Set up respawn
	global.blockRespawn = true;
}