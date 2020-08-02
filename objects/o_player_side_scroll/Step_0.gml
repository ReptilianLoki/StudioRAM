/// @description Execute Player States

#region Set Up Controls
up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
// down = (keyboard_check(vk_down) or keyboard_check(ord("S")));
up_release = (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")));
#endregion

#region Player State Machine
switch state
{
	#region Player Move
	case player.move:
	
	//Check player's animation 
	sc_check_animation()
	
	//Check if player is on the ground
	sc_check_ground();
	
	#region Change direction of sprite
	if(xspeed != 0)
	{
		image_xscale = sign(xspeed);
	}
	#endregion
	
	//Check if player is moving
	sc_check_move_input()
	
	sc_move(o_solid);
	
	break;
	#endregion
	
	#region Player Hurt
	case player.hurt:
	
	break;
	#endregion
	
	#region Player Death
	case player.death:
	
	break;
	#endregion
}
#endregion