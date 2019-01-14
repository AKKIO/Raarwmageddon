/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !audio_is_playing(mc_menu_style_1){
	audio_stop_all();
	audio_play_sound(mc_menu_style_1, 1, 1);
}