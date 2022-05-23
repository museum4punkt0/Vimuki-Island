/// @function	sprite_get_speed_real(sprite);
/// @param		{sprite}	sprite
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function sprite_get_speed_real() {

	/*
	Returns the target sprite speed as defined in the sprite editor, forcing
	the results to be interpreted as frames per-game frame.

	argument0 = sprite to retrieve speed (sprite)

	Example usage:
	   var speed_real = sprite_get_speed_real(my_sprite);
	*/

	//Convert sprite speed, if not target type
	if (sprite_get_speed_type(argument[0]) != spritespeed_framespergameframe) {
		return (sprite_get_speed(argument[0])/game_get_speed(gamespeed_fps));
	} else {
		//Otherwise return unconverted speed
		return sprite_get_speed(argument[0]);
	}


}
