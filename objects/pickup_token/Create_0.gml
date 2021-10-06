// Creation of pickup_token in random location on the map that is not
// preoccupied by a pre-existing tile
location = false;
while location == false{
xx = irandom(15);
yy = irandom(15);
if place_free(xx,yy) == true
    {
    instance_create(xx, yy, pickup_token);
    location = true;
    }
}
