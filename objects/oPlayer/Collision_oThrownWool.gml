/// @description Insert description here
// You can write your code in this editor

if(!other.canBePickedUp) exit

if(heldAmmo = noone){
	heldAmmo = instance_create_layer(x,y,"WoolAmmo",oWoolBall);
	heldAmmo.x = x+armPos[0];
	heldAmmo.y = y+armPos[1];
	heldAmmo.image_index = other.image_index;
	heldAmmo.held = true;
}
else{
	array_push(woolAmmo,instance_create_layer(x,y,"WoolAmmo",oWoolBall,{image_index : other.image_index}));
}
instance_destroy(other);