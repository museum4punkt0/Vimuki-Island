/// @function	vngen_scene_create_start(sprite);
/// @param		{sprite}		sprite
function vngen_scene_create_start(argument0) {

	var create_scene_identifier  = "bg"; 
	var create_scene_hor_offset = orig_center;
	var create_scene_ver_offset  = orig_center;
	var create_scene_hor_pos  = camera_get_view_width(view_camera[0])*0.5;
	var create_scene_ver_pos  = camera_get_view_height(view_camera[0])*0.5;
	var create_scene_depth  = 2;
	var create_scene_scaling_mode  = scale_x_y;
	var create_scene_tiling  = false; 
	var create_scene_above_char  = false;
	var create_scene_transition_mode = trans_fade; 
	var create_scene_transition_duration = 1.5;
	var create_scene_ease = ease_sin;

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
	      //Get the current number of scene entries
	      var ds_target = ds_grid_height(ds_scene);
   
	      //Create new scene slot in data structure
	      ds_grid_resize(ds_scene, ds_grid_width(ds_scene), ds_grid_height(ds_scene) + 1);   
   
	      //Set basic scene properties
	      ds_scene[# prop._id, ds_target] = create_scene_identifier;									//ID
	      ds_scene[# prop._sprite, ds_target] = argument0;								//Sprite
	      ds_scene[# prop._left, ds_target] = 0;										//Crop left
	      ds_scene[# prop._top, ds_target] = 0;											//Crop top
	      ds_scene[# prop._width, ds_target] = sprite_get_width(argument0);				//Crop width
	      ds_scene[# prop._height, ds_target] = sprite_get_height(argument0);			//Crop height
	      ds_scene[# prop._x, ds_target] = create_scene_hor_pos;									//X
	      ds_scene[# prop._y, ds_target] = create_scene_ver_pos;									//Y
	      ds_scene[# prop._z, ds_target] = create_scene_depth;									//Z
	      ds_scene[# prop._xscale, ds_target] = 1;										//X scale
	      ds_scene[# prop._yscale, ds_target] = 1;										//Y scale
	      ds_scene[# prop._rot, ds_target] = 0;											//Rotation
	      ds_scene[# prop._col1, ds_target] = c_white;									//Color1
	      ds_scene[# prop._col2, ds_target] = c_white;									//Color2
	      ds_scene[# prop._col3, ds_target] = c_white;									//Color3
	      ds_scene[# prop._col4, ds_target] = c_white;									//Color4
	      ds_scene[# prop._alpha, ds_target] = 1;										//Alpha
		  ds_scene[# prop._img_index, ds_target] = 0;									//Image index
	      ds_scene[# prop._img_num, ds_target] = sprite_get_number(argument0);			//Image number
   
	      //Set special scene properties
	      ds_scene[# prop._fade_src, ds_target] = -1;              //Fade sprite   
	      ds_scene[# prop._fade_alpha, ds_target] = 1;             //Fade alpha
	      ds_scene[# prop._trans, ds_target] = -1;                 //Transition
	      ds_scene[# prop._shader, ds_target] = -1;                //Shader
	      ds_scene[# prop._sh_float_data, ds_target] = -1;         //Shader float data
	      ds_scene[# prop._sh_mat_data, ds_target] = -1;           //Shader matrix data
	      ds_scene[# prop._sh_samp_data, ds_target] = -1;          //Shader sampler data
	      ds_scene[# prop._anim, ds_target] = -1;                  //Animation
	      ds_scene[# prop._anim_xscale, ds_target] = 1;            //Animation X scale
	      ds_scene[# prop._anim_yscale, ds_target] = 1;            //Animation Y scale
	      ds_scene[# prop._anim_alpha, ds_target] = 1;             //Animation alpha
	      ds_scene[# prop._def, ds_target] = -1;                   //Deformation
	      ds_scene[# prop._def_point_data, ds_target] = -1;        //Deform point data
	      ds_scene[# prop._def_surf, ds_target] = -1;              //Deform surface
	      ds_scene[# prop._def_fade_surf, ds_target] = -1;         //Deform fade surface
	      ds_scene[# prop._scn_repeat, ds_target] = create_scene_tiling;     //Repeat mode   
	      ds_scene[# prop._scn_foreground, ds_target] = create_scene_above_char; //Foreground mode  
	      ds_scene[# prop._surf, ds_target] = -1;                  //Scene surface
   
	      //Set sprite origins
	      sys_orig_init(ds_scene, ds_target, create_scene_hor_offset, create_scene_ver_offset);
   
	      //Initialize scaling
	      sys_scale_init(ds_scene, ds_target, global.dp_width, global.dp_height, global.dp_width_init, global.dp_height_init, create_scene_scaling_mode);
   
	      //Initialize transitions
	      sys_trans_init(ds_scene, ds_target, create_scene_transition_mode, create_scene_transition_duration, false);
   
	      //Sort data structure by Z depth
	      ds_grid_sort(ds_scene, prop._z, false); 
	  
		  //Get calculated properties
		  ds_scene[# prop._final_xscale, ds_target] = ds_scene[# prop._xscale, ds_target]*ds_scene[# prop._oxscale, ds_target];
		  ds_scene[# prop._final_yscale, ds_target] = ds_scene[# prop._yscale, ds_target]*ds_scene[# prop._oyscale, ds_target];
		  ds_scene[# prop._final_width, ds_target] = ds_scene[# prop._width, ds_target];
		  ds_scene[# prop._final_height, ds_target] = ds_scene[# prop._height, ds_target];
		  ds_scene[# prop._final_x, ds_target] = ds_scene[# prop._x, ds_target] - (ds_scene[# prop._xorig, ds_target]*ds_scene[# prop._final_xscale, ds_target]);
		  ds_scene[# prop._final_y, ds_target] = ds_scene[# prop._y, ds_target] - (ds_scene[# prop._yorig, ds_target]*ds_scene[# prop._final_yscale, ds_target]);
	   }
	}


	/*
	DATA MANAGEMENT
	*/

	//Skip action if engine is paused
	if (global.vg_pause == true) {
	   exit;
	}

	//Get scene slot
	var ds_target = vngen_get_index(create_scene_identifier, vngen_type_scene);

	//Skip action if target scene does not exist
	if (is_undefined(ds_target)) {
	   exit;
	}


	/*
	PERFORM TRANSITIONS
	*/

	//Perform transitions
	if (ds_scene[# prop._trans_time, ds_target] < ds_scene[# prop._trans_dur, ds_target]) {
	   sys_trans_perform(ds_scene, ds_target, create_scene_ease);
   
	   //End action when transitions are complete
	   if (ds_scene[# prop._trans_time, ds_target] >= ds_scene[# prop._trans_dur, ds_target]) {
	      sys_action_term();
	   }
	}

}
