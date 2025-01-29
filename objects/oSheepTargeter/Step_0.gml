/// @description Insert description here
// You can write your code in this editor

switch (currentState){
	
	case ENEMY_STATE.STALK:
		direction = point_direction(x,y,target.x,target.y);
		if(place_meeting(x,y,target)){
			direction += 180;
			speed = dragSpeed;
			currentState = ENEMY_STATE.DRAG;
			target.currentState=SHEEP_STATE.DRAGGED;
			target.dragWolf = self;
			audio_play_sound(sndPanicBaa,1,false);
		}
	break;
	
}