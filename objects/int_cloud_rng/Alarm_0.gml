/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
alarm[0] = irandom_range(room_speed*3, room_speed*5);
var i = irandom_range(2, 6)
repeat(i){
	instance_create_layer(room_width*1.5, irandom_range(32, room_height-64), "ly_objects", obj_cloud);
}
