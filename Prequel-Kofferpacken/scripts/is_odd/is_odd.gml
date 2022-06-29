/// @function	is_odd(n);
/// @param		{real}	n
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function is_odd(argument0) {

	/*
	Returns true if a given number is odd, and false if even.
	Invalid inputs will be returned as undefined.

	argument0 = number to check parity (real)

	Example usage:
	   if (is_odd(var_num)) {
	      show_message("I'm odd!");
	   } else {
	      show_message("I'm even!");
	   }
	*/

	//If input is valid...
	if (is_real(argument0)) {
	   //Check and return value parity
	   if ((argument0 mod 2) == 0) {
	      return false;
	   } else {
	      return true;
	   }
	} else {
	   //Otherwise return undefined for invalid inputs
	   return undefined;
	}


}
