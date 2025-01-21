/// @description Insert description here
// You can write your code in this editor

if(held) exit

var _playerX = oPlayer.x;
var _playerY = oPlayer.y;

var _dir = point_direction(x,y,other.x,other.y);

x -= dsin(_dir)*pushFromOthers+random(2)-1;
y -= dcos(_dir)*pushFromOthers+random(6)-3;