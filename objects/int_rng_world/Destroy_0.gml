/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if instance_exists(obj_platform){
	obj_platform.xplo = 0;	
}
if instance_exists(obj_platform_brick){
	obj_platform_brick.xplo = 0;
}
if instance_exists(obj_small_hidraulic){
	obj_small_hidraulic.xplo = 0;
}
if instance_exists(obj_big_hidraulic){
	obj_big_hidraulic.xplo = 0;
}
if instance_exists(obj_solid){
	obj_solid.alarm[0] = 1;
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
if instance_exists(obj_small_hidraulic){
	instance_destroy(obj_small_hidraulic);
}
if instance_exists(obj_big_hidraulic){
	instance_destroy(obj_big_hidraulic);
}
if instance_exists(obj_detail){
	instance_destroy(obj_detail);
}

if part_system_exists(global.partsys[0]){
	part_system_clear(global.partsys[0]);
}
if part_type_exists(global.part[0]){
	part_type_clear(global.part[0]);
}
GOD.alarm[0] = 2;
instance_create_layer(room_width/2, (room_height)-(32), "ly_objects", obj_small_hidraulic)//firs hidraulic