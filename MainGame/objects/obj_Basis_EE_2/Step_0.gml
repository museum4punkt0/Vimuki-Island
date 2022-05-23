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
	vngen_char_create_ext("Louis", spr_empty, 800, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_ee_2_0"));
	} else {	
		vngen_text_create("", Text("b_ee_2_0")); 
	}
}

if (vngen_event()) {
   global.basisIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
    vngen_text_replace("", Text("b_ee_2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_2_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_2_3"));
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Latrine_1")) {
	vngen_option_create_transformed("opt_Latrine_Vimoogle",	Text("b_ee_2_d1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Latrine_Selbst",	Text("b_ee_2_d1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Latrine_Affen",	Text("b_ee_2_d1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Latrine_1", true)) {
      case "opt_Latrine_Vimoogle":	global.b_ee_2_d1 = 1; setOwnValue(-1); setChadValue(-1); setSuzanValue(+1); break;
      case "opt_Latrine_Selbst":	global.b_ee_2_d1 = 2; setOwnValue(+1); setChadValue(+1); setSuzanValue(-1); break;
      case "opt_Latrine_Affen":		global.b_ee_2_d1 = 3; setOwnValueBonus(); setChadValue(-1); setSuzanValue(-1); break;
   } 
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_textbox_create(spr_textbox_Insel);
	if(global.b_ee_2_d1 == 1){
		vngen_text_create("", Text("b_ee_2_d1_r1_0"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_text_create("", Text("b_ee_2_d1_r2_0"));
	}
	if(global.b_ee_2_d1 == 3){
		vngen_char_change_sprite("Louis", spr_bauarbeiter_affe_idle_grey, scale_y);
		vngen_text_create("", Text("b_ee_2_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_2_d1_r1_1"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_char_change_sprite("Dia", spr_dia_schlechte_latrine, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_schlechte_latrine_midi); 
		vngen_text_replace("", Text("b_ee_2_d1_r2_1"));
	}
	if(global.b_ee_2_d1 == 3){
		vngen_char_change_sprite("Louis", spr_bauarbeiter_affe_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_affe_01, 1, 0, false, false);
		vngen_text_replace("Louis", Text("b_ee_2_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d1_r1_2"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_2_d1 == 3){
		vngen_text_replace("", Text("b_ee_2_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_2_d1 == 1){
		vngen_text_replace("", Text("b_ee_2_d1_r1_3"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_2_d1 == 3){
		vngen_char_change_sprite("Louis", spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_gute_latrine, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_gute_latrine_midi); 
		vngen_text_replace("", Text("b_ee_2_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.b_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_2_d1_r1_4"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_2_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_latrine_loch, scale_prop_x_y);
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_latrine_loch_midi); 
		vngen_text_replace("", Text("b_ee_2_d1_r1_5"));
	}
	if(global.b_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.b_ee_2_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Dia", spr_empty, scale_y);
   vngen_text_replace("", Text("b_ee_2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_text_replace("", Text("b_ee_2_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_2_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
   vngen_text_replace("", Text("b_ee_2_8"));
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();
	 //Create options
	   if (vngen_option("choice_Muecken")) {
			vngen_option_create_transformed("opt_Muecken_Beraten",	Text("b_ee_2_d2_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		    vngen_option_create_transformed("opt_Muecken_Neu",		Text("b_ee_2_d2_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			if(global.mueckenspray){
				vngen_option_create_transformed("opt_Muecken_Spray",Text("b_ee_2_d2_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
	   }
   
	   //Perform option results
	   switch (vngen_get_option("choice_Muecken", true)) {
	      case "opt_Muecken_Spray":		global.b_ee_2_d2 = 1; break;
	      case "opt_Muecken_Beraten":	global.b_ee_2_d2 = 2; break;
	      case "opt_Muecken_Neu":		global.b_ee_2_d2 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   } 
	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
	vngen_textbox_create(spr_textbox_Insel);
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_text_create("", Text("b_ee_2_d2_r1_0"));
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_text_create("", Text("b_ee_2_d2_r2_0"));
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_text_create("", Text("b_ee_2_d2_r3_0"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		
		vngen_text_replace("", Text("b_ee_2_d2_r1_1"));
	}
	
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d2_r2_1"));
	}
	
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_text_replace("", Text("b_ee_2_d2_r3_1"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_do_continue();
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d2_r2_2"));
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_text_replace("", Text("b_ee_2_d2_r3_2"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_do_continue();
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_2_d2_r2_3"));
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_2_d2_r3_3"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_do_continue();
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d2_r2_4"));
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d2_r3_4"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_do_continue();
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_do_continue();
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_2_d2_r3_5"));
	}
}

if (vngen_event()) {
	//Mueckenspray
	if(global.b_ee_2_d2 == 1){
		vngen_do_continue();
	}
	//Beraten
	if(global.b_ee_2_d2 == 2){
		vngen_do_continue();
	}
	//Neue Latrine 
	if(global.b_ee_2_d2 == 3){
		vngen_text_replace("", Text("b_ee_2_d2_r3_6"));
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