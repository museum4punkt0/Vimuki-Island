/// @function	mouse_check_region(x, y, width, height);
/// @param		{real}	x
/// @param		{real}	y
/// @param		{real}	width
/// @param		{real}	height
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function mouse_check_region(argument0, argument1, argument2, argument3) {

	/*
	Checks whether the mouse is currently within a certain location relative to the room
	and returns true or false.

	argument0 = horizontal room coordinate for the region to check (real)
	argument1 = vertical room coordinate for the region to check (real)
	argument2 = width in pixels of the region to check (real)
	argument3 = height in pixels of the region to check (real)

	Example usage:
	   if (mouse_check_region(256, 128, 512, 384)) {
	      //Action
	   }
	*/

	//Check if mouse is within region
	return point_in_rectangle(mouse_x, mouse_y, argument0, argument1, argument0 + argument2, argument1 + argument3);


}
