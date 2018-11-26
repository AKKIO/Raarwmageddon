/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if distance_to_object(obj_player) < 128 {
		if round((obj_player.bbox_bottom) > y-5) || distance_to_object(obj_player) < 8 && (obj_player.key_down) mask_index = -1;
		else mask_index = spr_small_hidraulic;
	}
}

if instance_exists(obj_player){
	if y > obj_player.y{
		if distance_to_object(obj_player) < 12{
			if obj_player.state = 3{
				spd = 0.25;
				tile = 1;
				if gv_scr != 0 && instance_exists(obj_player){
					part_scr = instance_create_layer(x, obj_player.y-32, "ly_instances", obj_scr_part)
					part_scr.txt = gv_scr;
				}
				global.temp_scr += gv_scr;
				gv_scr = 0;
			
			}
		}
	}
}

tile +=spd;
if tile < 1{
	spd = 0;
	tile = 0;
}
if tile = 4{
	tile = 0;
}

if instance_exists(obj_shit) || instance_exists(obj_bigger_shit){
	if distance_to_object(obj_shit) < 8 || distance_to_object(obj_bigger_shit) < 16{
		instance_destroy();
	}
}