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
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Mitte", spr_empty, 600, 0, scale_y);
	vngen_text_create("", Text("s_se_2_kleid_0")); 
}

if (vngen_event()) {
	global.strandkleidtask = true; 
   vngen_text_replace("", Text("s_se_2_kleid_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_2_kleid_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("s_se_2_kleid_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("s_se_2_kleid_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_kleid_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_kleid_6"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2_kleid_1")) {
		vngen_option_create_transformed("opt_Algen"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_gewaechs, spr_icon_gewaechs_active, spr_icon_gewaechs_active);
		vngen_option_create_transformed("opt_Meerschaum"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_meerschaum, spr_icon_meerschaum_active, spr_icon_meerschaum_active);
		vngen_option_create_transformed("opt_Muscheln",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_muscheln, spr_icon_muscheln_active, spr_icon_muscheln_active);
		if(global.fischernetz){
			vngen_option_create_transformed("opt_Netz",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_carbonnetz, spr_icon_carbonnetz_active, spr_icon_carbonnetz_active);
		}
	}
   
	switch (vngen_get_option("strand_2_kleid_1", true)) {
	    case "opt_Algen":		global.s_se_2_kleid_d1 = 1; global.strandtask++; break;
	    case "opt_Meerschaum":	global.s_se_2_kleid_d1 = 2; global.strandtask++; break;
	    case "opt_Muscheln":	global.s_se_2_kleid_d1 = 3; global.strandtask++; break;
	    case "opt_Netz":		global.s_se_2_kleid_d1 = 4; global.strandtask++; global.netzused = true; global.s_se_2_kleid_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	}	
	
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_kleid_d1_r1_0"));
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_kleid_d1_r2_0"));
	}
	if(global.s_se_2_kleid_d1 ==	3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_kleid_d1_r3_0"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_kleid_d1_r4_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r1_1"));
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r2_1"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r3_1"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r1_2"));
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r2_2"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r3_2"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r4_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r1_3"));
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_d1_r2_3"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r3_3"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r1_4"));
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r2_4"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r3_4"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r2_5"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r3_5"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r2_6"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r3_6"));
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("s_se_2_kleid_d1_r2_7"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_kleid_d1_r4_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r2_8"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y );
		vngen_text_replace("Chad", Text("s_se_2_kleid_d1_r4_8"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_text_replace("", Text("s_se_2_kleid_d1_r2_9"));
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y );
		vngen_text_replace("", Text("s_se_2_kleid_d1_r4_9"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();
		if (vngen_option("strand_2_kleid_2")) {
			vngen_option_create_transformed("opt_trocken",	Text("s_se_2_kleid_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_nass",		Text("s_se_2_kleid_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_kleid_2", true)) {
			case "opt_nass":	global.s_se_2_kleid_d2 = 2; global.s_se_2_kleid_gut = true; global.s_se_2_hochzeit_value++; break;
			case "opt_trocken":	global.s_se_2_kleid_d2 = 1; break;
		}	
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();
		if (vngen_option("strand_2_kleid_3")) {
			vngen_option_create_transformed("opt_sand",	Text("s_se_2_kleid_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_holz",	Text("s_se_2_kleid_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_kleid_3", true)) {
			case "opt_sand":	global.s_se_2_kleid_d3 = 1; global.s_se_2_kleid_gut = true; global.s_se_2_hochzeit_value++; break;
			case "opt_holz":	global.s_se_2_kleid_d3 = 2; break;
		}	
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();
		if (vngen_option("strand_2_kleid_4")) {
			vngen_option_create_transformed("opt_palme",	Text("s_se_2_kleid_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_muschel",	Text("s_se_2_kleid_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_kleid_4", true)) {
			case "opt_palme":	global.s_se_2_kleid_d4 = 1; global.s_se_2_kleid_gut = true; global.s_se_2_hochzeit_value++; break;
			case "opt_muschel":	global.s_se_2_kleid_d4 = 2; break;
		}	
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_se_2_kleid_d2 == 1){
			vngen_text_create("", Text("s_se_2_kleid_d2_r1_0"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_text_create("", Text("s_se_2_kleid_d2_r2_0"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_se_2_kleid_d3 == 1){
			vngen_text_create("", Text("s_se_2_kleid_d3_r1_0"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_text_create("", Text("s_se_2_kleid_d3_r2_0"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_se_2_kleid_d4 == 1){
			vngen_text_create("", Text("s_se_2_kleid_d4_r1_0"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_text_create("", Text("s_se_2_kleid_d4_r2_0"));
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_1"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d2_r2_1"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_kleid_d3_r1_1"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y );
			vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_se_2_kleid_d3_r2_1"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r1_1"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r2_1"));
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_2"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d2_r2_2"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d3_r1_2"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_se_2_kleid_d3_r2_2"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r1_2"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r2_2"));
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d2_r1_3"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d2_r2_3"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d3_r1_3"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d3_r2_3"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d4_r1_3"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_kleid_d4_r2_3"));
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_4"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y ); 
			vngen_text_replace("Suzan", Text("s_se_2_kleid_d2_r2_4"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d3_r1_4"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d3_r2_4"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y ); 
			vngen_text_replace("Suzan", Text("s_se_2_kleid_d4_r1_4"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r2_4"));
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_5"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d2_r2_5"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d3_r1_5"));
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d3_r2_5"));
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_2_kleid_d4_r1_5"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y );
			vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_se_2_kleid_d2_r1_6"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_text_replace("Chad", Text("s_se_2_kleid_d2_r2_6"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d4_r1_6"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_2_kleid_d2_r1_7"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_2_kleid_d2_r2_7"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d4_r1_7"));
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_8"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_text_replace("", Text("s_se_2_kleid_d2_r2_8"));
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_d1 == 1){
		if(global.s_se_2_kleid_d2 == 1){
			vngen_text_replace("", Text("s_se_2_kleid_d2_r1_9"));
		}
		if(global.s_se_2_kleid_d2 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 2){
		if(global.s_se_2_kleid_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 3){
		if(global.s_se_2_kleid_d4 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_kleid_d4 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_kleid_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_gut)	{
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_gut_0"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_kleid_schlecht_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_gut)	{
		vngen_text_replace("", Text("s_se_2_kleid_gut_1"));
	} else {
		vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_schlecht_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_gut)	{
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_kleid_gut_2"));
	} else {
		vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_kleid_schlecht_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_gut)	{
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_gut_3"));
	} else {
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_kleid_schlecht_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_kleid_gut)	{
		vngen_do_continue();
	} else {
		vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_kleid_schlecht_4"));
	}
}


if (vngen_event()) {
	room_goto(Strand_SE_2_Ende);
}

//End VNgen script
vngen_event_reset_target();