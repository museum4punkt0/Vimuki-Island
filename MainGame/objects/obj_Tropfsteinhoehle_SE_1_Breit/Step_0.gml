/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Hoehle);
   vngen_textbox_create(spr_textbox_Insel);
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Eihrich", spr_empty, 710, 50, scale_y);
	vngen_char_create_ext("Snaily", spr_empty, 680, -150, scale_y);
	vngen_text_create("", Text("t_se_1_d1_r2_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
   vngen_text_replace("", Text("t_se_1_d1_r2_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y); 
   vngen_text_replace("Chad", Text("t_se_1_d1_r2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y); 
	vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("t_se_1_d1_r2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y); 
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
	vngen_text_replace("Chad", Text("t_se_1_d1_r2_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("t_se_1_d1_r2_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	
   vngen_text_replace("", Text("t_se_1_d1_r2_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
   vngen_text_replace("Suzan", Text("t_se_1_d1_r2_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y); 
   vngen_text_replace("Chad", Text("t_se_1_d1_r2_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y); 
   vngen_text_replace("", Text("t_se_1_d1_r2_14"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y); 
   vngen_text_replace("Chad", Text("t_se_1_d1_r2_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
   vngen_text_replace("", Text("t_se_1_d1_r2_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
   vngen_text_replace("Suzan", Text("t_se_1_d1_r2_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y); 
   vngen_text_replace("Chad", Text("t_se_1_d1_r2_19"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
   vngen_text_replace("Suzan", Text("t_se_1_d1_r2_20"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y); 
   vngen_text_replace("Chad", Text("t_se_1_d1_r2_21"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r2_22"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_5")) {
		vngen_option_create_transformed("opt_links"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_pfeil_links, spr_icon_pfeil_links_active, spr_icon_pfeil_links_active);
	    vngen_option_create_transformed("opt_rechts"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_pfeil_rechts, spr_icon_pfeil_rechts_active, spr_icon_pfeil_rechts_active);
   }
   
   switch (vngen_get_option("hoehle_5", true)) {
      case "opt_rechts":	global.t_se_1_d5 = 1; break;
      case "opt_links":		global.t_se_1_d5 = 2; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d5 == 1){
		
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r1_0"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r2_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_1"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_2"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_3"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r2_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_4"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r2_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_traurig, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_5"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_traurig_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_6"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_traurig, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r2_6"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_traurig, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_7"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r2_7"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_traurig_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_8"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_8"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_9"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r2_9"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_10"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_10"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_11"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_11"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle, scale_y); 
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_12"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Snaily",	spr_schnecke_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_snail_02, 1, 0, false, false);
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_12"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_13"));
	}
	if(global.t_se_1_d5 == 2){
		
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_13"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert, scale_y); 
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle_grey, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_14"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Snaily",	spr_schencke_skeptisch, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_14"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_dichter, 1, 0, false, false);
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_15"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_15"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_16"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_16"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle, scale_y); 
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_17"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r2_17"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_18"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r2_18"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_text_replace("Eihrich", Text("t_se_1_d1_r2_d5_r1_19"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Eihrich",	spr_eihrich_idle_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_20"));
	}
	if(global.t_se_1_d5 == 2){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.t_se_1_d5 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Eihrich", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("hoehle_6")) {
			vngen_option_create_transformed("opt_oben"," ",		-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_pfeil_hoch, spr_icon_pfeil_hoch_active, spr_icon_pfeil_hoch_active);
			vngen_option_create_transformed("opt_unten"," ",	 (camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_pfeil_unten, spr_icon_pfeil_unten_active, spr_icon_pfeil_unten_active);
	  }
   
	   switch (vngen_get_option("hoehle_6", true)) {
	      case "opt_oben":	global.t_se_1_d6 = 1; break;
	      case "opt_unten":	global.t_se_1_d6 = 2; break;
	   }	
	}
	if(global.t_se_1_d5 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Snaily", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("hoehle_7")) {
			vngen_option_create_transformed("opt_folgen",	Text("t_se_1_d1_r2_d5_r2_d7_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_gang",		Text("t_se_1_d1_r2_d5_r2_d7_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("hoehle_7", true)) {
	      case "opt_folgen":	global.t_se_1_d7 = 1; break;
	      case "opt_gang":		global.t_se_1_d7 = 2; break;
	   }	
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Eihrich", spr_eihrich_idle_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r1_d6_r1_0"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Eihrich", spr_eihrich_idle_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r1_d6_r2_0"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_char_change_sprite("Snaily", spr_schnecke_idle, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r2_d7_r1_0"));
	}
	if(global.t_se_1_d7 == 2){
		vngen_text_create("", Text("t_se_1_d1_r2_d5_r2_d7_r2_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r1_1"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r2_1"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_d7_r1_1"));
	}
	if(global.t_se_1_d7 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_d7_r2_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r1_2"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_d6_r2_2"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_d7_r1_2"));
	}
	if(global.t_se_1_d7 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_d7_r2_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_d6_r1_3"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_d6_r2_3"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r2_d7_r2_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_d6_r1_4"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Eihrich", spr_empty, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r2_4"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Eihrich", spr_empty, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r1_5"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_d6_r2_5"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r2_d5_r1_d6_r1_6"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_d6_r2_6"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r2_d5_r1_d6_r1_7"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r2_7"));
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d6 == 1){
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r2_d5_r1_d6_r1_8"));
	}
	if(global.t_se_1_d6 == 2){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d7 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	room_goto(Tropfsteinhoehle_SE_1_Hoehle);
}

//End VNgen script
vngen_event_reset_target();