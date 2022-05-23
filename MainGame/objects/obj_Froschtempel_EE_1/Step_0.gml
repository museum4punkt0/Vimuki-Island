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
		vngen_text_replace("", Text("f_ee_1_0"));
	} else {	
		vngen_text_create("", Text("f_ee_1_0")); 
	}
}

if (vngen_event()) {
   global.tempelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_ee_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_5_b"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_7_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_1_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_ee_1_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("Chad", Text("f_ee_1_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_13"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
   vngen_text_replace("Suzan", Text("f_ee_1_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
   vngen_text_replace("Chad", Text("f_ee_1_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_16"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Bunjee")) {
	vngen_option_create_transformed("opt_Bunjee_Ja",	Text("f_ee_1_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Bunjee_Nein",	Text("f_ee_1_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Bunjee", true)) {
      case "opt_Bunjee_Ja":			global.f_ee_1_d1 = 1; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
      case "opt_Bunjee_Nein":		global.f_ee_1_d1 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
   }	
}

if (vngen_event()) {
	
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
		vngen_text_create("", Text("f_ee_1_d1_r1_0"));
	}
	if(global.f_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("f_ee_1_d1_r2_0"));
	}
	
}

if (vngen_event()) {
	if(global.f_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
		vngen_text_replace("Suzan", Text("f_ee_1_d1_r1_1"));
	}
	if(global.f_ee_1_d1 == 2){
		vngen_text_replace("", Text("f_ee_1_d1_r2_1"));
	}
	
}

if (vngen_event()) {
	if(global.f_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_do_continue();
	}
	if(global.f_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
		vngen_text_replace("", Text("f_ee_1_d1_r2_2"));
	}
	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_ee_1_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
   vngen_text_replace("", Text("f_ee_1_18"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_19"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
   vngen_text_replace("", Text("f_ee_1_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_20_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("f_ee_1_21"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
   vngen_text_replace("", Text("f_ee_1_22"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_ee_1_23"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	 //Create options
   if (vngen_option("choice_Rausholen")) {
	vngen_option_create_transformed("opt_Rausholen_Video",	Text("f_ee_1_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Rausholen_Ziehen",	Text("f_ee_1_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Rausholen_Selbst",	Text("f_ee_1_d2_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Rausholen", true)) {
      case "opt_Rausholen_Video":	global.f_ee_1_d2 = 1; setSuzanValue(1); setOwnValue(-1); break;
      case "opt_Rausholen_Ziehen":	global.f_ee_1_d2 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
      case "opt_Rausholen_Selbst":	global.f_ee_1_d2 = 3; setChadValue(1); setOwnValue(1); break;
   } 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_ee_1_d2 == 1){
		vngen_text_create("", Text("f_ee_1_d2_r1_0"));
	}
	if(global.f_ee_1_d2 == 2){
		vngen_text_create("", Text("f_ee_1_d2_r2_0"));
	}
	if(global.f_ee_1_d2 == 3){
		vngen_text_create("", Text("f_ee_1_d2_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_text_replace("", Text("f_ee_1_d2_r1_1"));
	}
	if(global.f_ee_1_d2 == 2){
		vngen_char_change_sprite("Dia", spr_dia_chad_vulkan_bleich, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_vulkan_bleich_midi);
		vngen_text_replace("", Text("f_ee_1_d2_r2_1"));
	}
	if(global.f_ee_1_d2 == 3){
		vngen_text_replace("", Text("f_ee_1_d2_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_text_replace("", Text("f_ee_1_d2_r1_2"));
	}
	if(global.f_ee_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_text_replace("", Text("f_ee_1_d2_r2_2"));
	}
	if(global.f_ee_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_ee_1_d2_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_char_change_sprite("Dia", spr_dia_chad_vulkan_verbruehte_haende, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_vulkan_verbruehte_haende_midi);
		vngen_text_replace("", Text("f_ee_1_d2_r1_2_b"));
	}
	if(global.f_ee_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_ee_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace("", Text("f_ee_1_d2_r3_2_b"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_text_replace("", Text("f_ee_1_d2_r1_3"));
	}
	if(global.f_ee_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
		vngen_text_replace("Suzan", Text("f_ee_1_d2_r2_3"));
	}
	if(global.f_ee_1_d2 == 3){
		vngen_char_change_sprite("Dia", spr_dia_chad_vulkan_verkohlt, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_chad_vulkan_verkohlt_midi);
		vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
		vngen_text_replace("", Text("f_ee_1_d2_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_text_replace("", Text("f_ee_1_d2_r2_4"));
	}
	if(global.f_ee_1_d2 == 3){
		vngen_text_replace("", Text("f_ee_1_d2_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_ee_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_ee_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_ee_1_d2 == 3){
		vngen_text_replace("", Text("f_ee_1_d2_r3_5"));
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