/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ini_open(working_directory + "/save_files/"+"save.ini");
var style_decrypt = (ini_read_string("options", "style", "MQ=="));
ini_close();
style = real(base64_decode(style_decrypt));

if instance_exists(obj_solid){
	obj_solid.alarm[1] = 1;
}
if instance_exists(obj_platform){
	obj_platform.alarm[2] = 2;
}
if instance_exists(obj_platform_brick){
	obj_platform_brick.alarm[1] = 1;
}
if instance_exists(obj_small_hidraulic){
	obj_small_hidraulic.alarm[0] = 1;
}
if instance_exists(obj_detail){
	obj_detail.alarm[0] = 1;
}

if style = 0{
	col_s = 0;
}else{
	var back_id = layer_background_get_id("ly_bkg")
	layer_background_blend(back_id, global.color_now);
			
	col_s = 12;
}