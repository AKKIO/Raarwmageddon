/// @description animations
if state = 0{
	if hspd !=0{
		sprite_index = sprwalk[dino];
	}
	
	if hspd > 0.2{
		image_xscale = 1;
	}else if hspd < -0.2{
		image_xscale = -1;	
	}else{
		sprite_index = spridle[dino];
	}
}

if place_free(x, y+1){
	sprite_index = sprjump[dino];
	if image_index >= 2{
		image_speed = 0;
		image_index = 0;
	}
}else{
	image_speed = 1.25;	
}
if state = 3{
	sprite_index = sprjump[dino];
}

//lenght dir the smash
if instance_exists(int_chars){
	var fixrheigh = 256;
}else{
	var fixrheigh = 128;
}
obj = obj_asmash;

var bbox = 8, boxl = 16, rheigh = fixrheigh;
for(var i = 0; i < rheigh; i++){
	ly[0] = y+lengthdir_y(i, -90);
	if (collision_point(x-bbox, ly[0]+boxl, obj, false, true)) {
		break;
	}
	ly[1] = y+lengthdir_y(i, -90);
	if (collision_point(x, ly[1]+boxl, obj, false, true)){
		break;
	}
	ly[2] = y+lengthdir_y(i, -90);
	if (collision_point(x+bbox-1, ly[2]+boxl, obj, false, true)){
		break;
	}
}

ly_min = min(ly[0], ly[1], ly[2]);


if !place_meeting(x, y, obj_barrier){
	instance_destroy(obj_barrier);
}

if trail_on = 1{
trail.x = x;
trail.y = y;
if state = 1{
	trail.rot = roll;
	trail.spdx = sprroll[dino];
	trail.y = y+8;
}else{
	trail.rot = image_angle
	trail.spdx = sprite_index;
	trail.y = y;
}
trail.imdx = image_index;
trail.col = image_blend;
trail.dur = 3;
trail.szorview = 1;
trail.image_xscale = image_xscale;
trail.image_yscale = image_yscale;
trail.start = 15;
}