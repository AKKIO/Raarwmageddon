/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !directory_exists("save_files"){
	directory_create("save_files");
}

ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("options"){
	ini_write_real("options", "style", 0);
}
st = ini_read_real("options", "style", 0);
ini_close();