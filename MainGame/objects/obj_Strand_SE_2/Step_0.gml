/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_s_Unterwasser);
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
	
	vngen_char_create_ext_back("Leutnant Scholle", spr_empty, 500, 0, scale_y);
	vngen_char_create_ext_back("Enya", spr_empty, 1000, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_text_create("", Text("s_se_2_0")); 
	global.hochzeit = true; 
}


if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Enya",spr_enya_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("s_se_2_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt_grey, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_besorgt_grey, scale_y); 
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich, scale_y); 
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_4"));
}

if (vngen_event()) {
	vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("s_se_2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Enya",spr_enya_gluecklich, scale_y); 
   vngen_text_replace("Enya", Text("s_se_2_9"));
}

if (vngen_event()) {
	vngen_audio_play_sound("sound", sfx_char_meerjungfrau_freundlich_02, 1, 0, false, false);
   vngen_text_replace("Enya", Text("s_se_2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Enya",spr_enya_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_2_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich, scale_y); 
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_12"));
}

if (vngen_event()) {
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Enya",spr_enya_gluecklich, scale_y); 
   vngen_text_replace("Enya", Text("s_se_2_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Leutnant Scholle",spr_scholle_gluecklich, scale_y); 
	vngen_char_change_sprite("Enya",spr_enya_gluecklich_grey, scale_y); 
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("s_se_2_16"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Leutnant Scholle",spr_empty, scale_y); 
	vngen_char_change_sprite("Enya",spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("strand_2_1")) {
		vngen_option_create_transformed("opt_Strauss"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_blumenstrauss, spr_icon_blumenstrauss_active, spr_icon_blumenstrauss_active);
	    vngen_option_create_transformed("opt_Band",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_band, spr_icon_band_active, spr_icon_band_active);
	    vngen_option_create_transformed("opt_Kleid", " ",	-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_kleid, spr_icon_kleid_active, spr_icon_kleid_active);
  }
   
   switch (vngen_get_option("strand_2_1", true)) {
      case "opt_Strauss":	global.s_se_2_d1 = 1; break;
      case "opt_Band":		global.s_se_2_d1 = 2; break;
      case "opt_Kleid":		global.s_se_2_d1 = 3; break;
   }	
}

if (vngen_event()) {
   if(global.s_se_2_d1 == 1){
	   room_goto(Strand_SE_2_Blumen);
   }
   if(global.s_se_2_d1 == 2){
	   room_goto(Strand_SE_2_Band);
   }
   if(global.s_se_2_d1 == 3){
	   room_goto(Strand_SE_2_Kleid);
   }
}

//End VNgen script
vngen_event_reset_target();