/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if str = 6{
	var h = 160
	for(i = 0; i < 6; i++){
		instance_create_layer(room_width/2, (room_height)-h, "ly_objects", obj_platform);
		instance_create_layer((room_width/2)-16, (room_height)-h, "ly_objects", obj_platform);
		instance_create_layer((room_width/2)+16, (room_height)-h, "ly_objects", obj_platform);
		h+=64;
	}
}

str += 1;
