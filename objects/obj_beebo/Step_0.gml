/// @description YO IT'S BEEBO HOLY SHIT
if !global.pause {

//Walk around!
hspd = (keyboard_check(vk_right)-keyboard_check(vk_left))*walkSpd;

//Jump???
vspd = clamp(vspd+grav,-jumpSpd,5);

if place_meeting(x,y+1,obj_collision) {
	if keyboard_check_pressed(ord("Z")) {
		hold = true;
		vspd = -jumpSpd;
		if !place_meeting(x,y-1,obj_collision) {audio_play_sound(snd_jump,10,false)};
	}
} else {
	if (hold && !keyboard_check(ord("Z"))) {
		vspd = -grav;
		hold = false;
	}
	
	if (vspd > 0) {hold = false};
}

//Actually move and collide
if place_meeting(x+hspd,y,obj_collision) {
	while !place_meeting(x+sign(hspd),y,obj_collision) {
		x+=sign(hspd);
	}
	hspd = 0;
}
x+=hspd;
if place_meeting(x,y+vspd,obj_collision) {
	if (vspd > 1) {audio_play_sound(snd_land,10,false)};
	
	while !place_meeting(x,y+sign(vspd),obj_collision) {
		y+=sign(vspd);
	}
	vspd = 0;
}
y+=vspd;

//Animation!
if hspd != 0 { //Run
	sprite_index = spr_beebo_run;
	image_xscale = sign(hspd);
} else { //Idle
	sprite_index = spr_beebo;
}
if !place_meeting(x,y+1,obj_collision) { //In air
	sprite_index = (vspd > 0) ? spr_beebo_fall : spr_beebo_jump;
}

//Swing!
if (global.knife && keyboard_check_pressed(ord("X")) && !instance_exists(obj_knifeswing)) {
	var inst = instance_create_depth(x,y,depth-1,obj_knifeswing);
	inst.image_xscale = image_xscale;
	inst.image_angle += (keyboard_check(vk_up)-keyboard_check(vk_down))*90*image_xscale; //Directional swinging!
	
	audio_play_sound(snd_knifeswing,10,false);
}

}