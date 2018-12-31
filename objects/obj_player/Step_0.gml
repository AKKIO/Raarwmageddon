/// @description movement

//inputs
if (gamepad_is_connected(0)) {
	key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0,gp_padl);;
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padr);;
	key_jump  = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);;
	key_roll = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_shoulderr) || gamepad_button_check_pressed(0,gp_shoulderl);;
	key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || gamepad_button_check(0,gp_padd);
}else{
	key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump  = keyboard_check_pressed(vk_space);
	key_roll = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);
	key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
}

//state to move and friction
if state = 0{
	move = (key_right-key_left)*spd;
	if (move !=0){
	hspd = move;
}else if place_free(x, y+1){
	hspd = lerp(hspd, 0, 0.2);	
}else{
	hspd = lerp(hspd, 0, 0.25);	
}
}

if !place_free(x, y+1) && land = 1{
	instance_create_layer(x, y, "ly_platforms", obj_dust);
	land = 0
}
//jumps and smash
if(!place_free(x, y + 1)){
    if (key_jump){
		instance_create_layer(x, y, "ly_platforms", obj_jumpeffect)
		vspd = -jspd;
		land = 1;
	}
}else if key_jump && place_free(x, y+1) && smash_counter <= 0 && y > 0{
	ly_p = ly_min;
	alarm[0] = 15;
	alarm[1] = 2;
	state = 3
	if place_free(x, ly_min-2){
		state = 2;
		smash_counter = 15;
		smash_allow = 1;
	}
}
if smash_counter > 0{
	smash_counter--;
}

//gradual jump to release the key
if(keyboard_check_released(vk_space) and vspd<0){
	if place_free(x, y) && place_free(x, y+1){
		vspd/=1.3;
	}
}else if place_free(x, y) && !keyboard_check(vk_space) && vspd<0{
	vspd/=1.2;
}

//save dir from wath direction are u looking
dir = (key_right-key_left);
if dir !=0{
	if !place_free(x, y+1){
		dirt.image_alpha = 1;
	}else{
		dirt.image_alpha = 0;
	}
	dirt.x = x;
	dirt.y = y;
	dir_n = dir;
	if dust > 0{
		dust--
	}else{
		dust = 10
	}
	if dust = 0 && !place_free(x, y+1){
		if dir >=1{
			dirt.image_xscale = 1
		}else{
			dirt.image_xscale = -1
		}
	}
}else{
	dirt.image_alpha = 0;
}
//gravity
if place_free(x, y+1){
	vspd += grav; //Apply gravity
}



//if not touching the floor can roll just once
if !place_free(x, y + 1){
	jumps = 1;
	air_rolls = 1;
}

//Horizontal collision
if(!place_free(x + hspd, y))
{
    while(place_free(x + sign(hspd), y))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

//Vertical collision
if(!place_free(x, y + vspd))
{
    while(place_free(x, y + sign(vspd)))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

//rol action
if key_roll && !key_jump{
	if air_rolls > 0{
		if !place_free(x, y+1){
			vspd -=2.5;
		}
		state = 1;
		alarm[0] = 15;
		if place_free(x, y+1){
			air_rolls-=1;	
		}
	}
}

//roll
if state = 1{
	move = 5;
	switch(dir){
		case(1):
			hspd = move*1.35;
		break;
		
		case(-1):
			hspd = -move*1.35;
		break;
	}
}

if place_meeting(x, y+2, obj_small_hidraulic) && state = 3{
		bkcp_j = 2;
}
if place_meeting(x, y+2, obj_big_hidraulic) && state = 3{
		bkcp_j = 3;
}
if place_meeting(x, y+2, obj_small_xhidraulic) && state = 3{
		bkcp_j = 2;
}
if place_meeting(x, y+2, obj_char_hidraulic) && state = 3{
		bkcp_j = 2;
}

switch(bkcp_j){
	case(1):// lil jump after smash
		bkcp_j = 0;
		if !place_free(x, y+1){
			vspd -=jspd/3;
			alarm[3] = 5;
		}
	break;
	
	case(2)://small hidraulic
		bkcp_j = 0;
		if !place_free(x, y+1){
			vspd -=jspd*1.5;
			alarm[3] = 5;
		}
	break
	
	case(3)://big hidraulic
		bkcp_j = 0;
		if !place_free(x, y+1){
			vspd -=jspd*2;
			alarm[3] = 5;
		}
	break;
}

if move >= 2 && walk = 0 && place_free(x+8, y) && place_free(x-8, y) || move <= -2 && walk = 0 && place_free(x+8, y) && place_free(x-8, y){
	alarm[5] = 12;
	walk = 1;
	if !place_free(x, y+1) && distance_to_object(obj_asmash) > 0{
		audio_play_sound(snd_footstep, 1, 0);
	}
}
