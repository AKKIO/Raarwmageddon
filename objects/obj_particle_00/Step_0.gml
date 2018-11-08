/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
v = motion_set(dir, spd)
vspd += grav;

y +=vspd;
if y > camera_get_view_y(view_camera)+(camera_get_view_height(view_camera)){
	instance_destroy();
}
if red = 1{
	image_blend = make_color_rgb(221, 11, 11);
}