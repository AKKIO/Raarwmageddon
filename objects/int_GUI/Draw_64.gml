/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_font(font_00);
draw_set_halign(fa_center);
draw_text_transformed_color((ideal_width-ideal_width)-64, 8, "LEVEL", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
draw_text_transformed_color((ideal_width-ideal_width)-64, 16, global.level, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);

if keyboard_check(ord("C")){
	draw_text_transformed_color((ideal_width-ideal_width)-64, 40, "COUNTER", .5, .5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color((ideal_width-ideal_width)-64, 48, global.counter, 1.5, 1.5, 0, global.color_now, global.color_now, global.color_now, global.color_now, 1);
}