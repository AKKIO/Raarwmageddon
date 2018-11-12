/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = irandom_range(2, 4)
part_particles_create_color(global.partsys[0], x, y, global.part[0], image_blend,i)
dest = instance_create_layer(x, y, "ly_platforms", obj_impact);
dest.image_blend = make_color_rgb(221, 11, 11);
int_camera.scr = 1;