/// @description Insert description here
// You can write your code in this editor

moveSpeed = 5;
ammoCount = 8;
baseArmPos = [32,-32];
armPos = [32,-32];

charging = false;
throwSpeed = 15;
fullThrowTime = 1*1000000;
throwStartTime = 0;

invincible = false;
invincibleTimer = 1;
stunned = false;
stunTimer = 0.5;

knockback = 100;

woolAmmo = [instance_create_layer(x,y,"WoolAmmo",oWoolBall)];

for(var i = 1; i<=ammoCount-1;i++){
	array_push(woolAmmo,instance_create_layer(x,y,"WoolAmmo",oWoolBall,{image_index : i%3}))
}

heldAmmo = array_shift(woolAmmo);
heldAmmo.x = x+armPos[0];
heldAmmo.y = y+armPos[1];
heldAmmo.held = true;

maxHP = 3;
currentHP = maxHP;

instance_create_layer(0,0,"Hidden",oHealthTracker);