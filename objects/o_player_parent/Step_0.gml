/// @description adds player functionality
if(keyboard_check(ord("T")) and room != top_down)
{
	room_goto(top_down);
}
else if(keyboard_check(ord("S")) and room != side_scroller)
{
	room_goto(side_scroller);
}

//exits game
if(keyboard_check(vk_escape))
{
	game_end();
}