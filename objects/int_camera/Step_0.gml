/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	x = lerp(x, xm, .5);
	x+=XX;
	y+= (((obj_player.y-y)-(80))/10)+YY
}
if instance_exists(obj_follower){
	x = lerp(x, xm, .5);
	x+=XX;
	y+= (((obj_follower.y-y)-(80))/10)+YY
}

if dur > 0{
	dur--
	XX = irandom_range(-force, force)
	YY = irandom_range(-force, force)
}else{
	XX = 0;
	YY = 0;
}

if scr = 1{
	scr = 0;
	dur = 5;
}
