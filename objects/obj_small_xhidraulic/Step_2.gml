/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if distance_to_object(obj_player) < 128 {
		if type = 0{
			if round((obj_player.bbox_bottom) > y-4) || distance_to_object(obj_player) < 8 && (obj_player.key_down) mask_index = -1;
			else mask_index = spr_small_xhidraulic;
		}else{
			if round((obj_player.bbox_bottom) > y-19) || distance_to_object(obj_player) < 8 && (obj_player.key_down) mask_index = -1;
			else mask_index = spr_small_dhidraulic;
		}
	}
}

if instance_exists(obj_player){
	if y > obj_player.y{
		if distance_to_object(obj_player) < 8{
			if obj_player.state = 3{
				spd = 0.25;
				tile = 1;
				if instance_exists(int_GUI){
					global.temp_scr += gv_scr;
					gv_scr = 0;
				}
			
			}
		}
	}
}

tile +=spd;
if tile < 1{
	spd = 0;
	tile = 0;
}
if tile = 5{
	tile = 0;
	instance_destroy();
}

if instance_exists(obj_shit) || instance_exists(obj_bigger_shit){
	if distance_to_object(obj_shit) < 8 || distance_to_object(obj_bigger_shit) < 16{
		instance_destroy();
	}
}