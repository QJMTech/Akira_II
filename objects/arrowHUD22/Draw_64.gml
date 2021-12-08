/// @description Insert description here
// You can write your code in this editor
//globalvar image_angle_var;
if (instance_exists(obj_player))
	{
	//draw_sprite_ext(temparrow, 0, view_wport[0]/2, view_hport[0]*.075, 1, 1, image_angle_var - 90, c_white, 1);
	
	if( remainingLives == 3)
		{
		draw_sprite(heart, 0, view_wport[0]*.91, view_hport[0]*.02);
	
		draw_sprite(heart, 0, view_wport[0]*.93, view_hport[0]*.02);
	
		draw_sprite(heart, 0, view_wport[0]*.95, view_hport[0]*.02);
		}
	
	if( remainingLives == 2)
		{
		draw_sprite(heart, 0, view_wport[0]*.93, view_hport[0]*.02);
		
		draw_sprite(heart, 0, view_wport[0]*.95, view_hport[0]*.02);
		}
		
	if( remainingLives == 1)
		{
		draw_sprite(heart, 0, view_wport[0]*.95, view_hport[0]*.02);
		}
		
	}

draw_set_font(custom_font);
draw_text(view_wport[0]*.02, view_hport[0]*.02, string(tokenCount) + "/" + string(tokensToWin));
	

