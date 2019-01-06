/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !audio_is_playing(mc_track1){
	audio_stop_all();
	audio_play_sound(mc_track1, 1, 1);
}