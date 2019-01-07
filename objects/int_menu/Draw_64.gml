/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2)-1, (ideal_height/3), 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2)+1, (ideal_height/3), 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2), (ideal_height/3)-1, 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2), (ideal_height/3)+1, 2, 2, 0, c_black, 1)
draw_set_font(font_00);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 1{
		col = global.second_detail_color
		logcol = col;
		col2 = global.color_now;
	}else{
		col = global.color_now;
		logcol = c_white;
		col2 = c_black;
	}
}
sz1 = 1
sz2 = 0.5

draw_sprite_ext(spr_LOGO, 0, ideal_width/2, (ideal_height/3), 1, 1, 0, logcol, 1)
draw_text_transformed_color(ideal_width/2, ideal_height-16, "BlackBOX(C)2019", .5, .5, 0, col, col, col, col, 1);
switch(chapter){
	case(0):
		if show <=60{
			draw_text_transformed_color((ideal_width/2)+1, (ideal_height/1.5), "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			draw_text_transformed_color((ideal_width/2)-1, (ideal_height/1.5), "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			draw_text_transformed_color((ideal_width/2), (ideal_height/1.5)+1, "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			draw_text_transformed_color((ideal_width/2), (ideal_height/1.5)-1, "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			if instance_exists(int_surfacesColor){
				draw_text_transformed_color(ideal_width/2, ideal_height/1.5, "PRESS SPACE", 1, 1, 0, col, col, col, col, 1);
			}
		}
		if show >= 0{
			show--
		}else{
			show = 120;
		}
	break;
	
	case(1)://menu 1
	switch(select){
		case(0):
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "New run", sz1, sz2, 0, col2, col, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Settings", sz1, sz2, 0, col, c_black, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Tutorial", sz1, sz2, 0, col, c_black, 1);
		break;
		
		case(1):
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "New run", sz1, sz2, 0, col, c_black, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Settings", sz1, sz2, 0, col2, col, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Tutorial", sz1, sz2, 0, col, c_black, 1);
		break;
		
		case(2):
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "New run", sz1, sz2, 0, col, c_black, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Settings", sz1, sz2, 0, col, c_black, 1);
			scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Tutorial", sz1, sz2, 0, col2, col, 1);
		break;
	}
	break;
	
	case(2)://options
		switch(select){
			case(0):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Audio", sz1, sz2, 0, col2, col, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Video", sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(1):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Audio", sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Video", sz1, sz2, 0, col2, col, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(2):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Audio", sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Video", sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Back", sz1, sz2, 0, col2, col, 1);
			break;
		}
	break;
	
	case(3)://audio
		switch(select){
			case(0):
				draw_sprite_ext(spr_soundbar_bkg, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col, 1);//FX
				draw_sprite_ext(spr_soundbar, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+32, (ideal_height/2)+32, "FX", sz1, sz2, 0, col2, col, 1);
				
				draw_sprite_ext(spr_soundbar_bkg, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col2, 1);//MUSIC
				draw_sprite_ext(spr_soundbar, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+43, (ideal_height/2)+56, "MUSIC", sz1, sz2, 0, col, c_black, 1);
				
				scr_draw_text_outline((ideal_width/2), (ideal_height/2)+82, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(1):
				draw_sprite_ext(spr_soundbar_bkg, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col2, 1);//FX
				draw_sprite_ext(spr_soundbar, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+32, (ideal_height/2)+32, "FX", sz1, sz2, 0, col, c_black, 1);
				
				draw_sprite_ext(spr_soundbar_bkg, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col, 1);//MUSIC
				draw_sprite_ext(spr_soundbar, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+43, (ideal_height/2)+56, "MUSIC", sz1, sz2, 0, col2, col, 1);
				
				scr_draw_text_outline((ideal_width/2), (ideal_height/2)+82, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(2):
				draw_sprite_ext(spr_soundbar_bkg, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col2, 1);//FX
				draw_sprite_ext(spr_soundbar, snd_fx, ideal_width/2,(ideal_height/2)+32, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+32, (ideal_height/2)+32, "FX", sz1, sz2, 0, col, c_black, 1);
				
				draw_sprite_ext(spr_soundbar_bkg, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col2, 1);//MUSIC
				draw_sprite_ext(spr_soundbar, snd_music, ideal_width/2,(ideal_height/2)+56, 1, 1, 0, col, 1);//
				scr_draw_text_outline((ideal_width/2)+43, (ideal_height/2)+56, "MUSIC", sz1, sz2, 0, col, c_black, 1);
				
				scr_draw_text_outline((ideal_width/2), (ideal_height/2)+82, "Back", sz1, sz2, 0, col2, col, 1);
			break;
		}
	break;
	
	case(4)://Video;
		switch(select){
			case(0):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Style "+string(style_r[style_read]), sz1, sz2, 0, col2, col, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Particles "+string(txtp), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Screenshake "+string(txtC), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+30, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(1):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Style "+string(style_r[style_read]), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Particles "+string(txtp), sz1, sz2, 0, col2, col, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Screenshake "+string(txtC), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+30, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(2):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Style "+string(style_r[style_read]), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Particles "+string(txtp), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Screenshake "+string(txtC), sz1, sz2, 0, col2, col, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+30, "Back", sz1, sz2, 0, col, c_black, 1);
			break;
			
			case(3):
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5), "Style "+string(style_r[style_read]), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+10, "Particles "+string(txtp), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+20, "Screenshake "+string(txtC), sz1, sz2, 0, col, c_black, 1);
				scr_draw_text_outline((ideal_width/2), (ideal_height/1.5)+30, "Back", sz1, sz2, 0, col2, col, 1);
			break;
		}
	break;
}