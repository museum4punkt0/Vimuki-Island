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
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext_back("Mitte", spr_empty, 710, 0, scale_y);
	vngen_text_create("", Text("f_se_2_kochen_0")); 
}

if (vngen_event()) {
	
	global.kochtask = true; 
   vngen_text_replace("", Text("f_se_2_kochen_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_kochen_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Vrak", Text("f_se_2_kochen_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y);
   vngen_text_replace("Chad", Text("f_se_2_kochen_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y);
   vngen_text_replace("Vrak", Text("f_se_2_kochen_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_se_2_kochen_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y);
   vngen_text_replace("Vrak", Text("f_se_2_kochen_7"));
}

if (vngen_event()) {
   vngen_text_replace("Vrak", Text("f_se_2_kochen_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("f_se_2_kochen_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_kochen_10"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_2_kochen_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y);
   vngen_text_replace("Vrak", Text("f_se_2_kochen_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
   vngen_text_replace("Chad", Text("f_se_2_kochen_13"));
}

if(vngen_event()){
	if(global.anurasbuch){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("tempel_2_ko_1")) {
			vngen_option_create_transformed("opt_Kochen"," ",  -(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_kochen, spr_icon_kochen_active, spr_icon_kochen_active);
		    vngen_option_create_transformed("opt_Buch",	" ",	(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_richs_buch, spr_icon_richs_buch_active, spr_icon_richs_buch_active);
		}
   
	   switch (vngen_get_option("tempel_2_ko_1", true)) {
	      case "opt_Kochen":	global.f_se_2_kochen_d1 = 1; break;
	      case "opt_Buch":		global.f_se_2_kochen_d1 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   }	
	}
}

if (vngen_event()) {
	
	if(global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_0"));
	}
	if(global.f_se_2_kochen_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("f_se_2_kochen_zeug_0"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("f_se_2_kochen_buch_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_1"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_2"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_3"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_buch_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_4"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_5"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_6"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_kochen_buch_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_7"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_kochen_buch_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_8"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_9"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_10"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_text_replace("", Text("f_se_2_kochen_buch_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_11"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_12"));
	}
	if(global.f_se_2_kochen_d1 == 2){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("tempel_2_ko_2")) {
			vngen_option_create_transformed("opt_Fliegen"," ",  -(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -1, 0.1, fnt_roboto_standard, spr_icon_fliegenpilz, spr_icon_fliegenpilz_active, spr_icon_fliegenpilz_active);
			vngen_option_create_transformed("opt_Toll",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_tollkirsche, spr_icon_tollkirsche_active, spr_icon_tollkirsche_active);
			vngen_option_create_transformed("opt_Tausen"," ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_scolopendra, spr_icon_scolopendra_active, spr_icon_scolopendra_active);
			vngen_option_create_transformed("opt_Pilz",	" ",	-(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_steinpilz, spr_icon_steinpilz_active, spr_icon_steinpilz_active);
			vngen_option_create_transformed("opt_Rosm",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_rosmarin, spr_icon_rosmarin_active, spr_icon_rosmarin_active);
			vngen_option_create_transformed("opt_Heu",	" ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_heuschrecken, spr_icon_heuschrecken_active, spr_icon_heuschrecken_active);
		}
	
		switch (vngen_get_option("tempel_2_ko_2", true)) {
		    case "opt_Fliegen":	global.f_se_2_kochen_d2a = 1; global.froschtask++; break;
		    case "opt_Toll":	global.f_se_2_kochen_d2a = 2; global.froschtask++; break;
		    case "opt_Tausen":	global.f_se_2_kochen_d2a = 3; global.froschtask++; break;
		    case "opt_Pilz":	global.f_se_2_kochen_d2a = 4; global.froschtask++; global.f_se_2_kochen_wert++;  break;
		    case "opt_Rosm":	global.f_se_2_kochen_d2a = 5; global.froschtask++; global.f_se_2_kochen_wert++; break;
		    case "opt_Heu":		global.f_se_2_kochen_d2a = 6; global.froschtask++; global.f_se_2_kochen_wert++; break;
		}	
		
	}
	
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("tempel_2_ko_3")) {
			vngen_option_create_transformed("opt_Fliegen"," ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_fliegenrisotto, spr_icon_fliegenrisotto_active, spr_icon_fliegenrisotto_active);
			vngen_option_create_transformed("opt_Wuermer",	" ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_wuermer_arabiata, spr_icon_wuermer_arabiata_active, spr_icon_wuermer_arabiata_active);
			vngen_option_create_transformed("opt_Schnecke",	" ",-(camera_get_view_width(view_camera[0])*0),	   -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_zimtschnecke, spr_icon_zimtschnecke_active, spr_icon_zimtschnecke_active);
		}
   
		switch (vngen_get_option("tempel_2_ko_3", true)) {
		    case "opt_Fliegen":		global.f_se_2_kochen_d3 = 1; global.froschtask++; global.f_se_party = global.f_se_party + 1; global.anurasbuchUsed=true; break;
		    case "opt_Wuermer":		global.f_se_2_kochen_d3 = 2; global.froschtask++; global.f_se_party = global.f_se_party + 1; global.anurasbuchUsed=true; break;
		    case "opt_Schnecke":	global.f_se_2_kochen_d3 = 3; global.froschtask++; global.f_se_party = global.f_se_party + 1; global.anurasbuchUsed=true; break;
		}	
	}
}

//_________________________________ZUTATENSCHLEIFE


if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		if(global.f_se_2_kochen_d2a = 1){//Fliegenpilz
			vngen_text_create("", Text("f_se_2_kochen_fliegenpilz_0"));
		}
		if(global.f_se_2_kochen_d2a = 2){//Tollkirsche
			vngen_text_create("", Text("f_se_2_kochen_tollkische_0"));
		}
		if(global.f_se_2_kochen_d2a = 3){//Tausenfuessler
			vngen_text_create("", Text("f_se_2_kochen_scolopenda_0"));
		}
		if(global.f_se_2_kochen_d2a = 4){//Steinpilz
			vngen_text_create("", Text("f_se_2_kochen_steinpilz_0"));
		}
		if(global.f_se_2_kochen_d2a = 5){//Rosmarin
			vngen_text_create("", Text("f_se_2_kochen_rosmarin_0"));
		}
		if(global.f_se_2_kochen_d2a = 6){//Heuschrecken
			vngen_text_create("", Text("f_se_2_kochen_heuschrecken_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2a = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_1"));
		}
		if(global.f_se_2_kochen_d2a = 4){//Steinpilz
			vngen_text_replace("", Text("f_se_2_kochen_steinpilz_1"));
		}
		if(global.f_se_2_kochen_d2a = 5){//Rosmarin
			vngen_text_replace("", Text("f_se_2_kochen_rosmarin_1"));
		}
		if(global.f_se_2_kochen_d2a = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2a = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_2"));
		}
		if(global.f_se_2_kochen_d2a = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2a = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_3"));
		}
		if(global.f_se_2_kochen_d2a = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2a = 6){//Heuschrecken
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("tempel_2_ko_4")) {
			if(global.f_se_2_kochen_d2a != 1){
				vngen_option_create_transformed("opt_Fliegen"," ",  -(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -1, 0.1, fnt_roboto_standard, spr_icon_fliegenpilz, spr_icon_fliegenpilz_active, spr_icon_fliegenpilz_active);
			}
			if(global.f_se_2_kochen_d2a != 2){
				vngen_option_create_transformed("opt_Toll",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_tollkirsche, spr_icon_tollkirsche_active, spr_icon_tollkirsche_active);
			}
			if(global.f_se_2_kochen_d2a != 3){
				vngen_option_create_transformed("opt_Tausen"," ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_scolopendra, spr_icon_scolopendra_active, spr_icon_scolopendra_active);
			}
			if(global.f_se_2_kochen_d2a != 4){
				vngen_option_create_transformed("opt_Pilz",	" ",	-(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_steinpilz, spr_icon_steinpilz_active, spr_icon_steinpilz_active);
			}
			if(global.f_se_2_kochen_d2a != 5){
				vngen_option_create_transformed("opt_Rosm",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_rosmarin, spr_icon_rosmarin_active, spr_icon_rosmarin_active);
			}
			if(global.f_se_2_kochen_d2a != 6){
				vngen_option_create_transformed("opt_Heu",	" ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_heuschrecken, spr_icon_heuschrecken_active, spr_icon_heuschrecken_active);
			}
		}
	
		switch (vngen_get_option("tempel_2_ko_4", true)) {
		    case "opt_Fliegen":	global.f_se_2_kochen_d2b = 1; break;
		    case "opt_Toll":	global.f_se_2_kochen_d2b = 2; break;
		    case "opt_Tausen":	global.f_se_2_kochen_d2b = 3; break;
		    case "opt_Pilz":	global.f_se_2_kochen_d2b = 4; global.f_se_2_kochen_wert++; break;
		    case "opt_Rosm":	global.f_se_2_kochen_d2b = 5; global.f_se_2_kochen_wert++; break;
		    case "opt_Heu":		global.f_se_2_kochen_d2b = 6; global.f_se_2_kochen_wert++; break;
		}	
		
	}else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
	
		if(global.f_se_2_kochen_d2b = 1){//Fliegenpilz
			vngen_text_create("", Text("f_se_2_kochen_fliegenpilz_0"));
		}
		if(global.f_se_2_kochen_d2b = 2){//Tollkirsche
			vngen_text_create("", Text("f_se_2_kochen_tollkische_0"));
		}
		if(global.f_se_2_kochen_d2b = 3){//Tausenfuessler
			vngen_text_create("", Text("f_se_2_kochen_scolopenda_0"));
		}
		if(global.f_se_2_kochen_d2b = 4){//Steinpilz
			vngen_text_create("", Text("f_se_2_kochen_steinpilz_0"));
		}
		if(global.f_se_2_kochen_d2b = 5){//Rosmarin
			vngen_text_create("", Text("f_se_2_kochen_rosmarin_0"));
		}
		if(global.f_se_2_kochen_d2b = 6){//Heuschrecken
			vngen_text_create("", Text("f_se_2_kochen_heuschrecken_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2b = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_1"));
		}
		if(global.f_se_2_kochen_d2b = 4){//Steinpilz
			vngen_text_replace("", Text("f_se_2_kochen_steinpilz_1"));
		}
		if(global.f_se_2_kochen_d2b = 5){//Rosmarin
			vngen_text_replace("", Text("f_se_2_kochen_rosmarin_1"));
		}
		if(global.f_se_2_kochen_d2b = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2b = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_2"));
		}
		if(global.f_se_2_kochen_d2b = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2b = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_3"));
		}
		if(global.f_se_2_kochen_d2b = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2b = 6){//Heuschrecken
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("tempel_2_ko_5")) {
			if(global.f_se_2_kochen_d2a != 1 && global.f_se_2_kochen_d2b != 1){
				vngen_option_create_transformed("opt_Fliegen"," ",  -(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -1, 0.1, fnt_roboto_standard, spr_icon_fliegenpilz, spr_icon_fliegenpilz_active, spr_icon_fliegenpilz_active);
			}
			if(global.f_se_2_kochen_d2a != 2 && global.f_se_2_kochen_d2b != 2){
				vngen_option_create_transformed("opt_Toll",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_tollkirsche, spr_icon_tollkirsche_active, spr_icon_tollkirsche_active);
			}
			if(global.f_se_2_kochen_d2a != 3 && global.f_se_2_kochen_d2b != 3){
				vngen_option_create_transformed("opt_Tausen"," ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_scolopendra, spr_icon_scolopendra_active, spr_icon_scolopendra_active);
			}
			if(global.f_se_2_kochen_d2a != 4 && global.f_se_2_kochen_d2b != 4){
				vngen_option_create_transformed("opt_Pilz",	" ",	-(camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_steinpilz, spr_icon_steinpilz_active, spr_icon_steinpilz_active);
			}
			if(global.f_se_2_kochen_d2a != 5 && global.f_se_2_kochen_d2b != 5){
				vngen_option_create_transformed("opt_Rosm",	" ",	 (camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -2, 0.3, fnt_roboto_standard, spr_icon_rosmarin, spr_icon_rosmarin_active, spr_icon_rosmarin_active);
			}
			if(global.f_se_2_kochen_d2a != 6 && global.f_se_2_kochen_d2b != 6){
				vngen_option_create_transformed("opt_Heu",	" ",	 (camera_get_view_width(view_camera[0])*0.25),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_heuschrecken, spr_icon_heuschrecken_active, spr_icon_heuschrecken_active);
			}
		}
	
		switch (vngen_get_option("tempel_2_ko_5", true)) {
		    case "opt_Fliegen":	global.f_se_2_kochen_d2c = 1; break;
		    case "opt_Toll":	global.f_se_2_kochen_d2c = 2; break;
		    case "opt_Tausen":	global.f_se_2_kochen_d2c = 3; break;
		    case "opt_Pilz":	global.f_se_2_kochen_d2c = 4; global.f_se_2_kochen_wert++; break;
		    case "opt_Rosm":	global.f_se_2_kochen_d2c = 5; global.f_se_2_kochen_wert++; break;
		    case "opt_Heu":		global.f_se_2_kochen_d2c = 6; global.f_se_2_kochen_wert++; break;
		}	
		
	}else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_se_2_kochen_d2c = 1){//Fliegenpilz
			vngen_text_create("", Text("f_se_2_kochen_fliegenpilz_0"));
		}
		if(global.f_se_2_kochen_d2c = 2){//Tollkirsche
			vngen_text_create("", Text("f_se_2_kochen_tollkische_0"));
		}
		if(global.f_se_2_kochen_d2c = 3){//Tausenfuessler
			vngen_text_create("", Text("f_se_2_kochen_scolopenda_0"));
		}
		if(global.f_se_2_kochen_d2c = 4){//Steinpilz
			vngen_text_create("", Text("f_se_2_kochen_steinpilz_0"));
		}
		if(global.f_se_2_kochen_d2c = 5){//Rosmarin
			vngen_text_create("", Text("f_se_2_kochen_rosmarin_0"));
		}
		if(global.f_se_2_kochen_d2c = 6){//Heuschrecken
			vngen_text_create("", Text("f_se_2_kochen_heuschrecken_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2c = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_1"));
		}
		if(global.f_se_2_kochen_d2c = 4){//Steinpilz
			vngen_text_replace("", Text("f_se_2_kochen_steinpilz_1"));
		}
		if(global.f_se_2_kochen_d2c = 5){//Rosmarin
			vngen_text_replace("", Text("f_se_2_kochen_rosmarin_1"));
		}
		if(global.f_se_2_kochen_d2c = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2c = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_2"));
		}
		if(global.f_se_2_kochen_d2c = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 6){//Heuschrecken
			vngen_text_replace("", Text("f_se_2_kochen_heuschrecken_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_d2c = 1){//Fliegenpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 2){//Tollkirsche
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 3){//Tausenfuessler
			vngen_text_replace("", Text("f_se_2_kochen_scolopenda_3"));
		}
		if(global.f_se_2_kochen_d2c = 4){//Steinpilz
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 5){//Rosmarin
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d2c = 6){//Heuschrecken
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_26"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_27"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_28"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_29"));
	} else {
		vngen_do_continue();
	}
}



if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_gut_0"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_0"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_create("", Text("f_se_2_kochen_buch_d3_r1_0"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_create("", Text("f_se_2_kochen_buch_d3_r2_0"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_create("", Text("f_se_2_kochen_buch_d3_r3_0"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_gut_1"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_schlecht_1"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_1"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_1"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r3_1"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_gut_2"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_2"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r1_2"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r2_2"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r3_2"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_3"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_3"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r1_3"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r2_3"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_3"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_4"));
		}else{
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_4"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r1_4"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r2_4"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r3_4"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_5"));
		}else{
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_5"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_vrak_idle_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_5"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_5"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r3_5"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_gut_6"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_6"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_6"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_6"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_6"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_7"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_7"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Mitte", spr_vrak_fragend, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_7"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Mitte", spr_vrak_fragend, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r2_7"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_7"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_gut_8"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_8"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_8"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r2_8"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r3_8"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_9"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_9"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_9"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r2_9"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r3_9"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y ); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_gut_10"));
		}else{
			vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_10"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_10"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r2_10"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r3_10"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_11"));
		}else{
			vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_schlecht_11"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_11"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_11"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r3_11"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_gut_12"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_12"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_12"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_12"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_12"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_gut_13"));
		}else{
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_13"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_13"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_13"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_13"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_gut_14"));
		}else{
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_14"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r1_14"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_14"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_14"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			room_goto(Froschtempel_SE_2_End);
		}else{
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_15"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r1_15"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r2_15"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_15"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_do_continue();
		}else{
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_16"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r1_16"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r2_16"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_buch_d3_r3_16"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_do_continue();
		}else{
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_schlecht_17"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r1_17"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r2_17"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_2_kochen_buch_d3_r3_17"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){//Fliegenpilz
			vngen_do_continue();
		}else{
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_18"));
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_18"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r2_18"));
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_2_kochen_buch_d3_r3_18"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){
			vngen_do_continue();
		}else{
			vngen_do_continue();
		}
	} 
	if(global.f_se_2_kochen_d1 == 2){
		if(global.f_se_2_kochen_d3 = 1){
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r1_19"));
		}
		if(global.f_se_2_kochen_d3 = 2){
			vngen_do_continue();
		}
		if(global.f_se_2_kochen_d3 = 3){
			vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
			vngen_text_replace("Vrak", Text("f_se_2_kochen_buch_d3_r3_19"));
		}
	}
}


if (vngen_event()) {
	if(global.f_se_2_kochen_d1 == 1 || global.f_se_2_kochen_d1 == 0){
		if(global.f_se_2_kochen_wert >= 2){
			vngen_do_continue();
		}else{
			
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

			if (vngen_option("tempel_2_ko_10")) {
				vngen_option_create_transformed("opt_Fliege"," ",  -(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_fliegenfluegel, spr_icon_fliegenfluegel_active, spr_icon_fliegenfluegel_active);
			    vngen_option_create_transformed("opt_Chilli"," ",	(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_chilis, spr_icon_chilis_active, spr_icon_chilis_active);
			}
   
		   switch (vngen_get_option("tempel_2_ko_10", true)) {
		      case "opt_Fliege":	global.f_se_2_kochen_d4 = 1; global.f_se_party++; setOwnValueBonus(); break;
		      case "opt_Chilli":	global.f_se_2_kochen_d4 = 2; setOwnValue(1); break;
		   }	
		}
	} else {
		room_goto(Froschtempel_SE_2_End);
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
		
	if(global.f_se_2_kochen_d4 = 1){
		vngen_text_create("", Text("f_se_2_kochen_zeug_schlecht_d2_r1_0"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_create("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y );
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_d2_r1_1"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_schlecht_d2_r1_2"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y );
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_d2_r2_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r1_3"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_d2_r1_4"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_2_kochen_zeug_schlecht_d2_r2_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r1_5"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r1_6"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Mitte", spr_vrak_fragend, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r1_7"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_2_kochen_zeug_schlecht_d2_r2_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r1_8"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y );
		vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_char_change_sprite("Mitte", spr_vrak_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r1_9"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Mitte", spr_vrak_gluecklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r2_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r1_10"));
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_char_change_sprite("Mitte", spr_vrak_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_do_continue();
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_char_change_sprite("Mitte", spr_vrak_fragend, scale_y); 
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r2_11"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_do_continue();
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r2_12"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_do_continue();
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_replace("Vrak", Text("f_se_2_kochen_zeug_schlecht_d2_r2_13"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_do_continue();
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_char_change_sprite("Mitte", spr_vrak_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_14"));
	}
}

if (vngen_event()) {
	if(global.f_se_2_kochen_d4 = 1){
		vngen_do_continue();
	}
	if(global.f_se_2_kochen_d4 = 2){
		vngen_text_replace("", Text("f_se_2_kochen_zeug_schlecht_d2_r2_15"));
	}
}

if (vngen_event()) {
	room_goto(Froschtempel_SE_2_End);
}

//End VNgen script
vngen_event_reset_target();