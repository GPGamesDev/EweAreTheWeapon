/// @description Insert description here
// You can write your code in this editor

if(point_distance(x,y,oPlayer.x,oPlayer.y)<nullDist) exit
if(held) exit

x+=sign(oPlayer.x-x)*pullTowardsCenter;
y+=sign(oPlayer.y-y)*pullTowardsCenter;