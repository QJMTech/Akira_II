
// sets the bad guy to moving sprite
sprite_index = spr_ground_bad_guy;

// if the bad guy moves right
if(moveRight)
{
	// increase its x to the right
	x++;
	// checks to see if the bad guy is in range of given value
	if( x >= start_x_value + randomNum)     
	{
		// if its over range, move other direction
		moveRight = false;
	}
}
// if bad guy move left
else
{
	// decrease x moving to left
	x--;
	
	// checks to see if the bad guy is in the range of given value
	if(x <= start_x_value - randomNum)
	{
		// moves other direction
		moveRight = true;
	}
}
