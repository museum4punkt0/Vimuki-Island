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
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext(Text("d_ee_1_name_0"), spr_empty, 600, 0, scale_y); //paradiesvogelblume
	vngen_char_create_ext(Text("d_ee_1_name_1"), spr_empty, 700, 0, scale_y); //farn
	vngen_char_create_ext(Text("d_ee_1_name_2"), spr_empty, 700, 0, scale_y); //kaktus
	
	if(global.dschungelIntroPlayed = 0){
		vngen_text_replace("", Text("d_ee_1_0"));
	} else {	
		vngen_text_create("", Text("d_ee_1_0")); 
	}
}

if (vngen_event()) {
   global.dschungelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("d_ee_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_ee_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
	vngen_text_replace("Chad", Text("d_ee_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
   vngen_text_replace("Suzan", Text("d_ee_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("d_ee_1_5"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Blumenwiese")) {
		vngen_option_create_transformed("opt_Paradies"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_paradiesvogelblume, spr_icon_paradiesvogelblume_active, spr_icon_paradiesvogelblume_active);
	    vngen_option_create_transformed("opt_Kaktus",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_kaktus, spr_icon_kaktus_active, spr_icon_kaktus_active);
	    vngen_option_create_transformed("opt_Farn", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_farn_active, spr_icon_farn_active, spr_icon_farn_active);
  }
   
   switch (vngen_get_option("choice_Blumenwiese", true)) {
      case "opt_Paradies":	global.d_ee_1_d1 = 1; break;
      case "opt_Kaktus":	global.d_ee_1_d1 = 2; break;
      case "opt_Farn":		global.d_ee_1_d1 = 3; break;
   }	
}

//____________________________________PARADIESVOGEL_________________________
if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_1_d1_r1_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
		vngen_text_replace("", Text("d_ee_1_d1_r1_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle,scale_y);
		vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
		vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d1_r1_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle_grey, scale_y);

		vngen_text_replace("", Text("d_ee_1_d1_r1_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_text_replace("", Text("d_ee_1_d1_r1_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Paradiesvogelblume")) {
		vngen_option_create_transformed("opt_Begruessung",	Text("d_ee_1_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Bilder",		Text("d_ee_1_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Sorry",		Text("d_ee_1_d2_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("choice_Paradiesvogelblume", true)) {
		    case "opt_Begruessung":	global.d_ee_1_d2 = 1; setSuzanValue(-1); setOwnValueBonus(); break;
		    case "opt_Bilder":		global.d_ee_1_d2 = 2; setSuzanValue(1);  setChadValue(1);  setOwnValue(1); break;
		    case "opt_Sorry":		global.d_ee_1_d2 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle_grey, scale_y);
			vngen_text_create("", Text("d_ee_1_d2_r1_0"));
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle_grey, scale_y);
			vngen_text_create("", Text("d_ee_1_d2_r2_0"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle_grey, scale_y);
			vngen_text_create("Suzan", Text("d_ee_1_d2_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_text_replace("", Text("d_ee_1_d2_r1_1"));
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r2_1"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("d_ee_1_d2_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich, scale_y);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r1_2"));
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d2_r2_2"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich, scale_y);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_paradiesvogelblume_schnuppern, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_erdhuegel_midi);
			vngen_text_replace("", Text("d_ee_1_d2_r1_3"));
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_text_replace("", Text("d_ee_1_d2_r2_3"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d2_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_text_replace("", Text("d_ee_1_d2_r1_4"));
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_idle, scale_y);
			vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r2_4"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich, scale_y);
			vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_do_continue();
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_erdhuegel, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_erdhuegel_midi);
			vngen_text_replace("", Text("d_ee_1_d2_r2_5"));
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d2_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_do_continue();
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_do_continue();
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich, scale_y);
			vngen_text_replace(Text("d_ee_1_name_0"), Text("d_ee_1_d2_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_do_continue();
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_do_continue();
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_0"), spr_paradiesvogelblume_gluecklich_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d2_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 1){
		//Handeln erklaeren
		if(global.d_ee_1_d2 = 1){
			vngen_do_continue();
		}
		//Bilder machen
		if(global.d_ee_1_d2 = 2){
			vngen_do_continue();
		}
		//Entschuldigen
		if(global.d_ee_1_d2 = 3){
			vngen_char_change_sprite("Dia", spr_dia_schlamm_fuss, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_schlamm_fuss_midi);
			vngen_text_replace("", Text("d_ee_1_d2_r3_8"));
		}
	}else{
		vngen_do_continue();
	}
}

//_____________________________Kaktus_________________________________
if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle_grey, scale_y);
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_1_d1_r2_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_text_replace("", Text("d_ee_1_d1_r2_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("d_ee_1_d1_r2_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y ); 
		vngen_text_replace("Suzan", Text("d_ee_1_d1_r2_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("d_ee_1_d1_r2_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle, scale_y);
		vngen_text_replace("", Text("d_ee_1_d1_r2_5"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_kaktus_01, 1, 0, false, false);
		vngen_text_replace(Text("d_ee_1_name_2"), Text("d_ee_1_d1_r2_6"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle_grey, scale_y);
		vngen_text_replace("", Text("d_ee_1_d1_r2_7"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_text_replace("", Text("d_ee_1_d1_r2_7_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_text_replace("", Text("d_ee_1_d1_r2_8"));
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Kaktus")) {
		vngen_option_create_transformed("opt_Singen",	Text("d_ee_1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Giessen",	Text("d_ee_1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Umarmen",	Text("d_ee_1_d3_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("choice_Kaktus", true)) {
		    case "opt_Singen":		global.d_ee_1_d3 = 1; setSuzanValue(-1); setOwnValueBonus(); break;
		    case "opt_Giessen":		global.d_ee_1_d3 = 2; setChadValue(1); setOwnValue(1); break;
		    case "opt_Umarmen":		global.d_ee_1_d3 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle_grey, scale_y);
		vngen_textbox_create(spr_textbox_Insel);
		
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_create("", Text("d_ee_1_d3_r1_0"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_create("", Text("d_ee_1_d3_r2_0"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_text_create("", Text("d_ee_1_d3_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_do_continue();
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_do_continue();
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_audio_play_sound("sound", sfx_char_kaktus_02, 1, 0, false, false);
			vngen_text_replace("", Text("d_ee_1_d3_r3_0_b"));
		}
	}else{
		vngen_do_continue();
	}
}




if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("d_ee_1_d3_r1_1"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_1"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_text_replace("", Text("d_ee_1_d3_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d3_r1_2"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_2"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y ); 
			vngen_text_replace("Chad", Text("d_ee_1_d3_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_replace("", Text("d_ee_1_d3_r1_3"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_3"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d3_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_replace("", Text("d_ee_1_d3_r1_3_b"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_do_continue();
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d3_r1_4"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_4"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_2"), Text("d_ee_1_d3_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d3_r1_5"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_5"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_idle_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d3_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_replace("", Text("d_ee_1_d3_r1_6"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_text_replace("", Text("d_ee_1_d3_r2_6"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_text_replace("", Text("d_ee_1_d3_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_replace("", Text("d_ee_1_d3_r1_7"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("d_ee_1_d3_r2_7"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_kaktus_gluecklich_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("d_ee_1_d3_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_text_replace("", Text("d_ee_1_d3_r1_8"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_empty, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Dia", spr_dia_kaktus_geschwollen_ungluecklich, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_kaktus_geschwollen_ungluecklich_midi);
			vngen_text_replace("", Text("d_ee_1_d3_r2_8"));
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_text_replace("", Text("d_ee_1_d3_r3_8"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_kaktus_tanzend_gluecklich, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_kaktus_tanzend_gluecklich_midi);
			vngen_text_replace("", Text("d_ee_1_d3_r1_9"));
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_do_continue();
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_text_replace("", Text("d_ee_1_d3_r3_9"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 2){
		//Singen
		if(global.d_ee_1_d3 = 1){
			vngen_do_continue();
		}
		//Giessen
		if(global.d_ee_1_d3 = 2){
			vngen_do_continue();
		}
		//Umarmen
		if(global.d_ee_1_d3 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_2"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_happy_kaktus, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_happy_kaktus_midi);
			vngen_text_replace("", Text("d_ee_1_d3_r3_10"));
		}
	}else{
		vngen_do_continue();
	}
}

//_____________________________Farn_________________________________
if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_ee_1_d1_r3_0"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_text_replace("", Text("d_ee_1_d1_r3_0_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_text_replace("", Text("d_ee_1_d1_r3_1"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_pflanzen, 1, 0, false, false);
		vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d1_r3_2"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
		vngen_text_replace("", Text("d_ee_1_d1_r3_3"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("d_ee_1_d1_r3_3_b"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("d_ee_1_d1_r3_4"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("d_ee_1_d1_r3_5"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
		vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d1_r3_6"));
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
		vngen_text_replace("", Text("d_ee_1_d1_r3_7"));
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_Farn")) {
		vngen_option_create_transformed("opt_Geschaeft",	Text("d_ee_1_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Spielen",		Text("d_ee_1_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Misstrauen",	Text("d_ee_1_d4_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("choice_Farn", true)) {
		    case "opt_Geschaeft":	global.d_ee_1_d4 = 1; setChadValue(1); setOwnValue(1); break;
		    case "opt_Spielen":		global.d_ee_1_d4 = 2; setSuzanValue(-1); setOwnValueBonus(); break;
		    case "opt_Misstrauen":	global.d_ee_1_d4 = 3; setOwnValueBonus(); break;
		}	
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		vngen_textbox_create(spr_textbox_Insel);
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_create("", Text("d_ee_1_d4_r1_0"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_create("Suzan", Text("d_ee_1_d4_r2_0"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_text_create("", Text("d_ee_1_d4_r3_0"));
		}
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r1_1"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r2_1"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r3_1"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r1_2"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r2_2"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_text_replace("", Text("d_ee_1_d4_r3_2"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_do_continue();
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_do_continue();
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_ee_1_d4_r3_2_b"));
		}
	}else{
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_text_replace("", Text("d_ee_1_d4_r1_3"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r2_3"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r3_3"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_text_replace("", Text("d_ee_1_d4_r1_3_b"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_do_continue();
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_text_replace("", Text("d_ee_1_d4_r1_4"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r2_4"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r3_4"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("d_ee_1_d4_r1_5"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_text_replace("", Text("d_ee_1_d4_r2_5"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_text_replace("", Text("d_ee_1_d4_r3_5"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("d_ee_1_d4_r1_6"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_text_replace("", Text("d_ee_1_d4_r2_6"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r3_6"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r1_7"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_1_d4_r2_7"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r3_7"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r1_8"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_2"), Text("d_ee_1_d4_r2_8"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_gruppenbild_mit_farn_und_jacke, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_gruppenbild_mit_farn_und_jacke_midi);
			vngen_text_replace("", Text("d_ee_1_d4_r3_8"));
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_text_replace("", Text("d_ee_1_d4_r1_9"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle_grey, scale_y);
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y);
			vngen_text_replace("Suzan", Text("d_ee_1_d4_r2_9"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_farn_idle, scale_y);
			vngen_text_replace(Text("d_ee_1_name_1"), Text("d_ee_1_d4_r1_10"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y);
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y);
			vngen_text_replace("", Text("d_ee_1_d4_r2_10"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_empty, scale_y);
			vngen_audio_play_sound("sound", sfx_char_pflanzen, 1, 0, false, false);
			vngen_text_replace("", Text("d_ee_1_d4_r1_11"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_char_change_sprite(Text("d_ee_1_name_1"), spr_empty, scale_y);
			vngen_char_change_sprite("Dia", spr_dia_farn_flieht_in_boden, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_farn_flieht_in_boden_midi);
			vngen_text_replace("", Text("d_ee_1_d4_r2_11"));
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
			vngen_do_continue();
		}
	}else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_ee_1_d1 == 3){
		
		//Geschaeft
		if(global.d_ee_1_d4 = 1){
			vngen_char_change_sprite("Dia", spr_dia_bigfoot_chad, scale_prop_x_y ); 
			vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
			SaveDias(spr_dia_bigfoot_chad_midi);
			vngen_text_replace("", Text("d_ee_1_d4_r1_12"));
		}
		//Spielen
		if(global.d_ee_1_d4 = 2){
			vngen_do_continue();
		}
		//Misstrauen
		if(global.d_ee_1_d4 = 3){
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