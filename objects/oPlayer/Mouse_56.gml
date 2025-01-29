/// @description Insert description here
// You can write your code in this editor

if(heldAmmo == noone || !charging) exit

armPos[0] = sign(x-mouse_x)*baseArmPos[0];

var _throwDir = point_direction(x+armPos[0],y+armPos[1],mouse_x,mouse_y)+random(4)-2;



instance_create_layer(x+armPos[0],y+armPos[1],"WoolAmmo",oThrownWool,{
	direction : _throwDir,
	speed : throwSpeed,
	image_index : heldAmmo.image_index,
	stopTimer : 0.75*clamp(((get_timer() - throwStartTime)/fullThrowTime),0.25,1)
})

charging = false;

instance_destroy(heldAmmo);
heldAmmo = noone;
if(array_length(woolAmmo)==0) exit
heldAmmo = array_shift(woolAmmo);
heldAmmo.x = x+armPos[0];
heldAmmo.y = y+armPos[1];
heldAmmo.held = true;