/// @function	sprite_get_index(sprite);
/// @param		{sprite}	sprite
/// @requires	sprite_get_speed_fps
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function sprite_get_index(argument0) {

	/*
	Every instance has a built-in image_index variable which tracks the animation
	frame for the sprite assigned to sprite_index, adjusted for image_speed. But
	many objects draw multiple sprites, each of which may have a different speed.
	This script returns the image_index value for any sprite, factoring in both
	sprite speed and delta time.

	argument0 = sprite to retrieve image index (sprite)

	Example usage:
	   draw_sprite(my_sprite, sprite_get_index(my_sprite), x + 32, y - 32);
	*/

	//Get sprite properties
	var sprite_fps = sprite_get_speed_fps(argument0);
	var sprite_num = sprite_get_number(argument0);

	//Return current sprite index based on real game time, adjusted for sprite speed
	return floor(((get_timer()/1000000)*sprite_fps) mod sprite_num);


}
