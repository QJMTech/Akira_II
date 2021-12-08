/// @description Insert description here
// You can write your code in this editor
show_debug_message(dashing)

if(xSpeed >= 5 || xSpeed <= -5)
{
	instance_destroy();
	audio_play_sound(jump_sound, 2, false)
}

else if (!invincible && (xSpeed >= -4 && xSpeed <= 4))
{
	//play damage sound
	audio_play_sound(damage_taken_sound, 2, 0);

	// decrease life count by 1
	remainingLives--;
	
	// set invincibility to true
	invincible = true;
	// call timer to reset invincible to false
	instance_create_layer(0, 0, "Pause", Alarm3);
}

// gameover
loseCheck();