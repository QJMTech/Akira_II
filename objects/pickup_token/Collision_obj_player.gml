/// Actions to take place when you get a token

// Tune
audio_play_sound(item_found_sound, 2, 0);

// increment token count
tokenCount++;

// if token is third token and if so
	// end game
winCheck();

// destroy and replace object
instance_destroy(pickup_token);
spawnToken();
