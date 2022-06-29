/// @function	instance_find_var(var, n);
/// @param		{string}	var
/// @param		{integer}	n
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function instance_find_var(argument0, argument1) {

	/*
	Searches existing instances for a particular variable and returns the ID
	of the containing instance, or keyword noone if not found.

	If multiple matching instances exist, you can specify which to return
	with the 'n' argument, where the first instance is number 0. If the input
	number is greater than the number of existing instances, the last instance
	ID will be returned.

	Note that instance order is somewhat arbitrary, so when multiple instances
	exist, this script may not always return the same ID!

	argument0 = the variable name to search, as a string (string)
	argument1 = the ordinal instance number to return, if multiple exist (integer)
            
	Example usage:
		var inst = instance_find_var("my_var", 0);
   
		if (inst == noone) {
		    exit;
		}
	*/

	//Initialize temporary variables for finding instance
	var inst_index,
		inst_num = argument1,
		obj_index = noone;
	
	//Check running instance for target variable
	if (inst_num == 0) {
		if (variable_instance_exists(id, argument0)) {
			//Return running instance ID if found
			return id;
		}
	}

	//Otherwise check other instances
	for (inst_index = 0; inst_index < instance_count; inst_index += 1) {
		if (variable_instance_exists(instance_id[inst_index], argument0)) {
		    //Get instance ID, if found
		    obj_index = instance_id[inst_index];
		
			//Count down remaining instances to check, if any
			if (inst_num > 0) {
				inst_num -= 1;
			} else {
				//Otherwise, end check
				break;
			}
		}
	}

	//Return instance ID
	return obj_index;


}
