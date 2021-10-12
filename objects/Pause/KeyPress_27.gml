/// @description Insert description here
// You can write your code in this editor
if(gamePaused == false)
{
	instance_deactivate_all(true);
	gamePaused = true;
}
else
{
	instance_activate_all();
	gamePaused = false;
}