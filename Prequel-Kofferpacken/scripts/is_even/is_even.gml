/// @function	is_even(n);
/// @param		{real}	n
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function is_even(argument0) {

	/*
	Returns true if a given number is even, and false if odd.
	Invalid inputs will be returned as undefined.

	argument0 = number to check parity (real)

	Example usage:
	   if (is_even(var_num)) {
	      show_message("I'm even!");
	   } else {
	      show_message("I'm odd!");
	   }
	*/

	//If input is valid...
	if (is_real(argument0)) {
	   //Check and return value parity
	   if ((argument0 mod 2) == 0) {
	      return true;
	   } else {
	      return false;
	   }
	} else {
	   //Otherwise return undefined for invalid inputs
	   show_debug_message("Undefinded input");
	   return undefined;
	}


}
