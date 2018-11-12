/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_destroy(obj_platform);
instance_destroy(obj_platform_brick);
instance_destroy(obj_small_hidraulic);
instance_destroy(obj_big_hidraulic);
instance_destroy(obj_detail);
part_system_clear(global.partsys[0]);
part_type_clear(global.part[0]);
GOD.alarm[0] = 2;
instance_create_layer(room_width/2, (room_height)-(32), "ly_objects", obj_small_hidraulic)//firs hidraulic