if (irandom(128) == 1) {
	instance_create_layer(room_width, random(room_height),
		"Bad_Guys",
		obj_temp_bad_guy);
}