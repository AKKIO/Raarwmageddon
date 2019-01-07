/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if style = 1{
	if global.counter > 14{
		global.counter = 0;
	}
	switch(global.counter){
		case(0):
			col_s = 12;
			audio_group_stop_all(grp_MUSIC);
			audio_play_sound(mc_fade, 1, 0);
		break;
				
		case(4):
			col_s = 14;
			audio_group_stop_all(grp_MUSIC);
			audio_play_sound(mc_fade, 1, 0);
		break;
				
		case(9):
			col_s = 16;
			audio_group_stop_all(grp_MUSIC);
			audio_play_sound(mc_fade, 1, 0);
		break
	}
	if instance_exists(GOD){
		alarm[2] = room_speed*2;
	}
}else if instance_exists(int_menu) && style = 1 || instance_exists(int_chars) && style = 1{
	var back_id = layer_background_get_id("ly_bkg")
	layer_background_blend(back_id, global.color_now);
			
	col_s = 12;
}else if style = 0{
	var i = irandom(2);
		audio_group_stop_all(grp_MUSIC);
		audio_play_sound(track[i], 1, 1);
}