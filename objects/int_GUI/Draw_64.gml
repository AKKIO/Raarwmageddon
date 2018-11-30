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

var timer =ideal_height-64;
if minute < 10{
	if second < 10{
		if ms < 10{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, "0"+string(minute)+":"+"0"+string(second)+":"+"0"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}else{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, "0"+string(minute)+":"+"0"+string(second)+":"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}
	}else{
		if ms < 10{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, "0"+string(minute)+":"+string(second)+":"+"0"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}else{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, "0"+string(minute)+":"+string(second)+":"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}
	}
}else{
	if second < 10{
		if ms < 10{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, string(minute)+":"+"0"+string(second)+":"+"0"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}else{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, string(minute)+":"+"0"+string(second)+":"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}
	}else{
		if ms < 10{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, string(minute)+":"+string(second)+":"+"0"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}else{
			draw_text_transformed_color((ideal_width-ideal_width)+64, timer, string(minute)+":"+string(second)+":"+string(ms), .5, .5, 0, c_white, c_white, c_white, c_white, 1);
		}
	}
	
}


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
	if instance_exists(int_surfacesColor){
		if int_surfacesColor.style = 0{
			var color_right = global.color_now
		}else{
			var color_right = global.second_detail_color;
		}
	}
	inc+=.02
	draw_set_valign(fa_middle);
	draw_text_transformed_color(ideal_width/2, ideal_height/2, txt,
	sz, sz, dir, color_right, color_right, color_right, color_right, 1);
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
		if int_surfacesColor.style = 0{
			var col = global.color_now, col_b = c_black;
		}else{
			var col = global.second_detail_color, col_b = c_black;
		}
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