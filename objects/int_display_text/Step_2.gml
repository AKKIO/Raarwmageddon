/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(vk_space){
	switch(str){
		case(1): str = 2 break;
		case(2): jumps +=1 alarm[0] = 30 break;
	}
}

if jumps = 2 && str = 2{
	str = 3;
	hdr = instance_create_layer(room_width/2, (room_height)-20, "ly_objects", obj_small_hidraulic);
	event[0] = 1;
}

if event[0] = 1{
	if hdr.y > room_height-44{
		hdr.y--
	}
}
if instance_exists(obj_small_hidraulic) && str = 3{
	if hdr.spd != 0{
		str = 4;
		alarm[1] = room_speed*2;
	}
}


if keyboard_check(ord("A")) || keyboard_check(vk_left){
	if movel = 0{
		movel = 1;
	}
}
if keyboard_check(ord("D")) || keyboard_check(vk_right){
	if mover = 0{
		mover = 1;
	}
}

if mover = 1 && movel = 1 && str = 0{
	str = 1;
}

if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")) && str = 5{
	str = 6;
	alarm[1] = room_speed*2;
	
}