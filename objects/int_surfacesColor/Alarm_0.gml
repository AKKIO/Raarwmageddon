/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if style = 1{
	if global.counter > 14{
		global.counter = 0;
	}
	switch(global.counter){
		case(0):
			col_s = 12;
		break;
				
		case(4):
			col_s = 14;
		break;
				
		case(9):
			col_s = 16;
		break
	}
}else if instance_exists(int_menu) && style = 1 || instance_exists(int_chars) && style = 1{
	var back_id = layer_background_get_id("ly_bkg")
	layer_background_blend(back_id, global.color_now);
			
	col_s = 12;
}