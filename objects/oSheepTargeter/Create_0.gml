/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

target = instance_nearest(x,y,oSheep);
direction = point_direction(x,y,target.x,target.y);

dragSpeed = 2;

mouthPos = [30,10];