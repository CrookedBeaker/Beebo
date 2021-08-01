/// @description Move on!

instance_create_depth(60,128,depth,obj_end2);

for (var i=1; i<7; i++) {
	var inst = instance_create_depth(-8,-8,depth+1,obj_end_crystal);
	inst.crystalID = i;
}

instance_destroy();