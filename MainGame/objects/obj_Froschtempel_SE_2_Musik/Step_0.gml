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
	vngen_char_create_ext_back("Mitte", spr_empty, 650,0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_text_create("", Text("f_se_2_musik_0")); 
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y );
	global.musiktask = true; 
   vngen_text_replace("", Text("f_se_2_musik_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
   vngen_text_replace("Brekeke", Text("f_se_2_musik_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y );
   vngen_text_replace("", Text("f_se_2_musik_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("Chad", Text("f_se_2_musik_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y );
   vngen_text_replace("Brekeke", Text("f_se_2_musik_5"));
}

if (vngen_event()) {
   vngen_text_replace("Brekeke", Text("f_se_2_musik_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y );
   vngen_text_replace("", Text("f_se_2_musik_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_se_2_musik_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
   vngen_text_replace("Chad", Text("f_se_2_musik_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_2_musik_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
   vngen_text_replace("Suzan", Text("f_se_2_musik_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_se_2_musik_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_musik_13"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_musik_14"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("tempel_2_mu_1")) {
		vngen_option_create_transformed("opt_Metal",	Text("f_se_2_musik_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*90, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Techno",	Text("f_se_2_musik_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Pop",		Text("f_se_2_musik_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*50, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		if(global.anurasbuch){
			vngen_option_create_transformed("opt_Buch",	" ",	 (camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_roboto_standard, spr_icon_richs_buch, spr_icon_richs_buch_active, spr_icon_richs_buch_active);
		}
	}
   
	switch (vngen_get_option("tempel_2_mu_1", true)) {
	    case "opt_Metal":	global.f_se_2_musik_d1 = 1; global.froschtask++; break;
	    case "opt_Techno":	global.f_se_2_musik_d1 = 2; global.froschtask++; global.f_se_2_musik_good = true; global.f_se_party++; break;
	    case "opt_Pop":		global.f_se_2_musik_d1 = 3; global.froschtask++; break;
	    case "opt_Buch":	global.f_se_2_musik_d1 = 4; global.froschtask++; global.anurasbuchUsed = true; global.f_se_2_musik_good = true; global.f_se_party++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();   break;
	}	
	
}

if (vngen_event()) {
	
	 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_text_create("Suzan", Text("f_se_2_musik_d1_r1_0"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("Chad", Text("f_se_2_musik_d1_r2_0"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_2_musik_d1_r3_0"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_2_musik_d1_r4_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r1_1"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r2_1"));
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_1"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r1_2"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_2"));
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r3_2"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r1_3"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r2_3"));
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r3_3"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r1_4"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r2_4"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_4"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r1_5"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r2_5"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r3_5"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r1_6"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_6"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r3_6"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r1_7"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_7"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_7"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r4_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r1_8"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r2_8"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_8"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_d1_r4_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r1_9"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_9"));
	}
	if(global.f_se_2_musik_d1 ==	3){
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_9"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r1_10"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_10"));
	}
	if(global.f_se_2_musik_d1 ==3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_musik_d1_r3_10"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r4_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r1_11"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r2_11"));
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_11"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_11"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_text_replace("", Text("f_se_2_musik_d1_r1_12"));
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r3_12"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_brekeke_lachend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r4_12"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r3_13"));
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r4_13"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("Brekeke", Text("f_se_2_musik_d1_r4_14"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_brekeke_lachend_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_15"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_16"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 3){
		vngen_do_continue();
	}
	if(global.f_se_2_musik_d1 == 4){
		vngen_text_replace("", Text("f_se_2_musik_d1_r4_17"));
	}
}


if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_good_0"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_bad_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_text_replace("", Text("f_se_2_musik_good_1"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_gaecool_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("Gae-cool", Text("f_se_2_musik_bad_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_musik_good_2"));
	} else {
		vngen_char_change_sprite("Mitte", spr_guo_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Guo", Text("f_se_2_musik_bad_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_good_3"));
	} else {
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_musik_bad_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_good_4"));
	} else {
		vngen_text_replace("", Text("f_se_2_musik_bad_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_text_replace("", Text("f_se_2_musik_good_5"));
	} else {
		vngen_text_replace("", Text("f_se_2_musik_bad_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_text_replace("", Text("f_se_2_musik_good_6"));
	} else {
		vngen_text_replace("", Text("f_se_2_musik_bad_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		room_goto(Froschtempel_SE_2_End);
	} else {
		vngen_text_replace("", Text("f_se_2_musik_bad_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_good){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("f_se_2_musik_bad_8"));
	}
}



if (vngen_event()) {
	if(!global.f_se_2_musik_good){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

			if (vngen_option("tempel_2_mu_2")) {
				vngen_option_create_transformed("opt_Schlag",	Text("f_se_2_musik_bad_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
				vngen_option_create_transformed("opt_Swing",	Text("f_se_2_musik_bad_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
	
			switch (vngen_get_option("tempel_2_mu_2", true)) {
			    case "opt_Schlag":	global.f_se_2_musik_d2 = 1;  setSuzanValue(1); setChadValue(1); setOwnValue(1); break;
			    case "opt_Swing":	global.f_se_2_musik_d2 = 2; global.f_se_2_musik_good = true; global.f_se_party++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
			}	
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_create("", Text("f_se_2_musik_bad_d2_r1_0"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_text_create("", Text("f_se_2_musik_bad_d2_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_1"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_2"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r2_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_3"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_lachend, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Brekeke", Text("f_se_2_musik_bad_d2_r2_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_4"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_guo_lachend, scale_y); 
		vngen_text_replace("Guo", Text("f_se_2_musik_bad_d2_r2_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_musik_bad_d2_r1_5"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Hopps", Text("f_se_2_musik_bad_d2_r2_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_guo_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Guo", Text("f_se_2_musik_bad_d2_r1_6"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
		vngen_text_replace("Croak", Text("f_se_2_musik_bad_d2_r2_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Hopps", Text("f_se_2_musik_bad_d2_r1_7"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_lachend_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r2_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("Croak", Text("f_se_2_musik_bad_d2_r1_8"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r2_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_9"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y); 
		vngen_text_replace("Brekeke", Text("f_se_2_musik_bad_d2_r2_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_10"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_11"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle, scale_y); 
		vngen_text_replace("Brekeke", Text("f_se_2_musik_bad_d2_r1_12"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_musik_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_brekeke_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_musik_bad_d2_r1_13"));
	}
	if(global.f_se_2_musik_d2 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	room_goto(Froschtempel_SE_2_End);
}

//End VNgen script
vngen_event_reset_target();