/// @description Insert description here
// You can write your code in this editor

if(invincible) exit;

other.uses--;
other.image_xscale*=.75;
other.image_yscale*=.75;
if(other.uses == 0) instance_destroy(other);

takeDamage();
