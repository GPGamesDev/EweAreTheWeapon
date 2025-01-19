/// @description Insert description here
// You can write your code in this editor

if(speed == 0) exit

other.currentHP -= damage;
if(other.currentHP<=0) instance_destroy(other)

image_index = 0;
speed = 0;