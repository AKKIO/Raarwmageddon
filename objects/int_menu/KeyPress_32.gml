/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(chapter){
	case(0):
		if tutorial = 0{
			room_goto(rm_tutorial);
		}else{
		chapter = 1;
		}
	break;
	
	case(1):
		switch(select){
			case(0):
				room_goto(rm_select_char)
			break;
			
			case(1):
				chapter = 2;
				select = 0;
			break;
			
			case(2):
				room_goto(rm_tutorial);
			break;
		}
	break;
	
	case(2):
		switch(select){
			case(0):
			
			break;
			
			case(1):
				chapter = 4;
				select = 0;
			break;
			
			case(2):
				chapter = 1;
				select = 1;
			break;
		}
	break;
	
	case(4):
		switch(select){
			case(0):
				if instance_exists(int_surfacesColor){
					st = !st;
					var style_cryp = base64_encode(string(st));
					ini_open(working_directory + "/save_files/"+"save.ini");
					ini_write_string("options", "style", style_cryp);
					ini_close();
					int_surfacesColor.reset_style = 1;
				}
			break;
			
			case(1):
					ini_open(working_directory + "/save_files/"+"save.ini");
					var a = ini_read_real("options", "particles", 1);
					var a = !a;
					if a = 0{
						txtp = "OFF"
					}else{
						txtp = "ON"
					}
					int_particle_sys.alarm[0] = 1;
					
					ini_write_string("options", "particles", a);
					ini_close();
			break;
			case(2):
					ini_open(working_directory + "/save_files/"+"save.ini");
					var C = ini_read_real("options", "scrshk", 1);
					var C = !C;
					if C = 0{
						txtC = "OFF"
					}else{
						txtC = "ON"
					}
					int_camera.allow_C = C;
					
					ini_write_string("options", "scrshk", C);
					ini_close();
			break;
			
			case(3):
				chapter = 2;
				select = 1;
			break;
		}
	break;
	
	case(5):
		room_goto_next();
	break;
}