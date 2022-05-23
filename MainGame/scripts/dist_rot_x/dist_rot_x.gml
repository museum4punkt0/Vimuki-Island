/// @function	dist_rot_x(dist, [deg]);
/// @param		{real} dist
/// @param		{real} [deg]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function dist_rot_x() {

	/*
	Returns the X component of a point the given distance away rotated by the 
	given angle in degrees. (Center point is assumed as 0.)

	Supplying an angle is optional. As calculating the sine and cosine of 
	angles is costly to performance, these values are stored in memory for
	use with further instances of trigonometry functions based on the same 
	angle. If no angle is supplied, the previous angle's sine and cosine 
	will be used. This is highly useful for improving performance when 
	calculating multiple points based on the same rotation.

	argument0 = distance from the rotation center point (real)
	argument1 = angle of rotation in degrees (real) (optional, use no argument for previous)

	Example usage:
	   x = 128 + dist_rot_x(64, image_angle);
	   y = 128 + dist_rot_x(64);
	*/

	//Calculate sine and cosine if angle is supplied
	if (argument_count > 1) {
	   point_rot_prefetch(argument[1]);
	}

	//Return rotated X component
	return (argument[0]*trig_cosine);



}
