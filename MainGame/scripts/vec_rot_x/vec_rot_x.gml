/// @function	vec_rot_x(x1, y1, x2, y2, [deg]);
/// @param		{real} x1
/// @param		{real} y1
/// @param		{real} x2
/// @param		{real} y2
/// @param		{real} [deg]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function vec_rot_x() {

	/*
	Returns the X component of a point the given distance away from the given
	center point and rotated by the given angle in degrees (or in other words,
	the X component of the tip of a rotated line).

	Supplying an angle is optional. As calculating the sine and cosine of 
	angles is costly to performance, these values are stored in memory for
	use with further instances of trigonometry functions based on the same 
	angle. If no angle is supplied, the previous angle's sine and cosine 
	will be used. This is highly useful for improving performance when 
	calculating multiple points based on the same rotation.

	argument0 = horizontal center point (real)
	argument1 = vertical center point (real)
	argument2 = horizontal distance from the rotation center point (real)
	argument3 = vertical distance from the rotation center point (real)
	argument4 = angle of rotation in degrees (real) (optional, use no argument for previous)

	Example usage:
	   x = vec_rot_x(128, 128, 64, 64, image_angle);
	   y = vec_rot_y(128, 128, 64, 64);
	*/

	//Calculate sine and cosine if angle is supplied
	if (argument_count > 4) {
	   point_rot_prefetch(argument[4]);
	}

	//Return rotated X component
	return argument[0] + (argument[2]*trig_cosine) + (argument[3]*trig_sine);

	//Null Y argument
	argument[1] = 0;



}
