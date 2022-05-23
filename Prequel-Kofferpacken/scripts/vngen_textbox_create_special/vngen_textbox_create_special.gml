/// @function	vngen_textbox_create(id, sprite, x, y, z, transition, duration, [ease]);
/// @param		{real|string}	id
/// @param		{sprite}		sprite
/// @param		{real}			x
/// @param		{real}			y
/// @param		{real}			z
/// @param		{script}		transition
/// @param		{real}			duration
/// @param		{integer|macro}	[ease]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function vngen_textbox_create_special() {

	/*
	Creates a new textbox which will be displayed until vngen_textbox_destroy is run.
	Textbox can be either a small container or a fullscreen overlay for NVL-style
	sequences. Textboxes are purely decorative and text is not physically constrained 
	to a textbox in any way.

	Multiple textboxes can exist simultaneously, however be aware that no two textboxes
	can share the same ID. The textbox ID, or name, is arbitrary and can be either a
	number or a string. Note that the value -1 is reserved as 'null' and cannot be used 
	as a textbox ID.

	argument0 = identifier to use for the textbox (real or string)
	argument1 = the sprite to use as a new textbox (sprite)
	argument2 = the horizontal position to display the textbox (real)
	argument3 = the vertical position to display the textbox (real)
	argument4 = the drawing depth to display the textbox, relative to other textboxes only (real)
	argument5 = sets the transition script to perform (script) (optional, use 'trans_none' for none)
	argument6 = sets the length of the transition, in seconds (real)
	argument7 = sets the transition easing override (see interp for available modes) (integer) (can also use true/false) (optional, use no argument for none)

	Example usage:
	   vngen_event() {
	      vngen_textbox_create("textbox", spr_box, 0, view_hview[0], 0, trans_fade, 2);
	   }
	*/

	/*
	INITIALIZATION
	*/

	//Enable action, if active
	switch (sys_action_init()) {
	   //Exit if event is inactive
	   case false: {
	      exit;
	   }
      
	   //Initialize action if active
	   case true: {
	      //Get the current number of textbox entries
	      var ds_target = ds_grid_height(ds_textbox);
      
	      //Create new textbox slot in data structure
	      ds_grid_resize(ds_textbox, ds_grid_width(ds_textbox), ds_grid_height(ds_textbox) + 1);
      
	      //Set basic textbox properties
	      ds_textbox[# prop._id, ds_target] = argument[0];								 //ID
	      ds_textbox[# prop._sprite, ds_target] = argument[1];							 //Sprite
	      ds_textbox[# prop._left, ds_target] = 0;										 //Crop left
	      ds_textbox[# prop._top, ds_target] = 0;										 //Crop top
	      ds_textbox[# prop._width, ds_target] = sprite_get_width(argument[1]);			 //Crop width
	      ds_textbox[# prop._height, ds_target] = sprite_get_height(argument[1]);		 //Crop height
	      ds_textbox[# prop._xorig, ds_target] = sprite_get_xoffset(argument[1]);		 //Sprite X origin
	      ds_textbox[# prop._yorig, ds_target] = sprite_get_yoffset(argument[1]);		 //Sprite Y origin
	      ds_textbox[# prop._x, ds_target] = argument[2];								 //X
	      ds_textbox[# prop._y, ds_target] = argument[3];								 //Y
	      ds_textbox[# prop._z, ds_target] = argument[4];								 //Z
	      ds_textbox[# prop._xscale, ds_target] = 1;									 //X scale
	      ds_textbox[# prop._yscale, ds_target] = 1;									 //Y scale
	      ds_textbox[# prop._rot, ds_target] = 0;										 //Rotation
	      ds_textbox[# prop._col1, ds_target] = c_white;								 //Color1
	      ds_textbox[# prop._col2, ds_target] = c_white;								 //Color2
	      ds_textbox[# prop._col3, ds_target] = c_white;								 //Color3
	      ds_textbox[# prop._col4, ds_target] = c_white;								 //Color4
	      ds_textbox[# prop._alpha, ds_target] = 1;										 //Alpha 
	      ds_textbox[# prop._img_index, ds_target] = 0;                                  //Image index
	      ds_textbox[# prop._img_num, ds_target] = sprite_get_number(argument[1]);       //Image total
      
	      //Set special textbox properties
	      ds_textbox[# prop._fade_src, ds_target] = -1;       //Fade sprite   
	      ds_textbox[# prop._fade_alpha, ds_target] = 1;      //Fade alpha
	      ds_textbox[# prop._trans, ds_target] = -1;          //Transition
	      ds_textbox[# prop._shader, ds_target] = -1;         //Shader
	      ds_textbox[# prop._sh_float_data, ds_target] = -1;  //Shader float data
	      ds_textbox[# prop._sh_mat_data, ds_target] = -1;    //Shader matrix data
	      ds_textbox[# prop._sh_samp_data, ds_target] = -1;   //Shader sampler data
	      ds_textbox[# prop._anim, ds_target] = -1;           //Animation
	      ds_textbox[# prop._anim_xscale, ds_target] = 1;     //Animation X scale
	      ds_textbox[# prop._anim_yscale, ds_target] = 1;     //Animation Y scale
	      ds_textbox[# prop._anim_alpha, ds_target] = 1;      //Animation alpha
	      ds_textbox[# prop._def, ds_target] = -1;            //Deformation
	      ds_textbox[# prop._def_point_data, ds_target] = -1; //Deform point data
	      ds_textbox[# prop._def_surf, ds_target] = -1;       //Deform surface
	      ds_textbox[# prop._def_fade_surf, ds_target] = -1;  //Deform fade surface
      
	      //Initialize scaling
	      sys_scale_init(ds_textbox, ds_target, global.dp_width, global.dp_height, global.dp_width_init, global.dp_height_init, scale_none);
      
	      //Initialize transitions
	      sys_trans_init(ds_textbox, ds_target, argument[5], argument[6], false);
      
	      //Sort data structure by Z depth
	      ds_grid_sort(ds_textbox, prop._z, false);  
	  
		  //Get calculated properties
		  ds_textbox[# prop._final_xscale, ds_target] = ds_textbox[# prop._xscale, ds_target]*ds_textbox[# prop._oxscale, ds_target];
		  ds_textbox[# prop._final_yscale, ds_target] = ds_textbox[# prop._yscale, ds_target]*ds_textbox[# prop._oyscale, ds_target];
		  ds_textbox[# prop._final_width, ds_target] = ds_textbox[# prop._width, ds_target];
		  ds_textbox[# prop._final_height, ds_target] = ds_textbox[# prop._height, ds_target];
		  ds_textbox[# prop._final_x, ds_target] = ds_textbox[# prop._x, ds_target] - (ds_textbox[# prop._xorig, ds_target]*ds_textbox[# prop._final_xscale, ds_target]);
		  ds_textbox[# prop._final_y, ds_target] = ds_textbox[# prop._y, ds_target] - (ds_textbox[# prop._yorig, ds_target]*ds_textbox[# prop._final_yscale, ds_target]);
	   }
	}


	/*
	DATA MANAGEMENT
	*/

	//Skip action if engine is paused
	if (global.vg_pause == true) {
	   exit;
	}

	//Get textbox slot
	var ds_target = vngen_get_index(argument[0], vngen_type_textbox);

	//Skip action if target textbox does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}


	/*
	PERFORM TRANSITIONS
	*/

	//Get ease mode
	if (argument_count > 7) {
	   var action_ease = argument[7];
	} else {
	   var action_ease = false;
	}

	//Perform transitions
	if (ds_textbox[# prop._trans_time, ds_target] < ds_textbox[# prop._trans_dur, ds_target]) {
	   sys_trans_perform(ds_textbox, ds_target, action_ease);
   
	   //End action when transitions are complete
	   if (ds_textbox[# prop._trans_time, ds_target] >= ds_textbox[# prop._trans_dur, ds_target]) {
	      sys_action_term();
	   }
	}



}
