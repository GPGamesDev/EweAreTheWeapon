// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerMove(_xDelta,_yDelta){
	x += _xDelta;
	y += _yDelta;

	if(heldAmmo != noone){
		heldAmmo.x += _xDelta;
		heldAmmo.y += _yDelta;
	}

	for(i = 0; i<array_length(woolAmmo); i++){
		woolAmmo[i].x += _xDelta;
		woolAmmo[i].y += _yDelta;
	}
}