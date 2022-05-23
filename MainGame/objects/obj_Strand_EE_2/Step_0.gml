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
	vngen_char_create_ext_back("Louis", spr_empty, 1200, 50, scale_y);  // Affe
	vngen_char_create_ext_back(Text("s_ee_2_name_moewe"), spr_empty, 600, 50, scale_y);  // Moewen
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_ee_2_0"));
	} else {	
		vngen_text_create("", Text("s_ee_2_0")); 
	}
}

if (vngen_event()) {
   global.strandIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_7"));
   vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y ); 
}

if (vngen_event()) {
   vngen_text_replace("Louis", Text("s_ee_2_8"));
   vngen_char_change_sprite("Louis", spr_grummel_affe_louis_idle, scale_y ); 
   vngen_audio_play_sound("sound", sfx_char_affe_02, 1, 0, false, false);
}

if (vngen_event()) {
   vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_9"));
   vngen_char_change_sprite("Louis", spr_grummel_affe_louis_idle_grey, scale_y ); 
   vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
   vngen_audio_play_sound("sound", sfx_char_moewe, 1, 0, false, false);
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
   vngen_text_replace("", Text("s_ee_2_10"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y ); 
	vngen_char_change_sprite("Louis", spr_empty, scale_y ); 
	vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_moewen")) {
	vngen_option_create_transformed("opt_Freundlich",		Text("s_ee_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Einschuechtern",	Text("s_ee_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Verkleidung",		Text("s_ee_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_moewen", true)) {
      case "opt_Freundlich":		global.s_ee_2_d1 = 1; setSuzanValue(1);  setOwnValue(-1); break;
      case "opt_Einschuechtern":	global.s_ee_2_d1 = 2; setChadValue(1); setOwnValue(1); break;
      case "opt_Verkleidung":		global.s_ee_2_d1 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
    vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_ee_2_d1_r1_0"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_ee_2_d1_r2_0"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
		vngen_text_create("", Text("s_ee_2_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_ee_2_d1_r1_1"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d1_r2_1"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace("", Text("s_ee_2_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_text_replace("Suzan", Text("s_ee_2_d1_r1_1_b"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d1_r1_2"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_2_d1_r2_2"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace("", Text("s_ee_2_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_moewe, 1, 0, false, false);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r1_3"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d1_r2_3"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace("", Text("s_ee_2_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y);
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_2_d1_r1_4"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d1_r2_4"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace("", Text("s_ee_2_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_moewe, 1, 0, false, false);
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r1_5"));
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r2_5"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace("", Text("s_ee_2_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 2){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("s_ee_2_d1_r2_6"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_moewe, 1, 0, false, false);
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 3){
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r3_6_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 2){
		vngen_text_replace("", Text("s_ee_2_d1_r2_7"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 2){
		vngen_text_replace("", Text("s_ee_2_d1_r2_8"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_ee_2_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d1 == 2){
		vngen_text_replace("", Text("s_ee_2_d1_r2_9"));
	}
	if(global.s_ee_2_d1 == 3){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d1_r3_9"));
	}
}


if (vngen_event()) {
	vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
    vngen_text_replace("", Text("s_ee_2_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_11_b"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
   vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_13"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_14"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_2_14_b"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y ); 
	vngen_char_change_sprite("Louis", spr_empty, scale_y ); 
	vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	 //Create options
   if (vngen_option("choice_Hai2")) {
		vngen_option_create_transformed("opt_Deckung",	Text("s_ee_2_d2_o2"),	0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_Trinken",	Text("s_ee_2_d2_o3"),	0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		if(global.regenjacke){
			vngen_option_create_transformed("opt_Jacke",Text("s_ee_2_d2_o1"),	0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Hai2", true)) {
      case "opt_Jacke":		global.s_ee_2_d2 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
      case "opt_Deckung":	global.s_ee_2_d2 = 2; break;
      case "opt_Trinken":	global.s_ee_2_d2 = 3; break;
   } 
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_text_create("", Text("s_ee_2_d2_r1_0"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_text_create("", Text("s_ee_2_d2_r2_0"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_idle_grey, scale_y ); 
		vngen_text_create("Chad", Text("s_ee_2_d2_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_text_replace("", Text("s_ee_2_d2_r1_0_b"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_2_d2_r1_1"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r2_1"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r1_2"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_2"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r3_2"));
	}
}
if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r1_3"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_2_d2_r2_3"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_text_replace("", Text("s_ee_2_d2_r1_4"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_4"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_text_replace("", Text("s_ee_2_d2_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d2_r1_5"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_text_replace("", Text("s_ee_2_d2_r2_5"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_2_d2_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d2_r1_6"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r2_6"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("s_ee_2_d2_r1_7"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_7"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_7"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r1_7_b"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_wuetend, scale_y ); 
		vngen_text_replace(Text("s_ee_2_name_moewe"), Text("s_ee_2_d2_r1_8"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y );
		vngen_text_replace("", Text("s_ee_2_d2_r2_8"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_8"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_8_b"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_8_b"));
	}
}


if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
		vngen_text_replace("", Text("s_ee_2_d2_r1_9"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_text_replace("", Text("s_ee_2_d2_r2_9"));
	}
	if(global.s_ee_2_d2 == 3){
		
		vngen_text_replace("", Text("s_ee_2_d2_r3_9"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
		vngen_char_change_sprite("Dia", spr_dia_drinks_an_bar, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_drinks_an_bar_midi);
		vngen_text_replace("", Text("s_ee_2_d2_r1_10"));
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r2_10"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_10"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_11"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y);
		vngen_text_replace("Suzan", Text("s_ee_2_d2_r3_11"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r2_12"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y);
		vngen_text_replace("Chad", Text("s_ee_2_d2_r3_12"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r2_13"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_13"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
		vngen_char_change_sprite("Dia", spr_dia_fest_ganz_in_weiss, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias( spr_dia_fest_ganz_in_weiss_midi);
		vngen_text_replace("", Text("s_ee_2_d2_r2_14"));
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_moewen_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("s_ee_2_d2_r3_14"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_text_replace("", Text("s_ee_2_d2_r3_14_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_text_replace("", Text("s_ee_2_d2_r3_15"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_text_replace("", Text("s_ee_2_d2_r3_16"));
	}
}

if (vngen_event()) {
	if(global.s_ee_2_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_2_d2 == 3){
		vngen_char_change_sprite(Text("s_ee_2_name_moewe"), spr_empty, scale_y ); 
		vngen_char_change_sprite("Dia", spr_dia_moewen_rocken, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_moewen_rocken_midi);
		vngen_text_replace("", Text("s_ee_2_d2_r3_17"));
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