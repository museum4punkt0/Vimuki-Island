/// @function	vngen_text_create(id, name, text, x, y, z, linebreak, font, color, transition, duration, [ease], [lang]);
/// @param		{real|string}	id
/// @param		{string}		name
/// @param		{string}		text
/// @param		{real|macro}	x
/// @param		{real|macro}	y
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
function vngen_text_create_special() {

	/*
	Creates a new string of text which will be displayed until vngen_text_destroy is run.
	Text is displayed as a surface, or texture, and as such is treated the same as all
	other major entities. 

	Note that the name of the character speaking set in text actions will influence other 
	features such as labels and character highlighting. As such, this name must match the 
	name set in vngen_char_create **exactly**.

	The value -1 is reserved as 'null' and cannot be used as a text ID.

	argument0  = identifier to use for the text (real or string)
	argument1  = the character name to associate with the text (string)
	argument2  = the text string to display (string)
	argument3  = the horizontal position to display the text (real) (optional, use 'auto' to place after previous text)
	argument4  = the vertical position to display the text (real) (optional, use 'auto' to place after previous text)
	argument5  = the drawing depth to display the text, relative to other text only (real)
	argument6  = the width in pixels before text is wrapped into a new line (real)
	argument7  = the default text font, subject to be overridden in markup (font) (optional, use 'inherit' for inherit)
	argument8  = the default text color, subject to be overridden in markup (color) (optional, use 'inherit' for inherit)
	argument9  = sets the transition script to perform (script) (optional, use 'trans_none' for none)
	argument10 = sets the length of the transition, in seconds (real)
	argument11 = sets the transition easing override (see interp for available modes) (integer) (can also use true/false) (optional, use no argument for none)
	argument12 = the language flag to be associated with the text (real or string) (optional, use no argument for none)

	Example usage:
	   vngen_event() {
	      vngen_text_create("text", "John Doe", "Hello, world!", 0, view_hview[0] - 250, -1, 1500, fnt_Arial, c_white, trans_fade, 2);
	      vngen_text_create("text", "John Doe", "Hello, world!", 0, view_hview[0] - 250, -1, 1500, fnt_Arial, c_white, trans_fade, 2, true);
	      vngen_text_create("text", "John Doe", "Hello, world!", 0, view_hview[0] - 250, -1, 1500, fnt_Arial, c_white, trans_fade, 2, "en-US");  
	      vngen_text_create("text", "John Doe", "Hello, world!", 0, view_hview[0] - 250, -1, 1500, fnt_Arial, c_white, trans_fade, 2, true, "en-US");     
	   }

	//MARKUP
	VNgen text also supports a range of markup tags for inline text stylization. Each of
	these tags is outlined in detail below. While most tags are written in opening and
	closing pairs, the closing tag is optional and can be left out to apply stylization to 
	the rest of the entire string.

	//SPEAKER
	"Name||Text"

	Assigns the string preceding || as the speaking character name for the current text action.
	Speaker names declared in this way must be written prior to any other text, and will
	override names declared via script arguments. To affect other features such as labels and
	character highlighting, this name must match the name set in vngen_char_create **exactly**.

	//NEWLINE
	\n

	Manually breaks text into a new line.

	//ESCAPE
	^[

	Draws brackets literally rather than interpreting them as markup. Only opening brackets need
	to be escaped.

	//FONT
	[font=my_font]custom text[/font]

	Draws the enclosed text with a custom font. This can include bold and/or italic variants
	or entirely different font families. While using fonts of varying size is supported, it
	is recommended to use fonts of similar size when possible.

	//COLOR
	[color=#FFFFFF]colored text[/color] 
	[color=#FFF, #000]2-color gradient text[/color]
	[color=#FFF, #FFF, #000]3-color gradient text[/color] 
	[color=#FFF, #FFF, #000, #000]4-color gradient text[/color]

	Draws the enclosed text with a custom color, specified with hex color notation. Hex color
	can be written in either six or three characters. Color tags accept anywhere from 1-4 colors 
	separated by commas for gradient support.

	//SHADOW
	[shadow=#000]shaded text[/shadow]

	Draws the enclosed text with a shadow of a custom color, specified with hex color notation.
	Hex color can be written in either six or three characters. Unlike regular text color, shadow
	color modifications do not support comma-separated gradients.

	//OUTLINE
	[outline=#FFF]outlined text[/outline]

	Draws the enclosed text with an outline of a custom color, specified with hex color notation.
	Hex color can be written in either six or three characters. Unlike regular text color, outline
	color modifications do not support comma-separated gradients.

	//EVENT
	[event=ev_other, ev_user0]

	Executes the specified event when reached. Supports Create, Destroy, Step, Alarm, Draw, and Other 
	events (see documentation on the event_perform function for details). Two values must always be 
	supplied here, separated by a comma, with the second value being 0 when no other value applies. 
	Unlike other tags, [event] has no equivalent closing tag.

	//LINK
	[link=ev_other, ev_user0]linked text[/link]

	Turns the enclosed text into a clickable hotspot which will execute the specified event when
	selected. Supports Create, Destroy, Step, Alarm, Draw, and Other events (see documentation on
	the event_perform function for details). Two values must always be supplied here, separated by 
	a comma, with the second value being 0 when no other value applies. It is recommended to combine 
	link tags with other style tags to draw attention to them as clickable.

	//SPEED
	[speed=0.5]slow text[/speed]
	[speed=2]fast text[/speed]

	Multiplies the speed at which enclosed text is printed onto the screen. Unlike the default speed,
	which is set in characters per-second, speed tags use a multiplier to achieve the same effect
	at all text speeds.

	//PAUSE
	[pause=5]
	[pause=-1]

	Halts the typewriter effect for the specified duration, in seconds. If a negative value is supplied, 
	the effect will be paused indefinitely until vngen_do_continue is run. Alternatively, if auto mode is 
	enabled, negative values will be treated as positive. Unlike other tags, [pause] has no equivalent 
	closing tag.
	*/

	/*
	INITIALIZATION
	*/

	//Get input language, if any
	var action_lang = undefined;
	if (argument_count == 12) {
	   if (is_string(argument[11])) {
	      action_lang = argument[11];
	   }
	} else {
	   if (argument_count > 12) {
	      action_lang = argument[12];
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
      
	      //Get the current number of text entries
	      var ds_target = ds_grid_height(ds_text);
      
	      //Create new text slot in data structure
	      ds_grid_resize(ds_text, ds_grid_width(ds_text), ds_grid_height(ds_text) + 1);
      
	      //Get speaker name from text, if any
	      if (string_count("||", argument[2]) > 0) {
	         var name = string_copy(argument[2], 1, string_pos("||", argument[2]) - 1);
	      } else {
	         //Otherwise use default text
	         var name = argument[1];
	      }
      
	      /* PROPERTIES */

	      //Initialize default text properties
	      ds_text[# prop._txt_fnt, ds_target] = fnt_default; //Font
	      ds_text[# prop._col1, ds_target] = c_white;        //Text color1
	      ds_text[# prop._col2, ds_target] = c_white;        //Text color2
	      ds_text[# prop._col3, ds_target] = c_white;        //Text color3
	      ds_text[# prop._col4, ds_target] = c_white;        //Text color4
	      ds_text[# prop._txt_shadow, ds_target] = none;     //Shadow
	      ds_text[# prop._txt_outline, ds_target] = none;    //Outline
	      ds_text[# prop._txt_line_data, ds_target] = -1;    //Linebreak
	      ds_text[# prop._mark_link_data, ds_target] = -1;   //Markup link data
      
	      //Get style inheritance setting
	      if (argument[8] < 0) {
	         var style_inherit = argument[8];
	      } else {
	         var style_inherit = none;
	      }
      
	      //Process text and get the final surface for rendering
	      var text_surf = sys_text_init(ds_text, ds_target, argument[2], name, global.vg_halign_text, argument[6], global.vg_lineheight_text, argument[7], argument[8], argument[8], argument[8], argument[8], style_inherit, style_inherit, global.vg_speed_text);
	  
		  //Get auto position, if enabled
		  if (argument[3] == auto) or (argument[4] == auto) {
	         var text_x = text_xprevious;
	         var text_y = text_yprevious;
		  } else {
			 //Otherwise use input position
			 var text_x = argument[3];
			 var text_y = argument[4];
		  }
      
	      //Set basic text properties
	      ds_text[# prop._id, ds_target] = argument[0];                       //ID
	      ds_text[# prop._name, ds_target] = name;                            //Name
	      ds_text[# prop._left, ds_target] = 0;                               //Crop left
	      ds_text[# prop._top, ds_target] = 0;                                //Crop top
	      ds_text[# prop._width, ds_target] = surface_get_width(text_surf);   //Crop width
	      ds_text[# prop._height, ds_target] = surface_get_height(text_surf); //Crop height
	      ds_text[# prop._xorig, ds_target] = 0;                              //X origin
	      ds_text[# prop._yorig, ds_target] = 0;                              //Y origin
	      ds_text[# prop._x, ds_target] = text_x;                             //X
	      ds_text[# prop._y, ds_target] = text_y;                             //Y
	      ds_text[# prop._z, ds_target] = argument[5];                        //Z
	      ds_text[# prop._xscale, ds_target] = 1;                             //X scale
	      ds_text[# prop._yscale, ds_target] = 1;                             //Y scale
	      ds_text[# prop._rot, ds_target] = 0;                                //Rotation
	      ds_text[# prop._anim_col1, ds_target] = c_white;                    //Surface color1
	      ds_text[# prop._anim_col2, ds_target] = c_white;                    //Surface color2  
	      ds_text[# prop._anim_col3, ds_target] = c_white;                    //Surface color3   
	      ds_text[# prop._anim_col4, ds_target] = c_white;                    //Surface color4
	      ds_text[# prop._alpha, ds_target] = 1;                              //Alpha
      
	      //Set special text properties
	      ds_text[# prop._fade_src, ds_target] = -1;       //Fade surface     
	      ds_text[# prop._fade_alpha, ds_target] = 1;      //Fade alpha
	      ds_text[# prop._trans, ds_target] = -1;          //Transition
	      ds_text[# prop._shader, ds_target] = -1;         //Shader
	      ds_text[# prop._sh_float_data, ds_target] = -1;  //Shader float data
	      ds_text[# prop._sh_mat_data, ds_target] = -1;    //Shader matrix data
	      ds_text[# prop._sh_samp_data, ds_target] = -1;   //Shader sampler data
	      ds_text[# prop._anim, ds_target] = -1;           //Animation
	      ds_text[# prop._anim_xscale, ds_target] = 1;     //Animation X scale
	      ds_text[# prop._anim_yscale, ds_target] = 1;     //Animation Y scale
	      ds_text[# prop._anim_alpha, ds_target] = 1;      //Animation alpha
	      ds_text[# prop._def, ds_target] = -1;            //Deformation
	      ds_text[# prop._def_point_data, ds_target] = -1; //Deform point data
	      ds_text[# prop._def_surf, ds_target] = -1;       //Deform surface
	      ds_text[# prop._def_fade_surf, ds_target] = -1;  //Deform fade surface
      
	      //Set auto label
	      text_label_auto = sys_text_get_label();
	  
		  //Set auto position
		  text_xprevious = ds_text[# prop._x, ds_target];
		  text_yprevious = ds_text[# prop._y, ds_target] + ds_text[# prop._height, ds_target];
      
	      //Enable character speech and highlighting
	      sys_anim_speech(name, true, vngen_type_text, true);
      
	      //Initialize scaling
	      sys_scale_init(ds_text, ds_target, global.dp_width, global.dp_height, global.dp_width_init, global.dp_height_init, scale_none);
      
	      //Initialize transitions
	      sys_trans_init(ds_text, ds_target, argument[9], argument[10], false);
      
	      /* END INITIALIZTION */
      
	      //Add text to the backlog for the current event, if event skip is inactive
	      if (!sys_event_skip()) {
	         //Get unmodified text string
	         var text = ds_text[# prop._txt_orig, ds_target];
         
	         //Add text to backlog
	         vngen_log_add(auto, text, name, ds_text[# prop._txt_fnt, ds_target], ds_text[# prop._col1, ds_target], ds_text[# prop._col2, ds_target], ds_text[# prop._col3, ds_target], ds_text[# prop._col4, ds_target], ds_text[# prop._txt_shadow, ds_target], ds_text[# prop._txt_outline, ds_target], ds_text[# prop._txt_halign, ds_target], ds_text[# prop._txt_line_height, ds_target]);
	      }
      
	      //Sort data structure by Z depth
	      ds_grid_sort(ds_text, prop._z, false);
	  
		  //Get calculated properties
		  ds_text[# prop._final_xscale, ds_target] = ds_text[# prop._xscale, ds_target]*ds_text[# prop._oxscale, ds_target];
		  ds_text[# prop._final_yscale, ds_target] = ds_text[# prop._yscale, ds_target]*ds_text[# prop._oyscale, ds_target];
		  ds_text[# prop._final_width, ds_target] = ds_text[# prop._width, ds_target];
		  ds_text[# prop._final_height, ds_target] = ds_text[# prop._height, ds_target];
		  ds_text[# prop._final_x, ds_target] = ds_text[# prop._x, ds_target] - (ds_text[# prop._xorig, ds_target]*ds_text[# prop._final_xscale, ds_target]);
		  ds_text[# prop._final_y, ds_target] = ds_text[# prop._y, ds_target] - (ds_text[# prop._yorig, ds_target]*ds_text[# prop._final_yscale, ds_target]);
            
	      //Reset auto pause
	      global.vg_text_auto_current = 0;   
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

	//Get text slot
	var ds_target = vngen_get_index(argument[0], vngen_type_text);

	//Skip action if target text does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}

	//Skip action if event skip is active
	if (sys_event_skip()) {
	   if (ds_text[# prop._txt_complete, ds_target] == false) {
	      //Skip typewriter effect
	      ds_text[# prop._index, ds_target] = ds_text[# prop._number, ds_target];
	      ds_text[# prop._redraw, ds_target] = ds_text[# prop._number, ds_target];
      
	      //Disable character speech animations
	      sys_anim_speech(ds_text[# prop._name, ds_target], false, vngen_type_text);
      
	      //Skip text event
	      ds_text[# prop._txt_complete, ds_target] = true;  
	      sys_action_term();    
	   }
	}

	//Skip action if target text surface does not exist
	if (!surface_exists(ds_text[# prop._surf, ds_target])) {
	   exit;
	}

	//End action when vngen_do_continue is run
	if (text_continue == true) or (global.vg_text_auto == true) {
	   if (ds_text[# prop._txt_complete, ds_target] == false) {
	      //If typewriter effect is complete, end action
	      if (ds_text[# prop._index, ds_target] >= ds_text[# prop._number, ds_target]) and (ds_text[# prop._trans_time, ds_target] >= ds_text[# prop._trans_dur, ds_target]) {
	         sys_action_term();
         
	         //Do not process when text is marked complete
	         ds_text[# prop._txt_complete, ds_target] = true;
	      } else {  
	         //Otherwise, skip ending action until vngen_do_continue is run again
	         text_continue = false;
	      }      
	   } 
	}


	/*
	PERFORM TRANSITIONS
	*/

	//Get ease mode
	if (argument_count > 11) {
	   if (is_real(argument[11])) {
	      var action_ease = argument[11];
	   } else {
	      var action_ease = false;
	   }
	} else {
	   var action_ease = false;
	}

	//Perform transitions
	if (ds_text[# prop._trans_time, ds_target] < ds_text[# prop._trans_dur, ds_target]) {
	   sys_trans_perform(ds_text, ds_target, action_ease);
	}



}
