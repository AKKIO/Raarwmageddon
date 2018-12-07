/// @description alarm for smash
if smash_allow = 1 && state = 2{
	if place_free(x, ly_min-8){
		y = ly_min;
		instance_create_layer(x, y, "ly_platforms", obj_smasheffect)
		if instance_exists(int_camera){
			int_camera.scr = 1;
		}
		state = 3;
		bkcp_j = 1;
	}
	if place_meeting(x, ly_min+8, obj_small_hidraulic){
		y = ly_min;
		instance_create_layer(x, y, "ly_platforms", obj_smasheffect)
		if instance_exists(int_camera){
			int_camera.scr = 1;
		}
		state = 3;
		bkcp_j = 2;
	}
	if place_meeting(x, ly_min+7, obj_small_xhidraulic){
		y = ly_min;
		instance_create_layer(x, y, "ly_platforms", obj_smasheffect)
		if instance_exists(int_camera){
			int_camera.scr = 1;
		}
		state = 3;
		bkcp_j = 2;
	}
	if place_meeting(x, ly_min+8, obj_big_hidraulic){
		y = ly_min;
		instance_create_layer(x, y, "ly_platforms", obj_smasheffect)
		if instance_exists(int_camera){
			int_camera.scr = 1;
		}
		state = 3;
		bkcp_j = 3;
	}
	if place_meeting(x, ly_min+8, obj_char_hidraulic){
		y = ly_min;
		instance_create_layer(x, y, "ly_platforms", obj_smasheffect)
		if instance_exists(int_camera){
			int_camera.scr = 1;
		}
		state = 3;
		bkcp_j = 2;
	}
smash_allow = 0;
}