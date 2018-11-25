/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if image_index >= 19{
	instance_destroy();	
}
if instance_exists(obj_dino){
	if obj_dino.state = 1{
		instance_destroy();
	}
}else{
	instance_destroy();
}