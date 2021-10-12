// Script for meta game info such as 
function winCheck()
	{
	// vars 
	// get game_conditions instance
	// check if token count is 3
	if (tokenCount >= tokensToWin)
		{
		playerCantMove = true; // prevent player from moving after game over, 

		room_goto(rm_win);
		}
	}
	
function loseCheck()
	{
	if (remainingLives == 0)
		{
		playerCantMove = true; // prevent player from moving after game over, 

		room_goto(rm_game_over);
		}
	}