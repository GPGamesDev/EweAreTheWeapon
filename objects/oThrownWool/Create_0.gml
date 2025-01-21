/// @description Insert description here
// You can write your code in this editor

canBePickedUp = false;
pickUpTimer = 1;

alarm_set(0,stopTimer*game_get_speed(gamespeed_fps));
alarm_set(1,pickUpTimer*game_get_speed(gamespeed_fps));

damage = 10;