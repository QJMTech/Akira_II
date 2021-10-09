
playerCantMove = false;

// set up HUD overlay
HUD_lyr = layer_get_id("HUD");
instance_create_layer(display_get_gui_width()/2, display_get_gui_height(), HUD_lyr, arrowHUD);
instance_create_layer(0, 0, "GameTitles", bad_guy_spawner_obj);

instance_destroy(how_to_play_obj);