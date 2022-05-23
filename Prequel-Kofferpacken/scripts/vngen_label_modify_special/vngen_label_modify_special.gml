/// @function	vngen_label_modify_style(id, col1, col2, col3, col4, shadow, outline, alpha, duration, [ease]);
/// @param		{real|string|macro}	id
/// @param		{color}				col1
/// @param		{color}				col2
/// @param		{color}				col3
/// @param		{color}				col4
/// @param		{color}				shadow
/// @param		{color}				outline
/// @param		{real}				alpha
/// @param		{real}				duration
/// @param		{integer|macro}		[ease]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function vngen_label_modify_special() {

	/*
	Applies a number of customizations to the specified label. As with other
	actions, modifications will persist until the label is removed or another
	modification is performed.

	Unlike animations, mods are permanent changes performed once using absolute values. 

	argument0 = identifier of the label to be modified (real or string) (or keyword 'all' for all)
	argument1 = the new color blending value for the top left corner (color) (optional, use 'previous' for no change or 'inherit' for inherit)
	argument2 = the new color blending value for the top right corner (color) (optional, use 'previous' for no change or 'inherit' for inherit)
	argument3 = the new color blending value for the bottom right corner (color) (optional, use 'previous' for no change or 'inherit' for inherit)
	argument4 = the new color blending value for the bottom left corner (color) (optional, use 'previous' for no change or 'inherit' for inherit)
	argument5 = the new color value for label shadow (color) (optional, use 'previous' for no change, 'inherit' for inherit, or 'none' for none)
	argument6 = the new color value for label outline (color) (optional, use 'previous' for no change, 'inherit' for inherit, or 'none' for none)
	argument7 = the new alpha transparency value to display the label in (real) (0-1)
	argument8 = sets the length of the modification transition, in seconds (real)
	argument9 = sets the animation easing method (see interp for available modes) (integer) (can also use true/false) (optional, use no argument for none)

	Example usage:
	   vngen_event() {
	      vngen_label_modify_style("label", c_red, c_blue, c_green, c_yellow, c_black, c_white, 1, 2);
	   }
	*/
	//vngen_label_modify_style("names", c_yellow, c_yellow, c_orange, c_orange, c_black, c_black, 1, 0);
	

	
	
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
	      //Get label slot
	      if (argument[0] == all) {
	         //Modify all labels, if enabled
	         var ds_target = sys_grid_last(ds_label);
	         var ds_yindex = 0;
	      } else {
	         //Otherwise get single label to modify
	         var ds_target = vngen_get_index(argument[0], vngen_type_label);
	         var ds_yindex = ds_target;
	      }
         
	      //If the target label exists...
	      if (!is_undefined(ds_target)) {  
	         while (ds_target >= ds_yindex) {            
	            //Backup original values to temp value slots
	            ds_label[# prop._tmp_col1, ds_target] = ds_label[# prop._col1, ds_target];           //Color1
	            ds_label[# prop._tmp_col2, ds_target] = ds_label[# prop._col2, ds_target];           //Color2
	            ds_label[# prop._tmp_col3, ds_target] = ds_label[# prop._col3, ds_target];           //Color3
	            ds_label[# prop._tmp_col4, ds_target] = ds_label[# prop._col4, ds_target];           //Color4
	            ds_label[# prop._tmp_alpha, ds_target] = ds_label[# prop._alpha, ds_target];         //Alpha
	            ds_label[# prop._tmp_shadow, ds_target] = ds_label[# prop._txt_shadow, ds_target];   //Shadow
	            ds_label[# prop._tmp_outline, ds_target] = ds_label[# prop._txt_outline, ds_target]; //Outline
                        
	            //Set transition time
	            if (argument[8] > 0) {
	               ds_label[# prop._time, ds_target] = 0;  //Transition time
	            } else {
	               ds_label[# prop._time, ds_target] = -1; //Transition time
	            }
            
	            //Continue to next label, if any
	            ds_target -= 1;
	         }           
	      } else {
	         //Skip action if label does not exist
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

	//Get label slot
	if (argument[0] == all) {
	   //Modify all labels, if enabled
	   var ds_target = sys_grid_last(ds_label);
	   var ds_yindex = 0;
	} else {
	   //Otherwise get single label to modify
	   var ds_target = vngen_get_index(argument[0], vngen_type_label);
	   var ds_yindex = ds_target;
	}

	//Skip action if target label does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}

	/* AUTO LABEL */

	//Get default text
	var text = ds_label[# prop._txt_orig, ds_target];

	//If auto mode is enabled...
	if (ds_label[# prop._lab_auto, ds_target] == true) {
	   //Get auto label
	   text = text_label_auto;
	}

	//Get label style
	while (ds_target >= ds_yindex) { 
	   var style = sys_text_style_init(ds_label, ds_target, text, previous, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6]);
	   var text_c1 = style[? "col1"];
	   var text_c2 = style[? "col2"];
	   var text_c3 = style[? "col3"];
	   var text_c4 = style[? "col4"];
	   var text_shadow = style[? "shadow"];
	   var text_outline = style[? "outline"];
	   ds_map_destroy(style);
   
   
	   /*
	   PERFORM MODIFICATIONS
	   */
   
	   //Increment transition time
	   if (ds_label[# prop._time, ds_target] < argument[8]) {
	      if (!sys_action_skip()) {
	         ds_label[# prop._time, ds_target] += time_frame;
	      } else {
	         //Otherwise skip transition if vngen_do_continue is run
	         ds_label[# prop._time, ds_target] = argument[8];     
	      }
      
	      //Mark this action as complete
	      if (ds_label[# prop._time, ds_target] < 0) or (ds_label[# prop._time, ds_target] >= argument[8]) {      
	         //Disallow exceeding target values
	         ds_label[# prop._col1, ds_target] = text_c1;             //Color1
	         ds_label[# prop._col2, ds_target] = text_c2;             //Color2
	         ds_label[# prop._col3, ds_target] = text_c3;             //Color3
	         ds_label[# prop._col4, ds_target] = text_c4;             //Color4
	         ds_label[# prop._alpha, ds_target] = argument[7];        //Alpha
	         ds_label[# prop._time, ds_target] = argument[8];         //Time
	         ds_label[# prop._redraw, ds_target] = true;              //Redraw
	         ds_label[# prop._txt_shadow, ds_target] = text_shadow;   //Shadow
	         ds_label[# prop._txt_outline, ds_target] = text_outline; //Outline
         
	         //End action
	         if (ds_target == ds_yindex) {
	            sys_action_term();
            
	            //Continue to next label, if any
	            ds_target -= 1;
	            continue;
	         }
	      }
	   } else {
	      //Do not process when transitions are complete
	      ds_target -= 1;
	      continue;
	   }
   
	   //If duration is greater than 0...
	   if (argument[8] > 0) {
	      //Get ease mode
	      if (argument_count > 9) {
	         var action_ease = argument[9];
	      } else {
	         var action_ease = true;
	      }
      
	      //Get transition time
	      var action_time = interp(0, 1, ds_label[# prop._time, ds_target]/argument[8], action_ease);
   
	      //Clamp color interpolation
	      var color_time = clamp(action_time, 0, 1);
   
	      //Enable redrawing modifications during transition
	      ds_label[# prop._redraw, ds_target] = true;
   
	      //Perform label modifications
	      ds_label[# prop._col1, ds_target] = merge_color(ds_label[# prop._tmp_col1, ds_target], text_c1, color_time); //Color1  
	      ds_label[# prop._col2, ds_target] = merge_color(ds_label[# prop._tmp_col2, ds_target], text_c2, color_time); //Color2  
	      ds_label[# prop._col3, ds_target] = merge_color(ds_label[# prop._tmp_col3, ds_target], text_c3, color_time); //Color3  
	      ds_label[# prop._col4, ds_target] = merge_color(ds_label[# prop._tmp_col4, ds_target], text_c4, color_time); //Color4  
	      ds_label[# prop._alpha, ds_target] = lerp(ds_label[# prop._tmp_alpha, ds_target], argument[7], action_time); //Alpha
   
	      //Interp shadow, if enabled
	      if (text_shadow >= 0) {
	         var temp_shadow = max(0, ds_label[# prop._tmp_shadow, ds_target]);
	         ds_label[# prop._txt_shadow, ds_target] = merge_color(temp_shadow, text_shadow, color_time); //Shadow
	      } else {
	         //Otherwise disable directly
	         if (ds_label[# prop._txt_shadow, ds_target] != -4) {
	            ds_label[# prop._txt_shadow, ds_target] = -4;
	         }
	      }
   
	      //Interp outline, if enabled
	      if (text_outline >= 0) {
	         var temp_outline = max(0, ds_label[# prop._tmp_outline, ds_target]);
	         ds_label[# prop._txt_outline, ds_target] = merge_color(temp_outline, text_outline, color_time); //Outline  
	      } else {
	         //Otherwise disable directly
	         if (ds_label[# prop._txt_outline, ds_target] != -4) {
	            ds_label[# prop._txt_outline, ds_target] = -4;
	         }
	      }
	   }
   
	   //Continue to next label, if any
	   ds_target -= 1;
	} 



}
