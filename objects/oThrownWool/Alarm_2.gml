/// @description Effect check
// You can write your code in this editor

if(speed == 0){
	switch image_index{
		case 2:
			with(oSheep){
				if(distance_to_object(other)<500){
					alarm_set(0,0);
					currentState = SHEEP_STATE.WALKING;
					targetPos = [other.x,other.y];
				}
			}
		break;
	}
}
else alarm_set(2,10);