/// @description Insert description here
// You can write your code in this editor

if(oController.currentState == GAME_STATE.GAMEOVER){
	speed = 0;
	exit;
}

direction = point_direction(x,y,target.x,target.y);