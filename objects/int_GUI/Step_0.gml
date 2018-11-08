/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(obj_player){
	if obj_player.y < ly && obj_player.y > 0{
		scr++ ;
		ly = obj_player.y;
	}
}