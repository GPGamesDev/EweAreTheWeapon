/// @description Insert description here
// You can write your code in this editor

if(direction < 90 || direction > 270) image_xscale = -1;
else image_xscale = 1;

if(currentState == ENEMY_STATE.DRAG) image_xscale *= -1;

draw_self();