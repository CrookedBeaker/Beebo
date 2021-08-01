/// @description YEAH

//Spin!
x = 64+obj_end2.dist*dcos(obj_end2.angle+60*crystalID);
y = 64+obj_end2.dist*dsin(obj_end2.angle+60*crystalID);

//Set sprite
sprite_index = (crystalID <= global.crystals) ? spr_crystal_spin : spr_crystal_flash;

//Change sprites
if (obj_end2.part = 6) {sprite_index = spr_sparkle};