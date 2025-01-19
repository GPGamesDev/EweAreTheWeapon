/// @description Insert description here
// You can write your code in this editor

if(held) exit

var _dir = point_direction(x,y,other.x,other.y);

x -= dsin(_dir)*pushFromOthers;
y -= dcos(_dir)*pushFromOthers;