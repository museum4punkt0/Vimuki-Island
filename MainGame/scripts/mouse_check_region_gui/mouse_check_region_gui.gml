/// @function	mouse_check_region_gui(x, y, width, height);
/// @param		{real}	x
/// @param		{real}	y
/// @param		{real}	width
/// @param		{real}	height
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function mouse_check_region_gui(argument0, argument1, argument2, argument3) {

	/*
	Checks whether the mouse is currently within a certain location relative to the GUI
	and returns true or false.

	argument0 = horizontal GUI coordinate for the region to check (real)
	argument1 = vertical GUI coordinate for the region to check (real)
	argument2 = width in pixels of the region to check (real)
	argument3 = height in pixels of the region to check (real)

	Example usage:
	   if (mouse_check_region_gui(256, 128, 512, 384)) {
	      //Action
	   }
	*/

	//Check if mouse is within GUI region
	return point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), argument0, argument1, argument0 + argument2, argument1 + argument3);


}
