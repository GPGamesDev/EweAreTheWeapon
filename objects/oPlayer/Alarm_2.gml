/// @description Text Advance
// You can write your code in this editor

if(!instance_exists(currentText)){
	myPortrait = sBARealSheep;
	currentText = create_dialogue(startTaunts[irandom(array_length(startTaunts)-1)],oPlayer);
}
else alarm_set(2,10);