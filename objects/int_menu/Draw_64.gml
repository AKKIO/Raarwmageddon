/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2)-1, (ideal_height/3), 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2)+1, (ideal_height/3), 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2), (ideal_height/3)-1, 2, 2, 0, c_black, 1)
//draw_sprite_ext(spr_LOGO, 0, (ideal_width/2), (ideal_height/3)+1, 2, 2, 0, c_black, 1)

draw_sprite_ext(spr_LOGO, 0, ideal_width/2, (ideal_height/3), 1, 1, 0, c_white, 1)
if show <=60{
	draw_set_font(font_00);
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center);
	
	draw_text_transformed_color((ideal_width/2)+1, (ideal_height/1.5), "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((ideal_width/2)-1, (ideal_height/1.5), "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((ideal_width/2), (ideal_height/1.5)+1, "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_transformed_color((ideal_width/2), (ideal_height/1.5)-1, "PRESS SPACE", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	if instance_exists(int_surfacesColor){
		draw_text_transformed_color(ideal_width/2, ideal_height/1.5, "PRESS SPACE", 1, 1, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
	}
}
if show >= 0{
	show--
}else{
	show = 120;
}
