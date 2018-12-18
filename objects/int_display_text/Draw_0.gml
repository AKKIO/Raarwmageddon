/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(font_00);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		scr_draw_text_outline(x, y-16, message[str], 1, .5, 0, global.color_now, c_black, 1);
	}else{
		scr_draw_text_outline(x, y-16, message[str], 1, .5, 0, global.second_detail_color, c_black, 1);
	}
}