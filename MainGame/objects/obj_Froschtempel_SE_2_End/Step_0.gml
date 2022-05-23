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
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Artefakt", spr_empty, 710, 100, scale_prop_x_y);
	vngen_char_create_ext_back("Mitte", spr_empty, 600, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	if(global.froschtask < 3){
		vngen_text_create("", Text("f_se_2_end_0")); 
	} else {
		vngen_text_create("", Text("f_se_2_end_1")); 
	}
}

if(vngen_event()){
	if(global.froschtask < 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("tempel_task")) {
			if(!global.kochtask){
				vngen_option_create_transformed("opt_Kochen"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_kochen, spr_icon_kochen_active, spr_icon_kochen_active);
			}
		    if(!global.dekotask){
				vngen_option_create_transformed("opt_Deko",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_deko, spr_icon_deko_active, spr_icon_deko_active);
		    }
			if(!global.musiktask){
				vngen_option_create_transformed("opt_Musik", " ",	-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_musik, spr_icon_musik_active, spr_icon_musik_active);
			}
		}
   
	   switch (vngen_get_option("tempel_task", true)) {
	      case "opt_Kochen":	room_goto(Froschtempel_SE_2_Kochen); break;
	      case "opt_Deko":		room_goto(Froschtempel_SE_2_Deko); break;
	      case "opt_Musik":		room_goto(Froschtempel_SE_2_Musik); break;
	   }	
	} else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y);
	vngen_text_replace("Croak", Text("f_se_2_end_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Hopps", Text("f_se_2_end_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y);
   vngen_text_replace("Croak", Text("f_se_2_end_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_kwaeka_lachend, scale_y);
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace("Kväka", Text("f_se_2_end_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y);
   vngen_text_replace("Ribbit", Text("f_se_2_end_6"));
}



if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		global.artefakt_tempel = true; 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_art_0"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_good_0"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_ok_0"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_bad_0"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_text_replace("", Text("f_se_2_end_art_1"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_text_replace("", Text("f_se_2_end_good_1"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_text_replace("", Text("f_se_2_end_ok_1"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_1"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_text_replace("", Text("f_se_2_end_art_2"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_end_good_2"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_end_ok_2"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_2"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y );
		vngen_char_change_sprite("Artefakt", spr_artefakt_laterne, scale_prop_x_y); 
		vngen_text_replace("", Text("f_se_2_end_art_3"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_end_good_3"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_end_ok_3"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_3"));
	}
}


if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Artefakt", spr_empty, scale_prop_x_y); 
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y );
		vngen_text_replace("Hopps", Text("f_se_2_end_art_4"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_good_4"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_ok_4"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_4"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Mitte", spr_croak_gluecklich_, scale_y );
		vngen_text_replace("Croak", Text("f_se_2_end_art_5"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_text_replace("", Text("f_se_2_end_good_5"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_text_replace("", Text("f_se_2_end_ok_5"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_end_bad_5"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_end_art_6"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_text_replace("", Text("f_se_2_end_good_6"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_end_bad_6"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_end_art_7"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_text_replace("", Text("f_se_2_end_good_7"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_end_bad_7"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y );
		vngen_text_replace("Eeeh", Text("f_se_2_end_art_8"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_8"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y );
		vngen_text_replace("", Text("f_se_2_end_art_9"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_text_replace("", Text("f_se_2_end_bad_9"));
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_end_art_10"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_text_replace("Suzan", Text("f_se_2_end_art_11"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_end_art_12"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_end_art_13"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.anurasbuchUsed || global.f_se_party >= 3){
		vngen_text_replace("", Text("f_se_2_end_art_14"));
	}
	if(!global.anurasbuchUsed && global.f_se_party == 2){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 1){
		vngen_do_continue();
	}
	if(!global.anurasbuchUsed && global.f_se_party == 0){
		vngen_do_continue();
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