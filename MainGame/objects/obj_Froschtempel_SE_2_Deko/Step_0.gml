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
	vngen_char_create_ext_back("Mitte", spr_ribbaeh_lachend_grey, 600, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_gluecklich_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	
	vngen_text_create("", Text("f_se_2_deko_0")); 
}

if (vngen_event()) {
	
	global.dekotask = true; 
   vngen_text_replace("", Text("f_se_2_deko_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Ribbit", Text("f_se_2_deko_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace("Ribbäh", Text("f_se_2_deko_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y );
   vngen_text_replace("", Text("f_se_2_deko_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_deko_10"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("tempel_2_de_1")) {
		vngen_option_create_transformed("opt_Ballon"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_ballon, spr_icon_ballon_active, spr_icon_ballon_active);
		vngen_option_create_transformed("opt_Seerosen",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_seerose, spr_icon_seerose_active, spr_icon_seerose_active);
		vngen_option_create_transformed("opt_Steine",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_steine, spr_icon_steine_active, spr_icon_steine_active);
		if(global.anurasbuch){
			vngen_option_create_transformed("opt_Buch",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_richs_buch, spr_icon_richs_buch_active, spr_icon_richs_buch_active);
		}
	}
   
	switch (vngen_get_option("tempel_2_de_1", true)) {
	    case "opt_Ballon":		global.f_se_2_deko_d1 = 1; global.froschtask++; break;
	    case "opt_Seerosen":	global.f_se_2_deko_d1 = 2; global.froschtask++; break;
	    case "opt_Steine":		global.f_se_2_deko_d1 = 3; global.froschtask++; global.f_se_2_deko_gut = true; global.f_se_party++; break;
	    case "opt_Buch":		global.f_se_2_deko_d1 = 4; global.froschtask++; global.anurasbuchUsed = true; global.f_se_2_deko_gut = true; global.f_se_party++; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
	}	
	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_create("", Text("f_se_2_deko_d1_r1_0"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_create("", Text("f_se_2_deko_d1_r2_0"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_create("", Text("f_se_2_deko_d1_r3_0"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_create("", Text("f_se_2_deko_d1_r4_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_1"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_1"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_1"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_2"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_2"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_2"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_3"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_3"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_3"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_4"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_4"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y );
		vngen_text_replace("Ribbit", Text("f_se_2_deko_d1_r3_4"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbit_lachend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_5"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Croak", Text("f_se_2_deko_d1_r2_5"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r3_5"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_6"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_6"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r3_6"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y );
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("Ribbit", Text("f_se_2_deko_d1_r1_7"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Croak", Text("f_se_2_deko_d1_r2_7"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_7"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("Ribbit", Text("f_se_2_deko_d1_r1_8"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_8"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_glitzer_steine, scale_prop_x_y ); 
		SaveDias(spr_dia_glitzer_steine_midi);
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_8"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbit_weinend_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_9"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_lachend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_9"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_text_replace("", Text("f_se_2_deko_d1_r3_9"));
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r4_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_10"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_10"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Hopps", Text("f_se_2_deko_d1_r4_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r1_11"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_11"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r4_11"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt_grey, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_deko_d1_r1_12"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_text_replace("", Text("f_se_2_deko_d1_r2_12"));
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Hopps", Text("f_se_2_deko_d1_r4_12"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_2_deko_d1_r1_13"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("Hopps", Text("f_se_2_deko_d1_r4_13"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_d1_r1_14"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_glas_mit_gluehwuermchen, scale_prop_x_y ); 
		SaveDias(spr_dia_glas_mit_gluehwuermchen_midi);
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_14"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_15"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_text_replace("", Text("f_se_2_deko_d1_r4_15"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_deko_d1_r1_16"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("Suzan", Text("f_se_2_deko_d1_r1_17"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("Suzan", Text("f_se_2_deko_d1_r1_18"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_deko_d1_r1_19"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_2_deko_d1_r1_20"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_21"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d1 == 1){
		vngen_text_replace("", Text("f_se_2_deko_d1_r1_22"));
	}
	if(global.f_se_2_deko_d1 == 2){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 ==	3){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d1 == 4){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_deko_gut_0"));
	} else {
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_schlecht_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_deko_gut_1"));
	} else {
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_schlecht_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_deko_gut_2"));
	} else {
		vngen_text_replace("", Text("f_se_2_deko_schlecht_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y );
		vngen_text_replace("Eeeh", Text("f_se_2_deko_gut_3"));
	} else {
		vngen_text_replace("", Text("f_se_2_deko_schlecht_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Mitte", spr_croak_gluecklich_, scale_y );
		vngen_text_replace("Croak", Text("f_se_2_deko_gut_4"));
	} else {
		vngen_text_replace("", Text("f_se_2_deko_schlecht_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y );
		vngen_text_replace("Hopps", Text("f_se_2_deko_gut_5"));
	} else {
		vngen_text_replace("", Text("f_se_2_deko_schlecht_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_gut){
		room_goto(Froschtempel_SE_2_End);
	} else {
		vngen_text_replace("", Text("f_se_2_deko_schlecht_6"));
	}
}



if (vngen_event()) {
	if(!global.f_se_2_deko_gut){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

			if (vngen_option("tempel_2_de_2")) {
				vngen_option_create_transformed("opt_Origami"," ",  -(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_froschorigami, spr_icon_froschorigami_active, spr_icon_froschorigami_active);
				vngen_option_create_transformed("opt_Lehm",	" ",	 (camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_lehm_obst, spr_icon_lehm_obst_active, spr_icon_lehm_obst_active);
			}
	
			switch (vngen_get_option("tempel_2_de_2", true)) {
			    case "opt_Origami":	global.f_se_2_deko_d2 = 1; global.f_se_2_deko_gut = true; global.f_se_party++;setOwnValueBonus(); break;
			    case "opt_Lehm":	global.f_se_2_deko_d2 = 2; setOwnValue(1); break;
			}	
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_create("", Text("f_se_2_deko_schlecht_d2_r1_0"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_create("", Text("f_se_2_deko_schlecht_d2_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_1"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_2"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_3"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("Ribbit", Text("f_se_2_deko_schlecht_d2_r1_4"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_schlecht_d2_r1_5"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_origami_froesche, scale_prop_x_y ); 
		SaveDias(spr_dia_origami_froesche_midi);
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_6"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_7"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_8"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_9"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r1_10"));
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_deko_schlecht_d2_r2_11"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_deko_schlecht_d2_r2_12"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_deko_schlecht_d2_r2_13"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_haessliche_ananas, scale_prop_x_y ); 
		SaveDias(spr_dia_haessliche_ananas_midi);
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_deko_schlecht_d2_r2_14"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_deko_schlecht_d2_r2_15"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_deko_schlecht_d2_r2_16"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y );
		vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_schlecht_d2_r2_17"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_18"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_text_replace("Chad", Text("f_se_2_deko_schlecht_d2_r2_19"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_ribbaeh_besorgt, scale_y );
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_schlecht_d2_r2_20"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_21"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Ribbäh", Text("f_se_2_deko_schlecht_d2_r2_22"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("f_se_2_deko_schlecht_d2_r2_23"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_deko_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_2_deko_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("f_se_2_deko_schlecht_d2_r2_24"));
	}
}

if (vngen_event()) {
	room_goto(Froschtempel_SE_2_End);
}

//End VNgen script
vngen_event_reset_target();