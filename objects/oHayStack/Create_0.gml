/// @description Insert description here
// You can write your code in this editor

with(oSheep){
	if(distance_to_object(other)<200){
		alarm_set(0,0);
		currentState = SHEEP_STATE.WALKING;
		targetPos = [other.x+random(64)-32,other.y+random(20)];
	}
}

hp = 3;