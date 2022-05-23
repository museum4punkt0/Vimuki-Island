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
	if(global.basisIntroPlayed == false){
		vngen_text_replace("", Text("b_ee_1_0"));
	} else {	
		vngen_text_create("", Text("b_ee_1_0")); 
	}
}

if (vngen_event()) {
   global.basisIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
   vngen_text_replace("", Text("b_ee_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_6"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Geschichte")) {
	vngen_option_create_transformed("opt_Geschichte_1",	Text("b_ee_1_d1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Geschichte_2",	Text("b_ee_1_d1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Geschichte_3",	Text("b_ee_1_d1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Geschichte", true)) {
      case "opt_Geschichte_1":	global.b_ee_1_d1 = 1; break;
      case "opt_Geschichte_2":	global.b_ee_1_d1 = 2; break;
      case "opt_Geschichte_3":	global.b_ee_1_d1 = 3; break;
   } 
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.b_ee_1_d1 == 1){
		vngen_text_create("", Text("b_ee_1_d1_r1_0"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_text_create("", Text("b_ee_1_d1_r2_0"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_text_create("", Text("b_ee_1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_d1_r1_1"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_d1_r2_1"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_d1_r3_1"));
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_1_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
    vngen_text_replace("Suzan", Text("b_ee_1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
	vngen_text_replace("", Text("b_ee_1_9"));
}

//Chad erschrecken 1 
if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_0"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_0"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_1"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_1"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_2"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_1_i1_d1_r2_2"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_1_i1_d1_r1_3"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_3"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_4"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_4"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_1_i1_d1_r3_4"));
	}
}

if (vngen_event()) {
	//FOTO CHAD GESCHMINKT
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Dia", spr_dia_chad_makeup, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_makeup_midi);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_5"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_5"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r1_6"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_6"));
	}
	if(global.b_ee_1_d1 == 3){
		//FOTO CHAD IN PANIK
		vngen_char_change_sprite("Dia", spr_dia_suzan_erschreckt_chad_als_hacker, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_suzan_erschreckt_chad_als_hacker_midi);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_1_i1_d1_r1_7"));
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_7"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_do_continue();
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("b_ee_1_i1_d1_r2_8"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_char_change_sprite("Dia", spr_empty, scale_y);
		vngen_do_continue();
	}
	if(global.b_ee_1_d1 == 2){
		//FOTO DU ALS SCHLAMMMONSTER
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		SaveDias(spr_dia_du_als_schlammmonster_midi);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		vngen_char_change_sprite("Dia", spr_dia_du_als_schlammmonster, scale_prop_x_y);
		
		vngen_text_replace("", Text("b_ee_1_i1_d1_r2_9"));
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_1_i1_d1_r3_9"));
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.b_ee_1_d1 == 2){
		vngen_char_change_sprite("Dia", spr_empty, scale_y);
		vngen_do_continue();
	}
	if(global.b_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_text_replace("", Text("b_ee_1_i1_d1_r3_10"));
		vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y);
	}
}


if (vngen_event()) {
		
	if(global.erdnussbutter){
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

	 //Create options
	   if (vngen_option("choice_Erdnussbutter")) {
		vngen_option_create_transformed("opt_Erdnussbutter_Ja",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_erdnussbutter_ja, spr_icon_erdnussbutter_ja_active, spr_icon_erdnussbutter_ja_active);
		vngen_option_create_transformed("opt_Erdnussbutter_Nein",	" ",(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_erdnussbutter_nein, spr_icon_erdnussbutter_nein_active, spr_icon_erdnussbutter_nein_active);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Erdnussbutter", true)) {
	      case "opt_Erdnussbutter_Ja":		global.b_ee_1_d2 = 1; setOwnValueBonus(); setChadValue(-1); setSuzanValue(-1); break;
	      case "opt_Erdnussbutter_Nein":	global.b_ee_1_d2 = 2; break;
	   } 
	} else {
		global.b_ee_1_d2 = 0; 
		vngen_do_continue();
	}
}

//Erdnussbutter__________________________________________________
if (vngen_event()) {
	if(global.erdnussbutter){
	
		vngen_textbox_create(spr_textbox_Insel);
	}
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d1 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d2_r1_d1_r1_0"));
		}
		if(global.b_ee_1_d1 == 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d2_r1_d1_r2_0"));
		}
		if(global.b_ee_1_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d2_r1_d1_r3_0"));	
		}
	} else if(global.b_ee_1_d2 == 2){
		//Erdnussbutter Nein oder nicht vorhanden
			if(global.b_ee_1_d1 == 1){
				vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d2_r2_d1_r1_0"));
			}
			if(global.b_ee_1_d1 == 2){
				vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d2_r2_d1_r2_0"));
			}
			if(global.b_ee_1_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d2_r2_d1_r3_0"));	
			}
		} else if(global.b_ee_1_d2 == 0){
		//Erdnussbutter Nein oder nicht vorhanden
			if(global.b_ee_1_d1 == 1){
				vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r1_0"));
			}
			if(global.b_ee_1_d1 == 2){
				vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r2_0"));
			}
			if(global.b_ee_1_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r3_0"));	
			}
		}
}


if (vngen_event()) {
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d1 == 1){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r1_1"));
		}
		if(global.b_ee_1_d1 == 2){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r2_1"));
		}
		if(global.b_ee_1_d1 == 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r3_1"));	
		}
	} else {
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d1 == 1){
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r1_1"));
			}
			if(global.b_ee_1_d1 == 2){
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r2_1"));
			}
			if(global.b_ee_1_d1 == 3){
				vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r3_1"));	
			}
		}
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d1 == 1){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r1_2"));
		}
		if(global.b_ee_1_d1 == 2){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r2_2"));
		}
		if(global.b_ee_1_d1 == 3){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r3_2"));	
		}
	} else {
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_1_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_1_d1 == 3){
				vngen_text_replace("", Text("b_ee_1_d2_r2_d1_r3_2"));	
			}
		}
	}
}

if (vngen_event()) {
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d1 == 1){
			vngen_do_continue();
		}
		if(global.b_ee_1_d1 == 2){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r2_3"));
		}
		if(global.b_ee_1_d1 == 3){
			vngen_text_replace("", Text("b_ee_1_d2_r1_d1_r3_3"));	
		}
	} else {
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d1 == 1){
				vngen_do_continue();
			}
			if(global.b_ee_1_d1 == 2){
				vngen_do_continue();
			}
			if(global.b_ee_1_d1 == 3){
				vngen_do_continue();
			}
		}
	}
}

//Posten
if (vngen_event()) {
	vngen_text_replace("", Text("b_ee_1_10"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

	 //Create options
   if (vngen_option("choice_Posten")) {
	vngen_option_create_transformed("opt_Posten_1",	Text("b_ee_1_d3_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Posten_2",	Text("b_ee_1_d3_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Posten_3",	Text("b_ee_1_d3_o3"),   0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Posten", true)) {
      case "opt_Posten_1":	global.b_ee_1_d3 = 1; setOwnValue(1); setChadValue(1); setSuzanValue(1);break;
      case "opt_Posten_2":	global.b_ee_1_d3 = 2; setOwnValueBonus(); setChadValue(-1); setSuzanValue(-1);break;
      case "opt_Posten_3":	global.b_ee_1_d3 = 3; setOwnValue(-1); break;
   } 
}

//Posten mit Erdnussbutter
if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d3_r1_d2_r1_0"));
		}
		if(global.b_ee_1_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d3_r2_d2_r1_0"));
		}
		if(global.b_ee_1_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_create("", Text("b_ee_1_d3_r3_d2_r1_0"));	
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			vngen_textbox_create(spr_textbox_Insel);
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d3_r1_d2_r2_0"));
			}
			if(global.b_ee_1_d3 == 2){
				vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d3_r2_d2_r2_0"));
			}
			if(global.b_ee_1_d3 == 3){
				vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
				vngen_text_create("", Text("b_ee_1_d3_r3_d2_r2_0"));	
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("b_ee_1_d3_r1_d2_r1_1"));
		}
		if(global.b_ee_1_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r1_1"));
		}
		if(global.b_ee_1_d3 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_text_replace("Suzan", Text("b_ee_1_d3_r3_d2_r1_1"));	
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				
				vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r2_1"));
			}
			if(global.b_ee_1_d3 == 2){
				vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r2_1"));
			}
			if(global.b_ee_1_d3 == 3){
				vngen_text_replace("", Text("b_ee_1_d3_r3_d2_r2_1"));	
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
			vngen_text_replace("Chad", Text("b_ee_1_d3_r1_d2_r1_2"));
		}
		if(global.b_ee_1_d3 == 2){
			vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r1_2"));
		}
		if(global.b_ee_1_d3 == 3){
		//Chad
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("Chad", Text("b_ee_1_d3_r3_d2_r1_2"));	
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y);
				vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
				vngen_text_replace("Suzan", Text("b_ee_1_d3_r1_d2_r2_2"));
			}
			//Suzan
			if(global.b_ee_1_d3 == 2){
				vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r2_2"));
			}
			if(global.b_ee_1_d3 == 3){
			//chad
				vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
				vngen_text_replace("Chad", Text("b_ee_1_d3_r3_d2_r2_2"));	
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r1_3"));
		}
		if(global.b_ee_1_d3 == 2){
			vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r1_3"));
		}
		if(global.b_ee_1_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d3_r3_d2_r1_3"));	
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y);
				vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
				vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
				vngen_text_replace("Chad", Text("b_ee_1_d3_r1_d2_r2_3"));
			}
			if(global.b_ee_1_d3 == 2){
				
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
				vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
				vngen_text_replace("Suzan", Text("b_ee_1_d3_r2_d2_r2_3"));
			}
			if(global.b_ee_1_d3 == 3){
			//Suzan
				vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
				vngen_text_replace("Suzan", Text("b_ee_1_d3_r3_d2_r2_3"));	
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
		//Suzan
			vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y);
			vngen_text_replace("Suzan", Text("b_ee_1_d3_r1_d2_r1_4"));
		}
		if(global.b_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.b_ee_1_d3 == 3){
			vngen_do_continue();
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r2_4"));
			}
			if(global.b_ee_1_d3 == 2){
				vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
				vngen_text_replace("Chad", Text("b_ee_1_d3_r2_d2_r2_4"));
			}
			if(global.b_ee_1_d3 == 3){
				vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d3_r3_d2_r2_4"));	
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r1_5"));
		} else{
			vngen_do_continue();
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y);
				vngen_text_replace("Suzan", Text("b_ee_1_d3_r1_d2_r2_5"));
			}
			if(global.b_ee_1_d3 == 2){
				vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
				vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r2_5"));
			}
			if(global.b_ee_1_d3 == 3){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			//Chad
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
			vngen_text_replace("Chad", Text("b_ee_1_d3_r1_d2_r1_6"));
		} else{
			vngen_do_continue();
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y);
				vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r2_6"));
			}
			if(global.b_ee_1_d3 == 2){
				vngen_text_replace("", Text("b_ee_1_d3_r2_d2_r2_6"));
			}
			if(global.b_ee_1_d3 == 3){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		if(global.b_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r1_7"));
		} else{
			vngen_do_continue();
		}
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y);
				vngen_text_replace("Chad", Text("b_ee_1_d3_r1_d2_r2_7"));
			} else {
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		vngen_do_continue();
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y);
				vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r2_8"));
			} else {
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	//Erdnussbutter Ja
	if(global.b_ee_1_d2 == 1){
		vngen_do_continue();
	} else {
		//Erdnussbutter Nein oder nicht vorhanden
		if(global.b_ee_1_d2 == 2 || global.b_ee_1_d2 == 0 ){
			if(global.b_ee_1_d3 == 1){
				vngen_text_replace("", Text("b_ee_1_d3_r1_d2_r2_9"));
			} else {
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	vngen_text_replace("", Text("b_ee_1_11"));
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