/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if(vngen_event()){
	vngen_scene_create_ext(spr_splashscreen_2); 
	vngen_textbox_create(spr_empty);
    vngen_label_create();
    vngen_prompt_create();
   
   //Apply style modifications
    vngen_text_modify_style();
    vngen_label_modify_style();

    //Apply text speed
    vngen_script_execute_ext(vngen_set_speed, 50);   
}

if(vngen_event()){
	
	 //Create options
   if (vngen_option("choice_Sprache")) {
	vngen_option_create_transformed("opt_Deutsch",		" ", -(camera_get_view_width(view_camera[0])*0.1), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_standard_normal, spr_icon_deutsch, spr_icon_deutsch_hover, spr_icon_deutsch_hover);
    vngen_option_create_transformed("opt_Englisch",		" ",  (camera_get_view_width(view_camera[0])*0.1), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_standard_normal, spr_icon_englisch_grey, spr_icon_englisch_grey, spr_icon_englisch_grey);
    vngen_option_create_transformed("opt_Franzoesisch",	" ", -(camera_get_view_width(view_camera[0])*0.1), -(camera_get_view_height(view_camera[0])/100)*20, -3, 0.5, fnt_standard_normal, spr_icon_franz_grey, spr_icon_franz_grey, spr_icon_franz_grey);
	vngen_option_create_transformed("opt_Spanisch",		" ",  (camera_get_view_width(view_camera[0])*0.1), -(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_standard_normal, spr_icon_spanisch_grey, spr_icon_spanisch_grey, spr_icon_spanisch_grey);
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Sprache", true)) {
      case "opt_Deutsch":		global.language = LANGUAGE.German ; break;
      case "opt_Englisch":		room_goto(Sprachauswahl); 	break;
      case "opt_Franzoesisch":	room_goto(Sprachauswahl); break;
      case "opt_Spanisch":		room_goto(Sprachauswahl); break;
   } 
}

if(vngen_event()){
	room_goto(Erklaerung);
}

//End VNgen script
vngen_event_reset_target();