/// @function	point_rot_prefetch(deg);
/// @param		{real} deg
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function point_rot_prefetch(argument0) {

	/*
	Pre-calculates the sine and cosine of an angle in degrees, which
	can then be used by trigonometry functions without calculating
	sine and cosine for each instance of these functions. This is highly 
	useful for improving performance when calculating multiple points 
	based on the same rotation.

	It is also possible to calculate sine and cosine directly in other
	trigonometry fucntions, in which case running this script is not
	necessary. However, this script can still be quite useful for 
	maintaining clean code or calculating an angle in a different event 
	than the event in which trigonometry functions are run.

	argument0 = angle to calculate sine and cosine, in degrees (real)

	Example usage:
	   point_rot_prefetch(90);
	   x = point_rot_x(5, 10);
	   y = point_rot_y(5, 10);
	*/

	//Calculate sine and cosine of input angle
	if (argument0 == 0) {
	   //Use defaults if angle is zero
	   trig_sine = 0;
	   trig_cosine = 1;
	} else {
	   //Otherwise calculate values
	   trig_sine = dsin(argument0);
	   trig_cosine = dcos(argument0);
	}



}
