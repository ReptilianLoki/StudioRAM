/// @description Checks Player Animation(Moving vs Idle)

// Check player animation
if(xspeed == 0)
{
	sprite_index = s_penguin_idle;
}
else
{
	sprite_index = s_penguin_run;
}