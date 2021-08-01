/// @description ROTATE CRYSSAL

angle++;
if (angle >= 360) {angle = 0};

switch part {
	case -1:
		y--;
		if (y = 60) {
			dist = 91;
			part++;
		}
		break;
	case 0: //Spin!
		dist--;
		if dist = 32 {
			alarm[0] = 180;
			part++;
		}
		break;
	case 1: //Pause :3
		break;
	
	case 2: //Normal end - Go away, crystals
		dist++;
		if dist = 91 {
			part++;
		}
		break;
	case 3: //Normal end - Yeah, naw
		instance_destroy(obj_end_crystal);
		y+=0.5;
		if (y = 80) {
			drawN = true;
			part = 1;
			alarm[1] = 300;
		}
		break;
		
	case 5: //True end - Put the thing together...
		dist--;
		if dist = 0 {
			part++;
			image_index = 1;
			instance_create_depth(x,y,depth-1,obj_poof);
			audio_play_sound(snd_death,10,false);
		}
		break;
	case 6: //True end - ORB RESTORED!
		angle++;
		dist++;
		if dist = 91 {
			part++;
		}
		break;
	case 7: //True end - Move it
		instance_destroy(obj_end_crystal);
		y++;
		if (y = 128) {
			instance_destroy();
			instance_create_depth(0,128,depth,obj_end3);
		}
		break;
	
	case 8: //Credits!
		y--;
		if (y = -8) {
			instance_destroy();
		}
		
}