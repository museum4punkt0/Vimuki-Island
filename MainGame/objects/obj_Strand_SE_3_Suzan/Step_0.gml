/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Strand);
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
	vngen_char_create_ext("Chad", spr_empty, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Artefakt", spr_empty, 710, 50, scale_prop_x_y);
	vngen_text_create("", Text("s_se_3_suzan_0")); 
}

if (vngen_event()) {
	vngen_text_replace("", Text("s_se_3_suzan_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_suzan_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("s_se_3_suzan_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("", Text("s_se_3_suzan_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("s_se_3_suzan_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
   vngen_text_replace("Suzan", Text("s_se_3_suzan_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("", Text("s_se_3_suzan_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_suzan_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_suzan_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_3_suzan_10"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("strand_3_suzan_1")) {
		vngen_option_create_transformed("opt_er",	Text("s_se_3_suzan_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_pff",	Text("s_se_3_suzan_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	}
   
	switch (vngen_get_option("strand_3_suzan_1", true)) {
	    case "opt_er":	global.s_se_3_suzan_d1 = 1; setSuzanValue(-1);break;
	    case "opt_pff":	global.s_se_3_suzan_d1 = 2; setOwnValueBonus();break;
	}	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_3_suzan_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d1_r1_0"));
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d1_r1_1"));
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d1_r1_2"));
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d1_r2_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d1_r1_3"));
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d1_r2_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d1_r1_4"));
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d1_r2_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d1_r2_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d1_r2_6"));
	}
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if(global.s_se_3_suzan_d1 == 1){
		if (vngen_option("strand_3_suzan_2")) {
			vngen_option_create_transformed("opt_Zwei",		Text("s_se_3_suzan_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_Action",	Text("s_se_3_suzan_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_Party",	Text("s_se_3_suzan_d2_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_3_suzan_2", true)) {
			case "opt_Zwei":	global.s_se_3_suzan_d2 = 1; setSuzanValue(-1); break;
			case "opt_Action":	global.s_se_3_suzan_d2 = 2; setSuzanValue(-1); break;
			case "opt_Party":	global.s_se_3_suzan_d2 = 3; setSuzanValue(1); break;
		}	
	}
	if(global.s_se_3_suzan_d1 == 2){
		if (vngen_option("strand_3_suzan_4")) {
			vngen_option_create_transformed("opt_Quali",	Text("s_se_3_suzan_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_Stern",	Text("s_se_3_suzan_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_Immer",	Text("s_se_3_suzan_d4_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_3_suzan_4", true)) {
			case "opt_Quali":	global.s_se_3_suzan_d4 = 1; setSuzanValue(-1); setOwnValueBonus();break;
			case "opt_Stern":	global.s_se_3_suzan_d4 = 2; setSuzanValue(-1); break;
			case "opt_Immer":	global.s_se_3_suzan_d4 = 3; setSuzanValue(1); setOwnValue(-1);break;
		}	
	}
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d2_r1_0"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_create("Suzan", Text("s_se_3_suzan_d2_r2_0"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d2_r3_0"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d4_r1_0"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d4_r2_0"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_3_suzan_d4_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_1"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_1"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d2_r3_1"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_1"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_1"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d2_r1_2"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_2"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y );
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_2"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r1_2"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_2"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_3"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_3"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_3"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_3"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_scene_replace(spr_bg_Strand_abends);
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_3"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_4"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_3_suzan_d2_r2_4"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_4"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_4"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_4"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_5"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d2_r2_5"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_5"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_5"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r2_5"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_6"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y );
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_6"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_6"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_6"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_6"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_7"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_7"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_7"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_7"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_7"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_8"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_8"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_8"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_8"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r2_8"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r3_8"));
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_9"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_9"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r3_9"));
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_9"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_9"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_10"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_10"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_10"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_10"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("s_se_3_suzan_d2_r1_11"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_11"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_11"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r2_11"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_12"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_12"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_12"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r2_12"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y);
		vngen_text_replace("Chad", Text("s_se_3_suzan_d2_r1_13"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_13"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_13"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r2_13"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Dia", spr_dia_artefakt_picknick, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias( spr_dia_artefakt_picknick_midi);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_14"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_14"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_14"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_14"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y); 
		
		vngen_char_change_sprite("Artefakt", spr_artefakt_romance, scale_prop_x_y); 
		global.artefakt_love = true; 
		vngen_text_replace("", Text("s_se_3_suzan_d2_r1_15"));
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_15"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y );
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r1_15"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_15"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_char_change_sprite("Dia", spr_dia_gut_haengematte, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_gut_haengematte_midi);
		vngen_text_replace("", Text("s_se_3_suzan_d2_r2_16"));
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r1_16"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y);
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r2_16"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_17"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_3_suzan_d4_r2_17"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Dia", spr_dia_artefakt_rockkonzert, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_artefakt_rockkonzert_midi);
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y );
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_18"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_3_suzan_d4_r2_18"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y); 
		vngen_char_change_sprite("Artefakt", spr_artefakt_romance, scale_prop_x_y); 
		global.artefakt_love = true; 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r1_19"));
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_19"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_scene_replace("bg",spr_bg_Strand_abends,0,false);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_20"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 2){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d2 == 3){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 1){
		vngen_do_continue();
	}
	if(global.s_se_3_suzan_d4 == 2){
		vngen_char_change_sprite("Dia", spr_dia_gut_sternschnuppen, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_gut_sternschnuppen_midi);
		vngen_text_replace("", Text("s_se_3_suzan_d4_r2_21"));
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1 || global.s_se_3_suzan_d2 == 2 || global.s_se_3_suzan_d4 == 1 || global.s_se_3_suzan_d4 == 2 ){
		vngen_text_destroy();
		vngen_textbox_destroy();
		vngen_char_destroy(all);
		vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
	} else {
		vngen_do_continue(); 	
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 1 || global.s_se_3_suzan_d2 == 2 || global.s_se_3_suzan_d4 == 1 || global.s_se_3_suzan_d4 == 2 ){
		global.day++; 
		audio_stop_all(); 
		room_goto(Karte); 
	} else {
		vngen_do_continue(); 	
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();
	if(global.s_se_3_suzan_d2 == 3){
		if (vngen_option("strand_3_suzan_3")) {
			vngen_option_create_transformed("opt_tanz",	Text("s_se_3_suzan_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_licht",Text("s_se_3_suzan_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_3_suzan_3", true)) {
			case "opt_tanz":	global.s_se_3_suzan_d3 = 1; setSuzanValue(-1); break;
			case "opt_licht":	global.s_se_3_suzan_d3 = 2; setSuzanValue(1);break;
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if (vngen_option("strand_3_suzan_5")) {
			vngen_option_create_transformed("opt_aufhalten",	Text("s_se_3_suzan_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_anfeuern",		Text("s_se_3_suzan_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
	
		switch (vngen_get_option("strand_3_suzan_5", true)) {
			case "opt_aufhalten":	global.s_se_3_suzan_d5 = 1; setSuzanValue(-1);break;
			case "opt_anfeuern":	global.s_se_3_suzan_d5 = 2; setSuzanValue(1);break;
		}
	}
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_3_suzan_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_create("", Text("s_se_3_suzan_d3_r1_0"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_text_create("", Text("s_se_3_suzan_d3_r2_0"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		if(global.s_se_3_suzan_d5 == 1){
			vngen_text_create("", Text("s_se_3_suzan_d5_r1_0"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_create("", Text("s_se_3_suzan_d5_r2_0"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_1"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_1"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_1"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_2"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_2"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_2"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_3"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_se_3_suzan_d3_r2_3"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_3"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_4"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_3_suzan_d3_r2_4"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_3_suzan_d5_r1_4"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_5"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_5"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_3_suzan_d5_r1_5"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_6"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_6"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_3_suzan_d5_r1_6"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_7"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_7"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_7"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_3_suzan_d5_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_8"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("Chad", Text("s_se_3_suzan_d3_r2_8"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_8"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
			vngen_char_change_sprite("Dia", spr_dia_mittel_tanzen, scale_prop_x_y); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_mittel_tanzen_midi);
			vngen_text_replace("", Text("s_se_3_suzan_d3_r1_9"));
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_9"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_verliebt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_9"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_9"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_se_3_suzan_d3_r2_10"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_char_change_sprite("Dia", spr_dia_zombie_pflanze, scale_prop_x_y); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_zombie_pflanze_midi);
			vngen_text_replace("", Text("s_se_3_suzan_d5_r1_10"));
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y);
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_10"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_11"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_se_3_suzan_d5_r2_11"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_char_change_sprite("Dia", spr_dia_schlecht_wuetender_chad, scale_prop_x_y); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schlecht_wuetender_chad_midi);
			vngen_text_replace("", Text("s_se_3_suzan_d3_r2_12"));
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_12"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_se_3_suzan_d5_r2_13"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d5 == 2){
			
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_14"));
		}
	}
}



if (vngen_event()) {
	if(global.s_se_3_suzan_d2 == 3){
		if(global.s_se_3_suzan_d3 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d3 == 2){
			vngen_do_continue();
		}
	}
	if(global.s_se_3_suzan_d4 == 3){
		if(global.s_se_3_suzan_d5 == 1){
			vngen_do_continue();
		}
		if(global.s_se_3_suzan_d5 == 2){
			vngen_char_change_sprite("Dia", spr_dia_schlecht_wuetender_chad, scale_prop_x_y); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schlecht_wuetender_chad_midi);
			vngen_text_replace("", Text("s_se_3_suzan_d5_r2_15"));
		}
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