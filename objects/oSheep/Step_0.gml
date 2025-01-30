/// @description Insert description here
// You can write your code in this editor

switch currentState{
	
	case SHEEP_STATE.WALKING:
		direction = point_direction(x,y,targetPos[0],targetPos[1]);
		speed = walkSpeed;
		
		if(point_distance(x,y,targetPos[0],targetPos[1])<walkSpeed){
			atTarget = true;
			speed = 0;
			currentState = SHEEP_STATE.STANDING;
			alarm_set(0,newPosTimer*game_get_speed(gamespeed_fps));
		}
	break;
	
	case SHEEP_STATE.DRAGGED:
		x = dragWolf.x+dragWolf.mouthPos[0];
		y = dragWolf.y+dragWolf.mouthPos[1];
		alarm_set(0,0);
		
		if(!instance_exists(dragWolf)){
			currentState = SHEEP_STATE.STANDING;
			alarm_set(0,newPosTimer*game_get_speed(gamespeed_fps));
		}
	break;
}



