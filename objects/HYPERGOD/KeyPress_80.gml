/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
st = !st;
ini_open(working_directory + "/save_files/"+"save.ini");
ini_write_real("options", "style", st);
ini_close();