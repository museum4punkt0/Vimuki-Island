/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Hoehle);
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
	vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_nuede_grey, 250, 50, scale_y);
	if(global.aggro){
		vngen_text_create("", "");	
		vngen_do_continue();
	} else {
		vngen_text_create("", "");	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.aggro){
		vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_0"));	
	} else {
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_0"));	
	}
}

if (vngen_event()) {
   if(global.aggro){
		vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_1"));	
	} else {
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_1"));	
	}
}

if (vngen_event()) {
   if(global.aggro){
		vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_2"));	
	} else {
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_2"));	
	}
}

if (vngen_event()) {
   if(global.aggro){
		vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_3"));	
	} else {
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_3"));	
	}
}

if (vngen_event()) {
   if(global.aggro){
		vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_4"));	
	} else {
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_4"));	
	}
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_7")) {
		vngen_option_create_transformed("opt_Krist",	" ",-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_kristall, spr_icon_kristall_active, spr_icon_kristall_active);
		vngen_option_create_transformed("opt_Pilze"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_pilze, spr_icon_pilze_active, spr_icon_pilze_active);
		vngen_option_create_transformed("opt_Keafer", " ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_leuchtkaefer, spr_icon_leuchtkaefer_active, spr_icon_leuchtkaefer_active);
		if(global.outdoorjacke){
			vngen_option_create_transformed("opt_Jacke"," ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_ravinas_jacke, spr_icon_ravinas_jacke_active, spr_icon_ravinas_jacke_active);	
		}
   }
   
   switch (vngen_get_option("hoehle_7", true)) {
      case "opt_Krist":		global.t_se_2_d7 = 1; break;
      case "opt_Pilze":		global.t_se_2_d7 = 2; break;
      case "opt_Keafer":	global.t_se_2_d7 = 3; break;
      case "opt_Jacke":		global.t_se_2_d7 = 4; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); global.jackeused = true; break;
   }	
}

if (vngen_event()) {
	if(global.aggro){//_____________________AGGRO_________________________
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_saebelzahnbaer_wuetend_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d7 == 1){
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r3_d7_r1_0"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r3_d7_r2_0"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r3_d7_r3_0"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r3_d7_r4_0"));
		}
	} else {//______________________________SAD_____________________________
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_saebelzahnbaer_nuede_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d7 == 1){
			vngen_text_create("", Text("t_se_2_help_sad_d4_r3_d7_r1_0"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_create("", Text("t_se_2_help_sad_d4_r3_d7_r2_0"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_create("", Text("t_se_2_help_sad_d4_r3_d7_r3_0"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_create("", Text("t_se_2_help_sad_d4_r3_d7_r4_0"));
		}
		
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_1"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_1"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_1"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_1"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_1"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_1"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_1"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_1"));
		}
	}
}


if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_2"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_2"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_2"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_2"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_2"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_2"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_2"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_2"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_3"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_3"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_3"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_3"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_3"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_3"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_3"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_3"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_4"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r3_d7_r2_4"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_4"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_char_change_sprite("Chad",spr_chad_traurig, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r3_d7_r4_4"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_4"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_4"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_4"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_4"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_5"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r3_d7_r2_5"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r3_d7_r3_5"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_char_change_sprite("Chad",spr_chad_traurig_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_lachen, scale_y);
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r3_d7_r4_5"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_help_sad_d4_r3_d7_r1_5"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_help_sad_d4_r3_d7_r2_5"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_5"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_5"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r3_d7_r1_6"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_6"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_ekel, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r3_d7_r3_6"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_6"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_6"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_sad_d4_r3_d7_r2_6"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_6"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_6"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r1_7"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_7"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y);
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_7"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_7"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r1_7"));
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_7"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_ekel, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_sad_d4_r3_d7_r3_7"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_char_change_sprite("Chad",spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r4_7"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r2_8"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_8"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_8"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_8"));
		}
		if(global.t_se_2_d7 == 3){
			
			vngen_char_change_sprite("Suzan",	spr_suzan_ekel_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_8"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
		vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_9"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_9"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r2_9"));
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_9"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_10"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r4_10"));
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_10"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_11"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_11"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r3_d7_r3_12"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_12"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_13"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d7 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d7 == 3){
			vngen_char_change_sprite("Chad",spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r3_d7_r3_14"));
		}
		if(global.t_se_2_d7 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		global.bear = "bad"; 
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kristalle_0"));
	}
	if(global.t_se_2_d7 == 2){
		global.bear = "ok";
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_pilz_0"));
	}
	if(global.t_se_2_d7 == 3){
		if(global.aggro){
			global.bear = "good";
		}else{
			global.bear = "best";
		}
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kaefer_0"));
	}
	if(global.t_se_2_d7 == 4){
		global.bear = "best";
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_rush_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kristalle_1"));
	}
	if(global.t_se_2_d7 == 2){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend, scale_y ); 
		vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_help_d4_r3_pilz_1"));
	}
	if(global.t_se_2_d7 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kaefer_1"));
	}
	if(global.t_se_2_d7 == 4){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_rush_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kristalle_2"));
	}
	if(global.t_se_2_d7 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_pilz_2"));
	}
	if(global.t_se_2_d7 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kaefer_2"));
	}
	if(global.t_se_2_d7 == 4){
		vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_help_d4_r3_rush_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kristalle_3"));
	}
	if(global.t_se_2_d7 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_2_help_d4_r3_pilz_3"));
	}
	if(global.t_se_2_d7 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kaefer_3"));
	}
	if(global.t_se_2_d7 == 4){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_rush_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kristalle_4"));
	}
	if(global.t_se_2_d7 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_pilz_4"));
	}
	if(global.t_se_2_d7 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_kaefer_4"));
	}
	if(global.t_se_2_d7 == 4){
		vngen_text_replace("", Text("t_se_2_help_d4_r3_rush_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d7 == 1){
		vngen_do_continue();
	}
	if(global.t_se_2_d7 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_traurig_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_traurig_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r3_pilz_5"));
	}
	if(global.t_se_2_d7 == 3){
		vngen_do_continue();
	}
	if(global.t_se_2_d7 == 4){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	room_goto(Tropfsteinhoehle_SE_2_Enden);
}
//End VNgen script
vngen_event_reset_target();