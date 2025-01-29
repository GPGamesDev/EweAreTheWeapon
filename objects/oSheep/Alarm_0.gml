/// @description Wander Timer
// You can write your code in this editor

var _targetR = wanderRadius*sqrt(random(1));
var _targetTheta = random(1)*2*pi;

targetPos = [centerPos[0]+_targetR*cos(_targetTheta),centerPos[1]+_targetR*sin(_targetTheta)];

atTarget = false;

currentState = SHEEP_STATE.WALKING;

alarm_set(0,newPosTimer*game_get_speed(gamespeed_fps));