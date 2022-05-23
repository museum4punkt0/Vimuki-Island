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
	vngen_char_create_ext_back(Text("t_se_1_bear"), spr_empty, 250, 50, scale_y);
	vngen_text_create("", Text("t_se_1_9")); 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("t_se_1_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("t_se_1_bear"), spr_saebelzahnbaer_schlafend_gluecklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_saebelzahnbaer_schnarchen, 1, 0, false, false);
   vngen_text_replace("", Text("t_se_1_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
   vngen_text_replace("Suzan", Text("t_se_1_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
   vngen_text_replace("Chad", Text("t_se_1_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
   vngen_text_replace("", Text("t_se_1_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
   vngen_text_replace("Suzan", Text("t_se_1_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("t_se_1_17"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	
	vngen_char_change_sprite(Text("t_se_1_bear"), spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_8")) {
		vngen_option_create_transformed("opt_zehen",	Text("t_se_1_d8_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_kriech",	Text("t_se_1_d8_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_wand",		Text("t_se_1_d8_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("hoehle_8", true)) {
      case "opt_zehen":		global.t_se_1_d8 = 1; break;
      case "opt_kriech":	global.t_se_1_d8 = 2; break;
      case "opt_wand":		global.t_se_1_d8 = 3; break;
   }	
}

if (vngen_event()) {
	
	vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_schlafend_gluecklich_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d8 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich, scale_y ); 
		vngen_text_create("Chad", Text("t_se_1_d8_r1_0"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_create("", Text("t_se_1_d8_r2_0"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_char_change_sprite("Chad",	spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich, scale_y); 
		vngen_text_create("Suzan", Text("t_se_1_d8_r3_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d8_r1_1"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_1"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_char_change_sprite("Suzan",	spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d8_r3_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_text_replace("", Text("t_se_1_d8_r1_2"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_2"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_text_replace("", Text("t_se_1_d8_r3_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_text_replace("", Text("t_se_1_d8_r1_3"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_3"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_text_replace("", Text("t_se_1_d8_r3_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_text_replace("", Text("t_se_1_d8_r1_4"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_4"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_text_replace("", Text("t_se_1_d8_r3_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		
		vngen_text_replace("", Text("t_se_1_d8_r1_5"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_char_change_sprite("Chad",		spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",		spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_nuede_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d8_r2_5"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_text_replace("", Text("t_se_1_d8_r3_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_text_replace("", Text("t_se_1_d8_r1_6"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_6"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_text_replace("", Text("t_se_1_d8_r3_6"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_char_change_sprite("Chad",spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d8_r1_7"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_7"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_nuede_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d8_r3_7"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_nuede_grey, scale_y); 
		vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d8_r1_8"));
	}
	if(global.t_se_1_d8 == 2){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_wuetend_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
		vngen_text_replace("", Text("t_se_1_d8_r2_8"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d8 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d8 == 2){
		vngen_text_replace("", Text("t_se_1_d8_r2_9"));
	}
	if(global.t_se_1_d8 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_wuetend, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
   vngen_text_replace("", Text("t_se_1_19"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_21"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("t_se_1_bear"), spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_9")) {
		vngen_option_create_transformed("opt_reden",	Text("t_se_1_d9_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_vert",		Text("t_se_1_d9_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_lauf",		Text("t_se_1_d9_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("hoehle_9", true)) {
      case "opt_reden":		global.t_se_1_d9 = 1; setSuzanValue(-1); setChadValue(-1);   setOwnValueBonus(); break;
      case "opt_vert":		global.t_se_1_d9 = 2; setChadValue(1); setOwnValue(1); break;
      case "opt_lauf":		global.t_se_1_d9 = 3; setSuzanValue(-1); setOwnValue(1); break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich_grey, scale_y); 
	vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_wuetend_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_se_1_d9 == 1){
		vngen_text_create("", Text("t_se_1_d9_r1_0"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_create("", Text("t_se_1_d9_r2_0"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_create("", Text("t_se_1_d9_r3_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich, scale_y);
		vngen_text_replace("Suzan", Text("t_se_1_d9_r1_1"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Chad",spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d9_r2_1"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_replace("", Text("t_se_1_d9_r3_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Chad",spr_chad_genervt, scale_y ); 
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_1_d9_r1_2"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Chad",spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d9_r2_2"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_erstaunt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d9_r3_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("Chad", Text("t_se_1_d9_r1_3"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_3"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_empty, scale_y); 
		vngen_text_replace("", Text("t_se_1_d9_r3_3"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",spr_chad_genervt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",spr_suzan_wut_grey, scale_y); 
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_4"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_4"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_replace("", Text("t_se_1_d9_r3_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Chad",spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("t_se_1_d9_r1_5"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
		vngen_text_replace("", Text("t_se_1_d9_r2_5"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_replace("", Text("t_se_1_d9_r3_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Suzan",spr_suzan_lachen, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_genervt_grey, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("t_se_1_d9_r1_6"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_6"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_replace("", Text("t_se_1_d9_r3_6"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Suzan",spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d9_r1_7"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_7"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_text_replace("", Text("t_se_1_d9_r3_7"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_8"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Chad",spr_chad_ekel, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_se_1_d9_r2_8"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_char_change_sprite("Dia", spr_dia_saebelzahnbaer, scale_prop_x_y ); 
		SaveDias(spr_dia_saebelzahnbaer_midi);
		vngen_text_replace("", Text("t_se_1_d9_r3_8"));
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_9"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d9_r2_9"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_10"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_10"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_wuetend, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
		vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace(Text("t_se_1_bear"), Text("t_se_1_d9_r1_11"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_saebelzahnbaer_erstaunt_grey, scale_y); 
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_1_d9_r2_11"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_empty, scale_y); 
		vngen_text_replace("", Text("t_se_1_d9_r1_12"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite(Text("t_se_1_bear"),spr_empty, scale_y); 
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_1_d9_r2_12"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_char_change_sprite("Suzan",spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_char_change_sprite("Chad",spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_1_d9_r1_13"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Suzan",spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("t_se_1_d9_r2_13"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_14"));
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_14"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_text_replace("", Text("t_se_1_d9_r1_15"));
		vngen_char_change_sprite("Dia", spr_dia_saebelzahnbaer, scale_prop_x_y ); 
		SaveDias(spr_dia_saebelzahnbaer_midi);
	}
	if(global.t_se_1_d9 == 2){
		vngen_text_replace("", Text("t_se_1_d9_r2_15"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_1_d9 == 1){
		vngen_do_continue();
	}
	if(global.t_se_1_d9 == 2){
		vngen_char_change_sprite("Dia", spr_dia_saebelzahnbaer, scale_prop_x_y ); 
		SaveDias(spr_dia_saebelzahnbaer_midi);
		vngen_text_replace("", Text("t_se_1_d9_r2_16"));
	}
	if(global.t_se_1_d9 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_text_destroy();
	vngen_textbox_destroy();
	vngen_char_destroy(all);
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	audio_stop_all();
	global.day++; 
	room_goto(Karte);
}

//End VNgen script
vngen_event_reset_target();