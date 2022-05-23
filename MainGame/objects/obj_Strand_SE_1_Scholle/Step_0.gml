/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_s_Unterwasser);
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
	vngen_char_create_ext("Chad", spr_empty, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_empty, 1450, 0, scale_y);
	vngen_char_create_ext("Mitte", spr_scholle_idle, 650, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
	vngen_text_create("Leutnant Scholle", Text("s_se_1_teil3_0")); 
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
   vngen_text_replace("Chad", Text("s_se_1_teil3_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_verliebt, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_verliebt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
	vngen_char_change_sprite("Mitte", spr_scholle_verliebt_grey, scale_y);
   vngen_text_replace("Chad", Text("s_se_1_teil3_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_13"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_1_teil3_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_19"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_meerwache_wuetend_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_21"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_22"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_23"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_24"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
   vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_25"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y);
   vngen_text_replace("", Text("s_se_1_teil3_26"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_27"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_teil3_28"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("scholle_0")) {
		vngen_option_create_transformed("opt_Faust"," ",			-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_faustkampf, spr_icon_faustkampf_active, spr_icon_faustkampf_active);
		vngen_option_create_transformed("opt_Schwimmen",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_wettschwimmen, spr_icon_wettschwimmen_active, spr_icon_wettschwimmen_active);
  }
   
   switch (vngen_get_option("scholle_0", true)) {
      case "opt_Faust":		global.s_se_1_teil3_d1 = 1; break;
      case "opt_Schwimmen":	global.s_se_1_teil3_d1 = 2; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_create("", Text("s_se_1_teil3_d1_r1_0"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_create("", Text("s_se_1_teil3_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_1"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_2"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_3"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_4"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_enya_gluecklich, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_5"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_6"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_enya_gluecklich, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_7"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_8"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_8"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r1_9"));
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_9"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d1_r2_10"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_11"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_text_replace("", Text("s_se_1_teil3_d1_r2_12"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("scholle_2")) {
		vngen_option_create_transformed("opt_geheim",	Text("s_se_1_teil3_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_boxen",	Text("s_se_1_teil3_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   switch (vngen_get_option("scholle_2", true)) {
	      case "opt_geheim":	global.s_se_1_teil3_d2 = 1; global.s_se_1_teil3_gut = true;  break;
	      case "opt_boxen":		global.s_se_1_teil3_d2 = 2; break;
	   }
	}
	if(global.s_se_1_teil3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("scholle_4")) {
		vngen_option_create_transformed("opt_delfin",	Text("s_se_1_teil3_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_ruecken",	Text("s_se_1_teil3_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   switch (vngen_get_option("scholle_4", true)) {
	      case "opt_delfin":	global.s_se_1_teil3_d4 = 1; global.s_se_1_teil3_gut = true; break;
	      case "opt_ruecken":	global.s_se_1_teil3_d4 = 2; break;
	   }
	}
}


if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_create("", Text("s_se_1_teil3_d2_r1_0"));
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_text_create("", Text("s_se_1_teil3_d2_r2_0"));
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_text_create("", Text("s_se_1_teil3_d4_r1_0"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_create("", Text("s_se_1_teil3_d4_r2_0"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_text_replace("", Text("s_se_1_teil3_d2_r1_1"));
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d2_r2_1"));
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r1_1"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d2_r1_2"));
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d2_r2_2"));
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r1_2"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_teil3_d2_r1_3"));
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_teil3_d2_r2_3"));
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r1_3"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_3"));
		}
	}
}


if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d4_r1_4"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_4"));
		}
	}
}


if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_teil3_d4_r1_5"));
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d4_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_do_continue();
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_teil3_d4_r2_9"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_empty, scale_y);
			vngen_char_change_sprite("Chad", spr_empty, scale_y);
			vngen_char_change_sprite("Mitte", spr_empty, scale_y);
			vngen_textbox_destroy();
			vngen_text_destroy();

			if (vngen_option("scholle_3")) {
			vngen_option_create_transformed("opt_trick",	Text("s_se_1_teil3_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_treten",	Text("s_se_1_teil3_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
   
			switch (vngen_get_option("scholle_3", true)) {
				case "opt_trick":	global.s_se_1_teil3_d3 = 1; global.s_se_1_teil3_gut = true; break;
				case "opt_treten":	global.s_se_1_teil3_d3 = 2; break;
			}	
		}
	}
	
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_char_change_sprite("Suzan", spr_empty, scale_y);
			vngen_char_change_sprite("Chad", spr_empty, scale_y);
			vngen_char_change_sprite("Mitte", spr_empty, scale_y);
			vngen_textbox_destroy();
			vngen_text_destroy();

			if (vngen_option("scholle_5")) {
			vngen_option_create_transformed("opt_geheim",	Text("s_se_1_teil3_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_ablenken",	Text("s_se_1_teil3_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
   
			switch (vngen_get_option("scholle_5", true)) {
				case "opt_geheim":		global.s_se_1_teil3_d5 = 2; break;
				case "opt_ablenken":	global.s_se_1_teil3_d5 = 1; global.s_se_1_teil3_gut = true; break;
			}	
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y ); 
			vngen_textbox_create(spr_textbox_Insel);
			if(global.s_se_1_teil3_d3 == 1){
				vngen_text_create("", Text("s_se_1_teil3_d3_r1_0"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_text_create("", Text("s_se_1_teil3_d3_r2_0"));
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_kaempfen_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_create("", Text("s_se_1_teil3_d5_r1_0"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_text_create("", Text("s_se_1_teil3_d5_r2_0"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_1"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r2_1"));
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_1"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r2_1"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_2"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r2_2"));
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_2"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r2_2"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y); 
				vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d3_r1_3"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r2_3"));
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_3"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
				vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d5_r2_3"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_ekel_grey, scale_y); 
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_4"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d3_r2_4"));
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_4"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
				vngen_text_replace("", Text("s_se_1_teil3_d5_r2_4"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_5"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_kaempfen, scale_y); 
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d5_r1_5"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r2_5"));
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_do_continue();
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_6"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_do_continue();
			}
		}
	}
}


if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_char_change_sprite("Mitte", spr_reverse_meerfrau_idle, scale_y);
				vngen_audio_play_sound("sound", sfx_char_meerjungfrau_reverse_01, 1, 0, false, false);
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_7"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_7"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_ekel, scale_y); 
				vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d3_r1_8"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_char_change_sprite("Mitte", spr_reverse_meerfrau_idle, scale_y); 
				vngen_audio_play_sound("sound", sfx_char_meerjungfrau_reverse_02, 1, 0, false, false);
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_8"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_9"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_ekel, scale_y); 
				vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_d5_r1_9"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_do_continue();
			}
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_teil3_d1 == 1){
		
		if(global.s_se_1_teil3_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d2 == 2){
			if(global.s_se_1_teil3_d3 == 1){
				vngen_text_replace("", Text("s_se_1_teil3_d3_r1_10"));
			}
			if(global.s_se_1_teil3_d3 == 2){
				vngen_do_continue();
			}
		}
	}
	if(global.s_se_1_teil3_d1 == 2){
		
		if(global.s_se_1_teil3_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_teil3_d4 == 2){
			if(global.s_se_1_teil3_d5 == 1){
				vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
				vngen_text_replace("", Text("s_se_1_teil3_d5_r1_10"));
			}
			if(global.s_se_1_teil3_d5 == 2){
				vngen_do_continue();
			}
		}
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_gut_0"));
	}else {
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_0"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_1"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_1"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_gut_2"));
	} else {
		vngen_char_change_sprite("Mitte", spr_enya_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_2"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_3"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_3"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_4"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_4"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_5"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_5"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Mitte", spr_enya_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_gut_6"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_7"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Mitte", spr_scholle_verliebt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_gut_8"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Mitte", spr_scholle_verliebt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_gut_9"));
	} else {
		vngen_char_change_sprite("Mitte", spr_scholle_verliebt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_1_teil3_schlecht_9"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_gut_10"));
	} else {
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_10"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_11"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_11"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_12"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_12"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_13"));
	} else {
		vngen_text_replace("", Text("s_se_1_teil3_schlecht_13"));
	}
}

if(vngen_event()){
	if(global.s_se_1_teil3_gut){
		vngen_text_replace("", Text("s_se_1_teil3_gut_14"));
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