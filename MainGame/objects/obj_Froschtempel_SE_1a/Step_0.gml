/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Froschtempel_Froschdorf);
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
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Mitte", spr_croak_idle_grey, 600, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_text_create("", Text("f_se_1_a_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_a_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
   vngen_text_replace("", Text("f_se_1_a_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_a_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("f_se_1_a_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_gluecklich_, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Croak", Text("f_se_1_a_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_kwaeka_idle, scale_y ); 
   vngen_text_replace("Kväka", Text("f_se_1_a_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace("Hopps", Text("f_se_1_a_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_a_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_ribbaeh_lachend, scale_y ); 
   vngen_text_replace("Ribbäh", Text("f_se_1_a_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_gaecool_idle, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
   vngen_text_replace("Gae-cool", Text("f_se_1_a_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_gaecool_idle_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_a_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_ribbit_lachend, scale_y ); 
   vngen_text_replace("Ribbit", Text("f_se_1_a_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_ribbit_lachend_grey, scale_y ); 
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y );
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_se_1_a_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_a_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_fragend, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_1_a_15"));
}

if (vngen_event()) {
   vngen_text_replace("Hopps", Text("f_se_1_a_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_fragend_grey, scale_y ); 
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_a_17"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_a_1")) {
		vngen_option_create_transformed("opt_Jaeger"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_jaegerfrosch, spr_icon_jaegerfrosch_active, spr_icon_jaegerfrosch_active);
	    vngen_option_create_transformed("opt_Springer",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_staerke_froschtempel, spr_icon_staerke_active, spr_icon_staerke_active);
	    vngen_option_create_transformed("opt_Gelehrter", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_wissen_froschtempel, spr_icon_wissen_active, spr_icon_wissen_active);
  }
   
   switch (vngen_get_option("tempel_a_1", true)) {
      case "opt_Jaeger":	global.f_se_1_a_d1 = 1; break;
      case "opt_Springer":	global.f_se_1_a_d1 = 2; break;
      case "opt_Gelehrter":	global.f_se_1_a_d1 = 3; break;
   }	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_a_d1_r1_0"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_a_d1_r2_0"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_a_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_text_replace("", Text("f_se_1_a_d1_r1_1"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r2_1"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_text_replace("", Text("f_se_1_a_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
		vngen_text_replace("Croak", Text("f_se_1_a_d1_r1_2"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_text_replace("", Text("f_se_1_a_d1_r2_2"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
		vngen_text_replace("Hopps", Text("f_se_1_a_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_croak_lachend_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r1_3"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y); 
		vngen_text_replace("Eeeh", Text("f_se_1_a_d1_r2_3"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y); 
		vngen_text_replace("Kwäka", Text("f_se_1_a_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_text_replace("", Text("f_se_1_a_d1_r1_4"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y); 
		vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d1_r2_4"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
		vngen_text_replace("Ribbäh", Text("f_se_1_a_d1_r1_5"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_kwakwa_lachend_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r2_5"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_a_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_text_replace("Ribbäh", Text("f_se_1_a_d1_r1_6"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_text_replace("", Text("f_se_1_a_d1_r2_6"));
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_a_d1_r1_7"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_text_replace("", Text("f_se_1_a_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_a_d1_r1_8"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_text_replace("", Text("f_se_1_a_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_a_d1_r1_9"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_text_replace("", Text("f_se_1_a_d1_r3_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
		vngen_text_replace("Croak", Text("f_se_1_a_d1_r1_10"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_text_replace("", Text("f_se_1_a_d1_r3_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
		vngen_text_replace("Ribbäh", Text("f_se_1_a_d1_r1_11"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_a_d1_r1_12"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		vngen_text_replace("", Text("f_se_1_a_d1_r1_13"));
	}
	if(global.f_se_1_a_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_a_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();
	
	if(global.f_se_1_a_d1 == 1){
		if (vngen_option("tempel_a_2")) {
		vngen_option_create_transformed("opt_Anlock",	Text("f_se_1_a_d2_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Bummer",	Text("f_se_1_a_d2_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
	   switch (vngen_get_option("tempel_a_2", true)) {
	      case "opt_Anlock":	global.f_se_1_a_d2 = 1; global.f_se_1_a_erfolg = true;  setSuzanValue(1); setChadValue(1); break;
	      case "opt_Bummer":	global.f_se_1_a_d2 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   }	
	}
	
	if(global.f_se_1_a_d1 == 2){
		if (vngen_option("tempel_a_3")) {
		vngen_option_create_transformed("opt_Seil",		Text("f_se_1_a_d3_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Springen",	Text("f_se_1_a_d3_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
	   switch (vngen_get_option("tempel_a_3", true)) {
	      case "opt_Seil":		global.f_se_1_a_d3 = 1; global.f_se_1_a_erfolg = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	      case "opt_Springen":	global.f_se_1_a_d3 = 2; setSuzanValue(1); setChadValue(1); break;
	   }	
	}
	
	if(global.f_se_1_a_d1 == 3){
		if (vngen_option("tempel_a_4")) {
		vngen_option_create_transformed("opt_Paradox",	Text("f_se_1_a_d4_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Rund",		Text("f_se_1_a_d4_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
	   switch (vngen_get_option("tempel_a_4", true)) {
	      case "opt_Paradox":	global.f_se_1_a_d4 = 1; global.f_se_1_a_erfolg = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	      case "opt_Rund":		global.f_se_1_a_d4 = 2; setSuzanValue(1); setChadValue(1); break;
	   }	
	}
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_ribbaeh_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d2_r1_0"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_ribbaeh_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d2_r2_0"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d3_r1_0"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d3_r2_0"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d4_r1_0"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_a_d4_r2_0"));
		}
	}
}


if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_text_replace("", Text("f_se_1_a_d2_r1_1"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_1"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_text_replace("", Text("f_se_1_a_d3_r1_1"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r2_1"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("", Text("f_se_1_a_d4_r1_1"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_text_replace("", Text("f_se_1_a_d4_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_text_replace("", Text("f_se_1_a_d2_r1_2"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_1_a_d2_r2_2"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_text_replace("", Text("f_se_1_a_d3_r1_2"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ehh_idle, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
			vngen_text_replace("Eeeh", Text("f_se_1_a_d3_r2_2"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_2"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_hopps_fragend, scale_y ); 
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_text_replace("", Text("f_se_1_a_d2_r1_3"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y ); 
			vngen_text_replace("Ribbäh", Text("f_se_1_a_d2_r2_3"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle, scale_y ); 
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r1_3"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ehh_idle_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d3_r2_3"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_3"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d4_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r1_4"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_a_d2_r2_4"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_a_d3_r1_4"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_4"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_4"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_text_replace("", Text("f_se_1_a_d4_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_text_replace("", Text("f_se_1_a_d2_r1_5"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r2_5"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r1_5"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_5"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y ); 
			vngen_text_replace("Kväka", Text("f_se_1_a_d4_r1_5"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y ); 
			vngen_text_replace("Kväka", Text("f_se_1_a_d4_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r1_6"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_6"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend_grey, scale_y ); 
			vngen_char_change_sprite("Chad",  spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d3_r1_6"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_6"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("Kväka", Text("f_se_1_a_d4_r1_6"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_a_d4_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r1_7"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_7"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_text_replace("", Text("f_se_1_a_d3_r1_7"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y ); 
			vngen_text_replace("Eeeh", Text("f_se_1_a_d3_r2_7"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y );
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y ); 
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r1_7"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_hopps_fragend, scale_y ); 
			vngen_char_change_sprite("Chad",  spr_chad_nervoes_aengstlich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Croak", Text("f_se_1_a_d2_r1_8"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_8"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_text_replace("", Text("f_se_1_a_d3_r1_8"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y ); 
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r2_8"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Mitte", spr_gaecool_idle_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_a_d4_r1_8"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_guo_lachend, scale_y ); 
			vngen_text_replace("Guo", Text("f_se_1_a_d4_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
			vngen_text_replace("Ribbäh", Text("f_se_1_a_d2_r1_9"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_9"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_text_replace("", Text("f_se_1_a_d3_r1_9"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y ); 
			vngen_text_replace("Eeeh", Text("f_se_1_a_d3_r2_9"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_9"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_gaecool_lachend, scale_y ); 
			vngen_text_replace("Gae-cool", Text("f_se_1_a_d4_r2_9"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y);
			vngen_text_replace("", Text("f_se_1_a_d2_r1_10"));
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_wuetend, scale_y );
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Croak", Text("f_se_1_a_d2_r2_10"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Chad",  spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d3_r1_10"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r2_10"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_10"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y );
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r2_10"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_idle_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r2_11"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Chad",  spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_a_d3_r1_11"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend_grey, scale_y ); 
			vngen_char_change_sprite("Chad",  spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d3_r2_11"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r1_11"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r2_11"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_1_a_d2_r2_12"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y ); 
			vngen_text_replace("Eeeh", Text("f_se_1_a_d3_r1_12"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_12"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Hopps", Text("f_se_1_a_d4_r1_12"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y ); 
			vngen_char_change_sprite("Chad",  spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_1_a_d4_r2_12"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y ); 
			vngen_text_replace("Croak", Text("f_se_1_a_d2_r2_13"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_a_d3_r1_13"));
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_13"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("", Text("f_se_1_a_d4_r1_13"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_guo_lachend, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("Guo", Text("f_se_1_a_d4_r2_13"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y ); 
			vngen_text_replace("Ribbäh", Text("f_se_1_a_d2_r2_14"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_text_replace("", Text("f_se_1_a_d3_r2_14"));
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_text_replace("", Text("f_se_1_a_d4_r1_14"));
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_char_change_sprite("Mitte", spr_gaecool_lachend, scale_y ); 
			vngen_text_replace("Gae-cool", Text("f_se_1_a_d4_r2_14"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_a_d2_r2_15"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_text_replace("", Text("f_se_1_a_d4_r2_15"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_16"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_d1 == 1){
		if(global.f_se_1_a_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d2 == 2){
			vngen_text_replace("", Text("f_se_1_a_d2_r2_17"));
		}
	}
	if(global.f_se_1_a_d1 == 2){
		if(global.f_se_1_a_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_a_d1 == 3){
		if(global.f_se_1_a_d4 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_a_d4 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_a_erfolg){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y ); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Hopps", Text("f_se_1_a_erfolg"));
	} else {
		vngen_text_replace("Hopps", Text("f_se_1_a_misserfolg"));
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y ); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	}
}

if (vngen_event()) {
	vngen_text_replace("Hopps", Text("f_se_1_a_17_b"));
}

if (vngen_event()) {
	vngen_text_replace("Hopps", Text("f_se_1_a_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y ); 
	vngen_text_replace("", Text("f_se_1_a_19"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_a_20"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_a_21"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_a_22"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_a_23"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_a_24"));
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