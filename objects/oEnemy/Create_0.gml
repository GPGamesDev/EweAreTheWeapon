/// @description Insert description here
// You can write your code in this editor

enum ENEMY_STATE{
	STALK,
	CIRCLE,
	WINDUP,
	JUMP,
	RECOVERY,
	DRAG
}

currentState = ENEMY_STATE.STALK;

maxHP = 10;
currentHP = maxHP;
target = oPlayer;

moveSpeed = 3;

direction = point_direction(x,y,target.x,target.y);
speed = moveSpeed;