/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.mult_scr = global.temp_scr;

if instance_exists(obj_player){
	if show_scr < global.temp_scr{
		show_scr++;
		less = 60;
	}
}
if score_gui < global.scr{
	score_gui++;
}
clock++;