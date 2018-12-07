/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	if distance_to_object(obj_player) < 128 {
		if round((obj_player.bbox_bottom) > y-53) || distance_to_object(obj_player) < 8 && (obj_player.key_down) mask_index = -1;
		else mask_index = spr_char_hidraulic;
	}
}

if instance_exists(obj_player){
	if y > obj_player.y{
		if distance_to_object(obj_player) < 12{
			if obj_player.state = 3{
				spd = 0.25;
				tile = 1;
				
				if dino > 0 && global.dins[dino] = 499{
					ini_open(working_directory + "/save_files/"+"save.ini");
					char_crypt = base64_encode(string((dino-1)*pi));
					ini_write_string("DINOS", "PLAYER", char_crypt);
					ini_close();
					ini_open(working_directory + "/save_files/"+"save.ini");
					decode_dino = ini_read_string("DINOS", "PLAYER", "0")
					var character = real(base64_decode(decode_dino))/pi;
					obj_player.dino = round(character);
					ini_close();
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
if tile = 4{
	tile = 0;
}