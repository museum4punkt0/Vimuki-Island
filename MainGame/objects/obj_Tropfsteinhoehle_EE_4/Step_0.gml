/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Hoehle);
	vngen_audio_play_sound("music", vimuki_main_cave_music_and_atmo, 1, 0, false, true);
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
	
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext_back("Trollf", spr_empty, 150, 0, scale_y);
	vngen_char_create_ext_back("Trollaf", spr_empty, 950, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_ee_4_0"));
	} else {	
		vngen_text_create("", Text("t_ee_4_0")); 
	}
}

if (vngen_event()) {
   global.hoehleIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_0_b"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_1_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("t_ee_4_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
   vngen_text_replace("Chad", Text("t_ee_4_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("", Text("t_ee_4_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
   vngen_text_replace("Trollaf", Text("t_ee_4_5"));
}

if (vngen_event()) {
	vngen_audio_play_sound("sound", sfx_char_troll_02, 1, 0, false, false);
   vngen_text_replace("Trollf", Text("t_ee_4_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_7_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend, scale_y);
   vngen_text_replace("Trollaf", Text("t_ee_4_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend_grey, scale_y);
   vngen_text_replace("Trollf", Text("t_ee_4_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend, scale_y);
   vngen_text_replace("Trollaf", Text("t_ee_4_10"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_fragend_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_fragend, scale_y);
   vngen_text_replace("Trollaf", Text("t_ee_4_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_fragend, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_fragend_grey, scale_y);
	vngen_text_replace("Trollf", Text("t_ee_4_13"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_14"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Trollf", spr_empty, scale_y);
	vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Trolle_1")) {
	vngen_option_create_transformed("opt_Manieren",		Text("t_ee_4_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Kompliemente",	Text("t_ee_4_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Trolle_1", true)) {
      case "opt_Manieren":		global.t_ee_4_d1 = 1; break;
      case "opt_Kompliemente":	global.t_ee_4_d1 = 2; break;
   }	
}

if(vngen_event()){
	vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_create("Suzan", Text("t_ee_4_d1_r1_0"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_create("Suzan", Text("t_ee_4_d1_r2_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d1_r1_1"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d1_r2_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_text_replace("", Text("t_ee_4_d1_r1_1_b"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_text_replace("", Text("t_ee_4_d1_r2_1_b"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_text_replace("", Text("t_ee_4_d1_r1_2"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_text_replace("", Text("t_ee_4_d1_r2_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_text_replace("", Text("t_ee_4_d1_r1_2_b"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d1_r1_3"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollaf", Text("t_ee_4_d1_r2_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollaf", Text("t_ee_4_d1_r1_4"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_02, 1, 0, false, false);
		vngen_text_replace("Trollf", Text("t_ee_4_d1_r2_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_text_replace("", Text("t_ee_4_d1_r1_5"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollaf", Text("t_ee_4_d1_r2_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_text_replace("", Text("t_ee_4_d1_r1_6"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_02, 1, 0, false, false);
		vngen_text_replace("Trollf", Text("t_ee_4_d1_r2_6"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_4_d1_r1_7"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d1_r2_7"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d1_r1_8"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend_grey, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d1_r2_8"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d1 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d1_r1_9"));
	} 
	if(global.t_ee_4_d1 == 2){
		vngen_do_continue();
	} 
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
   vngen_text_replace("", Text("t_ee_4_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
   vngen_text_replace("Chad", Text("t_ee_4_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_fragend, scale_y);
   vngen_text_replace("Trollaf", Text("t_ee_4_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollaf", spr_trolaf_fragend_grey, scale_y);
   vngen_text_replace("", Text("t_ee_4_18"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Trollf", spr_empty, scale_y);
	vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Trolle_2")) {
	vngen_option_create_transformed("opt_Battle",		Text("t_ee_4_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Challenge",	Text("t_ee_4_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Trolle_2", true)) {
      case "opt_Battle":		global.t_ee_4_d2 = 1; break;
      case "opt_Challenge":		global.t_ee_4_d2 = 2; break;
   }	
}

if(vngen_event()){
	
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_create("", Text("t_ee_4_d2_r1_0"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
		vngen_text_create("Chad", Text("t_ee_4_d2_r2_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("t_ee_4_d2_r1_1"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r2_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r1_2"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r2_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("t_ee_4_d2_r1_3"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r2_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r1_4"));
		vngen_audio_pause("music");
		vngen_audio_play_sound("rapbattle", vimuki_main_cave_rapbattle_music_and_atmo, 1, 0, false, true);
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
		vngen_text_replace("Chad", Text("t_ee_4_d2_r2_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_text_replace("", Text("t_ee_4_d2_r1_4_b"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_text_replace("", Text("t_ee_4_d2_r1_5"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_char_change_sprite("Trollf", spr_trollf_idle, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d2_r2_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollf", Text("t_ee_4_d2_r1_6"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r2_6"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r1_7"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
		vngen_text_replace("Chad", Text("t_ee_4_d2_r2_7"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_02, 1, 0, false, false);
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r1_8"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r2_8"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r1_8_b"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_text_replace("Chad", Text("t_ee_4_d2_r1_9"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r2_9"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollf", Text("t_ee_4_d2_r1_10"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d2_r2_10"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r1_11"));
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d2_r2_11"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d2 == 2){
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d2_r2_12"));
	} 
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
	vngen_char_change_sprite("Trollf", spr_trollf_wuetend, scale_y);
	
   vngen_text_replace("Trollf", Text("t_ee_4_19"));
   vngen_audio_stop("rapbattle", false,false); 
   vngen_audio_resume("music");
}

if (vngen_event()) {
	vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend, scale_y);
	vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
   vngen_text_replace("Trollaf", Text("t_ee_4_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_21"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_4_21_b"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Trollf", spr_empty, scale_y);
	vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Trolle_3")) {
		vngen_option_create_transformed("opt_Keiner"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_keiner_gewinnt, spr_icon_keiner_gewinnt_active, spr_icon_keiner_gewinnt);
	    vngen_option_create_transformed("opt_Trollaf",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_trolaf, spr_icon_trolaf_active, spr_icon_trolaf_active);
	    vngen_option_create_transformed("opt_Trollf", " ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_trollf, spr_icon_trollf_active, spr_icon_trollf_active);
		if(global.sonnenbrille){
			vngen_option_create_transformed("opt_Sonnenbrille", " ",(camera_get_view_width(view_camera[0])*0.15),		-(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_sonnenbrille, spr_icon_sonnenbrille_active, spr_icon_sonnenbrille_active);
		}
   }
   
   switch (vngen_get_option("choice_Trolle_3", true)) {
      case "opt_Keiner":		global.t_ee_4_d3 = 1; break;
      case "opt_Trollaf":		global.t_ee_4_d3 = 2; break;
      case "opt_Trollf":		global.t_ee_4_d3 = 3; setOwnValueBonus(); break;
      case "opt_Sonnenbrille":	global.t_ee_4_d3 = 4; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
   }	
}

if(vngen_event()){
	
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_idle_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_idle_grey, scale_y);
		vngen_text_create("", Text("t_ee_4_d3_r1_0"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_char_change_sprite("Trollf", spr_trollf_wuetend_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_create("", Text("t_ee_4_d3_r2_0"));
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_wuetend_grey, scale_y);
		vngen_text_create("", Text("t_ee_4_d3_r3_0"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_create("", Text("t_ee_4_d3_r4_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		
		vngen_text_replace("", Text("t_ee_4_d3_r1_0_b"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_text_replace("", Text("t_ee_4_d3_r1_1"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_text_replace("", Text("t_ee_4_d3_r2_1"));
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_text_replace("", Text("t_ee_4_d3_r3_1"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d3_r4_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d3_r1_1_b"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d3_r1_2"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_text_replace("", Text("t_ee_4_d3_r2_2"));
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_text_replace("", Text("t_ee_4_d3_r3_2"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_char_change_sprite("Trollf", spr_empty, scale_y);
		vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_trolle_verbeugen_sich_vor_brille, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_trolle_verbeugen_sich_vor_brille_midi);
		vngen_text_replace("", Text("t_ee_4_d3_r4_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich_grey, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d3_r1_3"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d3_r2_3"));
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich, scale_y);
		vngen_text_replace("Trollf", Text("t_ee_4_d3_r3_3"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_audio_play_sound("sound", sfx_char_troll_01, 1, 0, false, false);
		vngen_text_replace("Trollf", Text("t_ee_4_d3_r4_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollf", spr_trollf_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Trollaf", spr_trolaf_gluecklich, scale_y);
		vngen_text_replace("Trollaf", Text("t_ee_4_d3_r1_4"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_char_change_sprite("Trollf", spr_empty, scale_y);
		vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_coolere_troll_trolaf, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_coolere_troll_trolaf_midi);
		vngen_text_replace("", Text("t_ee_4_d3_r2_4"));
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_char_change_sprite("Trollf", spr_empty, scale_y);
		vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_coolere_troll_trollf, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_coolere_troll_trollf_midi);
		vngen_text_replace("", Text("t_ee_4_d3_r3_4"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_audio_play_sound("sound", sfx_char_troll_02, 1, 0, false, false);
		vngen_text_replace("Trollaf", Text("t_ee_4_d3_r4_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_char_change_sprite("Trollf", spr_empty, scale_y);
		vngen_char_change_sprite("Trollaf", spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_trollfreunde, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_trollfreunde_midi);
		vngen_text_replace("", Text("t_ee_4_d3_r1_5"));
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_text_replace("", Text("t_ee_4_d3_r3_5"));
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_text_replace("", Text("t_ee_4_d3_r4_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_4_d3_r4_6"));
	} 
}

if(vngen_event()){
	if(global.t_ee_4_d3 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 2){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 3){
		vngen_do_continue();
	} 
	if(global.t_ee_4_d3 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_4_d3_r4_7"));
	} 
}

if (vngen_event()) {
	vngen_text_destroy();
	vngen_textbox_destroy();
	vngen_char_destroy(all);
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	vngen_audio_stop("music", false, false);
	audio_stop_all();
	global.day++; 
	room_goto(Karte);
}

//End VNgen script
vngen_event_reset_target();