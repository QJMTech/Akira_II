//play damage sound
show_debug_message(global.dashing)

if(global.dashing)
{
	instance_destroy();
	audio_play_sound(jump_sound, 2, false)
}

else
{
	//play damage sound
	audio_play_sound(damage_taken_sound, 2, 0);

	// decrease life count by 1
	remainingLives--;
}

// gameover
loseCheck();