/// @function	vngen_text_quiz_create(name, text);
/// @param		{string}		name
/// @param		{string}		text
function vngen_text_quiz_create() {
	/*
	INITIALIZATION
	*/

	var text_create_identifier  = "txt"; //arg0
	var text_create_pos_x  = camera_get_view_width(view_camera[0])*0.053; //arg3
	var text_create_pos_y  = camera_get_view_height(view_camera[0]) *0.05;//arg4
	var text_create_pos_z  =  0;//arg5
	var text_create_zeilenumbruch  = camera_get_view_width(view_camera[0])*0.44; //arg6
	var text_create_text_font  = fnt_roboto_standard_smaller; //arg7
	var text_create_text_color  = c_black; //arg8
	var text_create_transition =trans_none; //arg9
	var text_create_transition_duration = 0; //arg10
	
	//Get input language, if any
	var action_lang = undefined;

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
	      if (string_count("||", argument[1]) > 0) {
	         var name = string_copy(argument[1], 1, string_pos("||", argument[1]) - 1);
	      } else {
	         //Otherwise use default text
	         var name = argument[0];
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
	      if (text_create_text_color < 0) {
	         var style_inherit = text_create_text_color;
	      } else {
	         var style_inherit = none;
	      }
      
	      //Process text and get the final surface for rendering
	      var text_surf = sys_text_init(ds_text, ds_target, argument[1], name, global.vg_halign_text, text_create_zeilenumbruch, global.vg_lineheight_text, text_create_text_font, text_create_text_color, text_create_text_color, text_create_text_color, text_create_text_color, style_inherit, style_inherit, global.vg_speed_text);
	  
		  //Get auto position, if enabled
		  if (text_create_pos_x == auto) or (text_create_pos_y == auto) {
	         var text_x = text_xprevious;
	         var text_y = text_yprevious;
		  } else {
			 //Otherwise use input position
			 var text_x = text_create_pos_x;
			 var text_y = text_create_pos_y;
		  }
      
	      //Set basic text properties
	      ds_text[# prop._id, ds_target] = text_create_identifier;                       //ID
	      ds_text[# prop._name, ds_target] = name;                            //Name
	      ds_text[# prop._left, ds_target] = 0;                               //Crop left
	      ds_text[# prop._top, ds_target] = 0;                                //Crop top
	      ds_text[# prop._width, ds_target] = surface_get_width(text_surf);   //Crop width
	      ds_text[# prop._height, ds_target] = surface_get_height(text_surf); //Crop height
	      ds_text[# prop._xorig, ds_target] = 0;                              //X origin
	      ds_text[# prop._yorig, ds_target] = 0;                              //Y origin
	      ds_text[# prop._x, ds_target] = text_x;                             //X
	      ds_text[# prop._y, ds_target] = text_y;                             //Y
	      ds_text[# prop._z, ds_target] = text_create_pos_z;                        //Z
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
	      sys_trans_init(ds_text, ds_target, text_create_transition, text_create_transition_duration, false);
      
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
	var ds_target = vngen_get_index(text_create_identifier, vngen_type_text);

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
	var action_ease = false;
	
	//Perform transitions
	if (ds_text[# prop._trans_time, ds_target] < ds_text[# prop._trans_dur, ds_target]) {
	   sys_trans_perform(ds_text, ds_target, action_ease);
	}

}