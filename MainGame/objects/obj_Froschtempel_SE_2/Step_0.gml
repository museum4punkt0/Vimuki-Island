/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Froschtempel_Froschdorf);
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
	vngen_char_create_ext_back("Mitte", spr_empty, 600, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_text_create("", Text("f_se_2_0")); 
}


if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("f_se_2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_croak_gluecklich_, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Croak", Text("f_se_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace("Kwa-Kwa", Text("f_se_2_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_kwakwa_lachend_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_2_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_se_2_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Mitte", spr_kwaeka_lachend, scale_y ); 
   vngen_text_replace("Kväka", Text("f_se_2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_kwaeka_lachend_grey, scale_y );
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
   vngen_text_replace("Chad", Text("f_se_2_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y );
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
   vngen_text_replace("Eeeh", Text("f_se_2_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_guo_lachend, scale_y );
   vngen_text_replace("Guo", Text("f_se_2_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_gaecool_lachend, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Gae-cool", Text("f_se_2_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_gaecool_lachend_grey, scale_y );
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("f_se_2_15"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_2_1")) {
		vngen_option_create_transformed("opt_Kochen"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_kochen, spr_icon_kochen_active, spr_icon_kochen_active);
	    vngen_option_create_transformed("opt_Deko",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_deko, spr_icon_deko_active, spr_icon_deko_active);
	    vngen_option_create_transformed("opt_Musik", " ",	-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_musik, spr_icon_musik_active, spr_icon_musik_active);
  }
   
   switch (vngen_get_option("tempel_2_1", true)) {
      case "opt_Kochen":	global.f_se_2_d1 = 1; break;
      case "opt_Deko":		global.f_se_2_d1 = 2; break;
      case "opt_Musik":		global.f_se_2_d1 = 3; break;
   }	
}

if (vngen_event()) {
   if(global.f_se_2_d1 == 1){
	   room_goto(Froschtempel_SE_2_Kochen);
   }
   if(global.f_se_2_d1 == 2){
	   room_goto(Froschtempel_SE_2_Deko);
   }
   if(global.f_se_2_d1 == 3){
	   room_goto(Froschtempel_SE_2_Musik);
   }
}

//End VNgen script
vngen_event_reset_target();