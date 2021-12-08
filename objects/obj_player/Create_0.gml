// create global invincibility var
globalvar invincible;
invincible = false;

if(room == rm_finalLEVEL)
{
	player_speed = 3;
	dashSpd = 10;
}
else{
	player_speed = 2;
	// Variables for dash
	dashSpd = 5;
}



xSpeed = 0;
ySpeed = 0;


dashDuration = 0;

globalvar playerCantMove;
playerCantMove = true;

globalvar dashing;
dashing = false;

