// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnToken()
	{
	// declare vars
	var xx, yy;
	globalvar placed;
	placed = false;
	
	while (placed == false)
		{
		// randomize
		randomize();
	
		// random spot in room
		xx = irandom(room_width);
		yy = irandom(room_height);
		
		show_debug_message(string(xx));	
		show_debug_message(string(yy));	
	
		if (instance_position(xx, yy, obj_wall) == noone && instance_position(xx, yy + 32, obj_wall) != noone)
			{
			instance_create_layer((xx div 32)*32 + (sprite_get_width(pickup) / 2), (yy div 32)*32 + (sprite_get_height(pickup) / 2), instance_lyr, pickup_token); 
			placed = true;
			}
		}
	}