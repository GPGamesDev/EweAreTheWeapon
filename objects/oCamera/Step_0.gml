/// @description Insert description here
// You can write your code in this editor

var _targetX = oPlayer.x;
var _targetY = oPlayer.y;

var _xDelta = x+cameraWidth/2-_targetX;
var _yDelta = y+cameraHeight/2-_targetY;

x -= clamp(_xDelta,-cameraSpeed,cameraSpeed);
y -= clamp(_yDelta,-cameraSpeed,cameraSpeed);

camera_set_view_pos(camera,x,y);