/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
	vngen_scene_create_start(spr_bg_camp);
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
	if(global.basisIntroPlayed == 0){
		vngen_text_create("", Text("b_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext(Text("name_postbote"), spr_empty, 710, 50, scale_y);
	
	if(global.basisIntroPlayed = false){
		vngen_text_replace("", Text("b_ee_4_0"));
	} else {	
		vngen_text_create("", Text("b_ee_4_0")); 
	}
}

if (vngen_event()) {
   global.basisIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("name_postbote"), spr_postboten_affe_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_affe_01, 1, 0, false, false);
	vngen_text_replace(Text("name_postbote"), Text("b_ee_4_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("name_postbote"), spr_postboten_affe_idle_grey, scale_y);
	vngen_text_replace("", Text("b_ee_4_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_text_replace("", Text("b_ee_4_2_b"));
}


if (vngen_event()) {
	vngen_char_change_sprite(Text("name_postbote"), spr_empty, scale_y);
   vngen_text_replace("", Text("b_ee_4_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_4_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("b_ee_4_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
	vngen_text_replace("", Text("b_ee_4_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_4_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("b_ee_4_8"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("name_postbote"), spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Kosmetique_1")) {
	vngen_option_create_transformed("opt_Sponsor",	Text("b_ee_4_d1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Etikette",	Text("b_ee_4_d1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Go",		Text("b_ee_4_d1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Kosmetique_1", true)) {
      case "opt_Sponsor":	global.b_ee_4_d1 = 1; setSuzanValue(-1); setOwnValueBonus(); break;
      case "opt_Etikette":	global.b_ee_4_d1 = 2; setChadValue(-1);  setOwnValueBonus(); break;
      case "opt_Go":		global.b_ee_4_d1 = 3; setSuzanValue(1);  setChadValue(1); setOwnValue(1); break;
   } 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_create("Suzan", Text("b_ee_4_d1_r1_0"));
	}
	if(global.b_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_create("", Text("b_ee_4_d1_r2_0"));
	}
	if(global.b_ee_4_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_create("", Text("b_ee_4_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("Chad", Text("b_ee_4_d1_r1_1"));
	}
	if(global.b_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_4_d1_r2_1"));
	}
	if(global.b_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("Chad", Text("b_ee_4_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("", Text("b_ee_4_d1_r1_2"));
	}
	if(global.b_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("", Text("b_ee_4_d1_r2_2"));
	}
	if(global.b_ee_4_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_4_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("", Text("b_ee_4_d1_r1_3"));
	}
	if(global.b_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("b_ee_4_d1_r2_3"));
	}
	if(global.b_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("Chad", Text("b_ee_4_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("", Text("b_ee_4_d1_r1_4"));
	}
	if(global.b_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_4_d1_r2_4"));
	}
	if(global.b_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_4_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("b_ee_4_d1_r1_5"));
	} else {
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_text_replace("", Text("b_ee_4_d1_r1_6"));
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	if(global.b_ee_4_d1 == 1){
		vngen_text_replace("", Text("b_ee_4_d1_r1_7"));
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_4_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_4_9_b"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Kosmetique_2")) {
		vngen_option_create_transformed("opt_DoIt",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_ja, spr_icon_ja_active, spr_icon_ja_active);
		vngen_option_create_transformed("opt_DoItNot",	" ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_nein, spr_icon_nein_active, spr_icon_nein_active);
   }
   
   switch (vngen_get_option("choice_Kosmetique_2", true)) {
      case "opt_DoIt":		global.b_ee_4_d2 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
      case "opt_DoItNot":	global.b_ee_4_d2 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
   } 
}

if (vngen_event()) {
	
	
	//Machen
	if(global.b_ee_4_d2 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_create("Chad", Text("b_ee_4_d2_r1_d1_r1_0"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_create("", Text("b_ee_4_d2_r1_d1_r2_0"));
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_create("", Text("b_ee_4_d2_r1_d1_r3_0"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			vngen_textbox_create(spr_textbox_Insel);
			if(global.b_ee_4_d1 == 1){
				vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_create("", Text("b_ee_4_d2_r2_d1_r1_0"));
			}
			if(global.b_ee_4_d1 == 2){
				vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_create("Suzan", Text("b_ee_4_d2_r2_d1_r2_0"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_create("", Text("b_ee_4_d2_r2_d1_r3_0"));	
			}
		}
	}
}

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_1"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r2_1"));
		}
		if(global.b_ee_4_d1 == 3){
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_1"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r1_1"));
			}
			if(global.b_ee_4_d1 == 2){
				vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_1"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
				vngen_text_replace("Chad", Text("b_ee_4_d2_r2_d1_r3_1"));	
			}
		}
	}
}

//NACHTRAG__________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_1_b"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r2_1_b"));
		}
		if(global.b_ee_4_d1 == 3){
			vngen_do_continue();
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r1_1_b"));
			}
			if(global.b_ee_4_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//__________________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_2"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r2_2"));
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("b_ee_4_d2_r1_d1_r3_2"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
				vngen_text_replace("Chad", Text("b_ee_4_d2_r2_d1_r1_2"));
			}
			if(global.b_ee_4_d1 == 2){
				vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y ); 
				vngen_text_replace("Chad", Text("b_ee_4_d2_r2_d1_r2_2"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r3_2"));	
			}
		}
	}
}

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("b_ee_4_d2_r1_d1_r1_3"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_char_change_sprite("Dia", spr_dia_chan_rot_in_dusche, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_chan_rot_in_dusche_midi);
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r2_3"));
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_3"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r1_3"));
			}
			if(global.b_ee_4_d1 == 2){
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_3"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
				vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
				vngen_text_replace("Chad", Text("b_ee_4_d2_r2_d1_r3_3"));	
			}
		}
	}
}

//NACHTRAG__________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_3_b"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//__________________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_4"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
			vngen_text_replace("Chad", Text("b_ee_4_d2_r1_d1_r3_4"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
				vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y ); 
				vngen_char_change_sprite("Dia", spr_dia_verdorrte_pflanze, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_verdorrte_pflanze_midi);
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r1_4"));
			}
			if(global.b_ee_4_d1 == 2){
				
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_4"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
				vngen_char_change_sprite("Dia", spr_dia_schaeumender_daumen, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_schaeumender_daumen_midi);
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r3_4"));	
			}
		}
	}
}

//NACHTRAG__________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_do_continue();
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 2){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_4_b"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//__________________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_5"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_5"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 2){
				vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
				vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y ); 
				vngen_char_change_sprite("Dia", spr_dia_sockenpuppen, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_sockenpuppen_midi);
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_5"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r3_5"));	
			}
		}
	}
}

//NACHTRAG__________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_5_b"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 2){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_5_b"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//__________________________________________________

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_char_change_sprite("Dia", spr_dia_schmerzende_pusteln, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schmerzende_pusteln_midi);
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r1_6"));
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_char_change_sprite("Dia", spr_dia_chad_springt_fluss, scale_prop_x_y); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_chad_springt_fluss_midi);
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_6"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2){
			if(global.b_ee_4_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_4_d1 == 2){
				vngen_text_replace("", Text("b_ee_4_d2_r2_d1_r2_6"));
			}
			if(global.b_ee_4_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	//Machen
	if(global.b_ee_4_d2 == 1){
		if(global.b_ee_4_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_4_d1 == 3){
			vngen_text_replace("", Text("b_ee_4_d2_r1_d1_r3_7"));	
		}
	} else {
		//Nicht machen
		if(global.b_ee_4_d2 == 2 ){
			vngen_do_continue();
		}
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