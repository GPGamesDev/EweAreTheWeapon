/// @description Insert description here
// You can write your code in this editor

currentState = ENEMY_STATE.WINDUP;
speed = 0;
alarm_set(1,(jumpStartTimer+random(jumpStartVar*2)-jumpStartVar)*game_get_speed(gamespeed_fps));