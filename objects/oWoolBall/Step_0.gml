/// @description Insert description here
// You can write your code in this editor

if(inPlace) exit;

var _playerX = oPlayer.x;
var _playerY = oPlayer.y;

//if(point_distance(x,y,oPlayer.x,oPlayer.y)<nullDist) exit
if(abs(x-_playerX)<nullXDist && abs(y-_playerY)<nullYDist){
	var _nearestBall = instance_nearest(x,y,oWoolBall);
	if(point_distance(x,y,_nearestBall.x,_nearestBall.y)>restRadius) inPlace = true;
	exit;
}
if(held) exit;

x+=sign(_playerX-x)*pullTowardsCenter;
y+=sign(_playerY-y)*pullTowardsCenter;