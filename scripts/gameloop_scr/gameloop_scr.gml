// Script for meta game info such as 
function winCheck()
	{
	// vars 
	// get game_conditions instance
	// check if token count is 3
	if (tokenCount >= tokensToWin)
		{
		playerCantMove = true; // prevent player from moving after game over, 
			
		var cam_x = new_x;
		var cam_y = new_y;
			
		instance_create_layer(new_x + 70, new_y - 100, "GameTitles", win_screen_obj);
		instance_create_layer(new_x + 70, new_y + 100, "GameTitles", restart_button_obj);
		}
	}
	
function loseCheck()
	{
	if (remainingLives == 0)
		{
		playerCantMove = true; // prevent player from moving after game over, 
			
		var cam_x = new_x;
		var cam_y = new_y;
			
		instance_create_layer(new_x + 70, new_y, "GameTitles", lose_screen_obj);
		instance_create_layer(new_x + 70, new_y, "GameTitles", restart_button_obj);
		}
	}