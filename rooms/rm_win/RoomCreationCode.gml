//stop bgm loop
audio_stop_sound(BGM_music);

// change first run to false
if(firstRun == true)
{
	firstRun = false;
}

//play game over bgm
audio_play_sound(win_music, 1, false);
