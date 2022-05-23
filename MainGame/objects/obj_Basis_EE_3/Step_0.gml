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
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_y);
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_ee_3_0"));
	} else {	
		vngen_text_create("", Text("b_ee_3_0")); 
	}
}

if (vngen_event()) {
   global.basisIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	
   vngen_text_replace("", Text("b_ee_3_0_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_text_replace("", Text("b_ee_3_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_text_replace("", Text("b_ee_3_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
	vngen_text_replace("", Text("b_ee_3_2_b"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_3_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_ok, 1, 0, false, false);
	vngen_text_replace("Chad", Text("b_ee_3_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
	vngen_text_replace("", Text("b_ee_3_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_3_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_3_7"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Essen")) {
	vngen_option_create_transformed("opt_Essen_Pilze",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_pilze, spr_icon_pilze_active, spr_icon_pilze_active);
    vngen_option_create_transformed("opt_Essen_Beeren",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_beeren, spr_icon_beeren_active, spr_icon_beeren_active);
    vngen_option_create_transformed("opt_Essen_Beides", " ",	-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_beeren_und_pilze, spr_icon_beeren_und_pilze_active, spr_icon_beeren_und_pilze_active);
   }
   
   switch (vngen_get_option("choice_Essen", true)) {
      case "opt_Essen_Pilze":	global.b_ee_3_d1 = 1; break;
      case "opt_Essen_Beeren":	global.b_ee_3_d1 = 2; break;
      case "opt_Essen_Beides":	global.b_ee_3_d1 = 3; break;
   } 
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	if(global.b_ee_3_d1 == 1){
		vngen_text_create("", Text("b_ee_3_d1_r1_0"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert,scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_create("Suzan", Text("b_ee_3_d1_r2_0"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_create("", Text("b_ee_3_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_d1_r1_0_b"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_3_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_d1_r1_1"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey,scale_y);
		vngen_text_replace("", Text("b_ee_3_d1_r2_1"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_replace("", Text("b_ee_3_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_d1_r1_1_b"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_text_replace("", Text("b_ee_3_d1_r2_2"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_replace("", Text("b_ee_3_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_do_continue();
	}
	if(global.b_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert,scale_y);
		vngen_text_replace("Suzan", Text("b_ee_3_d1_r2_3"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_replace("", Text("b_ee_3_d1_r3_3"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey,scale_y);
   vngen_text_replace("", Text("b_ee_3_8"));
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_char_change_sprite("Dia", spr_dia_pilze, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_pilze_midi);
		vngen_text_replace("", Text("b_ee_3_i1_r1_0"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_beeren, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_beeren_midi);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_3_i1_r2_0"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_pilze_und_beeren, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_pilze_und_beeren_midi);
		vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_3_i1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_i1_r1_0_b"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_3_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_i1_r1_1"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_3_i1_r2_1"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_3_i1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_i1_r1_2"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_text_replace("", Text("b_ee_3_i1_r2_2"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_replace("", Text("b_ee_3_i1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_text_replace("", Text("b_ee_3_i1_r1_3"));
	}
	if(global.b_ee_3_d1 == 2){
		vngen_text_replace("", Text("b_ee_3_i1_r2_3"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_text_replace("", Text("b_ee_3_i1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_do_continue();
	}
	if(global.b_ee_3_d1 == 2){
		vngen_text_replace("", Text("b_ee_3_i1_r2_4"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_3_d1 == 1){
		vngen_do_continue();
	}
	if(global.b_ee_3_d1 == 2){
		vngen_text_replace("", Text("b_ee_3_i1_r2_5"));
	}
	if(global.b_ee_3_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();
	
	 //Create options
	   if (vngen_option("choice_Essen_JaNein")) {
		vngen_option_create_transformed("opt_Essen_Ja",	" ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_essen_Ja, spr_icon_essen_ja_active, spr_icon_essen_ja_active);
		vngen_option_create_transformed("opt_Essen_Nein",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_essen_Nein, spr_icon_essen_nein_active, spr_icon_essen_nein_active);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Essen_JaNein", true)) {
	      case "opt_Essen_Ja":		global.b_ee_3_d2 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_Essen_Nein":	global.b_ee_3_d2 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   } 
}

//Erdnussbutter__________________________________________________
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		
		if(global.b_ee_3_d1 == 1){
			vngen_text_create("", Text("b_ee_3_d2_r1_d1_r1_0"));
		}
		if(global.b_ee_3_d1 == 2){
			vngen_text_create("", Text("b_ee_3_d2_r1_d1_r2_0"));
		}
		if(global.b_ee_3_d1 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("b_ee_3_d2_r1_d1_r3_0"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			vngen_textbox_create(spr_textbox_Insel);
			if(global.b_ee_3_d1 == 1){
				vngen_text_create("", Text("b_ee_3_d2_r2_d1_r1_0"));
			}
			if(global.b_ee_3_d1 == 2){
				vngen_text_create("", Text("b_ee_3_d2_r2_d1_r2_0"));
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
				vngen_text_create("", Text("b_ee_3_d2_r2_d1_r3_0"));	
			}
		}
	}
}

//_____________________________Nachtrag

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r1_0_b"));
		}
		if(global.b_ee_3_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 3){
			vngen_do_continue();
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//_____________________________

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r1_1"));
		}
		if(global.b_ee_3_d1 == 2){
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r2_1"));
		}
		if(global.b_ee_3_d1 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("b_ee_3_d2_r1_d1_r3_1"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_text_replace("", Text("b_ee_3_d2_r2_d1_r2_1"));
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
				vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
				vngen_text_replace("Suzan", Text("b_ee_3_d2_r2_d1_r3_1"));	
			}
		}
	}
}

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			//Suzan headbangen
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r1_2"));
		}
		if(global.b_ee_3_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r3_2"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
				vngen_text_replace("", Text("b_ee_3_d2_r2_d1_r3_2"));	
			}
		}
	}
}

//____________________________NACHTRAG

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r3_2_b"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y );
				vngen_text_replace("", Text("b_ee_3_d2_r2_d1_r3_2_b"));	
			}
		}
	}
}

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r1_3"));
		}
		if(global.b_ee_3_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 3){
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r3_3"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
				vngen_text_replace("", Text("b_ee_3_d2_r2_d1_r3_3"));	
			}
		}
	}
}

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		if(global.b_ee_3_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_3_d1 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_3_d2_r1_d1_r3_4"));	
		}
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y); 
				vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
				vngen_text_replace("Suzan", Text("b_ee_3_d2_r2_d1_r3_4"));	
			}
		}
	}
}

if (vngen_event()) {
	//Essen Ja
	if(global.b_ee_3_d2 == 1){
		vngen_do_continue();
	} else {
		//Essen Nein
		if(global.b_ee_3_d2 == 2){
			if(global.b_ee_3_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_3_d1 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
				vngen_text_replace("", Text("b_ee_3_d2_r2_d1_r3_5"));	
			}
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