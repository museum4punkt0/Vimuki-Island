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
	vngen_char_create_ext(Text("s_ee_4_name_krebs"), spr_empty, 600, 50, scale_prop_x_y);  // Fangschreckenkrebs
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_ee_4_0"));
	} else {	
		vngen_text_create("", Text("s_ee_4_0")); 
	}
}

if (vngen_event()) {
   global.strandIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_4_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_4_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
   vngen_text_replace("Suzan", Text("s_ee_4_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
   vngen_text_replace("Chad", Text("s_ee_4_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
   vngen_text_replace("Suzan", Text("s_ee_4_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
   vngen_text_replace("", Text("s_ee_4_6"));
}


if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Wasser_Foto")) {
	vngen_option_create_transformed("opt_Riffe",	Text("s_ee_4_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Selbst",	Text("s_ee_4_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Gegend",	Text("s_ee_4_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Wasser_Foto", true)) {
      case "opt_Riffe":		global.s_ee_4_d1 = 1; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
      case "opt_Selbst":	global.s_ee_4_d1 = 2; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
      case "opt_Gegend":	global.s_ee_4_d1 = 3; setOwnValueBonus(); break;
   }	
}

//____________________________________KORALLENRIFFE_____________________________


if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("s_ee_4_d1_r1_0"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_4_d1_r1_1"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		
		vngen_text_replace("Chad", Text("s_ee_4_d1_r1_2"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r1_3"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_4_d1_r1_4"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_4_d1_r1_5"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r1_6"));
	} else {
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Riff1")) {
			vngen_option_create_transformed("opt_Hoehle",	Text("s_ee_4_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		    vngen_option_create_transformed("opt_Korallen",	Text("s_ee_4_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Riff1", true)) {
	      case "opt_Hoehle":		global.s_ee_4_d2 = 1; break;
	      case "opt_Korallen":		global.s_ee_4_d2 = 2; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_ee_4_d2 == 1){
			vngen_text_create("", Text("s_ee_4_d2_r1_0"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_text_create("", Text("s_ee_4_d2_r2_0"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r1_1"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d2_r2_1"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r1_2"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r2_2"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r1_3"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d2_r2_3"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r1_4"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r2_4"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r1_5"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_char_change_sprite(Text("s_ee_4_name_krebs"), spr_fangschreckenkrebs_idle, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d2_r2_5"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r1_6"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r2_6"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_text_replace("", Text("s_ee_4_d2_r1_7"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite(Text("s_ee_4_name_krebs"), spr_fangschreckenkrebs_ungehalten, scale_y);
			vngen_audio_play_sound("sound", sfx_char_small_animal_01, 1, 0, false, false);
			vngen_text_replace("", Text("s_ee_4_d2_r2_7"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_text_replace("", Text("s_ee_4_d2_r1_7_b"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r1_8"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d2_r2_8"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_schwaerze, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schwaerze_midi);
			vngen_text_replace("", Text("s_ee_4_d2_r1_9"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r2_9"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d2_r1_10"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_char_change_sprite(Text("s_ee_4_name_krebs"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_fangschreckenkrebs, scale_prop_x_y );
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_fangschreckenkrebs_midi);
			vngen_text_replace("", Text("s_ee_4_d2_r2_10"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 1){
		if(global.s_ee_4_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d2_r1_11"));
		}
		if(global.s_ee_4_d2 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}


//______________________________________SELBST______________________________

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		vngen_text_create("", Text("s_ee_4_d1_r2_0"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_ee_4_d1_r2_1"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_4_d1_r2_2"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r2_3"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_text_replace("", Text("s_ee_4_d1_r2_3_b"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_text_replace("", Text("s_ee_4_d1_r2_4"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("s_ee_4_d1_r2_5"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_ee_4_d1_r2_6"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r2_7"));
		
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Selbst1")) {
			vngen_option_create_transformed("opt_Innen",	Text("s_ee_4_d3_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		    vngen_option_create_transformed("opt_Aussen",	Text("s_ee_4_d3_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Selbst1", true)) {
	      case "opt_Innen":		global.s_ee_4_d3 = 1; break;
	      case "opt_Aussen":	global.s_ee_4_d3 = 2; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_ee_4_d3 == 1){
			vngen_text_create("", Text("s_ee_4_d3_r1_0"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_text_create("", Text("s_ee_4_d3_r2_0"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r1_1"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r2_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r1_2"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r2_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r1_3"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r2_3"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r1_4"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r2_4"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r1_5"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r2_5"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r1_6"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r2_6"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_text_replace("", Text("s_ee_4_d3_r1_6_b"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r1_7"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d3_r2_7"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r1_8"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r2_8"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r1_9"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r2_9"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_ee_4_d3 == 2){
			vngen_text_replace("", Text("s_ee_4_d3_r2_9_b"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_text_replace("", Text("s_ee_4_d3_r1_10"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_ee_4_d3_r2_10"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_text_replace("", Text("s_ee_4_d3_r1_10_b"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_char_change_sprite("Dia", spr_dia_quacktopus, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_quacktopus_midi);
			vngen_text_replace("", Text("s_ee_4_d3_r1_11"));
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d3_r2_11"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 2){
		if(global.s_ee_4_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_ee_4_d3 == 2){
			vngen_char_change_sprite("Dia", spr_dia_chad_mit_seepocken, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_chad_mit_seepocken_midi);
			vngen_text_replace("", Text("s_ee_4_d3_r2_12"));
		}
	} else {
		vngen_do_continue();
	}
}

//______________________________________Umgebung______________________________

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("s_ee_4_d1_r3_0"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("Chad", Text("s_ee_4_d1_r3_1"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r3_2"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_4_d1_r3_3"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("Chad", Text("s_ee_4_d1_r3_4"));
		
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("s_ee_4_d1_r3_5"));
		
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Gegend1")) {
			vngen_option_create_transformed("opt_Suchen",	Text("s_ee_4_d4_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		    vngen_option_create_transformed("opt_Abhang",	Text("s_ee_4_d4_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Gegend1", true)) {
	      case "opt_Suchen":	global.s_ee_4_d4 = 1; break;
	      case "opt_Abhang":	global.s_ee_4_d4 = 2; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_ee_4_d4 == 1){
			vngen_text_create("", Text("s_ee_4_d4_r1_0"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_text_create("", Text("s_ee_4_d4_r2_0"));
		}
	} else {
		vngen_do_continue();
	}
	
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_ee_4_d4 == 2){
			vngen_text_replace("", Text("s_ee_4_d4_r2_0_b"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d4_r1_1"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d4_r2_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d4_r1_2"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d4_r2_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_text_replace("", Text("s_ee_4_d4_r1_2_b"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d4_r1_3"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d4_r2_3"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d4_r1_4"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_abgrundmonster, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_abgrundmonster_midi);
			vngen_text_replace("", Text("s_ee_4_d4_r2_4"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d4_r1_5"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d4_r2_5"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_4_d4_r1_6"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d4_r2_6"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_text_replace("Chad", Text("s_ee_4_d4_r1_7"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_text_replace("", Text("s_ee_4_d4_r2_7"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("s_ee_4_d4_r1_8"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_text_replace("", Text("s_ee_4_d4_r2_8"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_text_replace("", Text("s_ee_4_d4_r1_8_b"));
		}
		if(global.s_ee_4_d4 == 2){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_4_d1 == 3){
		if(global.s_ee_4_d4 == 1){
			vngen_char_change_sprite("Dia", spr_dia_kugelfischpaar, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_kugelfischpaar_midi);
			vngen_text_replace("", Text("s_ee_4_d4_r1_9"));
		}
		if(global.s_ee_4_d4 == 2){
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