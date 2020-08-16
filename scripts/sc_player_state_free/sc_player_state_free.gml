#region MOVEMENT
hsp = lengthdir_x(input_magnitude * walk_speed, input_direction)
vsp = lengthdir_y(input_magnitude * walk_speed, input_direction)
sc_top_down_player_collision(); 
#endregion
#region ANMATION
if (input_magnitude != 0)
{
	direction = input_direction; 
	sprite_index = s_penguin_run; 
	image_speed = 1;
	if (!instance_exists(o_player_dust))
	{
	instance_create_layer(x,y,"l_player",o_player_dust);
	}
}
else sprite_index = s_penguin_idle;
var aimside = sign(mouse_x - x);
if (aimside != 0) image_xscale = aimside;
#endregion