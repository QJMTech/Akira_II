// Script for meta game info such as 
function winCheck()
	{
	// vars 
	// get game_conditions instance
	// check if token count is 3
	if (tokenCount >= tokensToWin)
		{
			if(room == rm_game)
			{
				room_goto(rm_finalLEVEL);
			}
			else{
				playerCantMove = true; // prevent player from moving after game over, 

				room_goto(rm_win);
			}
		}
	}
	
function loseCheck()
	{
	if (remainingLives == 0)
		{
			if(room == rm_game)
			{
				playerCantMove = true; // prevent player from moving after game over, 

				room_restart();
			}
			else{
				playerCantMove = true; // prevent player from moving after game over, 

				room_goto(rm_game_over);
			}
		
		}
	}