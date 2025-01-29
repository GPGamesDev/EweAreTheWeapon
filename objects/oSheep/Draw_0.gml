/// @description Insert description here
// You can write your code in this editor

if(direction < 90 || direction > 270) image_xscale = -1;
else image_xscale = 1;

if(atTarget){
	image_speed = 0;
	image_index = 0;
}
else image_speed = 1;


draw_self();