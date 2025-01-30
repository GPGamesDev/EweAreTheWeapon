/// @description Insert description here
// You can write your code in this editor

switch currentState{
	case GAME_STATE.FADEOUT:
	
	draw_set_alpha(currentFade);
	draw_rectangle_color(0,0,dispW,dispH,c_black,c_black,c_black,c_black,false);
	
	currentFade = min(currentFade+fadeRate,maxFade);
	
	break;
	
	case GAME_STATE.GAMEOVER:
	
	draw_set_alpha(maxFade);
	draw_rectangle_color(0,0,dispW,dispH,c_black,c_black,c_black,c_black,false);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(PixelFont);
	draw_set_alpha(1);
	
	draw_text(dispW/2,dispH/2,"GAME OVER");
	draw_text(dispW/2,dispH/2+50,"Press R to restart");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	break;
	
}