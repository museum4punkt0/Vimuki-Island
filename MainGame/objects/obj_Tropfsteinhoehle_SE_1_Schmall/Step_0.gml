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
	vngen_char_create_ext("Olmchen", spr_empty, 710, -200, scale_y);
	vngen_char_create_ext("Salz", spr_empty, 710, -200, scale_y);
	vngen_text_create("", Text("t_se_1_d1_r1_0")); 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt,scale_y);
   vngen_text_replace("Chad", Text("t_se_1_d1_r1_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
   vngen_text_replace("", Text("t_se_1_d1_r1_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("t_se_1_d1_r1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
   vngen_text_replace("Suzan", Text("t_se_1_d1_r1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
   vngen_text_replace("", Text("t_se_1_d1_r1_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r1_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_d1_r1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
   vngen_text_replace("Chad", Text("t_se_1_d1_r1_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
   vngen_text_replace("Suzan", Text("t_se_1_d1_r1_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("Chad", Text("t_se_1_d1_r1_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
   vngen_text_replace("Suzan", Text("t_se_1_d1_r1_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("Chad", Text("t_se_1_d1_r1_13"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_2")) {
		vngen_option_create_transformed("opt_kehrt",	Text("t_se_1_d1_r1_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_schwimm",	Text("t_se_1_d1_r1_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("hoehle_2", true)) {
      case "opt_kehrt":		global.t_se_1_d2 = 1; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
      case "opt_schwimm":	global.t_se_1_d2 = 2; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d2 == 1){
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r1_0"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r2_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_1"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r1_2"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_3"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r2_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r1_4"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r1_5"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r1_6"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r2_6"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_traurig_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_7"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_7"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_8"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_8"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r1_9"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_olmchen_01, 1, 0, false, false);
		vngen_text_replace("Olmchen", Text("t_se_1_d1_r1_d2_r2_9"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r1_10"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_10"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_11"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_olmchen_02, 1, 0, false, false);
		vngen_text_replace("Olmchen", Text("t_se_1_d1_r1_d2_r2_11"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_12"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_12"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_13"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_13"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r1_14"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r2_14"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_15"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_15"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_16"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_olmchen_01, 1, 0, false, false);
		vngen_text_replace("Olmchen", Text("t_se_1_d1_r1_d2_r2_16"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_create_ext("Salz", spr_salzkreatur_idle, 710, 50, scale_y);
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_17"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Olmchen",spr_olmchen_idle_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_17"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_18"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_18"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_wut, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r1_19"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r2_19"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad",spr_chad_wut_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_20"));
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_20"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_21"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("t_se_1_d1_r1_d2_r2_22"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d2 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_23"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Olmchen", spr_empty, scale_y); 
		vngen_char_change_sprite("Salz", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("hoehle_3")) {
			vngen_option_create_transformed("opt_weg",	Text("t_se_1_d1_r1_d2_r1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_gang",	Text("t_se_1_d1_r1_d2_r1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("hoehle_3", true)) {
	      case "opt_weg":	global.t_se_1_d3 = 1; break;
	      case "opt_gang":	global.t_se_1_d3 = 2; break;
	   }	
	}
	if(global.t_se_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Olmchen", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("hoehle_4")) {
			vngen_option_create_transformed("opt_olm",	Text("t_se_1_d1_r1_d2_r2_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_intu",	Text("t_se_1_d1_r1_d2_r2_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("hoehle_4", true)) {
	      case "opt_olm":	global.t_se_1_d4 = 1; break;
	      case "opt_intu":	global.t_se_1_d4 = 2; break;
	   }	
	}
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r1_d3_r1_0"));
	}
	if(global.t_se_1_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r1_d3_r2_0"));
	}
	if(global.t_se_1_d4 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Olmchen",	spr_olmchen_idle_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r2_d4_r1_0"));
	}
	if(global.t_se_1_d4 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d1_r1_d2_r2_d4_r2_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r1_1"));
	}
	if(global.t_se_1_d3 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r2_1"));
	}
	if(global.t_se_1_d4 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r1_1"));
	}
	if(global.t_se_1_d4 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r1_2"));
	}
	if(global.t_se_1_d3 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r2_2"));
	}
	if(global.t_se_1_d4 == 1){
		vngen_char_change_sprite("Olmchen",	spr_empty, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r1_2"));
	}
	if(global.t_se_1_d4 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d3 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r2_3"));
	}
	if(global.t_se_1_d4 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d3 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r1_d3_r2_4"));
	}
	if(global.t_se_1_d4 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d3 == 2){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 2){
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d3 == 2){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_se_1_d1_r1_d2_r2_d4_r2_6"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d3 == 2){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d4 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d1_r1_d2_r2_d4_r2_7"));
	}
}

if (vngen_event()) {
	room_goto(Tropfsteinhoehle_SE_1_Hoehle);
}

//End VNgen script
vngen_event_reset_target();