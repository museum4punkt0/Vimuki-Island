/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_froschtempel);
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
	if(global.tempelIntroPlayed == 0){
		vngen_text_create("", Text("f_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.tempelIntroPlayed == 0){
		vngen_text_replace("", Text("f_intro_0_b")); 	
	} else {	
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.tempelIntroPlayed == 0){
		vngen_text_replace("", Text("f_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed == 0){
		vngen_text_replace("", Text("f_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Minimash", spr_empty, 600, 50, scale_y);
	vngen_char_create_ext("Megamash", spr_empty, 600, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.tempelIntroPlayed == 0){
		vngen_text_replace("", Text("f_ee_2_0"));
	} else {	
		vngen_text_create("", Text("f_ee_2_0")); 
	}
}

if (vngen_event()) {
   global.tempelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_text_replace("", Text("f_ee_2_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_text_replace("Suzan", Text("f_ee_2_2"));
}	

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_ee_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_2_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_2_6_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
   vngen_text_replace("", Text("f_ee_2_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_2_7_b"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Lesen_1")) {
	vngen_option_create_transformed("opt_Lesen_1_Weiter",	Text("f_ee_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Lesen_1_Stop",		Text("f_ee_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Lesen_1", true)) {
      case "opt_Lesen_1_Weiter":	global.f_ee_2_d1 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
      case "opt_Lesen_1_Stop":		global.f_ee_2_d1 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
   }	
}

//___________________________
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_ee_2_d1 == 1){
		vngen_text_create("", Text("f_ee_2_d1_r1_0"));
	}
	if(global.f_ee_2_d1 == 2){
		vngen_text_create("", Text("f_ee_2_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_2_d1 == 2){
		vngen_text_replace("", Text("f_ee_2_d1_r2_0_b"));
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_2_d1 == 2){
		vngen_text_replace("", Text("f_ee_2_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_2_d1 == 2){
		vngen_text_replace("", Text("f_ee_2_d1_r2_2"));
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_2_d1 == 2){
		vngen_text_replace("", Text("f_ee_2_d1_r2_3"));
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Photo_Hyro")) {
		vngen_option_create_transformed("opt_Hyro_Teilen",		Text("f_ee_2_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Hyro_Behalten",	Text("f_ee_2_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Photo_Hyro", true)) {
	      case "opt_Hyro_Teilen":	global.f_ee_2_d2 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_Hyro_Behalten":	global.f_ee_2_d2 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   } 
	   
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Stoppen
	if(global.f_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		//Teilen
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_ee_2_d2 == 1){
			vngen_text_create("", Text("f_ee_2_d2_r1_0"));
		}
		//Behalten
		if(global.f_ee_2_d2 == 2){
			vngen_text_create("", Text("f_ee_2_d2_r2_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Stoppen
	if(global.f_ee_2_d1 == 2){
		//Teilen
		if(global.f_ee_2_d2 == 1){
			vngen_text_replace("", Text("f_ee_2_d2_r1_1"));
		}
		//Behalten
		if(global.f_ee_2_d2 == 2){
			vngen_char_change_sprite("Dia", spr_dia_hieroglyphen, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_hieroglyphen_midi);
			vngen_text_replace("", Text("f_ee_2_d2_r2_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Stoppen
	if(global.f_ee_2_d1 == 2){
		//Teilen
		if(global.f_ee_2_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("f_ee_2_d2_r1_1_b"));
		}
		//Behalten
		if(global.f_ee_2_d2 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Stoppen
	if(global.f_ee_2_d1 == 2){
		//Teilen
		if(global.f_ee_2_d2 == 1){
			vngen_char_change_sprite("Dia", spr_dia_kartoffel_stadt, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_kartoffel_stadt_midi);
			vngen_text_replace("", Text("f_ee_2_d2_r1_2"));
		}
		//Behalten
		if(global.f_ee_2_d2 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

//___________________________Weiterlesen___________________________
if (vngen_event()) {
	//Weiterlesen lassen
	if(global.f_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Lesen_2")) {
		vngen_option_create_transformed("opt_Lesen_2_Weiter",	Text("f_ee_2_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Lesen_2_Stop",		Text("f_ee_2_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   switch (vngen_get_option("choice_Lesen_2", true)) {
	      case "opt_Lesen_2_Weiter":	global.f_ee_2_d3 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_Lesen_2_Stop":		global.f_ee_2_d3 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   }	
	} else {
		vngen_do_continue();
	}
}

//___________________________________CHAD STOPPEN 2____________________________
if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("f_ee_2_d3_r2_0"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			vngen_text_replace("", Text("f_ee_2_d3_r2_1"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			vngen_char_change_sprite("Minimash", spr_minimash_idle_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_cat_01, 1, 0, false, false);
			vngen_text_replace("", Text("f_ee_2_d3_r2_2"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
			vngen_text_replace("", Text("f_ee_2_d3_r2_3"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Minimash", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

		   if (vngen_option("choice_Minimash")) {
			vngen_option_create_transformed("opt_Minimash_Streicheln",	Text("f_ee_2_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		    vngen_option_create_transformed("opt_Minimash_Lassen",		Text("f_ee_2_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		   }
   
		   switch (vngen_get_option("choice_Minimash", true)) {
		      case "opt_Minimash_Streicheln":	global.f_ee_2_d4 = 1; setOwnValue(1); break;
		      case "opt_Minimash_Lassen":		global.f_ee_2_d4 = 2; setOwnValue(-1); break;
		   }	
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			//Minimash streicheln
			
			vngen_textbox_create(spr_textbox_Insel);
			if(global.f_ee_2_d4 == 1){
				vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
				vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
				vngen_char_change_sprite("Dia", spr_dia_hand_in_minimash, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_hand_in_minimash_midi);
				vngen_text_create("", Text("f_ee_2_d4_r1_0"));
			}
			//Minimash lassen
			if(global.f_ee_2_d4 == 2){
				vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
				vngen_text_create("", Text("f_ee_2_d4_r2_0"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			//Minimash streicheln
			if(global.f_ee_2_d4 == 1){
				vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
				vngen_text_replace("", Text("f_ee_2_d4_r1_1"));
			}
			//Minimash lassen
			if(global.f_ee_2_d4 == 2){
				vngen_text_replace("", Text("f_ee_2_d4_r2_1"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			//Minimash streicheln
			if(global.f_ee_2_d4 == 1){
				vngen_do_continue();
			}
			//Minimash lassen
			if(global.f_ee_2_d4 == 2){
				vngen_text_replace("", Text("f_ee_2_d4_r2_2"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Chad stoppen 2
		if(global.f_ee_2_d3 == 2){
			//Minimash streicheln
			if(global.f_ee_2_d4 == 1){
				vngen_do_continue();
			}
			//Minimash lassen
			if(global.f_ee_2_d4 == 2){
				vngen_char_change_sprite("Dia", spr_dia_minimash_aufgeloest, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_minimash_aufgeloest_midi);
				vngen_audio_play_sound("sound", sfx_char_cat_02, 1, 0, false, false);
				vngen_text_replace("", Text("f_ee_2_d4_r2_3"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

//_________________________________CHAD LIESST FERTIG___________________________
if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("f_ee_2_d3_r1_0"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("f_ee_2_d3_r1_1"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			vngen_char_change_sprite("Megamash", spr_megamash_idle_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_cat_03, 1, 0, false, false);
			vngen_text_replace("", Text("f_ee_2_d3_r1_2"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			vngen_char_change_sprite("Megamash", spr_megamash_idle, scale_y);
			vngen_text_replace("", Text("f_ee_2_d3_r1_3"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			vngen_char_change_sprite("Megamash", spr_megamash_idle_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("f_ee_2_d3_r1_4"));
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			if(global.musikbox){
				vngen_text_replace("", Text("f_ee_2_d3_mb_1"));
			} else {
				vngen_char_change_sprite("Megamash", spr_empty, scale_y);
				vngen_char_change_sprite("Dia", spr_dia_megamash_meteoriten, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_megamash_meteoriten_midi);
				vngen_text_replace("", Text("f_ee_2_d3_nmb_1"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.musikbox){
		setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); 
	}
	vngen_do_continue();
}



if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			if(global.musikbox){
				vngen_text_replace("", Text("f_ee_2_d3_mb_2"));
			} else {
				vngen_char_change_sprite("Dia", spr_empty, scale_y);
				vngen_char_change_sprite("Megamash", spr_megamash_idle_grey, scale_y);
				vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
				vngen_text_replace("Chad", Text("f_ee_2_d3_nmb_2"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_2_d1 == 1){
		//Weiterlesen lassen
		if(global.f_ee_2_d3 == 1){
			if(global.musikbox){
				vngen_char_change_sprite("Megamash", spr_empty, scale_y);
				vngen_char_change_sprite("Dia", spr_dia_megamesh_tantzt, scale_prop_x_y ); 
				vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
				SaveDias(spr_dia_megamesh_tantzt_midi);
				vngen_text_replace("", Text("f_ee_2_d3_mb_3"));
			} else {
				vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
				vngen_char_change_sprite("Megamash", spr_megamash_idle, scale_y);
				vngen_text_replace("", Text("f_ee_2_d3_nmb_3"));
			}
		} else {
			vngen_do_continue();	
		}
	} else {
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