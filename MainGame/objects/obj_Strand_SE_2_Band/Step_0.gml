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
	vngen_char_create_ext("Mitte", spr_empty,600, 0, scale_y);
	vngen_text_create("", Text("s_se_2_band_0")); 
}

if (vngen_event()) {
	global.strandbandtask = true; 
	vngen_char_change_sprite("Mitte", spr_fangschreckenkrebs_hochzeit_ungehalten, scale_y); 
   vngen_text_replace("Jaques", Text("s_se_2_band_1"));
}

if (vngen_event()) {
   vngen_text_replace("Jaques", Text("s_se_2_band_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
   vngen_text_replace("", Text("s_se_2_band_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_band_4"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2_band_1")) {
		vngen_option_create_transformed("opt_Wal",		" ",	-(camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_wal, spr_icon_wal_active, spr_icon_wal_active);
		vngen_option_create_transformed("opt_Oktopus",	" ",	 (camera_get_view_width(view_camera[0])*0   ), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_oktopus, spr_icon_oktopus_active, spr_icon_oktopus_active);
		vngen_option_create_transformed("opt_Krebs",	" ",	 (camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -3, 0.5, fnt_roboto_standard, spr_icon_krebs, spr_icon_krebs_active, spr_icon_krebs_active);
		vngen_option_create_transformed("opt_Seegurke",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_seegurke, spr_icon_seegurke_active, spr_icon_seegurke_active);
		vngen_option_create_transformed("opt_Qualle",	" ",	-(camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_qualle, spr_icon_qualle_active, spr_icon_qualle_active);
		vngen_option_create_transformed("opt_Shrimp",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_shrimp, spr_icon_shrimp_active, spr_icon_shrimp_active);
		vngen_option_create_transformed("opt_Delfin",	" ",	 (camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_delphin, spr_icon_delphin_active, spr_icon_delphin_active);
		
	}
   
	switch (vngen_get_option("strand_2_band_1", true)) {
	    case "opt_Wal":			global.s_se_2_band_d1a = 1; global.strandtask++; global.s_se_2_band_value = global.s_se_2_band_value + 1;  break;
	    case "opt_Oktopus":		global.s_se_2_band_d1a = 2; global.strandtask++; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Krebs":		global.s_se_2_band_d1a = 3; global.strandtask++; break;
	    case "opt_Seegurke":	global.s_se_2_band_d1a = 4; global.strandtask++; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Qualle":		global.s_se_2_band_d1a = 5; global.strandtask++; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Shrimp":		global.s_se_2_band_d1a = 6; global.strandtask++; break;
	    case "opt_Delfin":		global.s_se_2_band_d1a = 7; global.strandtask++; break;
	}	
	
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_band_d1a == 1){
		vngen_char_change_sprite("Mitte", spr_wal_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_orgel, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r1_0"));
	}
	if(global.s_se_2_band_d1a == 2){
		vngen_char_change_sprite("Mitte", spr_oktopus_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_drums, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r2_0"));
	}
	if(global.s_se_2_band_d1a ==	3){
		vngen_char_change_sprite("Mitte", spr_kreba_hochzeit_idle, scale_y); 
		vngen_text_create("", Text("s_se_2_band_d1_r3_0"));
	}
	if(global.s_se_2_band_d1a == 4){
		vngen_char_change_sprite("Mitte", spr_seegurke_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_seegurke_vocals, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r4_0"));
	}
	if(global.s_se_2_band_d1a == 5){
		vngen_char_change_sprite("Mitte", spr_qualle_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_keyboard, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r5_0"));
	}
	if(global.s_se_2_band_d1a == 6){
		vngen_char_change_sprite("Mitte", spr_shrimp_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_gitarre, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r6_0"));
	}
	if(global.s_se_2_band_d1a == 7){
		vngen_char_change_sprite("Mitte", spr_delfin_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_delfin, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r7_0"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1a == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_1"));
	}
	if(global.s_se_2_band_d1a == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_1"));
	}
	if(global.s_se_2_band_d1a == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_1"));
	}
	if(global.s_se_2_band_d1a == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_1"));
	}
	if(global.s_se_2_band_d1a == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_1"));
	}
	if(global.s_se_2_band_d1a == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_1"));
	}
	if(global.s_se_2_band_d1a == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_1"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1a == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_2"));
	}
	if(global.s_se_2_band_d1a == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_2"));
	}
	if(global.s_se_2_band_d1a == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_2"));
	}
	if(global.s_se_2_band_d1a == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_2"));
	}
	if(global.s_se_2_band_d1a == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_2"));
	}
	if(global.s_se_2_band_d1a == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_2"));
	}
	if(global.s_se_2_band_d1a == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_2"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1a == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_3"));
	}
	if(global.s_se_2_band_d1a == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_3"));
	}
	if(global.s_se_2_band_d1a == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_3"));
	}
	if(global.s_se_2_band_d1a == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_3"));
	}
	if(global.s_se_2_band_d1a == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_3"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1a == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 4){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1a == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_4"));
	}
	if(global.s_se_2_band_d1a == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_4"));
	}
	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2_band_1b")) {
		if(global.s_se_2_band_d1a != 1){
			vngen_option_create_transformed("opt_Wal",		" ",	-(camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_wal, spr_icon_wal_active, spr_icon_wal_active);
		}
		if(global.s_se_2_band_d1a != 2){
			vngen_option_create_transformed("opt_Oktopus",	" ",	 (camera_get_view_width(view_camera[0])*0   ), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_oktopus, spr_icon_oktopus_active, spr_icon_oktopus_active);
		}
		if(global.s_se_2_band_d1a != 3){
			vngen_option_create_transformed("opt_Krebs",	" ",	 (camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -3, 0.5, fnt_roboto_standard, spr_icon_krebs, spr_icon_krebs_active, spr_icon_krebs_active);
		}
		if(global.s_se_2_band_d1a != 4){
			vngen_option_create_transformed("opt_Seegurke",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_seegurke, spr_icon_seegurke_active, spr_icon_seegurke_active);
		}
		if(global.s_se_2_band_d1a != 5){
			vngen_option_create_transformed("opt_Qualle",	" ",	-(camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_qualle, spr_icon_qualle_active, spr_icon_qualle_active);
		}
		if(global.s_se_2_band_d1a != 6){
			vngen_option_create_transformed("opt_Shrimp",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_shrimp, spr_icon_shrimp_active, spr_icon_shrimp_active);
		}
		if(global.s_se_2_band_d1a != 7){
			vngen_option_create_transformed("opt_Delfin",	" ",	 (camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_delphin, spr_icon_delphin_active, spr_icon_delphin_active);
		}
	}
   
	switch (vngen_get_option("strand_2_band_1b", true)) {
	    case "opt_Wal":			global.s_se_2_band_d1b = 1; global.s_se_2_band_value = global.s_se_2_band_value + 1;  break;
	    case "opt_Oktopus":		global.s_se_2_band_d1b = 2; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Krebs":		global.s_se_2_band_d1b = 3; break;
	    case "opt_Seegurke":	global.s_se_2_band_d1b = 4; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Qualle":		global.s_se_2_band_d1b = 5; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Shrimp":		global.s_se_2_band_d1b = 6; break;
	    case "opt_Delfin":		global.s_se_2_band_d1b = 7; break;
	}	
	
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_band_d1b == 1){
		vngen_char_change_sprite("Mitte", spr_wal_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_orgel, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r1_0"));
	}
	if(global.s_se_2_band_d1b == 2){
		vngen_char_change_sprite("Mitte", spr_oktopus_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_drums, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r2_0"));
	}
	if(global.s_se_2_band_d1b ==	3){
		vngen_char_change_sprite("Mitte", spr_kreba_hochzeit_idle, scale_y); 
		vngen_text_create("", Text("s_se_2_band_d1_r3_0"));
	}
	if(global.s_se_2_band_d1b == 4){
		vngen_char_change_sprite("Mitte", spr_seegurke_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_seegurke_vocals, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r4_0"));
	}
	if(global.s_se_2_band_d1b == 5){
		vngen_char_change_sprite("Mitte", spr_qualle_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_keyboard, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r5_0"));
	}
	if(global.s_se_2_band_d1b == 6){
		vngen_char_change_sprite("Mitte", spr_shrimp_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_gitarre, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r6_0"));
	}
	if(global.s_se_2_band_d1b == 7){
		vngen_char_change_sprite("Mitte", spr_delfin_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_delfin, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r7_0"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1b == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_1"));
	}
	if(global.s_se_2_band_d1b == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_1"));
	}
	if(global.s_se_2_band_d1b == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_1"));
	}
	if(global.s_se_2_band_d1b == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_1"));
	}
	if(global.s_se_2_band_d1b == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_1"));
	}
	if(global.s_se_2_band_d1b == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_1"));
	}
	if(global.s_se_2_band_d1b == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_1"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1b == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_2"));
	}
	if(global.s_se_2_band_d1b == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_2"));
	}
	if(global.s_se_2_band_d1b == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_2"));
	}
	if(global.s_se_2_band_d1b == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_2"));
	}
	if(global.s_se_2_band_d1b == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_2"));
	}
	if(global.s_se_2_band_d1b == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_2"));
	}
	if(global.s_se_2_band_d1b == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_2"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1b == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_3"));
	}
	if(global.s_se_2_band_d1b == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_3"));
	}
	if(global.s_se_2_band_d1b == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_3"));
	}
	if(global.s_se_2_band_d1b == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_3"));
	}
	if(global.s_se_2_band_d1b == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_3"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1b == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 4){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1b == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_4"));
	}
	if(global.s_se_2_band_d1b == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_4"));
	}
	
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2_band_1c")) {
		if(global.s_se_2_band_d1a != 1 && global.s_se_2_band_d1b != 1){
			vngen_option_create_transformed("opt_Wal",		" ",	-(camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_wal, spr_icon_wal_active, spr_icon_wal_active);
		}
		if(global.s_se_2_band_d1a != 2 && global.s_se_2_band_d1b != 2){
			vngen_option_create_transformed("opt_Oktopus",	" ",	 (camera_get_view_width(view_camera[0])*0   ), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_oktopus, spr_icon_oktopus_active, spr_icon_oktopus_active);
		}
		if(global.s_se_2_band_d1a != 3 && global.s_se_2_band_d1b != 3){
			vngen_option_create_transformed("opt_Krebs",	" ",	 (camera_get_view_width(view_camera[0])*0.25), -(camera_get_view_height(view_camera[0])/100)*75, -3, 0.5, fnt_roboto_standard, spr_icon_krebs, spr_icon_krebs_active, spr_icon_krebs_active);
		}
		if(global.s_se_2_band_d1a != 4 && global.s_se_2_band_d1b != 4){
			vngen_option_create_transformed("opt_Seegurke",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_seegurke, spr_icon_seegurke_active, spr_icon_seegurke_active);
		}
		if(global.s_se_2_band_d1a != 5 && global.s_se_2_band_d1b != 5){
			vngen_option_create_transformed("opt_Qualle",	" ",	-(camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_qualle, spr_icon_qualle_active, spr_icon_qualle_active);
		}
		if(global.s_se_2_band_d1a != 6 && global.s_se_2_band_d1b != 6){
			vngen_option_create_transformed("opt_Shrimp",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_shrimp, spr_icon_shrimp_active, spr_icon_shrimp_active);
		}
		if(global.s_se_2_band_d1a != 7 && global.s_se_2_band_d1b != 7){
			vngen_option_create_transformed("opt_Delfin",	" ",	 (camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_delphin, spr_icon_delphin_active, spr_icon_delphin_active);
		}
	}
   
	switch (vngen_get_option("strand_2_band_1c", true)) {
	    case "opt_Wal":			global.s_se_2_band_d1c = 1; global.s_se_2_band_value = global.s_se_2_band_value + 1;  break;
	    case "opt_Oktopus":		global.s_se_2_band_d1c = 2; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Krebs":		global.s_se_2_band_d1c = 3; break;
	    case "opt_Seegurke":	global.s_se_2_band_d1c = 4; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Qualle":		global.s_se_2_band_d1c = 5; global.s_se_2_band_value = global.s_se_2_band_value + 1; break;
	    case "opt_Shrimp":		global.s_se_2_band_d1c = 6; break;
	    case "opt_Delfin":		global.s_se_2_band_d1c = 7; break;
	}	
	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_band_d1c == 1){
		vngen_char_change_sprite("Mitte", spr_wal_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_orgel, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r1_0"));
	}
	if(global.s_se_2_band_d1c == 2){
		vngen_char_change_sprite("Mitte", spr_oktopus_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_drums, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r2_0"));
	}
	if(global.s_se_2_band_d1c ==	3){
		vngen_char_change_sprite("Mitte", spr_kreba_hochzeit_idle, scale_y); 
		vngen_text_create("", Text("s_se_2_band_d1_r3_0"));
	}
	if(global.s_se_2_band_d1c == 4){
		vngen_char_change_sprite("Mitte", spr_seegurke_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_seegurke_vocals, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r4_0"));
	}
	if(global.s_se_2_band_d1c == 5){
		vngen_char_change_sprite("Mitte", spr_qualle_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_keyboard, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r5_0"));
	}
	if(global.s_se_2_band_d1c == 6){
		vngen_char_change_sprite("Mitte", spr_shrimp_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_band_gitarre, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r6_0"));
	}
	if(global.s_se_2_band_d1c == 7){
		vngen_char_change_sprite("Mitte", spr_delfin_hochzeit_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_delfin, 1, 0, false, false);
		vngen_text_create("", Text("s_se_2_band_d1_r7_0"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1c == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_1"));
	}
	if(global.s_se_2_band_d1c == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_1"));
	}
	if(global.s_se_2_band_d1c == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_1"));
	}
	if(global.s_se_2_band_d1c == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_1"));
	}
	if(global.s_se_2_band_d1c == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_1"));
	}
	if(global.s_se_2_band_d1c == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_1"));
	}
	if(global.s_se_2_band_d1c == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_1"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1c == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_2"));
	}
	if(global.s_se_2_band_d1c == 2){
		vngen_text_replace("", Text("s_se_2_band_d1_r2_2"));
	}
	if(global.s_se_2_band_d1c == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_2"));
	}
	if(global.s_se_2_band_d1c == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_2"));
	}
	if(global.s_se_2_band_d1c == 5){
		vngen_text_replace("", Text("s_se_2_band_d1_r5_2"));
	}
	if(global.s_se_2_band_d1c == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_2"));
	}
	if(global.s_se_2_band_d1c == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_2"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1c == 1){
		vngen_text_replace("", Text("s_se_2_band_d1_r1_3"));
	}
	if(global.s_se_2_band_d1c == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 3){
		vngen_text_replace("", Text("s_se_2_band_d1_r3_3"));
	}
	if(global.s_se_2_band_d1c == 4){
		vngen_text_replace("", Text("s_se_2_band_d1_r4_3"));
	}
	if(global.s_se_2_band_d1c == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_3"));
	}
	if(global.s_se_2_band_d1c == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_3"));
	}
	
}

if (vngen_event()) {
	if(global.s_se_2_band_d1c == 1){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 3){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 4){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 5){
		vngen_do_continue();
	}
	if(global.s_se_2_band_d1c == 6){
		vngen_text_replace("", Text("s_se_2_band_d1_r6_4"));
	}
	if(global.s_se_2_band_d1c == 7){
		vngen_text_replace("", Text("s_se_2_band_d1_r7_4"));
	}
}


if (vngen_event()) {
	
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("s_se_2_band_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
   vngen_text_replace("Chad", Text("s_se_2_band_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_2_band_7"));
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	if(global.s_se_2_band_value >= 2){
		global.s_se_2_band_gut = true; 
		 vngen_text_replace("", Text("s_se_2_band_erfolg_0"));
	} else {
		 vngen_text_replace("", Text("s_se_2_band_fail_0"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_text_replace("", Text("s_se_2_band_erfolg_1"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		 vngen_text_replace("", Text("s_se_2_band_fail_1"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
		 vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		 vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_erfolg_2"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		 vngen_text_replace("Chad", Text("s_se_2_band_fail_2"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		 vngen_text_replace("", Text("s_se_2_band_erfolg_3"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		 vngen_text_replace("Suzan", Text("s_se_2_band_fail_3"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_text_replace("", Text("s_se_2_band_erfolg_4"));
	} else {
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		 vngen_text_replace("", Text("s_se_2_band_fail_4"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_text_replace("", Text("s_se_2_band_erfolg_5"));
	} else {
		 vngen_text_replace("", Text("s_se_2_band_fail_5"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_text_replace("", Text("s_se_2_band_erfolg_6"));
	} else {
		 vngen_text_replace("", Text("s_se_2_band_fail_6"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		 vngen_text_replace("", Text("s_se_2_band_erfolg_7"));
	} else {
		 vngen_text_replace("", Text("s_se_2_band_fail_7"));
	}
}

if(vngen_event()){
	if(global.s_se_2_band_value >= 2){
		global.s_se_2_hochzeit_value++; 
		room_goto(Strand_SE_2_Ende);
	} else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.s_se_2_band_value < 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("strand_2_band_2")) {
			vngen_option_create_transformed("opt_suzan",		" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_suzan_ja, spr_icon_suzan_ja_active, spr_icon_suzan_ja_active);
			vngen_option_create_transformed("opt_stil",	" ",	 (camera_get_view_width(view_camera[0])*0.15   ), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_suzan_nein, spr_icon_suzan_nein_active, spr_icon_suzan_nein_active);
		}
	
		switch (vngen_get_option("strand_2_band_2", true)) {
			case "opt_suzan":	global.s_se_2_band_d2 = 1; global.s_se_2_band_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setOwnValueBonus();break;
			case "opt_stil":	global.s_se_2_band_d2 = 2; break;
		}	
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_band_fail_d_r1_0"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_band_fail_d_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_text_replace("", Text("s_se_2_band_fail_d_r1_1"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_band_fail_d_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_2_band_fail_d_r1_2"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_fail_d_r2_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_band_fail_d_r1_3"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_band_fail_d_r2_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_text_replace("", Text("s_se_2_band_fail_d_r1_4"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_band_fail_d_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_band_fail_d_r1_5"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_fail_d_r2_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_2_band_fail_d_r1_6"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_fail_d_r2_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y ); 
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_fail_d_r1_7"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_band_fail_d_r2_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_band_d2 == 1){
		
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_2_band_fail_d_r1_8"));
	}
	if(global.s_se_2_band_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_band_fail_d_r2_8"));
	}
}

if (vngen_event()) {
	room_goto(Strand_SE_2_Ende);
}

//End VNgen script
vngen_event_reset_target();