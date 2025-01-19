/// @description Insert description here
// You can write your code in this editor

var _currentHP = oPlayer.currentHP;
for(var i = 0; i < maxHP; i++){
	draw_sprite(healthToken,i<_currentHP,viewWidth,(heartHeight+borderBuffer)*i+borderBuffer);
}