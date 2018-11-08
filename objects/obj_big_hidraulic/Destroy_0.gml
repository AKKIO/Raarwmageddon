/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(2, 4)
repeat(i){
	parts = instance_create_layer(x, y-24, "ly_platforms", obj_particle_00);
	parts.red = 1;
}
dest = instance_create_layer(x, y, "ly_platforms", obj_impact);
dest.image_blend = make_color_rgb(221, 11, 11);
int_camera.scr = 1;