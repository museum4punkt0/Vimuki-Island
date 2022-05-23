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
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_se_1_0"));
	} else {	
		vngen_text_create("", Text("s_se_1_0")); 
	}
}

if (vngen_event()) {
   global.strandIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	
   vngen_text_replace("", Text("s_se_1_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
   vngen_text_replace("Chad", Text("s_se_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
   vngen_text_replace("", Text("s_se_1_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Dia", spr_dia_meerfrau, scale_prop_x_y ); 
	vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
	SaveDias(spr_dia_meerfrau_midi);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
    vngen_text_replace("Chad", Text("s_se_1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("Chad", Text("s_se_1_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("Chad", Text("s_se_1_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_10"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("strand_0")) {
		vngen_option_create_transformed("opt_Floss"," ",			-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_floss, spr_icon_floss_active, spr_icon_floss_active);
		vngen_option_create_transformed("opt_Schwimmen",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_schwimmen, spr_icon_schwimmen_active, spr_icon_schwimmen_active);
  }
   
   switch (vngen_get_option("strand_0", true)) {
      case "opt_Floss":		global.s_se_1_d1 = 1; setSuzanValue(1); setOwnValue(-1); break;
      case "opt_Schwimmen":	global.s_se_1_d1 = 2; setChadValue(1); setOwnValue(1); break;
   }	
}

if (vngen_event()) {
	vngen_scene_replace(spr_bg_s_Meer_Sonne);
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_1_d1_r1_0"));
	}
	if(global.s_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_text_create("", Text("s_se_1_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_d1_r1_1"));
	}
	if(global.s_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_text_replace("", Text("s_se_1_d1_r1_2"));
	}
	if(global.s_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_1_d1_r2_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_1_d1_r2_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_d1_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("strand_1")) {
		vngen_option_create_transformed("opt_mitten",	Text("s_se_1_d1_r1_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_umschiff",	Text("s_se_1_d1_r1_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   switch (vngen_get_option("strand_1", true)) {
	      case "opt_mitten":	global.s_se_1_d2 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_umschiff":	global.s_se_1_d2 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   }	

	}
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_se_1_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_create("", Text("s_se_1_d1_r1_d2_r1_0"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_text_create("", Text("s_se_1_d1_r1_d2_r2_0"));
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		if(global.s_se_1_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_1_d1_r1_d2_r1_1"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_text_replace("", Text("s_se_1_d1_r1_d2_r2_1"));
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		if(global.s_se_1_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_1_d1_r1_d2_r1_2"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		if(global.s_se_1_d2 == 1){
			vngen_text_replace("", Text("s_se_1_d1_r1_d2_r1_3"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		if(global.s_se_1_d2 == 1){
			vngen_text_replace("", Text("s_se_1_d1_r1_d2_r1_4"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		if(global.s_se_1_d2 == 1){
			vngen_text_replace("", Text("s_se_1_d1_r1_d2_r1_5"));
		}
		if(global.s_se_1_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_d1_end"));
	}
	
	if(global.s_se_1_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("s_se_1_15"));
}


if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2")) {
	vngen_option_create_transformed("opt_verzauber",	Text("s_se_1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	vngen_option_create_transformed("opt_kalt",			Text("s_se_1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	}
   
	switch (vngen_get_option("strand_2", true)) {
		case "opt_verzauber":	global.s_se_1_d3 = 1; break;
		case "opt_kalt":		global.s_se_1_d3 = 2; break;
	}	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_d3 == 1){
		vngen_text_create("", Text("s_se_1_d3_r1_0"));
	}
	if(global.s_se_1_d3 == 2){
		vngen_text_create("", Text("s_se_1_d3_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_text_replace("", Text("s_se_1_d3_r1_1"));
	}
	if(global.s_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_d3_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d1 == 1){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r2_2"));
		} else {
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r2_2_b"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d1 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r2_3"));
		} else {
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_text_replace("", Text("s_se_1_d3_r2_3_b"));
		}
		
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_d3_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_d3_r2_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("strand_3")) {
		vngen_option_create_transformed("opt_wehren",	Text("s_se_1_d3_r1_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_lauschen",	Text("s_se_1_d3_r1_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("strand_3", true)) {
			case "opt_wehren":		global.s_se_1_d4 = 1; break;
			case "opt_lauschen":	global.s_se_1_d4 = 2; break;
		}	
	}
	if(global.s_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("strand_4")) {
		vngen_option_create_transformed("opt_tauchen",	Text("s_se_1_d3_r2_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_rufen",	Text("s_se_1_d3_r2_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("strand_4", true)) {
			case "opt_tauchen":	global.s_se_1_d5 = 1; break;
			case "opt_rufen":	global.s_se_1_d5 = 2; break;
		}	
	}
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_1_d3_r1_d4_r1_0"));
		}
		if(global.s_se_1_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_1_d3_r1_d4_r2_0"));
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_text_create("", Text("s_se_1_d3_r2_d5_r1_0"));
		}
		if(global.s_se_1_d5 == 2){
			vngen_text_create("", Text("s_se_1_d3_r2_d5_r2_0"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r1_d4_r1_1"));
		}
		if(global.s_se_1_d4 == 2){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r1_d4_r2_1"));
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r1_1"));
		}
		if(global.s_se_1_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_1_d3_r2_d5_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r1_d4_r1_2"));
		}
		if(global.s_se_1_d4 == 2){
			vngen_text_replace("", Text("s_se_1_d3_r1_d4_r2_2"));
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r1_2"));
		}
		if(global.s_se_1_d5 == 2){
			vngen_text_replace("Suzan", Text("s_se_1_d3_r2_d5_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r1_d4_r1_3"));
		}
		if(global.s_se_1_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r1_3"));
		}
		if(global.s_se_1_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r1_4"));
		}
		if(global.s_se_1_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d5 == 2){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d5 == 2){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_d3 == 1){
		if(global.s_se_1_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_1_d3 == 2){
		if(global.s_se_1_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_d5 == 2){
			vngen_text_replace("", Text("s_se_1_d3_r2_d5_r2_7"));
		}
	}
}

if(vngen_event()){
	if(global.scholle){
		room_goto(Strand_SE_1_Scholle)
	} else {
		room_goto(Strand_SE_1_NichtScholle);
	}
}

//End VNgen script
vngen_event_reset_target();