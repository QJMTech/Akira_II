
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed (vk_space );
var dash = keyboard_check_pressed (vk_shift );
var onTheGround = place_meeting( x, y + 1, obj_wall);
globalvar xSpeed;

dashDuration = max(dashDuration - 1, 0);

if(playerCantMove == true)
{
	xDirection = 0;
}

show_debug_message(xSpeed)
// Player shouldnt fall
if(dashDuration > 0) ySpeed = 0;

// player is dashing
if(dash && dashing == false)
{
	dashDuration = 10;
	xSpeed = image_xscale * dashSpd;
	dashing = true;
	// call alarm 2 for dash delay
	instance_create_layer(0, 0, "Pause", Alarm2);
}


if ( xDirection != 0 )
{
	image_xscale = xDirection;	
}

if(dashDuration == 0)
{
	xSpeed = xDirection * player_speed;
	ySpeed += .6;
}

if(dashDuration > 0)
{
	// Add dashing sprite
	sprite_index = spr_dash;
}
else if ( onTheGround )
{
	if ( xDirection != 0 )
	{
		sprite_index = spr_akira_running_anim;
	}
	else
	{
		sprite_index = spr_akira_idle_anim;	
	}
	
	if ( jump )
	{
		if(playerCantMove == false)
		{
			// Change this to affect jump height
			ySpeed = -9;
			// Sound effect
			audio_play_sound(jump_audio, 3, 0);     // replaced with sound from PROJECT 3
		}
	}
}
// Jumping animation:
// else{
// sprite_index = spr_akira_jumping_anim
// }

if ( place_meeting( x + xSpeed, y, obj_wall ))
{
	while( !place_meeting( x + sign(xSpeed), y, obj_wall))
	{
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

x += xSpeed;

if ( place_meeting( x, y + ySpeed, obj_wall ))
{
	while( !place_meeting( x , y + sign(ySpeed), obj_wall))
	{
		y += sign(ySpeed);
	}
	
	ySpeed = 0;	
}
y += ySpeed;