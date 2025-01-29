/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

wanderRadius = 100;
centerPos = [x,y];

baaSound = sndBaa;
baaTimer = 5;
baaTimerVar = 2;
alarm_set(1,(baaTimer+random(baaTimerVar*2)-baaTimerVar)*game_get_speed(gamespeed_fps));

atTarget = true;
targetPos = [x,y];
walkSpeed = 2;

newPosTimer = 10;
alarm_set(0,newPosTimer*game_get_speed(gamespeed_fps));

enum SHEEP_STATE{
	STANDING,
	WALKING,
	EATING,
	DRAGGED
}

currentState = SHEEP_STATE.STANDING;

dragWolf = noone;


