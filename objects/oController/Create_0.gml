/// @description Insert description here
// You can write your code in this editor

dispW = window_get_width();
dispH = window_get_height();

maxFade = 0.7;
fadeRate = .01;
currentFade = 0;

sheepWolfSpawn =  [2, 2, 3, 3, 4, 4, 5];
sheepWolfSpawnCount = 1;
sheepWolfDone = false;
circleWolfSpawn = [2, 3, 3, 4, 4, 5, 5];
circleWolfSpawnCount = 1;
circleWolfDone = false;

spawnTimer = 3;
spawnTimerVar = 1;

enum GAME_STATE{
	ROUNDSTART,
	PLAYING,
	ROUNDEND,
	FADEOUT,
	GAMEOVER
}

currentState = GAME_STATE.ROUNDSTART;

roundNum = 1;

myVoice			= snd_voice1;
myPortrait		= sBARealSheep;
myFont			= fnt_dialogue;
myName			= "Round "+string(roundNum);

randomize();
startTaunts = ["Fleece 'em!","Pull the wool over their eyes!","Go lamb on 'em!","Shear power!"];

currentText = create_dialogue(startTaunts[irandom(array_length(startTaunts)-1)],oPlayer);