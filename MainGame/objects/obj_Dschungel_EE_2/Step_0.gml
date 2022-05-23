/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
	vngen_scene_create_start(spr_bg_dschungel);
	vngen_textbox_create_start(spr_textbox_Insel);
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}


if(vngen_event()){
	if(global.dschungelIntroPlayed = 0){
		vngen_text_create("", Text("d_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.dschungelIntroPlayed = 0){
		vngen_text_replace("", Text("d_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}


if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Louis", spr_empty, 700, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.dschungelIntroPlayed = 0){
		vngen_text_replace("", Text("d_ee_2_0"));
	} else {	
		vngen_text_create("", Text("d_ee_2_0")); 
	}
}

if (vngen_event()) {
   global.dschungelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_ee_2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_ee_2_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_ee_2_3"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Baumhaus")) {
	vngen_option_create_transformed("opt_Affen",	Text("d_ee_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Online",	Text("d_ee_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	vngen_option_create_transformed("opt_Klettern",	Text("d_ee_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("choice_Baumhaus", true)) {
      case "opt_Affen":		global.d_ee_2_d1 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
      case "opt_Online":	global.d_ee_2_d1 = 2; setSuzanValue(1); setOwnValue(-1); break;
      case "opt_Klettern":	global.d_ee_2_d1 = 3; setChadValue(1); setOwnValue(1); break;
   }	
}

//____________________________________Affen_________________________
if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_2_d1_r1_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		vngen_text_replace("", Text("d_ee_2_d1_r1_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		
		vngen_text_replace("", Text("d_ee_2_d1_r1_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		vngen_text_replace("", Text("d_ee_2_d1_r1_3"));
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Affen_Baumhaus")) {
			vngen_option_create_transformed("opt_Leuchtend"," ",	-(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_leuchtobjekt, spr_icon_leuchtobjekt_active, spr_icon_leuchtobjekt_active);
			vngen_option_create_transformed("opt_Stock"," ",		(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_ast, spr_icon_ast_active, spr_icon_ast_active);
				if(global.seil){
					vngen_option_create_transformed("opt_Seil", " ",-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_seil, spr_icon_seil_active, spr_icon_seil_active);
				}
		}
   
		switch (vngen_get_option("choice_Affen_Baumhaus", true)) {
		    case "opt_Seil":		global.d_ee_2_d2 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
		    case "opt_Leuchtend":	global.d_ee_2_d2 = 2; break;
		    case "opt_Stock":		global.d_ee_2_d2 = 3; break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_text_create("", Text("d_ee_2_d2_r1_0"));
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_text_create("", Text("d_ee_2_d2_r2_0"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			
			vngen_text_create("", Text("d_ee_2_d2_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_2_d2_r1_1"));
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_text_replace("", Text("d_ee_2_d2_r2_1"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_text_replace("", Text("d_ee_2_d2_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_text_replace("", Text("d_ee_2_d2_r1_2"));
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("d_ee_2_d2_r2_2"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_text_replace("", Text("d_ee_2_d2_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_char_change_sprite("Dia", spr_dia_getraenke_auf_veranda, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_getraenke_auf_veranda_midi);
			vngen_text_replace("", Text("d_ee_2_d2_r1_3"));
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("d_ee_2_d2_r2_3"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
			vngen_text_replace("Chad", Text("d_ee_2_d2_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_do_continue();
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d2_r2_4"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d2_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_do_continue();
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d2_r2_5"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("d_ee_2_d2_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_do_continue();
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_text_replace("", Text("d_ee_2_d2_r2_6"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("d_ee_2_d2_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 1){
		//Seil
		if(global.d_ee_2_d2 = 1){
			vngen_do_continue();
		}
		//Leuchtend
		if(global.d_ee_2_d2 = 2){
			vngen_char_change_sprite("Dia", spr_dia_affen_uebernachtungsparty, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_affen_uebernachtungsparty_midi);
			vngen_text_replace("", Text("d_ee_2_d2_r2_7"));
		}
		//Stock
		if(global.d_ee_2_d2 = 3){
			vngen_char_change_sprite("Dia", spr_dia_affensause, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_affensause_midi);
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d2_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

//_____________________________Online_________________________________
if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_2_d1_r2_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
		vngen_text_replace("Chad", Text("d_ee_2_d1_r2_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("d_ee_2_d1_r2_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
		vngen_text_replace("", Text("d_ee_2_d1_r2_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("d_ee_2_d1_r2_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("d_ee_2_d1_r2_5"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_6"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_7"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_8"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_9"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("d_ee_2_d1_r2_10"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("d_ee_2_d1_r2_11"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("d_ee_2_d1_r2_12"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_text_replace("", Text("d_ee_2_d1_r2_12_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_13"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_text_replace("", Text("d_ee_2_d1_r2_14"));
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Baumhaus_Online")) {
			vngen_option_create_transformed("opt_Baumharz"," ",	-(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_harz, spr_icon_harz_active, spr_icon_harz_active);
			vngen_option_create_transformed("opt_Schlamm"," ",		(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_match, spr_icon_matsch_active, spr_icon_matsch_active);
				if(global.seil){
					vngen_option_create_transformed("opt_Seil2", " ",-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_seil, spr_icon_seil_active, spr_icon_seil_active);
				}
		}
   
		switch (vngen_get_option("choice_Baumhaus_Online", true)) {
		    case "opt_Seil2":		global.d_ee_2_d3 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
		    case "opt_Baumharz":	global.d_ee_2_d3 = 2; break;
		    case "opt_Schlamm":		global.d_ee_2_d3 = 3; break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_text_create("", Text("d_ee_2_d3_r1_0"));
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_text_create("", Text("d_ee_2_d3_r2_0"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_text_create("", Text("d_ee_2_d3_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_text_replace("", Text("d_ee_2_d3_r1_1"));
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r2_1"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_char_change_sprite("Dia", spr_dia_baumhaus_schlecht, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_baumhaus_schlecht_midi);
			vngen_text_replace("", Text("d_ee_2_d3_r1_2"));
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y);
			vngen_text_replace("Chad", Text("d_ee_2_d3_r2_2"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
			vngen_text_replace("Chad", Text("d_ee_2_d3_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d3_r2_3"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d3_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_text_replace("", Text("d_ee_2_d3_r2_3_b"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}




if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r2_4"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_text_replace("", Text("d_ee_2_d3_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d3_r2_5"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_text_replace("", Text("d_ee_2_d3_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r2_6"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_text_replace("", Text("d_ee_2_d3_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_char_change_sprite("Dia", spr_dia_vogelhaus, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_vogelhaus_midi);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d3_r2_7"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_text_replace("", Text("d_ee_2_d3_r2_8"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_text_replace("Chad", Text("d_ee_2_d3_r3_8"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_text_replace("", Text("d_ee_2_d3_r2_9"));
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r3_9"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_do_continue();
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("d_ee_2_d3_r3_10"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_do_continue();
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d3_r3_11"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_do_continue();
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d3_r3_12"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_do_continue();
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_text_replace("", Text("d_ee_2_d3_r3_13"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 2){
		//Seil
		if(global.d_ee_2_d3 = 1){
			vngen_do_continue();
		}
		//Baumharz
		if(global.d_ee_2_d3 = 2){
			vngen_do_continue();
		}
		//Schlamm
		if(global.d_ee_2_d3 = 3){
			vngen_char_change_sprite("Dia", spr_dia_lehmhuette, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_lehmhuette_midi);
			vngen_text_replace("", Text("d_ee_2_d3_r3_14"));
		}
	}else{
		vngen_do_continue();
	}
}

//_____________________________Klettern_________________________________
if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_2_d1_r3_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_text_replace("", Text("d_ee_2_d1_r3_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_text_replace("", Text("d_ee_2_d1_r3_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("d_ee_2_d1_r3_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_ee_2_d1_r3_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_text_replace("", Text("d_ee_2_d1_r3_5"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_text_replace("", Text("d_ee_2_d1_r3_5_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_text_replace("", Text("d_ee_2_d1_r3_6"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_text_replace("", Text("d_ee_2_d1_r3_7"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Klettern")) {
			vngen_option_create_transformed("opt_Honig"," ",	-(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_bienenstock, spr_icon_bienenstock_active, spr_icon_bienenstock_active);
			vngen_option_create_transformed("opt_runter"," ",		(camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_pfeil_unten, spr_icon_pfeil_unten_active, spr_icon_pfeil_unten_active);
				if(global.seil){
					vngen_option_create_transformed("opt_Seil3", " ",-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_seil, spr_icon_seil_active, spr_icon_seil_active);
				}
		}
   
		switch (vngen_get_option("choice_Klettern", true)) {
		    case "opt_Seil3":		global.d_ee_2_d4 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
		    case "opt_Honig":		global.d_ee_2_d4 = 2; break;
		    case "opt_runter":		global.d_ee_2_d4 = 3; break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_text_create("", Text("d_ee_2_d4_r1_0"));
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_text_create("", Text("d_ee_2_d4_r2_0"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_text_create("", Text("d_ee_2_d4_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_ee_2_d4_r1_1"));
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_text_replace("", Text("d_ee_2_d4_r2_1"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d4_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("d_ee_2_d4_r1_2"));
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_text_replace("", Text("d_ee_2_d4_r2_2"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_text_replace("", Text("d_ee_2_d4_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y); 
			vngen_char_change_sprite("Dia", spr_dia_schlafsaecke_haengen_von_baum, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schlafsaecke_haengen_von_baum_midi);
			vngen_text_replace("", Text("d_ee_2_d4_r1_3"));
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y);
			vngen_text_replace("Chad", Text("d_ee_2_d4_r2_3"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_text_replace("", Text("d_ee_2_d4_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_do_continue();
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_ekel, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_2_d4_r2_4"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_char_change_sprite("Dia", spr_dia_sternenhimmel, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sternenhimmel_midi);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d4_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_do_continue();
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_ekel_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d4_r2_5"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_do_continue();
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d4_r2_6"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_do_continue();
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_char_change_sprite("Dia", spr_dia_fette_bienenstiche_nacht, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_fette_bienenstiche_nacht_midi);
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
			vngen_text_replace("", Text("d_ee_2_d4_r2_7"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_2_d1 == 3){
		//Seil
		if(global.d_ee_2_d4 = 1){
			vngen_do_continue();
		}
		//Honig
		if(global.d_ee_2_d4 = 2){
			vngen_text_replace("", Text("d_ee_2_d4_r2_8"));
		}
		//Runter
		if(global.d_ee_2_d4 = 3){
			vngen_do_continue();
		}
	}else{
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