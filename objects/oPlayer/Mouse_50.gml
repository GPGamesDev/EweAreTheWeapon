/// @description Insert description here
// You can write your code in this editor

if(heldAmmo == noone || !charging) exit

armPos[0] = sign(x-mouse_x)*(baseArmPos[0] + clamp(((get_timer() - throwStartTime)/fullThrowTime)*10,0,10));