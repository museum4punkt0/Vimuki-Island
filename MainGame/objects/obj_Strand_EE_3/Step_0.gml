/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Strand);
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
	if(global.strandIntroPlayed = 0){
		vngen_text_create("", Text("s_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	
	if(global.strandIntroPlayed = 0){
		vngen_text_replace("", Text("s_ee_3_0"));
	} else {	
		vngen_text_create("", Text("s_ee_3_0")); 
	}
}

if (vngen_event()) {
   global.strandIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_3_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_3_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("s_ee_3_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_ok, 1, 0, false, false);
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
   vngen_text_replace("Chad", Text("s_ee_3_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
   vngen_text_replace("", Text("s_ee_3_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_3_6"));
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Sandburgauswahl")) {
	vngen_option_create_transformed("opt_Ausgefallen",	Text("s_ee_3_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_Stabil",		Text("s_ee_3_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	vngen_option_create_transformed("opt_Extrem",		Text("s_ee_3_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("choice_Sandburgauswahl", true)) {
      case "opt_Ausgefallen":	global.s_ee_3_d1 = 1; setOwnValueBonus(); break;
      case "opt_Stabil":		global.s_ee_3_d1 = 2; setSuzanValue(1); setChadValue(-1); setOwnValue(-1); break;
      case "opt_Extrem":		global.s_ee_3_d1 = 3; setSuzanValue(-1); setChadValue(1); setOwnValue(1); break;
   }	
}

//____________________________________AUSGEFALLEN_________________________
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_ee_3_d1 == 1){
		vngen_text_create("", Text("s_ee_3_d1_r1_0"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_text_create("", Text("s_ee_3_d1_r2_0"));
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_create("", Text("s_ee_3_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_text_replace("", Text("s_ee_3_d1_r1_1"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_text_replace("", Text("s_ee_3_d1_r2_1"));
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_replace("", Text("s_ee_3_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_3_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_replace("", Text("s_ee_3_d1_r3_1_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_text_replace("", Text("s_ee_3_d1_r1_2"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_text_replace("", Text("s_ee_3_d1_r2_2"));
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_replace("", Text("s_ee_3_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_ee_3_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_ee_3_d1_r3_2_b"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_text_replace("", Text("s_ee_3_d1_r1_3"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_text_replace("", Text("s_ee_3_d1_r2_3"));
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_replace("", Text("s_ee_3_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_text_replace("", Text("s_ee_3_d1_r1_4"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_text_replace("", Text("s_ee_3_d1_r2_4"));
	}
	if(global.s_ee_3_d1 == 3){
		vngen_text_replace("", Text("s_ee_3_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_text_replace("", Text("s_ee_3_d1_r1_5"));
	}
	if(global.s_ee_3_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_ee_3_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_ee_3_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("choice_Verzierung")) {
		vngen_option_create_transformed("opt_Glanz",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_standard_normal, spr_icon_glaenzendes_objekt, spr_icon_glaenzendes_objekt_active, spr_icon_glaenzendes_objekt_active);
		vngen_option_create_transformed("opt_Muscheln",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_standard_normal, spr_icon_muscheln, spr_icon_muscheln_active, spr_icon_muscheln);
		vngen_option_create_transformed("opt_Pflanzen", " ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_standard_normal, spr_icon_gewaechs, spr_icon_gewaechs_active, spr_icon_gewaechs_active);
		if(global.fliegenklatsche){
			vngen_option_create_transformed("opt_Klatsche",	" ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_standard_normal, spr_icon_fliegenklatsche, spr_icon_fliegenklatsche_active, spr_icon_fliegenklatsche_active);
		}
	}
   
	switch (vngen_get_option("choice_Verzierung", true)) {
		case "opt_Glanz":		global.s_ee_3_d2 = 1; break;
		case "opt_Muscheln":	global.s_ee_3_d2 = 2; break;
		case "opt_Pflanzen":	global.s_ee_3_d2 = 3; break;
		case "opt_Klatsche":	global.s_ee_3_d2 = 4; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
	}	
}

//_________________________________Ausgefallen______________________________
if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_create("", Text("s_ee_3_d2_r1_d1_r1_0"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_create("", Text("s_ee_3_d2_r2_d1_r1_0"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_create("", Text("s_ee_3_d2_r3_d1_r1_0"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_create("", Text("s_ee_3_d2_r4_d1_r1_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_0_b"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r1_1"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_1"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r1_1"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r1_1_b"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_1_b"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_1_b"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r1_2"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_2"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r1_2"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r1_d1_r1_3"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_3"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r1_3"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r1_d1_r1_4"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r2_d1_r1_4"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r1_4"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r4_d1_r1_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r1_5"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r2_d1_r1_5"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r3_d1_r1_5"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r4_d1_r1_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_sandskulptur_von_euch_muell, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandskulptur_von_euch_muell_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r1_6"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_sanskulptur_von_euch_muscheln, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sanskulptur_von_euch_muscheln_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_6"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			
			vngen_text_replace("Chad", Text("s_ee_3_d2_r3_d1_r1_6"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_sandskulptur_von_euch_cubes, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandskulptur_von_euch_cubes_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r1_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 1){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r1_7"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_sandskulptur_von_euch_algen, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandskulptur_von_euch_algen_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r1_7"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

//_________________________________Stabil______________________________
if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_create("", Text("s_ee_3_d2_r1_d1_r2_0"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_create("", Text("s_ee_3_d2_r2_d1_r2_0"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_create("", Text("s_ee_3_d2_r3_d1_r2_0"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_create("", Text("s_ee_3_d2_r4_d1_r2_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_0_b"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r2_1"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_1"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r2_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_1_b"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r2_2"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r2_2"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_2"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r2_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r2_3"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r2_d1_r2_3"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_3"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r2_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r2_4"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r2_4"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Dia", spr_dia_hypercube_algen, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_hypercube_algen_midi);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_4"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r4_d1_r2_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Dia", spr_dia_hypercube_disco, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias( spr_dia_hypercube_disco_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r2_4_b"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r2_d1_r2_5"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r2_5"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r4_d1_r2_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 2){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_hypercube_muscheln, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_hypercube_muscheln_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r2_6"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_hypercube_fliegenklatsche, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_hypercube_fliegenklatsche_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r2_6"));
		}
	}else{
		vngen_do_continue();
	}
}

//_________________________________Extrem______________________________
if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_create("", Text("s_ee_3_d2_r1_d1_r3_0"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_create("", Text("s_ee_3_d2_r2_d1_r3_0"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_create("", Text("s_ee_3_d2_r3_d1_r3_0"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_create("", Text("s_ee_3_d2_r4_d1_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_0_b"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_1"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_1"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_1"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_1_b"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_2"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_2"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_2"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_3"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_3"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_3"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("s_ee_3_d2_r4_d1_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_3_b"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_4"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_4"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_4"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("s_ee_3_d2_r4_d1_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}



if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_4_b"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_4_b"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}



if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Dia", spr_dia_sandburg_scherben, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandburg_scherben_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_5"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_5"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_5"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_5_b"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_6"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_6"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_char_change_sprite("Dia", spr_dia_sandburg_palme, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandburg_palme_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_6"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_text_replace("", Text("s_ee_3_d2_r1_d1_r3_7"));
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_7"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_7"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_char_change_sprite("Dia", spr_dia_sandburg_perle, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandburg_perle_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r2_d1_r3_8"));
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_text_replace("", Text("s_ee_3_d2_r3_d1_r3_8"));
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y);
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_8"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_ee_3_d1 == 3){
		//Glanz
		if(global.s_ee_3_d2 = 1){
			vngen_do_continue();
		}
		//Muscheln
		if(global.s_ee_3_d2 = 2){
			vngen_do_continue();
		}
		//Pflanze
		if(global.s_ee_3_d2 = 3){
			vngen_do_continue();
		}
		//Klatsche
		if(global.s_ee_3_d2 = 4){
			vngen_char_change_sprite("Dia", spr_dia_sandburg_fliegenklatsche, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_sandburg_fliegenklatsche_midi);
			vngen_text_replace("", Text("s_ee_3_d2_r4_d1_r3_9"));
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