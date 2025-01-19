/// @description Insert description here
// You can write your code in this editor

var _horzMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(!stunned) playerMove(moveSpeed*_horzMove,moveSpeed*_vertMove);
