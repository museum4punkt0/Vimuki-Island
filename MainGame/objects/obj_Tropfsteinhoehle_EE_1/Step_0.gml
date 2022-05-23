/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Hoehle);
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
	if(global.hoehleIntroPlayed = 0){
		vngen_text_create("", Text("t_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Hugo", spr_empty, 700, 0, scale_y);
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_ee_1_0"));
	} else {	
		vngen_text_create("", Text("t_ee_1_0")); 
	}
}

if (vngen_event()) {
   global.hoehleIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_1_1_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("t_ee_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("t_ee_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
   vngen_text_replace("Suzan", Text("t_ee_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
   vngen_text_replace("", Text("t_ee_1_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_1_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_1_7"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Wasserbecken")) {
	vngen_option_create_transformed("opt_Wasser",	Text("t_ee_1_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Matsch",	Text("t_ee_1_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Wasserbecken", true)) {
      case "opt_Wasser":	global.t_ee_1_d1 = 1; break;
      case "opt_Matsch":	global.t_ee_1_d1 = 2; break;
   }	
}

//_____________________________________WASSER____________________________________

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("t_ee_1_d1_r1_0"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_text_replace("", Text("t_ee_1_d1_r1_1"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_text_replace("Chad", Text("t_ee_1_d1_r1_2"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("t_ee_1_d1_r1_3"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_1_d1_r1_4"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_ee_1_d1_r1_5"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("", Text("t_ee_1_d1_r1_6"));
	}else {
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.t_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Wasserbecken2")) {
		vngen_option_create_transformed("opt_Reinspringen",	Text("t_ee_1_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Testen",		Text("t_ee_1_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Langsam",		Text("t_ee_1_d2_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Wasserbecken2", true)) {
	      case "opt_Reinspringen":	global.t_ee_1_d2 = 1; setChadValue(1);  setOwnValue(1); break;
	      case "opt_Testen":		global.t_ee_1_d2 = 2; setSuzanValue(1); setOwnValue(-1); break;
	      case "opt_Langsam":		global.t_ee_1_d2 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_create("Chad", Text("t_ee_1_d2_r1_0"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
			vngen_text_create("", Text("t_ee_1_d2_r2_0"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_ee_1_d2_r3_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_do_continue();
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r2_0_b"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r1_1"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r2_1"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_text_replace("", Text("t_ee_1_d2_r3_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_text_replace("", Text("t_ee_1_d2_r1_2"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Dia", spr_dia_synchrone_beine, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_synchrone_beine_midi);
			vngen_text_replace("", Text("t_ee_1_d2_r2_2"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_char_change_sprite("Dia", spr_dia_gurken_chad, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_gurken_chad_midi);
			vngen_text_replace("", Text("t_ee_1_d2_r3_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r1_3"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("t_ee_1_d2_r2_3"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_text_replace("", Text("t_ee_1_d2_r3_3"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_text_replace("", Text("t_ee_1_d2_r1_3_b"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d2 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r1_4"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r2_4"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_text_replace("", Text("t_ee_1_d2_r3_4"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d2_r1_5"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_text_replace("", Text("t_ee_1_d2_r2_5"));
		}
		if(global.t_ee_1_d2 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_ee_1_d2_r3_5"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_char_change_sprite("Dia", spr_dia_du_und_chad_springen_ins_wasser, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_du_und_chad_springen_ins_wasser_midi);
			vngen_text_replace("", Text("t_ee_1_d2_r1_6"));
		}
		if(global.t_ee_1_d2 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d2 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("", Text("t_ee_1_d2_r3_6"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 1){
		if(global.t_ee_1_d2 == 1){
			vngen_do_continue();
		}
		if(global.t_ee_1_d2 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d2 == 3){
			vngen_text_replace("", Text("t_ee_1_d2_r3_7"));
		}
	} else {
		vngen_do_continue();
	}
}


//____________________________________MATSCH___________________________________

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("t_ee_1_d1_r2_0"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_text_replace("", Text("t_ee_1_d1_r2_0_b"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_text_replace("", Text("t_ee_1_d1_r2_1"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
		vngen_text_replace("", Text("t_ee_1_d1_r2_2"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_text_replace("", Text("t_ee_1_d1_r2_2_b"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_text_replace("", Text("t_ee_1_d1_r2_3"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_text_replace("", Text("t_ee_1_d1_r2_4"));
	}else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.t_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Schlamm1")) {
		vngen_option_create_transformed("opt_Wrestling",	Text("t_ee_1_d3_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Schlammkur",	Text("t_ee_1_d3_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Spielen",		Text("t_ee_1_d3_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Schlamm1", true)) {
	      case "opt_Wrestling":		global.t_ee_1_d3 = 1; break;
	      case "opt_Schlammkur":	global.t_ee_1_d3 = 2; break;
	      case "opt_Spielen":		global.t_ee_1_d3 = 3; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_create("Chad", Text("t_ee_1_d3_r1_0"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_ee_1_d3_r2_0"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_ee_1_d3_r3_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 3){
			vngen_text_replace("", Text("t_ee_1_d3_r3_0_b"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("t_ee_1_d3_r1_1"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_text_replace("", Text("t_ee_1_d3_r2_1"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_text_replace("", Text("t_ee_1_d3_r3_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_text_replace("Chad", Text("t_ee_1_d3_r1_2"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_ee_1_d3_r2_2"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_char_change_sprite("Dia", spr_dia_schlammkuchen, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schlammkuchen_midi);
			vngen_text_replace("", Text("t_ee_1_d3_r3_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d3_r1_3"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_text_replace("", Text("t_ee_1_d3_r2_3"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_text_replace("", Text("t_ee_1_d3_r3_3"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
			vngen_text_replace("Chad", Text("t_ee_1_d3_r1_4"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_char_change_sprite("Dia", spr_dia_hugo, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_hugo_midi);
			vngen_text_replace("", Text("t_ee_1_d3_r2_4"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_text_replace("", Text("t_ee_1_d3_r3_4"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_text_replace("", Text("t_ee_1_d3_r1_5"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("t_ee_1_d3_r2_5"));
		}
		if(global.t_ee_1_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
			vngen_text_replace("", Text("t_ee_1_d3_r3_5"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_text_replace("", Text("t_ee_1_d3_r1_6"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_text_replace("", Text("t_ee_1_d3_r1_7"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_text_replace("", Text("t_ee_1_d3_r1_8"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_ee_1_d1 == 2){
		if(global.t_ee_1_d3 == 1){
			vngen_char_change_sprite("Dia", spr_dia_arsch_knallt_auf_boden, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_arsch_knallt_auf_boden_midi);
			vngen_text_replace("", Text("t_ee_1_d3_r1_9"));
		}
		if(global.t_ee_1_d3 == 2){
			vngen_do_continue();
		}
		if(global.t_ee_1_d3 == 3){
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