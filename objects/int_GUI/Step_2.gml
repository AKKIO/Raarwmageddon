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

if !instance_exists(obj_barrier) && instance_exists(obj_player){
	step +=(delta_time*0.000001)*room_speed;
}
if step >=60{
	step = 0;
	second++;
}
ms = round(step);

if second >= 60{
	second = 0;
	minute++;
}