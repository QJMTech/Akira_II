
// GETS THE CURRENT LOCATION OF THE BAD GUY
start_x_value = x;

// GETS A RANDOM NUMBER TO MOVE BAD GUY
randomNum = random_range(15, 50);


// generate number between 1 and 2
whichDirection = random_range(1,2);

// if the number is 1 bad guy move right, otherwise left
if(whichDirection == 1)
{
	moveRight = true;
}
else
{
	moveRight = false;
}