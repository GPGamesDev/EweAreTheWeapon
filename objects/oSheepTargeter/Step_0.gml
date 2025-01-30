/// @description Insert description here
// You can write your code in this editor

switch (currentState){
	
	case ENEMY_STATE.STALK:
		if(!instance_exists(target) || target.currentState == SHEEP_STATE.DRAGGED){
			if(!instance_exists(oSheep)) exit;
			target = instance_find(oSheep, irandom(instance_number(oSheep)-1));
		}
	
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
	
	case ENEMY_STATE.DRAG:
		if(x < -30 || x > room_width+30 || y < -30 || y > room_height+30){
			instance_destroy(target);
			instance_destroy(self);
		}
	break;
	
}