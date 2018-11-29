/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
shader_set(sh_outline);
shader_set_uniform_f(uPixelW, texelW);
shader_set_uniform_f(uPixelH, texelH);
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 1{
		image_blend = global.second_detail_color;
		
		shader_set_uniform_f(colorR, 0);
		shader_set_uniform_f(colorG, 0);
		shader_set_uniform_f(colorB, 0);
	}else{
		shader_set_uniform_f(colorR, color_get_red(global.color_now)/140);
		shader_set_uniform_f(colorG, color_get_green(global.color_now)/140);
		shader_set_uniform_f(colorB, color_get_blue(global.color_now)/140);
	}
}
draw_self();
shader_reset();