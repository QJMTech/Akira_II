//play damage sound
audio_play_sound(damage_taken_sound, 2, 0);

// decrease life count by 1
remainingLives--;

instance_destroy();

// gameover
loseCheck();