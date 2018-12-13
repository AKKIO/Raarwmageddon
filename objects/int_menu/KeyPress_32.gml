/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(chapter){
	case(0):
		chapter = 1;
	break;
	
	case(1):
		switch(select){
			case(0):
				room_goto(rm_select_char)
			break;
			
			case(2):
				room_goto(rm_tutorial);
			break;
		}
	break;
	
	case(5):
		room_goto_next();
	break;
}