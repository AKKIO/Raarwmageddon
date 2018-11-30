/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//pointer.x = char[array].x;
//pointer.y = char[array].y;

pointer.x = lerp(pointer.x, char[array].x, .5);
pointer.y = lerp(pointer.y, char[array].y, .5);

if keyboard_check_pressed(vk_space){
	ini_open(working_directory + "/save_files/"+"save.ini");
	var character_p = base64_encode(string(array*pi));
	ini_write_string("DINOS", "PLAYER", character_p);
	ini_close();
	room_goto_next();
}