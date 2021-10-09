// disable player movement for duration of beginning
playerCantMove = true;

// Play intro animation
var seq = layer_sequence_create("Sequence", 54, 112, opening_game_sequence);
layer_sequence_play(seq);

// waits duration to display how to play screen
instance_create_layer(0, 0, "GameTitles", Alarm0)

// loading font
globalvar custom_font;
custom_font = font_add("Retro Stereo Wide.ttf", 24, false, false, 32, 128);

// assign variables
globalvar instance_lyr, HUD_lyr, tokenCount, tokensToWin;

// set player token count to 0
tokenCount = 0;
tokensToWin = 1;

instance_lyr = layer_get_id("Instances");

// spawn first token in random spot
spawnToken();

// moved HUD to after HOw To Play is displayed
