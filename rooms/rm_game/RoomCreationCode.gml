// disable player movement for duration of beginning
playerCantMove = true;

// Restart BGM if this is the second Playthrough
if(firstRun == false)
{
	// Stop end-game BGM
	audio_stop_all();
	
	// Restart main BGM again
	audio_play_sound(BGM_music, 1, true);
}

// Play intro animation
// var seq = layer_sequence_create("Sequence", 54, 112, opening_game_sequence);
// layer_sequence_play(seq);

// waits duration to display how to play screen
//instance_create_layer(0, 0, "GameTitles", Alarm0)

// in this level we want player to immidiately move
playerCantMove = false;
HUD_lyr = layer_get_id("HUD");
instance_create_layer(display_get_gui_width()/2, display_get_gui_height(), HUD_lyr, arrowHUD22);
instance_create_layer(0, 0, "GameTitles", bad_guy_spawner_obj);

// loading font
globalvar custom_font;
custom_font = font_add("Retro Stereo Wide.ttf", 24, false, false, 32, 128);


// assign variables
globalvar instance_lyr, HUD_lyr, tokenCount, tokensToWin, remainingLives;

// set player token count to 0
tokenCount = 0;
tokensToWin = 1;
remainingLives = 3;

instance_lyr = layer_get_id("Instances");

// spawn first token in random spot
//spawnToken();

// moved HUD to after HOw To Play is displayed
