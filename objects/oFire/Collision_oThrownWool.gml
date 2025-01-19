/// @description Insert description here
// You can write your code in this editor

if(other.image_index == 1) exit

other.image_index = 1;
uses--;

image_xscale *=.75;
image_yscale *=.75;

if(uses == 0) instance_destroy()