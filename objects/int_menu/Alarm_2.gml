/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(int_surfacesColor){
	if int_surfacesColor.style = 0{
		if !audio_is_playing(mc_menu){
			audio_stop_all();
			audio_play_sound(mc_menu, 1, 1);
		}
	}else{
		if !audio_is_playing(mc_menu_style_1){
			audio_stop_all();
			audio_play_sound(mc_menu_style_1, 1, 1);
		}
	}
}