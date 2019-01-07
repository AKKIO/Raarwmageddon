/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(font_00);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed_color((ideal_width-ideal_width)+64, 8, "LEVEL", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 22, global.level, 1, 1, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

draw_text_transformed_color((ideal_width-ideal_width)+64, 48, "DINOS", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 62, global.dinos, 1, 1, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

draw_text_transformed_color((ideal_width-ideal_width)+64, 88, "SCORE", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)+64, 102, score_gui, 1, 1, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

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


/*if keyboard_check(ord("C")){
	draw_text_transformed_color((ideal_width-ideal_width)+64, 40, "COUNTER", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 48, global.counter, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 72, "DETAILS", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 80, global.details, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 96, "DIFFICULTY", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)+64, 128, global.dif, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
}*/

if !instance_exists(obj_player){
	/*rot=inc*sin(inc)+0
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
	.5, .5, 0, c_white, c_white, c_white, c_white, 1);*/
	
	ini_open(working_directory + "/save_files/"+"save.ini");
	var scr_decrypt = ini_read_string("Score", "highscore", "MAo=");
	var scr_ = real(base64_decode(scr_decrypt));
	if global.scr > ((scr_/7)/256){
		var scr_crypt = base64_encode(string((global.scr*7)*256));
		ini_write_string("Score", "highscore", scr_crypt);
	}
	ini_close();
	if image <= 6{
		image+=.25;
	}
	
	
	if instance_exists(int_surfacesColor){
		if int_surfacesColor.style = 1{
			var col = global.second_detail_color;
			var col2 = global.color_now;
		}else{
			var col = c_white;
			var col2 = global.color_now;
		}
		col3 = c_black;
	}
	
	draw_sprite_ext(spr_square, image, ideal_width/2, ideal_height/2, 1.6, 1.6, 0, col, 1);
	
	if image >= 6{
		var xx = ideal_width-ideal_width, yy = ideal_height-ideal_height;
		draw_text_transformed_color(ideal_width/2, yy+32, "STATS", 1.6, 2, 0, col2, col2, col2, col2, 1);
		ini_open(working_directory + "/save_files/"+"save.ini");
			var scr_stat = real(base64_decode(scr_decrypt));
			var scr_st = (scr_stat/7)/256;
		ini_close();
		
		if scr_st <= global.scr{
			draw_text_transformed_color(ideal_width/2, yy+80, "Highscore", 1, 1, 0, col2, col2, col2, col2, 1);
			draw_text_transformed_color(ideal_width/2, yy+104, scr_st, .75, .75, 0, col3, col3, col3, col3, 1);
			
			draw_text_transformed_color(ideal_width/2, yy+128, "New Highscore", 1, 1, 0, col2, col2, col2, col2, 1);
			draw_text_transformed_color(ideal_width/2, yy+152, global.scr, .75, .75, 0, col3, col3, col3, col3, 1);
		}else{
			draw_text_transformed_color(ideal_width/2, yy+80, "Highscore", 1, 1, 0, col2, col2, col2, col2, 1);
			draw_text_transformed_color(ideal_width/2, yy+104, scr_st, .75, .75, 0, col3, col3, col3, col3, 1);
			
			draw_text_transformed_color(ideal_width/2, yy+128, "Score", 1, 1, 0, col2, col2, col2, col2, 1);
			draw_text_transformed_color(ideal_width/2, yy+152, global.scr, .75, .75, 0, col3, col3, col3, col3, 1);
		}
		draw_text_transformed_color(ideal_width/2, yy+176, "Saved Dinos", 1, 1, 0, col2, col2, col2, col2, 1);
		draw_text_transformed_color(ideal_width/2, yy+200, global.dinos, .75, .75, 0, col3, col3, col3, col3, 1);
		
		draw_text_transformed_color(ideal_width/2, yy+224, "Level", 1, 1, 0, col2, col2, col2, col2, 1);
		draw_text_transformed_color(ideal_width/2, yy+248, global.level, .75, .75, 0, col3, col3, col3, col3, 1);
		
		draw_text_transformed_color(ideal_width/2, yy+276, "Timer", 1, 1, 0, col2, col2, col2, col2, 1);
		var yy_pos = yy+300, size_l = .75;
		
		if minute < 10{
			if second < 10{
					if ms < 10{
						draw_text_transformed_color(ideal_width/2, yy_pos, "0"+string(minute)+":"+"0"+string(second)+":"+"0"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}else{
						draw_text_transformed_color(ideal_width/2, yy_pos, "0"+string(minute)+":"+"0"+string(second)+":"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}
				}else{
					if ms < 10{
						draw_text_transformed_color(ideal_width/2, yy_pos, "0"+string(minute)+":"+string(second)+":"+"0"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}else{
						draw_text_transformed_color(ideal_width/2, yy_pos, "0"+string(minute)+":"+string(second)+":"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}
				}
			}else{
				if second < 10{
					if ms < 10{
						draw_text_transformed_color(ideal_width/2, yy_pos, string(minute)+":"+"0"+string(second)+":"+"0"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}else{
						draw_text_transformed_color(ideal_width/2, yy_pos, string(minute)+":"+"0"+string(second)+":"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}
				}else{
					if ms < 10{
						draw_text_transformed_color(ideal_width/2, yy_pos, string(minute)+":"+string(second)+":"+"0"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}else{
						draw_text_transformed_color(ideal_width/2, yy_pos, string(minute)+":"+string(second)+":"+string(ms), size_l, size_l, 0, col3, col3, col3, col3, 1);
					}
				}
	
			}

		
	}
	
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