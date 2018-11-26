/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if less > 0{
	draw_set_font(font_00);
	draw_set_halign(fa_center);
	if instance_exists(int_surfacesColor) && show_scr != 0 && instance_exists(obj_player){
		var col = global.color_now, col_b = c_black;
		if obj_player.hugging = 1{
			draw_text_transformed_color(obj_player.x+1, (obj_player.y)-32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x-1, (obj_player.y)-32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x, (obj_player.y+1)-32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x, (obj_player.y-1)-32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
	
			draw_text_transformed_color(obj_player.x, obj_player.y-32, string(show_scr)+"x2", .75, .75, 0, col, col, col, col, 1);
		}else{
			draw_text_transformed_color(obj_player.x+1, (obj_player.y)-32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x-1, (obj_player.y)-32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x, (obj_player.y+1)-32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(obj_player.x, (obj_player.y-1)-32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
	
			draw_text_transformed_color(obj_player.x, obj_player.y-32, show_scr, .75, .75, 0, col, col, col, col, 1);
		}
	}
	
	less--
}