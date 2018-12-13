/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
if key_up && scroll = 0{
	alarm[0] = room_speed/3;
	if select = 0{
		select = 2;
	}else{
		select--
	}
	scroll = 1;
}

if key_down && scroll = 0{
	alarm[0] = room_speed/3;
	if select = 2{
		select = 0;
	}else{
		select++
	}
	scroll = 1;
}
if keyboard_check_released(ord("W")) || keyboard_check_released(vk_up) || keyboard_check_released(ord("WS")) || keyboard_check_released(vk_down){
	scroll = 0;
}