/// @description Insert description here
// You can write your code in this editor

var _playerX = oPlayer.x;
var _playerY = oPlayer.y;

//if(point_distance(x,y,oPlayer.x,oPlayer.y)<nullDist) exit
if(abs(x-_playerX)<nullXDist && abs(y-_playerY)<nullYDist) exit;
if(held) exit;

x+=sign(_playerX-x)*pullTowardsCenter;
y+=sign(_playerY-y)*pullTowardsCenter;