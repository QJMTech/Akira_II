var seq = layer_sequence_create("Sequence", 54, 112, opening_game_sequence);
layer_sequence_play(seq);

globalvar instance_lyr;
instance_lyr = layer_get_id("Instances");

// spawn first token in random spot
spawnToken();
