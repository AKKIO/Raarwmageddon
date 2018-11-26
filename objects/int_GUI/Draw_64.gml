/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(font_00);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed_color((ideal_width-ideal_width)+64, 8, "LEVEL", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 16, global.level, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

draw_text_transformed_color((ideal_width-ideal_width)+64, 48, "DINOS", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 56, global.dinos, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

draw_text_transformed_color((ideal_width-ideal_width)+64, 88, "SCORE", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 96, score_gui, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

if keyboard_check(ord("C")){
	draw_text_transformed_color((ideal_width-ideal_width)+64, 40, "COUNTER", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 48, global.counter, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 72, "DETAILS", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 80, global.details, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 96, "DIFFICULTY", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 128, global.dif, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
}

if !instance_exists(obj_player){
	rot=inc*sin(inc)+0
	inc+=.02
	draw_set_valign(fa_middle);
	draw_text_transformed_color(ideal_width/2, ideal_height/2, txt,
	sz, sz, dir, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	if intext <= 5{
		dir = rot;
	}
	
	draw_text_transformed_color((ideal_width/2), (ideal_height/2)+64, "PRESS SPACE TO CONTINUE",
	.5, .5, 0, c_white, c_white, c_white, c_white, 1);
}

if less > 0{
	draw_set_font(font_00);
	draw_set_halign(fa_center);
	if instance_exists(int_surfacesColor) && show_scr != 0 && instance_exists(obj_player){
		var col = global.color_now, col_b = c_black;
		if obj_player.hugging = 1{
			draw_text_transformed_color((ideal_width/2)+1, 32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color((ideal_width/2)-1, 32, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(ideal_width/2, 32+1, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(ideal_width/2, 32-1, string(show_scr)+"x2", .75, .75, 0, col_b, col_b, col_b, col_b, 1);
	
			draw_text_transformed_color(ideal_width/2, 32, string(show_scr)+"x2", .75, .75, 0, col, col, col, col, 1);
		}else{
			draw_text_transformed_color((ideal_width/2)+1, 32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color((ideal_width/2)-1, 32, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(ideal_width/2, 32+1, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
			draw_text_transformed_color(ideal_width/2, 32-1, show_scr, .75, .75, 0, col_b, col_b, col_b, col_b, 1);
	
			draw_text_transformed_color(ideal_width/2, 32, show_scr, .75, .75, 0, col, col, col, col, 1);
		}
	}
	
	less--
}