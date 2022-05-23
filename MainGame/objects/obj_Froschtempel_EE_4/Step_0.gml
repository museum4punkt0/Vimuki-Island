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
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_ee_4_0"));
	} else {	
		vngen_text_create("", Text("f_ee_4_0")); 
	}
}

if (vngen_event()) {
   global.tempelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_4_0_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_1"));
}

if (vngen_event()) {
	
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_ee_4_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
	vngen_text_replace("Chad", Text("f_ee_4_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_4_4_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_ee_4_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_4_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_8"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Seerose")) {
	   vngen_option_create_transformed("opt_Gerissen"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_seerosenblatt_feuer, spr_icon_seerosenblatt_feuer_active, spr_icon_seerosenblatt_feuer_active);
	   vngen_option_create_transformed("opt_Ganz",	" ",	(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_seerose, spr_icon_seerose_active, spr_icon_seerose_active);

  }
   
   switch (vngen_get_option("choice_Seerose", true)) {
      case "opt_Gerissen":		global.f_ee_4_d1 = 1; setChadValue(1); setOwnValue(1); break;
      case "opt_Ganz":			global.f_ee_4_d1 = 2; setSuzanValue(1); setOwnValue(-1); break;
   }	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_create("", Text("f_ee_4_d1_r1_0"));
	}
	if(global.f_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
		vngen_text_create("", Text("f_ee_4_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d1 == 1){
		vngen_text_replace("", Text("f_ee_4_d1_r1_0_b"));
	}
	if(global.f_ee_4_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d1 == 1){
		vngen_text_replace("", Text("f_ee_4_d1_r1_1"));
	}
	if(global.f_ee_4_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_ee_4_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_ee_4_d1_r1_1_b"));
	}
	if(global.f_ee_4_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d1 == 1){
		vngen_text_replace("", Text("f_ee_4_d1_r1_2"));
	}
	if(global.f_ee_4_d1 == 2){
		vngen_do_continue();
	}
}


if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_4_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_4_9_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_4_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_4_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
   vngen_text_replace("Chad", Text("f_ee_4_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
   vngen_text_replace("Suzan", Text("f_ee_4_14"));
}

if (vngen_event()) {
   vngen_text_replace("Suzan", Text("f_ee_4_14_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_4_15"));
}


if (vngen_event()) {
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		 //Create options
	   if (vngen_option("choice_Rutschen")) {
		vngen_option_create_transformed("opt_Zirkus",	Text("f_ee_4_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Hinlegen",	Text("f_ee_4_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Hinter",	Text("f_ee_4_d2_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Rutschen", true)) {
	      case "opt_Zirkus":	global.f_ee_4_d2 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
	      case "opt_Hinlegen":	global.f_ee_4_d2 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	      case "opt_Hinter":	global.f_ee_4_d2 = 3; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
	   } 
}



if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_ee_4_d2 == 1){
		vngen_text_create("", Text("f_ee_4_d2_r1_0"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_text_create("", Text("f_ee_4_d2_r2_0"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_text_create("", Text("f_ee_4_d2_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_text_replace("", Text("f_ee_4_d2_r1_0_b"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_text_replace("", Text("f_ee_4_d2_r2_0_b"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_text_replace("", Text("f_ee_4_d2_r1_1"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_text_replace("", Text("f_ee_4_d2_r2_1"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_ee_4_d2_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_text_replace("", Text("f_ee_4_d2_r1_1_b"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("f_ee_4_d2_r2_1_b"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_ee_4_d2_r1_2"));
	}
	if(global.f_ee_4_d2 == 2){
		
		vngen_text_replace("", Text("f_ee_4_d2_r2_2"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_text_replace("", Text("f_ee_4_d2_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_ee_4_d2_r1_3"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_text_replace("", Text("f_ee_4_d2_r2_3"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("f_ee_4_d2_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("f_ee_4_d2_r1_4"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_text_replace("Suzan", Text("f_ee_4_d2_r2_4"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("f_ee_4_d2_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("f_ee_4_d2_r1_5"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("f_ee_4_d2_r2_5"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("f_ee_4_d2_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("f_ee_4_d2_r1_6"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_verschwommenes_bild_zu_schnell, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_verschwommenes_bild_zu_schnell_midi);
		vngen_text_replace("", Text("f_ee_4_d2_r2_6"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("f_ee_4_d2_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_4_d2 == 2){
		vngen_text_replace("", Text("f_ee_4_d2_r2_6_b"));
	}
	if(global.f_ee_4_d2 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_dreiecksformation, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_dreiecksformation_midi);
		vngen_text_replace("", Text("f_ee_4_d2_r1_7"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("f_ee_4_d2_r3_7"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_text_replace("", Text("f_ee_4_d2_r1_8"));
	}
	if(global.f_ee_4_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_stromschnellen, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_stromschnellen_midi);
		vngen_text_replace("", Text("f_ee_4_d2_r3_8"));
	}
}

if (vngen_event()) {
	if(global.f_ee_4_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_4_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_ee_4_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("f_ee_4_d2_r3_9"));
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