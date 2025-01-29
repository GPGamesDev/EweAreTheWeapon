/// @description Insert description here
// You can write your code in this editor

var _horzMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(instance_place(x+moveSpeed*_horzMove,y,oFence) != noone) _horzMove = 0;
if(instance_place(x,y+moveSpeed*_vertMove,oFence) != noone) _vertMove = 0;

if(!stunned) playerMove(moveSpeed*_horzMove,moveSpeed*_vertMove);

if(!charging) armPos[0] = sign(x-mouse_x)*baseArmPos[0];
