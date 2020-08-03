/// @description Checks Player's Movement
if (right or left)
{
	xspeed += (right - left) * acceleration;
	xspeed = clamp(xspeed, -max_speed, max_speed);
}
else
{
	sc_apply_friction(acceleration);
}