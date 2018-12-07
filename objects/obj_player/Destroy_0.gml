/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(x, y, "ly_platforms", obj_impact);
instance_create_layer(x, y, "ly_platforms", obj_soul);

ini_open(working_directory + "/save_files/"+"save.ini");		
var code_sd = base64_encode(string(global.saved_dinos*pi));
var code_kd = base64_encode(string(global.killed_dinos*pi));
ini_write_string("rewards", "s_d", code_sd); 
ini_write_string("rewards", "k_d", code_kd); 
ini_close();