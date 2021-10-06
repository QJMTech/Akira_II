// Creation of pickup_token in random location on the map that is not
// preoccupied by a pre-existing tile

// randomize randomints
randomize();

// create vars
var randomx, randomy, inst;
var placed = false;

while (placed == false)
	{
	// randomize integers on room
	randomx = irandom(room_width);
	randomy = irandom(room_height);
	
	// check location for collisions
	inst = instance_position(randomx, randomy, obj_wall);
	show_debug_message("Obj at location is:");
	show_debug_message(string(inst));
	
	placed = true;
	// instance_create(random(room_width), random(room_height), pickup_token)
	}