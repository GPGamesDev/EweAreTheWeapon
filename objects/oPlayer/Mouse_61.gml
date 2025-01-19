/// @description Insert description here
// You can write your code in this editor

if(heldAmmo == noone) exit

array_insert(woolAmmo,0,heldAmmo);
heldAmmo.x = x;
heldAmmo.y = y;
heldAmmo.held = false;

heldAmmo = array_pop(woolAmmo);
heldAmmo.x = x+armPos[0];
heldAmmo.y = y+armPos[1];
heldAmmo.held = true;