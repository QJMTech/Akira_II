var seq = layer_sequence_create("Sequence", 54, 112, opening_game_sequence);
layer_sequence_play(seq);

// assign variables
globalvar instance_lyr, HUD_lyr, tokenCount;

// set player token count to 0
tokenCount = 0;

instance_lyr = layer_get_id("Instances");

// spawn first token in random spot
spawnToken();

// set up HUD overlay
HUD_lyr = layer_get_id("HUD");
instance_create_layer(display_get_gui_width()/2, display_get_gui_height(), HUD_lyr, arrowHUD);
