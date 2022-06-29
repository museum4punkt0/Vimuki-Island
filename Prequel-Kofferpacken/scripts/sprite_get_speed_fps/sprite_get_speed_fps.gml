/// @function	sprite_get_speed_fps(sprite);
/// @param		{sprite}	sprite
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function sprite_get_speed_fps() {

	/*
	Returns the target sprite speed as defined in the sprite editor, forcing
	the results to be interpreted as frames per-second.

	argument0 = sprite to retrieve speed (sprite)

	Example usage:
	   var speed_fps = sprite_get_speed_fps(my_sprite);
	*/

	//Convert sprite speed, if not target type
	if (sprite_get_speed_type(argument[0]) != spritespeed_framespersecond) {
		return (sprite_get_speed(argument[0])*game_get_speed(gamespeed_fps));
	} else {
		//Otherwise return unconverted speed
		return sprite_get_speed(argument[0]);
	}


}
