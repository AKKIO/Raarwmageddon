/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(obj_shit){
	image_blend = global.color_now;
}
with(obj_bigger_shit){
	image_blend = global.color_now;
}

if instance_exists(int_GUI){
	switch(global.level){
		case(3):
			if col_s < 5{
				col_s +=1;
			}
		break;
	}

}

switch(col_s){
	case(0): global.color_now = c_redme break;
	case(1): global.color_now = c_pinkme break;
}