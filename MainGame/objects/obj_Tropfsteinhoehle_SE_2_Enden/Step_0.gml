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
	
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Art", spr_empty, 710, 100, scale_prop_x_y);
	if(global.bear = "best"){
		vngen_char_create_ext("Chad", spr_chad_gluecklich_grey, 50, 0, scale_y);
		vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 1450, 0, scale_y);
		vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_schlafend_gluecklich_grey, 250, 50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_char_create_ext("Chad", spr_chad_gluecklich_grey, 50, 0, scale_y);
		vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 1450, 0, scale_y);
		vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_schlafend_gluecklich, 250, 50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_char_create_ext("Chad", spr_chad_besorgt_grey, 50, 0, scale_y);
		vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
		vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_nuede_grey, 250, 50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	}
	if(global.bear = "bad"){
		vngen_char_create_ext("Chad", spr_chad_besorgt_grey, 50, 0, scale_y);
		vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
		vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_wuetend_grey, 250, 50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	}
}

if(vngen_event()){
	
	
	if(global.bear = "best"){
		vngen_text_replace("", Text("t_se_2_end_art_0"));	
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_0"));	
	}
	if(global.bear = "ok"){
		vngen_text_replace("", Text("t_se_2_end_ok_0"));	
	}
	if(global.bear = "bad"){
		vngen_text_replace("", Text("t_se_2_end_bad_0"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_text_replace("", Text("t_se_2_end_art_1"));	
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_1"));	
	}
	if(global.bear = "ok"){
		vngen_text_replace("", Text("t_se_2_end_ok_1"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_text_replace("Suzan", Text("t_se_2_end_bad_1"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		global.artefakt_hoehle = true; 
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Art", spr_artefakt_haarball, scale_prop_x_y);
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y);
		vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_end_art_2"));	
	} 
	if(global.bear = "good"){
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y);
		vngen_audio_play_sound("sound", sfx_char_saebelzahnbaer_schnarchen, 1, 0, false, false);
		vngen_char_change_sprite("Dia", spr_dia_baer_schlaeft_gemuetlich, scale_prop_x_y ); 
		SaveDias(spr_dia_baer_schlaeft_gemuetlich_midi);
		vngen_text_replace("", Text("t_se_2_end_good_2"));	
	}
	if(global.bear = "ok"){
		vngen_text_replace("", Text("t_se_2_end_ok_2"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("Chad", Text("t_se_2_end_bad_2"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey,scale_y);
		vngen_audio_play_sound("sound", sfx_char_saebelzahnbaer_schnarchen, 1, 0, false, false);
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_do_continue();
	}
	if(global.bear = "bad"){
		vngen_do_continue();
	}
}



if(vngen_event()){
	if(global.bear = "best"){
		vngen_text_replace("", Text("t_se_2_end_art_3"));	
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_3"));	
	}
	if(global.bear = "ok"){
		vngen_text_replace("", Text("t_se_2_end_ok_3"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
		vngen_text_replace("", Text("t_se_2_end_bad_3"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_char_change_sprite("Art", spr_empty, scale_prop_x_y);
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_baer_schlaeft_gluecklich, scale_prop_x_y ); 
		SaveDias(spr_dia_baer_schlaeft_gluecklich_midi);
		vngen_text_replace("", Text("t_se_2_end_art_4"));	
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_4"));	
	}
	if(global.bear = "ok"){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich,scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("t_se_2_end_ok_4"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich,scale_y);
		vngen_text_replace("Suzan", Text("t_se_2_end_bad_4"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_5"));	
	}
	if(global.bear = "ok"){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey,scale_y);
		vngen_text_replace("Chad", Text("t_se_2_end_ok_5"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey,scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("t_se_2_end_bad_5"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_text_replace("", Text("t_se_2_end_good_6"));	
	}
	if(global.bear = "ok"){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey,scale_y);
		vngen_audio_play_sound("sound", sfx_char_saebelzahnbaer_schnarchen, 1, 0, false, false);
		vngen_text_replace("", Text("t_se_2_end_ok_6"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("t_se_2_end_bad_6"));	
	}
}


if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey,scale_y);
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_ihr_sitzt_beim_eingeschlafenen_baeren, scale_prop_x_y ); 
		SaveDias(spr_dia_ihr_sitzt_beim_eingeschlafenen_baeren_midi);
		vngen_text_replace("", Text("t_se_2_end_ok_7"));	
	}
	if(global.bear = "bad"){
		vngen_text_replace("", Text("t_se_2_end_bad_7"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey,scale_y);
		vngen_text_replace("", Text("t_se_2_end_ok_8"));	
	}
	if(global.bear = "bad"){
		vngen_text_replace("", Text("t_se_2_end_bad_8"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_text_replace("", Text("t_se_2_end_ok_9"));	
	}
	if(global.bear = "bad"){
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_ihr_schlaft_mit_bear, scale_prop_x_y ); 
		SaveDias(spr_dia_ihr_schlaft_mit_bear_midi);
		vngen_text_replace("", Text("t_se_2_end_bad_9"));	
	}
}

if(vngen_event()){
	if(global.bear = "best"){
		vngen_do_continue();
	} 
	if(global.bear = "good"){
		vngen_do_continue();
	}
	if(global.bear = "ok"){
		vngen_do_continue();
	}
	if(global.bear = "bad"){
		vngen_text_replace("", Text("t_se_2_end_bad_10"));	
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