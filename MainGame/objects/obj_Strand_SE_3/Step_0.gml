/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Strand);
   vngen_textbox_create_start(spr_textbox_Insel);
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_besorgt_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
	vngen_text_create("", Text("s_se_3_0")); 
}


if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_5"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("strand_3_1")) {
		vngen_option_create_transformed("opt_Chad"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_chad, spr_icon_chad_active, spr_icon_chad_active);
	    vngen_option_create_transformed("opt_Suzan"," ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_suzan, spr_icon_suzan_active, spr_icon_suzan_active);
  }
   
   switch (vngen_get_option("strand_3_1", true)) {
      case "opt_Chad":		room_goto(Strand_SE_3_Chad); break;
      case "opt_Suzan":		room_goto(Strand_SE_3_Suzan); break;
   }	
}

//End VNgen script
vngen_event_reset_target();