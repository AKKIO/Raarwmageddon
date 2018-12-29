/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);

if key_left && scroll = 0{
	if chapter = 3{
		switch(select){
			case(0)://FX
				if snd_fx > 0{
					snd_fx--;
					scroll = 1;
					alarm[0] = room_speed/up;
					audio_play_sound(snd_smash, 1, 0);
				}
			break;
		
			case(1)://MUSIC
				if snd_music > 0{
					snd_music--;
					scroll = 1;
					alarm[0] = room_speed/up;
				}
			break;
		}
	}
}else if key_right && scroll = 0{
		if chapter = 3{
		switch(select){
			case(0)://FX
				if snd_fx < 10{
					snd_fx++;
					scroll = 1;
					alarm[0] = room_speed/up;
					audio_play_sound(snd_smash, 1, 0);
				}
			break;
		
			case(1)://MUSIC
				if snd_music < 10{
					snd_music++;
					scroll = 1;
					alarm[0] = room_speed/up;
				}
			break;
		}
	}
}
if keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || keyboard_check_released(ord("A")) ||
keyboard_check_released(ord("D")) || keyboard_check_released(vk_up) || keyboard_check_released(vk_down) ||
keyboard_check_released(ord("W")) || keyboard_check_released(ord("S")){
	up = 3;
}

ini_open(working_directory + "/save_files/"+"save.ini");
	FX = snd_fx/10;
	MUSIC = snd_music/10;
	ini_write_real("options", "FX", FX);
	ini_write_real("options", "MUSIC", MUSIC);
ini_close();
audio_group_set_gain(grp_FX, FX, 50);
audio_group_set_gain(grp_MUSIC, MUSIC, 50);