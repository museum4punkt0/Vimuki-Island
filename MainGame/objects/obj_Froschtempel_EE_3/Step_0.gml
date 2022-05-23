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
	if(global.tempelIntroPlayed = 0){
		vngen_text_create("", Text("f_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_0_b")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Kids", spr_empty, 700, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_ee_3_0"));
	} else {	
		vngen_text_create("", Text("f_ee_3_0")); 
	}
}

if (vngen_event()) {
   global.tempelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_3_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("f_ee_3_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("f_ee_3_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
   vngen_text_replace("", Text("f_ee_3_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_3_5"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Koeder")) {
	   vngen_option_create_transformed("opt_Koeder_Wurm"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_wurm, spr_icon_wurm_active, spr_icon_wurm_active);
	   vngen_option_create_transformed("opt_Koeder_Frucht",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_frucht, spr_icon_frucht_active, spr_icon_frucht_active);
	   vngen_option_create_transformed("opt_Koeder_Chad", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_chad, spr_icon_chad_active, spr_icon_chad_active);
  }
   
   switch (vngen_get_option("choice_Koeder", true)) {
      case "opt_Koeder_Wurm":		global.f_ee_3_d1 = 1; break;
      case "opt_Koeder_Frucht":		global.f_ee_3_d1 = 2; break;
      case "opt_Koeder_Chad":		global.f_ee_3_d1 = 3; setChadValue(1); setOwnValue(1); break;
   }	
}

//____________________________________WURM_________________________
if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("f_ee_3_d1_r1_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_text_replace("", Text("f_ee_3_d1_r1_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_text_replace("", Text("f_ee_3_d1_r1_1_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_ee_3_d1_r1_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_text_replace("", Text("f_ee_3_d1_r1_2_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Schuh_Saeubern")) {
		vngen_option_create_transformed("opt_Schuh_Saeubern_Ja",	Text("f_ee_3_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Schuh_Saeubern_Nein",	Text("f_ee_3_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Schuh_Saeubern", true)) {
	      case "opt_Schuh_Saeubern_Ja":		global.f_ee_3_d2 = 1; setOwnValueBonus(); break;
	      case "opt_Schuh_Saeubern_Nein":	global.f_ee_3_d2 = 2; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	   } 
	   
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_ee_3_d2 == 1){
			vngen_text_create("", Text("f_ee_3_d2_r1_0"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_text_create("", Text("f_ee_3_d2_r2_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		if(global.f_ee_3_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_ee_3_d2_r1_1"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_char_change_sprite("Dia", spr_dia_nasser_schuh, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_nasser_schuh_midi);
			vngen_text_replace("", Text("f_ee_3_d2_r2_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		if(global.f_ee_3_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_text_replace("Suzan", Text("f_ee_3_d2_r1_2"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_text_replace("", Text("f_ee_3_d2_r2_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		if(global.f_ee_3_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("", Text("f_ee_3_d2_r1_3"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		if(global.f_ee_3_d2 == 1){
			vngen_char_change_sprite("Dia", spr_dia_muelltonne, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_muelltonne_midi);
			vngen_text_replace("", Text("f_ee_3_d2_r1_3_b"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 1){
		if(global.f_ee_3_d2 == 1){
			vngen_text_replace("", Text("f_ee_3_d2_r1_4"));
		}
		if(global.f_ee_3_d2 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}
//____________________________________FRUCHT__________________

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
		vngen_text_create("Suzan", Text("f_ee_3_d1_r2_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		
		vngen_text_replace("", Text("f_ee_3_d1_r2_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_text_replace("", Text("f_ee_3_d1_r2_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("", Text("f_ee_3_d1_r2_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_replace("Chad", Text("f_ee_3_d1_r2_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("f_ee_3_d1_r2_5"));
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Bananen_Saeubern")) {
		vngen_option_create_transformed("opt_Bananen_Saeubern_Ja",	Text("f_ee_3_d3_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Bananen_Saeubern_Nein",Text("f_ee_3_d3_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Bananen_Saeubern", true)) {
	      case "opt_Bananen_Saeubern_Ja":	global.f_ee_3_d3 = 1; setOwnValueBonus(); break;
	      case "opt_Bananen_Saeubern_Nein":	global.f_ee_3_d3 = 2; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	   } 
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_ee_3_d3 == 1){
			vngen_text_create("", Text("f_ee_3_d3_r1_0"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_text_create("", Text("f_ee_3_d3_r2_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Kids", spr_affenkinder_idle_grey, scale_y); 
			vngen_text_replace("", Text("f_ee_3_d3_r1_0_b"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_text_replace("", Text("f_ee_3_d3_r1_1"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_text_replace("", Text("f_ee_3_d3_r2_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_ee_3_d3 == 2){
			vngen_text_replace("", Text("f_ee_3_d3_r2_1_b"));
		}
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_ee_3_d3_r1_2"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y);
			vngen_text_replace("", Text("f_ee_3_d3_r2_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
			vngen_text_replace("Suzan", Text("f_ee_3_d3_r1_3"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_char_change_sprite("Dia", spr_dia_grillbanane, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_grillbanane_midi);
			vngen_text_replace("", Text("f_ee_3_d3_r2_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
			vngen_char_change_sprite("Kids", spr_affenkinder_idle, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_affe_03, 1, 0, false, false);
			vngen_text_replace("Kids", Text("f_ee_3_d3_r1_4"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Kids", spr_affenkinder_idle, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("f_ee_3_d3_r1_5"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_ee_3_d3_r1_6"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
			vngen_text_replace("", Text("f_ee_3_d3_r1_7"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_text_replace("", Text("f_ee_3_d3_r1_8"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 2){
		if(global.f_ee_3_d3 == 1){
			vngen_char_change_sprite("Dia", spr_dia_muelltonne, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_muelltonne_midi);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Kids", spr_empty, scale_y); 
			vngen_text_replace("", Text("f_ee_3_d3_r1_9"));
		}
		if(global.f_ee_3_d3 == 2){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

//________________________CHAD__________________________________

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("f_ee_3_d1_r3_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_ee_3_d1_r3_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("f_ee_3_d1_r3_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_5"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_6"));
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_7"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_ee_3_d1_r3_7_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_text_replace("", Text("f_ee_3_d1_r3_8"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_FishChallenge")) {
		vngen_option_create_transformed("opt_FishChallenge_Ja",	Text("f_ee_3_d4_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_FishChallenge_Nein",Text("f_ee_3_d4_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_FishChallenge", true)) {
	      case "opt_FishChallenge_Ja":		global.f_ee_3_d4 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_FishChallenge_Nein":	global.f_ee_3_d4 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   } 
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_ee_3_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_create("", Text("f_ee_3_d4_r1_0"));
		}
		if(global.f_ee_3_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_char_change_sprite("Dia", spr_dia_chad_im_fisch, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_chad_im_fisch_midi);
			vngen_text_create("", Text("f_ee_3_d4_r2_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		if(global.f_ee_3_d4 == 1){
			vngen_text_replace("", Text("f_ee_3_d4_r1_1"));
		}
		if(global.f_ee_3_d4 == 2){
			vngen_text_replace("", Text("f_ee_3_d4_r2_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		if(global.f_ee_3_d4 == 1){
			vngen_text_replace("", Text("f_ee_3_d4_r1_2"));
		}
		if(global.f_ee_3_d4 == 2){
			vngen_text_replace("", Text("f_ee_3_d4_r2_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_3_d1 == 3){
		if(global.f_ee_3_d4 == 1){
			vngen_char_change_sprite("Dia", spr_dia_du_und_chad_im_fisch, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_du_und_chad_im_fisch_midi);
			vngen_text_replace("", Text("f_ee_3_d4_r1_3"));
		}
		if(global.f_ee_3_d4 == 2){
			
			vngen_text_replace("", Text("f_ee_3_d4_r2_3"));
		}
	}else{
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