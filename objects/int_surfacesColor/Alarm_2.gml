/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if style = 1{
	switch(global.counter){
		case(0):
			if !audio_is_playing(mc_track1){
			audio_play_sound(mc_track_1_style1, 1, 1);
			}
		break;
				
		case(4):
			if !audio_is_playing(mc_track2){
			audio_play_sound(mc_track_2_style1, 1, 1);
			}
		break;
				
		case(9):
			if !audio_is_playing(mc_track3){
			audio_play_sound(mc_track_3_style1, 1, 1);
			}
		break
	}
}