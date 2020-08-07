#region PLAYER INPUT
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
input_direction = (point_direction(0,0,key_right-key_left,key_down-key_up)); 
input_magnitude = (key_right-key_left !=0) or (key_down-key_up !=0); 
#endregion
#region MOVEMENT
hsp = lengthdir_x(input_magnitude * walkspeed, input_direction)
vsp = lengthdir_y(input_magnitude * walkspeed, input_direction)
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