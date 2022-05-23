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
	vngen_char_create_ext("Artefakt", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext_back("Links", spr_empty, 400, 0, scale_y);
	vngen_char_create_ext_back("Rechts", spr_empty, 900, 0, scale_y);
	if(global.strandtask < 3){
		vngen_text_create("", Text("s_se_2_vorbereitung_weiter_0")); 
	} else {
		vngen_text_create("", Text("s_se_2_19")); 
	}
}

if(vngen_event()){
	if(global.strandtask < 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("strand_task")) {
			if(!global.strandkleidtask){
				vngen_option_create_transformed("opt_Kleid"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_kleid, spr_icon_kleid_active, spr_icon_kleid_active);
			}
		    if(!global.strandbandtask){
				vngen_option_create_transformed("opt_Band",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_band, spr_icon_band_active, spr_icon_band_active);
		    }
			if(!global.strandblumentask){
				vngen_option_create_transformed("opt_Blumen", " ",	-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_blumenstrauss, spr_icon_blumenstrauss_active, spr_icon_blumenstrauss_active);
			}
		}
   
	   switch (vngen_get_option("strand_task", true)) {
	      case "opt_Kleid":		room_goto(Strand_SE_2_Kleid); break;
	      case "opt_Band":		room_goto(Strand_SE_2_Band); break;
	      case "opt_Blumen":	room_goto(Strand_SE_2_Blumen); break;
	   }	
	} else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_21"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_2_22"));
}


if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		global.artefakt_strand = true; 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Links", spr_scholle_verliebt_grey, scale_y); 
		vngen_char_change_sprite("Rechts", spr_enya_verliebt_grey, scale_y); 
		
		vngen_text_replace("", Text("s_se_2_perfekt_0"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_gut_0"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_schlecht_0"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_1"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_1"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_text_replace("", Text("s_se_2_schlecht_1"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_char_change_sprite("Links", spr_scholle_verliebt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_replace("Leutnant Scholle", Text("s_se_2_perfekt_2"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_char_change_sprite("Dia", spr_dia_hochzeit_mittel, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_hochzeit_mittel_midi);
		vngen_text_replace("", Text("s_se_2_gut_2"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_schlecht_2"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_char_change_sprite("Links", spr_empty, scale_y); 
		vngen_char_change_sprite("Rechts", spr_empty, scale_y); 
		vngen_char_change_sprite("Artefakt", spr_artefakt_perle, scale_prop_x_y); 
		vngen_text_replace("", Text("s_se_2_perfekt_3"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_3"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Dia", spr_dia_hochzeit_schlecht, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_hochzeit_schlecht_midi);
		vngen_text_replace("", Text("s_se_2_schlecht_3"));
	}
}


if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_4"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_4"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_text_replace("", Text("s_se_2_schlecht_4"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_char_change_sprite("Artefakt", spr_empty, scale_prop_x_y); 
		vngen_char_change_sprite("Dia", spr_dia_hochzeit_klasse, scale_prop_x_y); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_hochzeit_klasse_midi);
		vngen_text_replace("", Text("s_se_2_perfekt_5"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_5"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_text_replace("", Text("s_se_2_schlecht_5"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_6"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_6"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_2_schlecht_6"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_7"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_7"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_2_schlecht_7"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_8"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_text_replace("", Text("s_se_2_gut_8"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_2_schlecht_8"));
	}
}

if (vngen_event()) {
	if(global.netzused){ //Artefakt - Perfekt
		vngen_text_replace("", Text("s_se_2_perfekt_9"));
	}
	if(!global.netzused && global.s_se_2_hochzeit_value >= 2){
		vngen_do_continue();
	}
	if(!global.netzused && global.s_se_2_hochzeit_value < 2){
		vngen_text_replace("", Text("s_se_2_schlecht_9"));
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