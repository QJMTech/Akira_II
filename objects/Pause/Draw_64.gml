/// @description Insert description here
// You can write your code in this editor

if(gamePaused){
	
	// greyed out background
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(view_xport[0], view_yport[0], view_wport[0], view_hport[0], 0);
	
	// Pause text
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(view_xport[0] + 640, view_yport[0] + 360, "PAUSED");
}

