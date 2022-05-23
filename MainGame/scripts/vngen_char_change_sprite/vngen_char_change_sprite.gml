/// @function	vngen_char_change_sprite(name,spr_body);
/// @param		{string}		name
/// @param		{string|macro}	newname
function vngen_char_change_sprite(argument0, argument1, argument2) {

	/*
	Applies a new set of sprites with offset support to the specified character. As with other
	modifications, changes to active sprites will persist until the character is removed or another
	replacement is performed.

	Note that unlike other entities, character IDs double as the name which they will
	be referred to as in text events. If highlighting is enabled, this name must match
	the speaker name set in vngen_text_create **exactly**.

	The value -1 is reserved as 'null' and cannot be used as a character ID.

	argument0  = old identifier of the character to be modified (string)
	argument1  = new identifier to use for the character (real or string) (string required for some features) (optional, use 'previous' for no change)
	argument1  = the new sprite to use as the character's body (sprite) (required)
	replace_sprite_3  = the new sprite to use as the character's idle expression (sprite) (optional, use 'previous' for no change or 'none' for none)
	replace_sprite_4  = the new sprite to use as the character's speaking expression (sprite) (optional, use 'previous' for no change or 'none' for none)
	replace_sprite_5  = the **body** sprite horizontal offset, or center point (real)
	replace_sprite_6  = the **body** sprite vertical offset, or center point (real)
	replace_sprite_7  = the new horizontal offset to display the character face **relative to the body top-left corner** (real) (optional, use 'previous' for no change)
	replace_sprite_8  = the new vertical offset to display the character face **relative to the body top-left corner** (real) (optional, use 'previous' for no change)
	argument2  = sets the scaling mode to perform: scale_none, scale_x_y, scale_x, scale_y, 
	             scale_stretch_x_y, scale_stretch_x, scale_stretch_y, scale_prop_x_y, 
	             scale_prop_x, or scale_prop_y (integer or macro)
	replace_sprite_10 = enables or disables flipping the character for display on opposite sides of the screen (boolean) (true/false)
	replace_sprite_11 = sets a delay between idle face animation loops, in seconds (real)
	replace_sprite_12 = sets the length of the replacement transition, in seconds (real)
	replace_sprite_13 = sets the animation easing method (see interp for available modes) (integer) (can also use true/false)

	Example usage:
	   vngen_event() {
	      vngen_char_replace_ext("John Doe", "Jane Doe", spr_body, 0, 0, spr_default, spr_talking, 256, 128, 0, false, 3, 1, true);
	   }
	*/

	
	var replace_sprite_1  = previous;
	var replace_sprite_3  = previous;
	var replace_sprite_4  = previous;
	var replace_sprite_5  = orig_left;
	var replace_sprite_6  = orig_top;
	var replace_sprite_7  = previous;
	var replace_sprite_8  = previous;
	var replace_sprite_10 = false;
	var replace_sprite_11 = 0;
	var replace_sprite_12 = 0;
	var replace_sprite_13 = ease_none;

	//Enable action, if active
	switch (sys_action_init()) {
	   //Exit if event is inactive
	   case false: {
	      exit;
	   }
      
	   //Initialize action if active
	   case true: {
	      //Get character slot
	      var ds_target = vngen_get_index(argument0, vngen_type_char);
         
	      //If the target character exists...
	      if (!is_undefined(ds_target)) {   
      
	         /* INITIALIZATION */
         
	         //Copy existing character to fade surface
	         if (surface_exists(ds_character[# prop._surf, ds_target])) {
	            if (!surface_exists(ds_character[# prop._fade_src, ds_target])) {
	               //Create fade surface
	               ds_character[# prop._fade_src, ds_target] = surface_create(ds_character[# prop._width, ds_target], ds_character[# prop._height, ds_target]);
	            } else {
	               surface_resize(ds_character[# prop._fade_src, ds_target], ds_character[# prop._width, ds_target], ds_character[# prop._height, ds_target]);
	            }
               
	            //Copy contents to fade surface
	            surface_copy(ds_character[# prop._fade_src, ds_target], 0, 0, ds_character[# prop._surf, ds_target]);
      
	            //Resize surface to new dimensions
	            surface_resize(ds_character[# prop._surf, ds_target], sprite_get_width(argument1), sprite_get_height(argument1));
	         }
         
	         //Clear deform surface to be redrawn, if any
	         if (surface_exists(ds_character[# prop._def_surf, ds_target])) {
	            surface_free(ds_character[# prop._def_surf, ds_target]);
	         }        
         
	         //Backup original values to temp value slots
	         ds_character[# prop._tmp_xorig, ds_target] = ds_character[# prop._xorig, ds_target];     //Sprite X origin
	         ds_character[# prop._tmp_yorig, ds_target] = ds_character[# prop._yorig, ds_target];     //Sprite Y origin      
	         ds_character[# prop._tmp_oxscale, ds_target] = ds_character[# prop._oxscale, ds_target]; //X scale offset
	         ds_character[# prop._tmp_oyscale, ds_target] = ds_character[# prop._oyscale, ds_target]; //Y scale offset    
         
	         //Get new character name, if any
	         if (replace_sprite_1 == previous) {
	            var name = argument0;
	         } else {
	            var name = replace_sprite_1;
	         }          
         
	         //Get new character idle face, if any
	         if (replace_sprite_3 == previous) {
	            var face_idle = ds_character[# prop._sprite2, ds_target];
	         } else {
	            var face_idle = replace_sprite_3;
	         }          
         
	         //Get new character speaking face, if any
	         if (replace_sprite_4 == previous) {
	            var face_talk = ds_character[# prop._sprite3, ds_target];
	         } else {
	            var face_talk = replace_sprite_4;
	         }
         
	         //Get new face coordinates, if any
	         if (replace_sprite_7 == previous) {
	            var face_x = ds_character[# prop._face_x, ds_target];
	         } else {
	            var face_x = replace_sprite_7;
	         }
	         if (replace_sprite_8 == previous) {
	            var face_y = ds_character[# prop._face_y, ds_target];
	         } else {
	            var face_y = replace_sprite_8;
	         }
                
	         //Set sprite values
	         ds_character[# prop._fade_alpha, ds_target] = 0;								//Fade alpha     
	         ds_character[# prop._id, ds_target] = name;									//Name  
	         ds_character[# prop._sprite, ds_target] = argument1;							//Body sprite           
	         ds_character[# prop._width, ds_target] = sprite_get_width(argument1);			//Crop width
	         ds_character[# prop._height, ds_target] = sprite_get_height(argument1);		//Crop height
		     ds_character[# prop._img_index, ds_target] = 0;                                //Image index
		     ds_character[# prop._img_num, ds_target] = sprite_get_number(argument1);		//Image total
	         ds_character[# prop._sprite2, ds_target] = face_idle;						    //Face idle sprite
	         ds_character[# prop._sprite3, ds_target] = face_talk;							//Face talking sprite
	         ds_character[# prop._face_x, ds_target] = face_x;								//Face x
	         ds_character[# prop._face_y, ds_target] = face_y;								//Face y     
	         ds_character[# prop._pause, ds_target] = replace_sprite_11;							//Face idle pause duration
	         ds_character[# prop._face_time, ds_target] = 0;								//Face idle pause time
	  
			 //Set character face properties
			 if (sprite_exists(face_idle)) {
			    ds_character[# prop._index, ds_target] = 0;                                 //Face image index   
			    ds_character[# prop._number, ds_target] = sprite_get_number(face_idle);		//Face image number 
			 }
         
	         //Set transition time
	         if (replace_sprite_12 > 0) {
	            ds_character[# prop._fade_time, ds_target] = 0;  //Transition time
	         } else {
	            ds_character[# prop._fade_time, ds_target] = -1; //Transition time
	         }           
	      } else {
	         //Skip action if character does not exist
	         sys_action_term();
	         exit;
	      }  
	   }
	}


	/*
	DATA MANAGEMENT
	*/

	//Skip action if engine is paused
	if (global.vg_pause == true) {
	   exit;
	}

	//Get new character name, if any
	if (replace_sprite_1 == -1) {
	   var name = argument0;
	} else {
	   var name = replace_sprite_1;
	}   

	//Get character slot
	var ds_target = vngen_get_index(name, vngen_type_char);

	//Skip action if target character does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}


	/*
	PERFORM REPLACEMENT
	*/

	if (ds_character[# prop._fade_time, ds_target] < replace_sprite_12) {
	   //Get sprites to check dimensions
	   var action_sprite = ds_character[# prop._sprite, ds_target];
	   var fade_surf = ds_character[# prop._fade_src, ds_target];
   
	   /* SPRITE ORIGINS */
   
	   //Backup current origin values to temp variables
	   var temp_xorig = ds_character[# prop._xorig, ds_target];
	   var temp_yorig = ds_character[# prop._yorig, ds_target];
   
	   //Calculate new origin
	   sys_orig_init(ds_character, ds_target, replace_sprite_5, replace_sprite_6);
   
	   //Get new origin
	   var action_xorig = ds_character[# prop._xorig, ds_target];
	   var action_yorig = ds_character[# prop._yorig, ds_target];
   
	   //Restore temp origin values
	   ds_character[# prop._xorig, ds_target] = temp_xorig;
	   ds_character[# prop._yorig, ds_target] = temp_yorig;  
   
	   /* SCALING */
   
	   //Backup current scale values to temp variables
	   var temp_xscale = ds_character[# prop._oxscale, ds_target];
	   var temp_yscale = ds_character[# prop._oyscale, ds_target];
   
	   //Calculate new scale
	   sys_scale_init(ds_character, ds_target, global.dp_width, global.dp_height, global.dp_width_init, global.dp_height_init, argument2);
   
	   //Restore flip state
	   ds_character[# prop._oxscale, ds_target] *= sign(ds_character[# prop._tmp_oxscale, ds_target]);
   
	   //Get new scale
	   var action_xscale = ds_character[# prop._oxscale, ds_target];
	   var action_yscale = ds_character[# prop._oyscale, ds_target];
   
	   //Restore temp scale values
	   ds_character[# prop._oxscale, ds_target] = temp_xscale;
	   ds_character[# prop._oyscale, ds_target] = temp_yscale;

	   //Flip character, if enabled
	   if (replace_sprite_10 == true) {
	      action_xscale *= -1;
	   }
      
	   /* TRANSITIONS */

	   //Increment transition time
	   if (!sys_action_skip()) {
	      ds_character[# prop._fade_time, ds_target] += time_frame;
	   } else {
	      //Otherwise skip transition if vngen_do_continue is run
	      ds_character[# prop._fade_time, ds_target] = replace_sprite_12;
	   }
   
	   //Mark this action as complete
	   if (ds_character[# prop._fade_time, ds_target] < 0) or (ds_character[# prop._fade_time, ds_target] >= replace_sprite_12) {
	      //Disallow exceeding target values
	      ds_character[# prop._xorig, ds_target] = action_xorig;    //Sprite X origin
	      ds_character[# prop._yorig, ds_target] = action_yorig;    //Sprite Y origin      
	      ds_character[# prop._fade_alpha, ds_target] = 1;          //Fade alpha
	      ds_character[# prop._fade_time, ds_target] = replace_sprite_12;  //Fade time
	      ds_character[# prop._oxscale, ds_target] = action_xscale; //X scale offset
	      ds_character[# prop._oyscale, ds_target] = action_yscale; //Y scale offset
      
	      //Clear fade surfaces from memory
	      if (!sys_event_skip()) {
	         if (surface_exists(ds_character[# prop._fade_src, ds_target])) {
	            surface_free(ds_character[# prop._fade_src, ds_target]);
	            ds_character[# prop._fade_src, ds_target] = -1;
	         }
      
	         //Clear deform fade surface from memory, if any
	         if (surface_exists(ds_character[# prop._def_fade_surf, ds_target])) {
	            surface_free(ds_character[# prop._def_fade_surf, ds_target]);
	         }
	      }
      
	      //End action
	      sys_action_term();
	      exit;
	   }
	} else {
	   //Do not process when transitions are complete
	   exit;
	}

	//If duration is greater than 0...
	if (replace_sprite_12 > 0) {
	   //Get transition time
	   var action_time = interp(0, 1, ds_character[# prop._fade_time, ds_target]/replace_sprite_12, replace_sprite_13);

	   //Perform character replacement
	   ds_character[# prop._xorig, ds_target] = lerp(ds_character[# prop._tmp_xorig, ds_target], action_xorig, action_time);      //Sprite X origin
	   ds_character[# prop._yorig, ds_target] = lerp(ds_character[# prop._tmp_yorig, ds_target], action_yorig, action_time);      //Sprite Y origin
	   ds_character[# prop._fade_alpha, ds_target] = lerp(0, 1, action_time);                                                     //Fade alpha
	   ds_character[# prop._oxscale, ds_target] = lerp(ds_character[# prop._tmp_oxscale, ds_target], action_xscale, action_time); //X scale offset
	   ds_character[# prop._oyscale, ds_target] = lerp(ds_character[# prop._tmp_oyscale, ds_target], action_yscale, action_time); //Y scale offset
	}
}