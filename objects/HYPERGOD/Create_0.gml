/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !directory_exists("save_files"){
	directory_create("save_files");
}

ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("options"){
	ini_write_string("options", "style", "MQ==");
}
if !ini_key_exists("options", "scrshk"){
	ini_write_real("options", "scrshk", 1);
}
if !ini_key_exists("options", "particles"){
	ini_write_real("options", "particles", 1);
}
if !ini_section_exists("rewards"){
	var crypt = base64_encode(string(pi));
	ini_write_string("rewards", "s_d", crypt);
	ini_write_string("rewards", "k_d", crypt);
}
var st_decrypt = ini_read_string("options", "style", 1);
st = real(base64_decode(st_decrypt));
ini_close();

ini_open(working_directory + "/save_files/"+"save.ini");
	if !ini_section_exists("Score"){
		ini_write_string("Score", "highscore", "MAo=");
	}
ini_close();

ini_open(working_directory + "/save_files/"+"save.ini");
	if !ini_key_exists("options", "tutorial"){
		ini_write_string("options", "tutorial", 0);
	}
ini_close();