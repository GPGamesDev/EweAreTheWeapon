/// @description Baa Timer
// You can write your code in this editor

audio_play_sound(baaSound,1,false,1,0,1+random(.1));
alarm_set(1,baaTimer*game_get_speed(gamespeed_fps));