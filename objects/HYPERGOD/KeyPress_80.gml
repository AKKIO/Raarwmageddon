/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
st = !st;
var style_cryp = base64_encode(string(st));
ini_open(working_directory + "/save_files/"+"save.ini");
ini_write_string("options", "style", style_cryp);
ini_close();