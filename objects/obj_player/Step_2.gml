/// @description animations
if state = 0{
	if hspd > 0.2{
		sprite_index = spr_player_walk;
		image_xscale = 1;
	}else if hspd < -0.2{
		sprite_index = spr_player_walk;
		image_xscale = -1;	
	}else{
		sprite_index = spr_player_idle;
	}
}

if place_free(x, y+1){
	sprite_index = spr_player_jump;
	if image_index = 3{
		image_speed = 0;	
	}
}else{
	image_speed = 1.25;	
}
if state = 3{
	sprite_index = spr_player_jump;
}
