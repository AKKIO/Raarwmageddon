/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(int_surfacesColor){
	int_surfacesColor.alarm[0] = 1;
}

if instance_exists(obj_platform){
	obj_platform.xplo = 0;	
}
if instance_exists(obj_platform_brick){
	obj_platform_brick.xplo = 0;
}
if instance_exists(obj_platform_sand){
	obj_platform_sand.xplo = 0;
	obj_platform_sand.sand = 1;
}
if instance_exists(obj_small_hidraulic){
	obj_small_hidraulic.xplo = 0;
}
if instance_exists(obj_big_hidraulic){
	obj_big_hidraulic.xplo = 0;
}
if instance_exists(obj_solid){
	obj_solid.alarm[0] = 2;
}
if instance_exists(obj_shit){
	instance_destroy(obj_shit);
}
if instance_exists(obj_bigger_shit){
	instance_destroy(obj_bigger_shit);
}
if instance_exists(obj_platform_brick){
	instance_destroy(obj_platform_brick);
}
if instance_exists(obj_platform){
	instance_destroy(obj_platform);
}
if instance_exists(obj_platform_brick){
	instance_destroy(obj_platform_brick);
}
if instance_exists(obj_platform_sand){
	instance_destroy(obj_platform_sand);
}
if instance_exists(obj_small_hidraulic){
	instance_destroy(obj_small_hidraulic);
}
if instance_exists(obj_small_xhidraulic){
	instance_destroy(obj_small_xhidraulic);
}
if instance_exists(obj_big_hidraulic){
	instance_destroy(obj_big_hidraulic);
}
if instance_exists(obj_detail){
	instance_destroy(obj_detail);
}
if instance_exists(obj_safezonetop){
	instance_destroy(obj_safezonetop);
}
if global.allow_p = 1{
	part_particles_clear(global.part[0]);
}
int_menu.alarm[1] = 2;