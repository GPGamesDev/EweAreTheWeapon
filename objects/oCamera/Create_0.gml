/// @description Insert description here
// You can write your code in this editor

camera = view_camera[0];

cameraWidth = camera_get_view_width(camera);
cameraHeight = camera_get_view_height(camera);

camXMax = room_width-cameraWidth;
camYMax = room_height-cameraHeight;

target = oPlayer;
x = oPlayer.x - cameraWidth/2;
y = oPlayer.y - cameraHeight/2;
camera_set_view_pos(camera,x,y);
cameraSpeed = 5;
