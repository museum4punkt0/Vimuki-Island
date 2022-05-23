/// @function	vngen_label_create(id, label, x, y, z, linebreak, font, color, transition, duration, [ease], [lang]);
/// @param		{real|string}	id
/// @param		{string}		label
/// @param		{real}			x
/// @param		{real}			y
/// @param		{real}			z
/// @param		{real}			linebreak
/// @param		{font}			font
/// @param		{color}			color
/// @param		{script}		transition
/// @param		{real}			duration
/// @param		{integer|macro}	[ease]
/// @param		{real|string}	[lang]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function vngen_label_create_special() {

	/*
	Creates a new string of text which will be displayed as a normal VNgen entity until
	vngen_label_destroy is run. While labels share many properties with standard text
	elements, labels are static and do not affect progression, character speaking
	animations, or the backlog, and do not support advanced features such as a
	typewriter effect or markup.

	While the actual label text can be anything, it is also possible to set labels to
	automatically display the name of the current speaker(s) defined by other text
	elements. This value is updated automatically at the start of every event,
	meaning the label does not require replacing to reflect each new speaker.

	Note that labels are displayed as a surface, or texture, and the exact dimensions of this 
	texture may not be known. As a result, functions like xorig, yorig, and scaling may not 
	behave as expected. It is important to test your label actions and design your fonts and
	linebreaks to a standard which results in predictable texture dimensions.

	The value -1 is reserved as 'null' and cannot be used as a label ID.

	argument0  = identifier to use for the label (real or string)
	argument1  = the text string to display (string) (optional, use 'auto' for auto speaker names)
	argument2  = the horizontal position to display the label (real)
	argument3  = the vertical position to display the label (real)
	argument4  = the drawing depth to display the label, relative to other labels only (real)
	argument5  = the width in pixels before text is wrapped into a new line (real)
	argument6  = the default text font (font) (optional, use 'inherit' for inherit)
	argument7  = the default text color (color) (optional, use 'inherit' for inherit)
	argument8  = sets the transition script to perform (script) (optional, use 'trans_none' for none)
	argument9  = sets the length of the transition, in seconds (real)
	argument10 = the language flag to be associated with the text (real or string) (optional, use no argument for none)
	argument11 = sets the transition easing override (see interp for available modes) (integer) (can also use true/false) (optional, use no argument for none)

	Example usage:
	   vngen_event() {
	      vngen_label_create("label", "John Doe", 0, view_hview[0] - 350, -1, 384, fnt_Arial, c_white, trans_fade, 2);
	      vngen_label_create("label", "John Doe", 0, view_hview[0] - 350, -1, 384, fnt_Arial, c_white, trans_fade, 2, true);
	      vngen_label_create("label", "John Doe", 0, view_hview[0] - 350, -1, 384, fnt_Arial, c_white, trans_fade, 2, "en-US"); 
	      vngen_label_create("label", "John Doe", 0, view_hview[0] - 350, -1, 384, fnt_Arial, c_white, trans_fade, 2, true, "en-US");    
	   }
	*/


	/*
	INITIALIZATION
	*/

	//Get input language, if any
	var action_lang = undefined;
	if (argument_count == 11) {
	   if (is_string(argument[10])) {
	      action_lang = argument[10];
	   }
	} else {
	   if (argument_count > 11) {
	      action_lang = argument[11];
	   }
	}

	//Enable action, if active
	switch (sys_action_init()) {
	   //Exit if event is inactive
	   case false: {
	      exit;
	   }
      
	   //Initialize action if active
	   case true: {
	      //Skip action if not in target language, if any
	      if (!is_undefined(action_lang)) {
	         if (global.vg_lang_text != action_lang) {
	            sys_action_term();     
	            exit;
	         }
	      }
      
	      /* INITIALIZATION */
      
	      //Get the current number of label entries
	      var ds_target = ds_grid_height(ds_label);
      
	      //Create new text slot in data structure
	      ds_grid_resize(ds_label, ds_grid_width(ds_label), ds_grid_height(ds_label) + 1);
   
	      /* AUTO LABEL */
         
	      //Get default text
	      var text = argument[1];
      
	      //Get text auto mode
	      var label_auto = is_real(argument[1]);
      
	      //If auto mode is enabled...
	      if (label_auto == true) {
	         //Get auto label
	         text = text_label_auto;
	      }
      
	      //Set label text
	      ds_label[# prop._txt, ds_target] = text;
      
	      /* PROPERTIES */

	      //Initialize default text properties
	      ds_label[# prop._txt_fnt, ds_target] = fnt_default; //Font
	      ds_label[# prop._col1, ds_target] = c_white;        //Text color1
	      ds_label[# prop._col2, ds_target] = c_white;        //Text color2
	      ds_label[# prop._col3, ds_target] = c_white;        //Text color3
	      ds_label[# prop._col4, ds_target] = c_white;        //Text color4
	      ds_label[# prop._txt_shadow, ds_target] = none;     //Shadow
	      ds_label[# prop._txt_outline, ds_target] = none;    //Outline
	      ds_label[# prop._txt_line_data, ds_target] = -1;    //Linebreak
      
	      //Get style inheritance setting
	      if (argument[7] < 0) {
	         var style_inherit = argument[7];
	      } else {
	         var style_inherit = none;
	      }
   
	      //Process text and get the final surface for rendering
	      var label_surf = sys_text_init(ds_label, ds_target, text, text, global.vg_halign_label, argument[5], global.vg_lineheight_label, argument[6], argument[7], argument[7], argument[7], argument[7], style_inherit, style_inherit, global.vg_speed_label);
      
	      //Set basic label properties
	      ds_label[# prop._id, ds_target] = argument[0];                        //ID
	      ds_label[# prop._left, ds_target] = 0;                                //Crop left
	      ds_label[# prop._top, ds_target] = 0;                                 //Crop top
	      ds_label[# prop._width, ds_target] = surface_get_width(label_surf);   //Crop width
	      ds_label[# prop._height, ds_target] = surface_get_height(label_surf); //Crop height
	      ds_label[# prop._xorig, ds_target] = 0;                               //Surface X origin
	      ds_label[# prop._yorig, ds_target] = 0;                               //Surface Y origin
	      ds_label[# prop._x, ds_target] = argument[2];                         //X
	      ds_label[# prop._y, ds_target] = argument[3];                         //Y
	      ds_label[# prop._z, ds_target] = argument[4];                         //Z
	      ds_label[# prop._xscale, ds_target] = 1;                              //X scale
	      ds_label[# prop._yscale, ds_target] = 1;                              //Y scale
	      ds_label[# prop._rot, ds_target] = 0;                                 //Rotation
	      ds_label[# prop._anim_col1, ds_target] = c_white;                     //Surface color1
	      ds_label[# prop._anim_col2, ds_target] = c_white;                     //Surface color2  
	      ds_label[# prop._anim_col3, ds_target] = c_white;                     //Surface color3   
	      ds_label[# prop._anim_col4, ds_target] = c_white;                     //Surface color4  
	      ds_label[# prop._alpha, ds_target] = 1;                               //Alpha   
	      ds_label[# prop._lab_auto, ds_target] = label_auto;                   //Auto label mode   
	      ds_label[# prop._redraw, ds_target] = true;                           //Redraw state
      
	      //Set special label properties
	      ds_label[# prop._fade_src, ds_target] = -1;       //Fade surface     
	      ds_label[# prop._fade_alpha, ds_target] = 1;      //Fade alpha
	      ds_label[# prop._trans, ds_target] = -1;          //Transition
	      ds_label[# prop._shader, ds_target] = -1;         //Shader
	      ds_label[# prop._sh_float_data, ds_target] = -1;  //Shader float data
	      ds_label[# prop._sh_mat_data, ds_target] = -1;    //Shader matrix data
	      ds_label[# prop._sh_samp_data, ds_target] = -1;   //Shader sampler data
	      ds_label[# prop._anim, ds_target] = -1;           //Animation
	      ds_label[# prop._anim_xscale, ds_target] = 1;     //Animation X scale
	      ds_label[# prop._anim_yscale, ds_target] = 1;     //Animation Y scale
	      ds_label[# prop._anim_alpha, ds_target] = 1;      //Animation alpha
	      ds_label[# prop._def, ds_target] = -1;            //Deformation
	      ds_label[# prop._def_point_data, ds_target] = -1; //Deform point data
	      ds_label[# prop._def_surf, ds_target] = -1;       //Deform surface
	      ds_label[# prop._def_fade_surf, ds_target] = -1;  //Deform fade surface
      
	      //Initialize scaling
	      sys_scale_init(ds_label, ds_target, global.dp_width, global.dp_height, global.dp_width_init, global.dp_height_init, scale_none);
      
	      //Initialize transitions
	      sys_trans_init(ds_label, ds_target, argument[8], argument[9], false);
      
	      //Sort data structure by Z depth
	      ds_grid_sort(ds_label, prop._z, false);  
	  
		  //Get calculated properties
		  ds_label[# prop._final_xscale, ds_target] = ds_label[# prop._xscale, ds_target]*ds_label[# prop._oxscale, ds_target];
		  ds_label[# prop._final_yscale, ds_target] = ds_label[# prop._yscale, ds_target]*ds_label[# prop._oyscale, ds_target];
		  ds_label[# prop._final_width, ds_target] = ds_label[# prop._width, ds_target];
		  ds_label[# prop._final_height, ds_target] = ds_label[# prop._height, ds_target];
		  ds_label[# prop._final_x, ds_target] = ds_label[# prop._x, ds_target] - (ds_label[# prop._xorig, ds_target]*ds_label[# prop._final_xscale, ds_target]);
		  ds_label[# prop._final_y, ds_target] = ds_label[# prop._y, ds_target] - (ds_label[# prop._yorig, ds_target]*ds_label[# prop._final_yscale, ds_target]);
	   }
	}


	/*
	DATA MANAGEMENT
	*/

	//Skip action if engine is paused
	if (global.vg_pause == true) {
	   exit;
	}

	//Skip action if not in target language, if any
	if (!is_undefined(action_lang)) {
	   if (global.vg_lang_text != action_lang) {    
	      exit;
	   }
	}

	//Get label slot
	var ds_target = vngen_get_index(argument[0], vngen_type_label);

	//Skip action if target label does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}


	/*
	PERFORM TRANSITIONS
	*/

	//Get ease mode
	if (argument_count > 10) {
	   if (is_real(argument[10])) {
	      var action_ease = argument[10];
	   } else {
	      var action_ease = false;
	   }
	} else {
	   var action_ease = false;
	}

	//Perform transitions
	if (ds_label[# prop._trans_time, ds_target] < ds_label[# prop._trans_dur, ds_target]) {
	   sys_trans_perform(ds_label, ds_target, action_ease);
   
	   //End action when transitions are complete
	   if (ds_label[# prop._trans_time, ds_target] >= ds_label[# prop._trans_dur, ds_target]) {
	      sys_action_term();
	   }
	}



}
