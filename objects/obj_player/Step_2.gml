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

//lenght dir the smash
var bbox = 6, boxl = 16, rheigh = 140;
for(var i = 0; i < rheigh; i++){
	ly[0] = y+lengthdir_y(i, -90);
	if (collision_point(x-bbox, ly[0]+boxl, obj_solid, false, true) || 
	collision_point(x-bbox, ly[0]+boxl, obj_small_hidraulic, false, true) ||
	collision_point(x-bbox, ly[0]+boxl, obj_big_hidraulic, false, true) ||
	collision_point(x-bbox, ly[0]+boxl, obj_platform, false, true) ||
	collision_point(x-bbox, ly[0]+boxl, obj_platform_brick, false, true)) {
		break;
	}
}
for(var e = 0; e < rheigh; e++){
	ly[1] = y+lengthdir_y(e, -90);
	if (collision_point(x, ly[1]+boxl, obj_solid, false, true) || 
	collision_point(x, ly[1]+boxl, obj_small_hidraulic, false, true) ||
	collision_point(x, ly[1]+boxl, obj_big_hidraulic, false, true) ||
	collision_point(x, ly[1]+boxl, obj_platform, false, true) ||
	collision_point(x, ly[1]+boxl, obj_platform_brick, false, true)){
		break;
	}
}
for(var o = 0; o < rheigh; o++){
	ly[2] = y+lengthdir_y(o, -90);
	if (collision_point(x+bbox-1, ly[2]+boxl, obj_solid, false, true) || 
	collision_point(x+bbox-1, ly[2]+boxl, obj_small_hidraulic, false, true) ||
	collision_point(x+bbox-1, ly[2]+boxl, obj_big_hidraulic, false, true) ||
	collision_point(x+bbox-1, ly[2]+boxl, obj_platform, false, true) ||
	collision_point(x+bbox-1, ly[2]+boxl, obj_platform_brick, false, true)){
		break;
	}
}


ly_min = min(ly[0], ly[1], ly[2]);
