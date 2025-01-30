/// @description Insert description here
// You can write your code in this editor

switch currentState{
	case GAME_STATE.ROUNDSTART:
		if(!instance_exists(currentText)){
			currentState = GAME_STATE.PLAYING;
			alarm_set(0,(spawnTimer+random(spawnTimerVar*2)-spawnTimerVar)*game_get_speed(gamespeed_fps));
			alarm_set(1,(spawnTimer+random(spawnTimerVar*2)-spawnTimerVar)*game_get_speed(gamespeed_fps));
		}
	break;
	
	case GAME_STATE.PLAYING:
		if(oPlayer.currentHP <= 0 || !instance_exists(oSheep)) currentState = GAME_STATE.FADEOUT;
		if(sheepWolfDone && circleWolfDone && !instance_exists(oEnemy) && instance_exists(oSheep)) currentState = GAME_STATE.ROUNDEND;
	break;
	
	case GAME_STATE.ROUNDEND:
		sheepWolfDone = false;
		sheepWolfSpawnCount = 1;
		circleWolfDone = false;
		circleWolfSpawnCount = 1;
		roundNum++;
		myName = "Round "+string(roundNum);
		currentText = create_dialogue(startTaunts[irandom(array_length(startTaunts)-1)],oPlayer);
		currentState = GAME_STATE.ROUNDSTART;
	break;
	
	case GAME_STATE.FADEOUT:
		if(currentFade >= maxFade) currentState = GAME_STATE.GAMEOVER;
	break;
	
	case GAME_STATE.GAMEOVER:
		if(keyboard_check(ord("R"))) room_restart();
	break;
	
	
}