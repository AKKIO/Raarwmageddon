/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
shader_set(sh_outline);
shader_set_uniform_f(uPixelW, texelW);
shader_set_uniform_f(uPixelH, texelH);
if instance_exists(int_surfacesColor){
	shader_set_uniform_f(colorR, color_get_red(global.color_now)/100);
	shader_set_uniform_f(colorG, color_get_green(global.color_now)/100);
	shader_set_uniform_f(colorB, color_get_blue(global.color_now)/100);
}
draw_self();
shader_reset();