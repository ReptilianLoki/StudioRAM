/// @description Initialize Player(SS) Variables

// hp = 3;
// max_hp = 3;
max_speed = 4;
xspeed = 0;
yspeed = 0;
acceleration = 1;
gravity_acceleration = 0.5;
jump_height = -9;
// grab_width = 18;

enum player
{
	move,
	hurt,
	death
}

state = player.move;