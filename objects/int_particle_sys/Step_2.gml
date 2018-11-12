/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !part_system_exists(global.partsys[0]){
	global.partsys[0] =part_system_create();
}
if !part_system_exists(global.part[0]){
	global.part[0] = part_system_create();
}