/// @function	point_rot_y(x, y, [deg]);
/// @param		{real} x
/// @param		{real} y
/// @param		{real} [deg]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function point_rot_y() {

	/*
	Returns the Y component of a point the given distance away rotated by the 
	given angle in degrees. (Center point is assumed as 0.)

	Supplying an angle is optional. As calculating the sine and cosine of 
	angles is costly to performance, these values are stored in memory for
	use with further instances of trigonometry functions based on the same 
	angle. If no angle is supplied, the previous angle's sine and cosine 
	will be used. This is highly useful for improving performance when 
	calculating multiple points based on the same rotation.

	argument0 = horizontal distance from the rotation center point (real)
	argument1 = vertical distance from the rotation center point (real)
	argument2 = angle of rotation in degrees (real) (optional, use no argument for previous)

	Example usage:
	   x = 128 + point_rot_x(64, 64, image_angle);
	   y = 128 + point_rot_y(64, 64);
	*/

	//Calculate sine and cosine if angle is supplied
	if (argument_count > 2) {
	   point_rot_prefetch(argument[2]);
	}

	//Return rotated Y component
	return (argument[0]*-trig_sine) + (argument[1]*trig_cosine);



}
