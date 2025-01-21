/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum ENEMY_STATE{
	STALK,
	CIRCLE,
	WINDUP,
	JUMP,
	RECOVERY
}

currentState = ENEMY_STATE.STALK;

stalkDist = 100;
jumpStartTimer = 1;
jumpStartVar = .25;

jumpSpeed = 20;
jumpDist = 400;
jumpStart = [0,0];

recoveryTime = 3;
