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
	vngen_char_create_ext(Text("t_ee_2_maulwurfswolf"), spr_empty, 650, -50, scale_y);
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_ee_2_0"));
	} else {	
		vngen_text_create("", Text("t_ee_2_0")); 
	}
}

if (vngen_event()) {
   global.hoehleIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("t_ee_2_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
   vngen_text_replace("Chad", Text("t_ee_2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("t_ee_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
   vngen_text_replace("Chad", Text("t_ee_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
   vngen_text_replace("Chad", Text("t_ee_2_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_2_8_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_idle_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_2_9_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("t_ee_2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_11"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Hoehlentier")) {
	vngen_option_create_transformed("opt_Inspizieren",	Text("t_ee_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Ansprechen",	Text("t_ee_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Kuschlen",		Text("t_ee_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Hoehlentier", true)) {
      case "opt_Inspizieren":	global.t_ee_2_d1 = 1; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
      case "opt_Ansprechen":	global.t_ee_2_d1 = 2; setOwnValueBonus(); break;
      case "opt_Kuschlen":		global.t_ee_2_d1 = 3; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
   }	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_idle_grey, scale_y);
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_ee_2_d1 == 1){
		vngen_text_create("", Text("t_ee_2_d1_r1_0"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_text_create("", Text("t_ee_2_d1_r2_0"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_text_create("", Text("t_ee_2_d1_r3_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_do_continue(); 
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
		vngen_text_replace("", Text("t_ee_2_d1_r2_0_b"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_do_continue(); 
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d1_r1_1"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d1_r2_1"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_text_replace("", Text("t_ee_2_d1_r3_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d1_r1_2"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend, scale_y);
		vngen_text_replace("", Text("t_ee_2_d1_r2_2"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d1_r3_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d1_r1_3"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y);
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend_grey, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d1_r2_3"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_replace("", Text("t_ee_2_d1_r3_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_text_replace("", Text("t_ee_2_d1_r1_4"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d1_r2_4"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_text_replace("", Text("t_ee_2_d1_r3_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_text_replace("", Text("t_ee_2_d1_r1_5"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_replace("", Text("t_ee_2_d1_r2_5"));
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_text_replace("", Text("t_ee_2_d1_r3_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_replace("", Text("t_ee_2_d1_r1_6"));
	} 
	if(global.t_ee_2_d1 == 2){
		vngen_do_continue(); 
	} 
	if(global.t_ee_2_d1 == 3){
		vngen_text_replace("", Text("t_ee_2_d1_r3_6"));
	} 
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_ee_2_12"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_TierAttack")) {
	vngen_option_create_transformed("opt_Beeindrucken",	Text("t_ee_2_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Weglaufen",	Text("t_ee_2_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_TierAttack", true)) {
      case "opt_Beeindrucken":	global.t_ee_2_d2 = 1;	setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
      case "opt_Weglaufen":	global.t_ee_2_d2 = 2;		setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
   }	
}

if(vngen_event()){
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.t_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend_grey, scale_y);
		vngen_text_create("", Text("t_ee_2_d2_r1_0"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_wuetend_grey, scale_y);
		vngen_text_create("", Text("t_ee_2_d2_r2_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_text_replace("", Text("t_ee_2_d2_r1_0_b"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_text_replace("", Text("t_ee_2_d2_r2_0_b"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d2_r1_1"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d2_r2_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_ee_2_d2_r1_2"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d2_r2_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_text_replace("", Text("t_ee_2_d2_r1_3"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d2_r2_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_text_replace("", Text("t_ee_2_d2_r1_4"));
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d2_r2_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d2_r2_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d2_r2_6"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d2_r2_7"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_text_replace("", Text("t_ee_2_d2_r2_8"));
	} 
}
if(vngen_event()){
	if(global.t_ee_2_d2 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d2 == 2){
		vngen_text_replace("", Text("t_ee_2_d2_r2_9"));
	} 
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
   vngen_text_replace("", Text("t_ee_2_13"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_TierHunger")) {
	vngen_option_create_transformed("opt_FastFood",	Text("t_ee_2_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Nahrung",	Text("t_ee_2_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_TierHunger", true)) {
      case "opt_FastFood":	global.t_ee_2_d3 = 1; break;
      case "opt_Nahrung":	global.t_ee_2_d3 = 2; break;
   }	
}

if(vngen_event()){
	vngen_textbox_create(spr_textbox_Insel);
	
	vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_idle_grey, scale_y);
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_create("", Text("t_ee_2_d3_r1_0"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_create("Chad", Text("t_ee_2_d3_r2_0"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_0_b"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d3_r1_1"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r2_1"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_2"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r2_2"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d3_r1_3"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r2_3"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_4"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d3_r2_4"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r1_5"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r2_5"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_6"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d3_r2_6"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_6_b"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_7"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r2_7"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_text_replace("", Text("t_ee_2_d3_r2_7_b"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_8"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_text_replace("", Text("t_ee_2_d3_r2_8"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_8_b"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_9"));
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_maulwurfskatze_frisst_nudeln, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_maulwurfskatze_frisst_nudeln_midi);
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r2_9"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r1_10"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("t_ee_2_d3_r2_10"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_11"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_maulwurfswolf_gluecklich, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r2_11"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_do_continue();
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_text_replace("", Text("t_ee_2_d3_r2_11_b"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r1_12"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_char_change_sprite(Text("t_ee_2_maulwurfswolf"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_maulwurfskatze_frisst_kristalle, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_maulwurfskatze_frisst_kristalle_midi);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r2_12"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_text_replace("", Text("t_ee_2_d3_r1_13"));
	} 
	if(global.t_ee_2_d3 == 2){
		
		vngen_text_replace("", Text("t_ee_2_d3_r2_13"));
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_text_replace("", Text("t_ee_2_d3_r1_13_b"));
	} 
	if(global.t_ee_2_d3 == 2){
		vngen_do_continue();
	} 
}

if(vngen_event()){
	if(global.t_ee_2_d3 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_text_replace("Suzan", Text("t_ee_2_d3_r1_14"));
	} 
	if(global.t_ee_2_d3 == 2){
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