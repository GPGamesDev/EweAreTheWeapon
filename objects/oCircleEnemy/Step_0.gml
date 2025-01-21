/// @description Insert description here
// You can write your code in this editor

switch (currentState){
	case ENEMY_STATE.STALK:
	direction = point_direction(x,y,target.x,target.y);
	if(point_distance(x,y,target.x,target.y)<stalkDist){
		currentState = ENEMY_STATE.CIRCLE;
		alarm_set(0,(jumpStartTimer+random(jumpStartVar*2)-jumpStartVar)*game_get_speed(gamespeed_fps));
	}
	break;
	
	case ENEMY_STATE.CIRCLE:
	speed = 5;
	if(point_distance(x,y,target.x,target.y)<stalkDist) direction = point_direction(x,y,target.x,target.y)-90;
	else direction = point_direction(x,y,target.x,target.y);
	
	break;
	
	case ENEMY_STATE.WINDUP:
	
	break;
	
	case ENEMY_STATE.JUMP:
		if(point_distance(x,y,jumpStart[0],jumpStart[1])>jumpDist){
			currentState = ENEMY_STATE.RECOVERY;
			alarm_set(2,recoveryTime*game_get_speed(gamespeed_fps));
			speed = 0;
		}
	break;
	
	case ENEMY_STATE.RECOVERY:
	
	break;
}