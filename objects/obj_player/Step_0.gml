
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed (vk_space );
var onTheGround = place_meeting( x, y + 1, obj_wall);

if(playerCantMove == true)
{
	xDirection = 0;
}


if ( xDirection != 0 )
{
	image_xscale = xDirection;	
}

xSpeed = xDirection * player_speed;
ySpeed += .6;

if ( onTheGround )
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
			ySpeed = -11;
			// Sound effect
			audio_play_sound(jump_sound, 3, 0);
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