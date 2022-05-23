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
	if(global.strandIntroPlayed = 0){
		vngen_text_create("", Text("s_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_nervoes_aengstlich_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext_back(Text("s_ee_1_name_hai"), spr_empty, 700, 0, scale_prop_x_y);  // Hai
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_ee_1_0"));
	} else {	
		vngen_text_create("", Text("s_ee_1_0")); 
	}
}

if (vngen_event()) {
   global.strandIntroPlayed = 1; 
   vngen_do_continue();
}


if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_1_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("s_ee_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
   vngen_text_replace("", Text("s_ee_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_ee_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("s_ee_1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
   vngen_text_replace("Chad", Text("s_ee_1_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("s_ee_1_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("s_ee_1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
   vngen_text_replace("Suzan", Text("s_ee_1_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("s_ee_1_10"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_1_11"));
}


if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Hai1")) {
	vngen_option_create_transformed("opt_Warnen",	Text("s_ee_1_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Filmen",	Text("s_ee_1_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Hilfe",	Text("s_ee_1_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Hai1", true)) {
      case "opt_Warnen":	global.s_ee_1_d1 = 1; setOwnValueBonus(); break;
      case "opt_Filmen":	global.s_ee_1_d1 = 2; setSuzanValue(1); setChadValue(1); setOwnValue(1); break;
      case "opt_Hilfe":		global.s_ee_1_d1 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_angriff_grey, scale_y);
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_ee_1_d1 == 1){
		vngen_text_create("", Text("s_ee_1_d1_r1_0"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_text_create("", Text("s_ee_1_d1_r2_0"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_text_create("", Text("s_ee_1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_text_replace("", Text("s_ee_1_d1_r1_1"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r2_1"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_ee_1_d1_r1_1_b"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_1_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r1_2"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r2_2"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r1_3"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_text_replace("", Text("s_ee_1_d1_r2_3"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_text_replace("", Text("s_ee_1_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d1 == 2){
		vngen_text_replace("", Text("s_ee_1_d1_r2_3_b"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_angriff_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r1_4"));
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r2_4"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r2_5"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r2_6"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r2_7"));
	}
	if(global.s_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d1_r3_7"));
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_1_12"));
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

	 //Create options
   if (vngen_option("choice_Hai2")) {
	vngen_option_create_transformed("opt_Schwimmen",	Text("s_ee_1_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Ablenken",		Text("s_ee_1_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Besaenftigen",	Text("s_ee_1_d2_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Hai2", true)) {
      case "opt_Schwimmen":		global.s_ee_1_d2 = 1; setChadValue(1); setOwnValue(1); break;
      case "opt_Ablenken":		global.s_ee_1_d2 = 2; setSuzanValue(1); setOwnValue(-1); break;
      case "opt_Besaenftigen":	global.s_ee_1_d2 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
   } 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_idle_grey, scale_y);
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_ee_1_d2 == 1){
		vngen_text_create("", Text("s_ee_1_d2_r1_0"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_text_create("", Text("s_ee_1_d2_r2_0"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_text_create("", Text("s_ee_1_d2_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 3){
		vngen_text_replace("", Text("s_ee_1_d2_r3_0_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_angriff_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r1_1"));
	}
	if(global.s_ee_1_d2 == 2){
		
		vngen_text_replace("", Text("s_ee_1_d2_r2_1"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_text_replace("", Text("s_ee_1_d2_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_text_replace("", Text("s_ee_1_d2_r1_1_b"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 3){
		vngen_text_replace("", Text("s_ee_1_d2_r3_1_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_1_d2_r1_2"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_text_replace("", Text("s_ee_1_d2_r2_2"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_1_d2_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r1_3"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d2_r2_3"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_traurig_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_traurig, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r1_4"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r2_4"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r1_5"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_text_replace("", Text("s_ee_1_d2_r2_5"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_traurig, scale_y);
		vngen_text_replace(Text("s_ee_1_name_hai"), Text("s_ee_1_d2_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_text_replace("", Text("s_ee_1_d2_r1_5_b"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_chad_wrestelt_hai, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_wrestelt_hai_midi);
		vngen_text_replace("Chad", Text("s_ee_1_d2_r1_6"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_text_replace("", Text("s_ee_1_d2_r2_6"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_traurig_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r1_7"));
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r2_7"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d2_r3_7"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("Chad", Text("s_ee_1_d2_r2_8"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_traurig, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace(Text("s_ee_1_name_hai"), Text("s_ee_1_d2_r3_8"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_1_d2_r2_9"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_hai_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_1_d2_r3_9"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_text_replace("Chad", Text("s_ee_1_d2_r2_10"));
	}
	if(global.s_ee_1_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_1_name_hai"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_hai_mit_algensalat, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_hai_mit_algensalat_midi);
		vngen_text_replace("", Text("s_ee_1_d2_r3_10"));
	}
}

if (vngen_event()) {
	if(global.s_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_chad_sieht_hai_nicht, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_sieht_hai_nicht_midi);
		vngen_text_replace("", Text("s_ee_1_d2_r2_11"));
	}
	if(global.s_ee_1_d2 == 3){
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