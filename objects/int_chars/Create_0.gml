/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
if !ini_section_exists("DINOS"){
	char_crypt = base64_encode(string("0"));
	din_crypt[0] = base64_encode(string("499"))
	din_crypt[1] = base64_encode(string("0"))
	din_crypt[2] = base64_encode(string("0"))
	ini_write_string("DINOS", "PLAYER", char_crypt);
	ini_write_string("DINOS", "dino00", din_crypt[0]);
	ini_write_string("DINOS", "dino01", din_crypt[1]);
	ini_write_string("DINOS", "dino02", din_crypt[2]);
}
ini_open(working_directory + "/save_files/"+"save.ini");
din_crypt[0] = ini_read_string("DINOS", "dino00", "0");
din_crypt[1] = ini_read_string("DINOS", "dino01", "0");
din[0] = real(base64_decode(din_crypt[0]));
din[1] = real(base64_decode(din_crypt[1]));
ini_close();

color = instance_create_layer(x, y, "ly_instances", int_surfacesColor);
truener = 499;
allowmove = 0;

instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(x, y, "ly_instances", int_cloud_rng);
instance_create_layer(room_width/2, room_height-64, "ly_instances", obj_follower);
instance_create_layer(room_width/2, (room_height)/2, "ly_instances", int_camera)//camera
pointer = instance_create_layer(room_width/2, room_height/2, "ly_instances", obj_pointer)

if din[0] = truener{
	var xx = 32+(room_width/3)+(irandom(12))*16;
	char[0] = instance_create_depth(xx, room_height-40, "ly_objects", obj_char_sel);
	char[0].image_xscale = choose(-1, 1);
	allowmove = 0;
	
}
if din[1] = truener{
	var xx = 32+(room_width/3)+(irandom(12))*16;
	char[1] = instance_create_depth(xx, room_height-40, "ly_objects", obj_char_sel);
	char[1].image_xscale = choose(-1, 1);
	char[1].sprite_index = spr_dinocorn_idle;
	allowmove = 1;
}

array = 0;