// Script for meta game info such as 
function winCheck()
	{
	// check if token count is 3
	if (tokenCount == 3)
		{
		show_debug_message("Yay u win");
		game_end();
		}
	}