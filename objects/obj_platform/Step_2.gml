/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if distance_to_object(obj_player) < 128 {
		if round((obj_player.bbox_bottom) > y-9) || distance_to_object(obj_player) < 16 && (obj_player.key_down) mask_index = -1;
		else mask_index = spr_platform;
	}
}
if distance_to_object(obj_shit) < 1 || distance_to_object(obj_bigger_shit) < 4{
	instance_destroy();
}

/*if !instance_exists(int_rng_world){
	instance_destroy();
}*/