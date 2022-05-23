/// @function	array_create_2d(width, height, [value]);
/// @param		{real}			width
/// @param		{real}			height
/// @param		{real|string}	[value]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function array_create_2d() {

	/*
	Returns an array of the given width and height, optionally assigning
	a given value to each index (default value is 0).

	argument0 = horizontal size of the array to create (integer)
	argument1 = vertical size of the array to create (integer)
	argument2 = initial value to assign to the entire array (real/string) (optional, use no argument for 0)

	Example usage:
	   my_array = array_create_2d(10, 5);
	   my_array = array_create_2d(10, 5, -1);   
	*/

	//Initialize temporary variables for creating array
	var ar_2d, a_xindex, a_yindex;
	var ar_val = 0;
	ar_2d[0, 0] = 0;

	//Get initial value to set, if any
	if (argument_count > 2) {
	   ar_val = argument[2];
	}

	//Create 2D array
	for (a_yindex = 0; a_yindex < argument[1]; a_yindex += 1) {
	   for (a_xindex = 0; a_xindex < argument[0]; a_xindex += 1) {
	      ar_2d[@ a_xindex, a_yindex] = ar_val;
	   }
	}

	//Return the final array
	return ar_2d;


}
