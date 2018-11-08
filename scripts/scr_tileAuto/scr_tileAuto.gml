var tile = 0;
var detect = argument0;
var type_tyle = argument1;
ww = sprite_width;
if type_tyle = 0{
if place_meeting(x-ww, y, detect) && place_meeting(x+ww, y, detect) && !place_meeting(x, y-ww, detect){
	tile = 2;
}else if (place_meeting(x, y-ww, detect) && place_meeting(x, y+ww, detect) && place_meeting(x+ww, y, detect) && place_meeting(x-ww, y, detect)){
	tile = 0;
}else if place_meeting(x, y-ww, detect) && place_meeting(x, y+ww, detect){
	tile = 1;
	if x < room_width/2{
		image_xscale = -1;
	}
}
}else{
	if !place_free(x-ww, y) && !place_free(x+ww, y){
		tile = 0;
	}else if !place_free(x-ww, y){
		tile = 1
		image_xscale =-1;
	}else if !place_free(x+ww, y){
		tile = 1;
		image_xscale =1;
		
	}
}

return(tile);