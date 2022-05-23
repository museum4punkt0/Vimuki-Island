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
	vngen_char_create_ext("Mitte", spr_scholle_idle_grey, 650, 0, scale_y);
	
	vngen_text_create("", Text("s_se_2_blume_0")); 
}

if (vngen_event()) {
	global.strandblumentask = true; 
	vngen_text_replace("", Text("s_se_2_blume_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_2"));
}

if (vngen_event()) {
   vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y);
   vngen_text_replace("", Text("s_se_2_blume_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_blume_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("s_se_2_blume_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("Chad", Text("s_se_2_blume_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_blume_9"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_2_bluemen_1")) {
		vngen_option_create_transformed("opt_blatt"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_blaettrige_pflanzen, spr_icon_blaettrige_pflanzen_active, spr_icon_blaettrige_pflanzen_active);
		vngen_option_create_transformed("opt_farn",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_farnige_pflanzen, spr_icon_farnige_pflanzen_active, spr_icon_farnige_pflanzen_active);
		vngen_option_create_transformed("opt_schwimm",	" ",-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_seerose, spr_icon_seerose_active, spr_icon_seerose_active);
	}
   
	switch (vngen_get_option("strand_2_bluemen_1", true)) {
	    case "opt_blatt":	global.s_se_2_blume_d1 = 1; global.strandtask++; break;
	    case "opt_farn":	global.s_se_2_blume_d1 = 2; global.strandtask++; break;
	    case "opt_schwimm":	global.s_se_2_blume_d1 = 3; global.strandtask++; break;
	}	
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ella_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_meerjungfrau_freundlich_01, 1, 0, false, false);
		vngen_text_create("Ella", Text("s_se_2_blume_d1_r1_0"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_corella_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_meerjungfrau_arrogant_01, 1, 0, false, false);
		vngen_text_create("Corella", Text("s_se_2_blume_d1_r2_0"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_brutella_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_meerjungfrau_brutella_01, 1, 0, false, false);
		vngen_text_create("Brutella", Text("s_se_2_blume_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ella_idle_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r1_1"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_corella_idle_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r2_1"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_text_replace("Brutella", Text("s_se_2_blume_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_text_replace("", Text("s_se_2_blume_d1_r1_2"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_text_replace("", Text("s_se_2_blume_d1_r2_2"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_brutella_idle_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_text_replace("", Text("s_se_2_blume_d1_r1_3"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_text_replace("Suzan", Text("s_se_2_blume_d1_r2_3"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_text_replace("", Text("s_se_2_blume_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_blume_d1_r1_4"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_text_replace("Chad", Text("s_se_2_blume_d1_r2_4"));
	}
	if(global.s_se_2_blume_d1 ==	3){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_blume_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_text_replace("Suzan", Text("s_se_2_blume_d1_r1_5"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_text_replace("Suzan", Text("s_se_2_blume_d1_r2_5"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("s_se_2_blume_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("Chad", Text("s_se_2_blume_d1_r1_6"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r2_6"));
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_text_replace("Suzan", Text("s_se_2_blume_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r1_7"));
	}
	if(global.s_se_2_blume_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("", Text("s_se_2_blume_d1_r3_7"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if(global.s_se_2_blume_d1 == 1){
		if (vngen_option("strand_2_bluemen_2")) {
			vngen_option_create_transformed("opt_zwerg"," ",  -(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_zwergwasserkelche, spr_icon_zwergwasserkelch_active, spr_icon_zwergwasserkelch_active);
			vngen_option_create_transformed("opt_stau",	" ",	(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_staurogynen, spr_icon_staurogynen_active, spr_icon_staurogynen_active);
		}
	
		switch (vngen_get_option("strand_2_bluemen_2", true)) {
			case "opt_zwerg":	global.s_se_2_blume_d2 = 2; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
			case "opt_stau":	global.s_se_2_blume_d2 = 1; break;
		}	
	}
	if(global.s_se_2_blume_d1 == 2){
		if (vngen_option("strand_2_bluemen_4")) {
			vngen_option_create_transformed("opt_fried"," ",  -(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_friedhofsfarn, spr_icon_friedhofsfarn_active, spr_icon_friedhofsfarn_active);
			vngen_option_create_transformed("opt_seide"," ",	(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_seidenfarn, spr_icon_seidenfarn_active, spr_icon_seidenfarn_active);
		}
	
		switch (vngen_get_option("strand_2_bluemen_4", true)) {
			case "opt_fried":	global.s_se_2_blume_d4 = 1; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
			case "opt_seide":	global.s_se_2_blume_d4 = 2; break;
		}	
	}
	if(global.s_se_2_blume_d1 == 3){
		if (vngen_option("strand_2_bluemen_6")) {
			vngen_option_create_transformed("opt_muschel"," ",  -(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_muschelblume, spr_icon_muschelblume_active, spr_icon_muschelblume_active);
			vngen_option_create_transformed("opt_frosch",	" ", (camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_froschkraut, spr_icon_froschkraut_active, spr_icon_froschkraut_active);
		}
	
		switch (vngen_get_option("strand_2_bluemen_6", true)) {
			case "opt_muschel":	global.s_se_2_blume_d6 = 1; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
			case "opt_frosch":	global.s_se_2_blume_d6 = 2; break;
		}	
	}
}


if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d2_r1_0"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d2_r2_0"));
	}
	if(global.s_se_2_blume_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d4_r1_0"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d4_r2_0"));
	}
	if(global.s_se_2_blume_d6 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d6_r1_0"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_brutella_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_2_blume_d6_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_text_replace("", Text("s_se_2_blume_d2_r1_1"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_text_replace("", Text("s_se_2_blume_d2_r2_1"));
	}
	if(global.s_se_2_blume_d4 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d4_r1_1"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_text_replace("", Text("s_se_2_blume_d4_r2_1"));
	}
	if(global.s_se_2_blume_d6 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d6_r1_1"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Mitte", spr_brutella_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_meerjungfrau_brutella_02, 1, 0, false, false);
		vngen_text_replace("Brutella", Text("s_se_2_blume_d6_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_2_blume_d2_r1_2"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d2_r2_2"));
	}
	if(global.s_se_2_blume_d4 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d4_r1_2"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d4_r2_2"));
	}
	if(global.s_se_2_blume_d6 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d6_r1_2"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_text_replace("Brutella", Text("s_se_2_blume_d6_r2_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d2_r1_3"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_blume_d2_r2_3"));
	}
	if(global.s_se_2_blume_d4 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d4_r1_3"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_2_blume_d4_r2_3"));
	}
	if(global.s_se_2_blume_d6 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d6_r1_3"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Mitte", spr_brutella_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d6_r2_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_blume_d2_r1_4"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d2_r2_4"));
	}
	if(global.s_se_2_blume_d4 == 1){
		vngen_text_replace("", Text("s_se_2_blume_d4_r1_4"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_blume_d4_r2_4"));
	}
	if(global.s_se_2_blume_d6 == 1){
		room_goto(Strand_SE_2_Ende);
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Mitte", spr_brutella_idle, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_meerjungfrau_brutella_01, 1, 0, false, false);
		vngen_text_replace("Brutella", Text("s_se_2_blume_d6_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d2_r1_5"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_2_blume_d2_r2_5"));
	}
	if(global.s_se_2_blume_d4 == 1){
		room_goto(Strand_SE_2_Ende);
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d4_r2_5"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Mitte", spr_brutella_idle_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d6_r2_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d2_r1_6"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d2_r2_6"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_text_replace("", Text("s_se_2_blume_d4_r2_6"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_2_blume_d6_r2_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d2_r1_7"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_2_blume_d2_r2_7"));
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d4_r2_7"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_blume_d6_r2_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d2_r1_8"));
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("s_se_2_blume_d4_r2_8"));
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_blume_d6_r2_8"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 1){
		room_goto(Strand_SE_2_Ende);
	}
	if(global.s_se_2_blume_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_blume_d6_r2_9"));
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d4 == 2){
		vngen_do_continue();
	}
	if(global.s_se_2_blume_d6 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_blume_d6_r2_10"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();
	if(global.s_se_2_blume_d2 == 2){
		if (vngen_option("strand_2_bluemen_3")) {
			vngen_option_create_transformed("opt_rucksack",	Text("s_se_2_blume_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_sonne",	Text("s_se_2_blume_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_bluemen_3", true)) {
			case "opt_rucksack":	global.s_se_2_blume_d3 = 1; setSuzanValue(1); setChadValue(1); setOwnValue(1);break;
			case "opt_sonne":		global.s_se_2_blume_d3 = 2; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();break;
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if (vngen_option("strand_2_bluemen_5")) {
			vngen_option_create_transformed("opt_schnur",	Text("s_se_2_blume_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_algen",	Text("s_se_2_blume_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_bluemen_5", true)) {
			case "opt_schnur":	global.s_se_2_blume_d5 = 1; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();break;
			case "opt_algen":	global.s_se_2_blume_d5 = 2; setSuzanValue(1); setChadValue(1); setOwnValue(1);break;
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if (vngen_option("strand_2_bluemen_7")) {
			vngen_option_create_transformed("opt_chilli",	Text("s_se_2_blume_d7_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_deo",		Text("s_se_2_blume_d7_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_2_bluemen_7", true)) {
			case "opt_chilli":	global.s_se_2_blume_d7 = 1; global.s_se_2_blume_gut = true; global.s_se_2_hochzeit_value++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();break;
			case "opt_deo":		global.s_se_2_blume_d7 = 2; setSuzanValue(1); setChadValue(1); setOwnValue(1);break;
		}
	}
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d3_r1_0"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d3_r2_0"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d5_r1_0"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d5_r2_0"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d7_r1_0"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("s_se_2_blume_d7_r2_0"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_1"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d3_r2_1"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d5_r1_1"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d5_r2_1"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d7_r1_1"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d7_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_2"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r2_2"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d5_r1_2"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d5_r2_2"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r1_2"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_2_blume_d3_r1_3"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r2_3"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d5_r1_3"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y);
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r2_3"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r1_3"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_2_blume_d3_r1_4"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d3_r2_4"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r1_4"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d5_r2_4"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r1_4"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_2_blume_d3_r1_5"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r2_5"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r1_5"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r2_5"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r1_5"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_se_2_blume_d3_r1_6"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d3_r2_6"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d5_r1_6"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r2_6"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r1_6"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d7_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_2_blume_d3_r1_7"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r2_7"));
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_gluecklich, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d5_r1_7"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d5_r2_7"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r1_7"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d7_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_8"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d5_r1_8"));
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d5_r2_8"));
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d7_r1_8"));
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_text_replace("", Text("s_se_2_blume_d7_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_9"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_10"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_verbluefft, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d3_r1_11"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("s_se_2_blume_d3_r1_12"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_scholle_idle_grey, scale_y); 
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_13"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_14"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.s_se_2_blume_d2 == 2){
		if(global.s_se_2_blume_d3 == 1){
			vngen_text_replace("", Text("s_se_2_blume_d3_r1_15"));
		}
		if(global.s_se_2_blume_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d4 == 2){
		if(global.s_se_2_blume_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d5 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_2_blume_d6 == 2){
		if(global.s_se_2_blume_d7 == 1){
			vngen_do_continue();
		}
		if(global.s_se_2_blume_d7 == 2){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	room_goto(Strand_SE_2_Ende);
}

//End VNgen script
vngen_event_reset_target();