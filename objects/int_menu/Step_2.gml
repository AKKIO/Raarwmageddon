/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

if chapter = 4{
	if key_up && scroll = 0{
		alarm[0] = room_speed/up;
		if select = 0{
			select = 2;
		}else{
			select--
		}
		scroll = 1;
	}


	if key_down && scroll = 0{
		alarm[0] = room_speed/up;
		if select = 3{
			select = 0;
		}else{
			select++
		}
		scroll = 1;
	}
}else{
	if key_up && scroll = 0{
		alarm[0] = room_speed/up;
		if select = 0{
			select = 2;
		}else{
			select--
		}
		scroll = 1;
	}


	if key_down && scroll = 0{
		alarm[0] = room_speed/up;
		if select = 2{
			select = 0;
		}else{
			select++
		}
		scroll = 1;
	}

}

style_read = st;

if keyboard_check_released(ord("W")) || keyboard_check_released(vk_up) || keyboard_check_released(ord("WS")) || keyboard_check_released(vk_down){
	scroll = 0;
}
ini_open(working_directory + "/save_files/"+"save.ini");
	tutorial = ini_read_real("options", "tutorial", "0");
ini_close();
if blip != select{
	audio_play_sound(snd_blip, 1, 0);
	blip = select;
}