/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !directory_exists("save_files"){
	directory_create("save_files");
}

ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("options"){
	ini_write_string("options", "style", "MQ==");
}
var st_decrypt = ini_read_string("options", "style", 0);
st = real(base64_decode(st_decrypt));
ini_close();