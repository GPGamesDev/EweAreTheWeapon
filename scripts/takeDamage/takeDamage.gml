// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function takeDamage(){
	currentHP--;
	invincible = true;
	alarm_set(0,invincibleTimer*game_get_speed(gamespeed_fps));
	
	stunned = true;
	alarm_set(1,stunTimer*game_get_speed(gamespeed_fps));

	var _attackDir = point_direction(x,y,other.x,other.y);
	playerMove(-dcos(_attackDir)*knockback,dsin(_attackDir)*knockback);

}