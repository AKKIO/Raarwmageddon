/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(obj_char_hidraulic){
	alarm[0] = irandom_range(room_speed*3, room_speed*5);
	var i = irandom_range(2, 6)
	repeat(i){
	instance_create_layer(room_width*1.5, irandom_range(32, room_height-64), "ly_barrier", obj_cloud);
	}
}else{
	alarm[0] = irandom_range(room_speed*10, room_speed*15);
	var i = irandom_range(1, 2)
	repeat(i){
	instance_create_layer(room_width*1.5, irandom_range(32, room_height-64), "ly_barrier", obj_cloud);
	}
}