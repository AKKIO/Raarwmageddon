/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_create_layer(x, y, "ly_platforms", obj_impact);
instance_create_layer(x, y, "ly_platforms", obj_soul);

if instance_exists(int_GUI) && instance_exists(GOD){
	if global.dinos >= 10{
		ini_open(working_directory + "/save_files/"+"save.ini");
		din_crypt[3] = base64_encode(string("499"))
		ini_write_string("DINOS", "dino03", din_crypt[3]);
		ini_close();
	}
	if global.killed_dinos>= 10{
		ini_open(working_directory + "/save_files/"+"save.ini");
		din_crypt[2] = base64_encode(string("499"))
		ini_write_string("DINOS", "dino02", din_crypt[2]);
		ini_close();
	}
}
if trail_on = 1{
	instance_destroy(trail);
	trail_on = 0;
}
scr_death();