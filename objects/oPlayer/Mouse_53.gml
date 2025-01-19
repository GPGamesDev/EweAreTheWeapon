/// @description Insert description here
// You can write your code in this editor

if(heldAmmo == noone) exit

var _throwDir = point_direction(x,y,mouse_x,mouse_y)+random(4)-2;

instance_create_layer(x+armPos[0],y+armPos[1],"WoolAmmo",oThrownWool,{
	direction : _throwDir,
	speed : throwSpeed,
	image_index : heldAmmo.image_index
})

instance_destroy(heldAmmo);
heldAmmo = noone;
if(array_length(woolAmmo)==0) exit
heldAmmo = array_shift(woolAmmo);
heldAmmo.x = x+armPos[0];
heldAmmo.y = y+armPos[1];
heldAmmo.held = true;