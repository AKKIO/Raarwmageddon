tile = 0;
var i = sprite_width;
if (!place_free(x, y+i)) &&(!place_free(x+i, y) && !place_free(x-i, y)){
	tile = 6;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x-i, y+i)){
	tile = 0;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x+i, y+i)){
	tile = 2;
}else if (!place_free(x, y+i) && !place_free(x+i, y)){
	tile = 7;
}else if (!place_free(x, y+i) && !place_free(x-i, y)){
	tile = 5;
}else if (!place_free(x, y-i) && !place_free(x+i, y)){
	tile = 15;
}else if (!place_free(x, y-i) && !place_free(x-i, y)){
	tile = 17;
}else if (!place_free(x+i, y) && !place_free(x-i, y)){
	tile = 1;	
}else if (!place_free(x+i, y)){
	tile = 3;
}else if (!place_free(x-i, y)){
	tile = 4;
}

if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x-i, y)){
	tile = 12;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y)){
	tile = 10
}else if (!place_free(x, y+i) && !place_free(x, y-i)){
	tile = 18;
}else if (!place_free(x, y+i) && !place_free(x+i, y) && place_free(x-i, y)){
	tile = 5
}else if (!place_free(x, y+i) && !place_free(x-i, y) && place_free(x+i, y)){
	tile = 	7;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x, y-i)){
	tile = 16;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x-i, y-i) && !place_free(x+i, y-i) && place_free(x, y+i)){
	tile = 19;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x-i, y-i) && place_free(x, y+i)){
	tile = 0;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x+i, y-i) && place_free(x, y+i)){
	tile = 2;
}else if (!place_free(x+i, y) && !place_free(x-i, y) && !place_free(x+i, y+i) && !place_free(x-i, y+i) && place_free(x, y+i)){
	tile = 27;
}


if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x-i, y-i) && !place_free(x+i, y-i) && !place_free(x-i, y+i)){
	tile = 	11;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x+i, y-i) && !place_free(x-i, y+i)){
	tile = 8;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x-i, y-i) && !place_free(x-i, y+i)){
	tile = 9;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x-i, y-i) && !place_free(x+i, y-i)){
	tile = 13
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x-i, y-i) && !place_free(x-i, y+i)){
	tile = 14;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y) && 
!place_free(x-i, y-i) && !place_free(x-i, y+i)){
	tile = 20;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x+i, y-i)){
	tile = 21;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y)) &&
(!place_free(x+i, y+i) && !place_free(x-i, y+i)){
	tile = 22;
}else if (!place_free(x, y+i) && !place_free(x, y-i) && !place_free(x+i, y) && !place_free(x-i, y) &&
!place_free(x-i, y-i) && !place_free(x+i, y-i)){
	tile = 23;
}else if (!place_free(x, y+i) && place_free(x, y-i) && place_free(x-i, y)&& place_free(x+i, y)){
	tile = 24;
}else if (!place_free(x, y-i) && place_free(x, y+i) && place_free(x-i, y)&& place_free(x+i, y)){
	tile = 25;
}else if (place_free(x+i, y) && place_free(x-i, y) && place_free(x, y+i) && place_free(x, y-i) &&
place_free(x+i, y-i) && place_free(x-i, y+i) && place_free(x+i, y+i) && place_free(x-i, y-i)){
	tile = 26;
}
if (!place_free(x-i, y) && !place_free(x+i, y) && !place_free(x, y-i) && !place_free(x, y+i) && 
place_free(x-i, y-i) && place_free(x+i, y+i) && place_free(x+i, y-i) && place_free(x-i, y+i)){
	tile = 22;
}

return(tile);