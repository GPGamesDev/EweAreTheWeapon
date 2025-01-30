/// @description Circle Wolf Timer
// You can write your code in this editor

/// @description Sheep Dragger Wolf Spawner
// You can write your code in this editor

if(currentState == GAME_STATE.GAMEOVER){
	alarm_set(1,0);
	exit;
}

var _spawnX = 0;
var _spawnY = 0;

var _spawnLocation = irandom(3);

switch _spawnLocation{
	case 0:
		_spawnX = random(room_width+60)-30;
		_spawnY = -30;
	break;
	
	case 1:
		_spawnX = room_width+30;
		_spawnY = random(room_height+60)-30;
	break;
	
	case 2:
		_spawnX = random(room_width+60)-30;
		_spawnY = room_height+30;
	break;
	
	case 3:
		_spawnX = -30;
		_spawnY = random(room_height+60)-30;
	break;
}

instance_create_layer(_spawnX,_spawnY,"Enemies",oCircleEnemy);
circleWolfSpawnCount++;

if(circleWolfSpawnCount > circleWolfSpawn[min(roundNum,array_length(circleWolfSpawn)-1)]) circleWolfDone = true;
else alarm_set(1,(spawnTimer+random(spawnTimerVar*2)-spawnTimerVar)*game_get_speed(gamespeed_fps));