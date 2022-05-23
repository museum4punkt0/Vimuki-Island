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
	vngen_char_create_ext("Martin", spr_empty, 710, 50, scale_y);
	if(global.dschungelIntroPlayed = 0){
		vngen_text_replace("", Text("d_se_1_0"));
	} else {	
		vngen_text_create("", Text("d_se_1_0")); 
	}
}

if (vngen_event()) {
   global.dschungelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("d_se_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("d_se_1_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
   vngen_text_replace("Chad", Text("d_se_1_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
   vngen_text_replace("", Text("d_se_1_8"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_D_Suchen")) {
		vngen_option_create_transformed("opt_Boden",Text("d_se_1_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Umgebung",	Text("d_se_1_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("choice_D_Suchen", true)) {
      case "opt_Boden":		global.d_se_1_d1 = 1; break;
      case "opt_Umgebung":	global.d_se_1_d1 = 2; break;
   }	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_1_d1_r1_0"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("d_se_1_d1_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r1_1"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d1_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_text_replace("", Text("d_se_1_d1_r1_2"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_1_d1_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_text_replace("", Text("d_se_1_d1_r1_3"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d1_r1_4"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("d_se_1_d1_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_text_replace("Chad", Text("d_se_1_d1_r1_5"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y );
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("d_se_1_d1_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r1_6"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d1_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_text_replace("", Text("d_se_1_d1_r1_7"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r2_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r1_8"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r2_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_text_replace("", Text("d_se_1_d1_r1_9"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_text_replace("", Text("d_se_1_d1_r2_9"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d1_r1_10"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d1_r2_10"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("d_se_1_d1_r1_11"));
	}
	if(global.d_se_1_d1 == 2){
		vngen_text_replace("", Text("d_se_1_d1_r2_11"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d1_r2_12"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.d_se_1_d1 == 2){
		vngen_text_replace("", Text("d_se_1_d1_r2_13"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d1_r2_14"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_do_continue();
	}
	if(global.d_se_1_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y );
		vngen_text_replace("Chad", Text("d_se_1_d1_r2_15"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
   vngen_text_replace("Chad", Text("d_se_1_9"));
}

if (vngen_event()) {
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y );
   vngen_text_replace("", Text("d_se_1_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y );
	vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
   vngen_text_replace("Chad", Text("d_se_1_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y );
   vngen_text_replace("Suzan", Text("d_se_1_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
   vngen_text_replace("", Text("d_se_1_13"));
}


if (vngen_event()) {
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("choice_D_Help")) {
		vngen_option_create_transformed("opt_Hilfe",	Text("d_se_1_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Entkommen",Text("d_se_1_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Warten",	Text("d_se_1_d2_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
		switch (vngen_get_option("choice_D_Help", true)) {
		    case "opt_Hilfe":		global.d_se_1_d2 = 1; break;
		    case "opt_Entkommen":	global.d_se_1_d2 = 2; break;
		    case "opt_Warten":		global.d_se_1_d2 = 3; break;
		}	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
		
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_text_create("", Text("d_se_1_d2_r1_0"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		vngen_text_create("", Text("d_se_1_d2_r2_0"));
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_text_create("", Text("d_se_1_d2_r3_0"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_1"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_fallgrube_1"));
		} else { //Springfalle
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_springfalle_1"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_text_replace("", Text("d_se_1_d2_r3_1"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_1_d2_r1_2"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_2"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d2_r2_springfalle_2"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_text_replace("", Text("d_se_1_d2_r3_2"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d2_r1_3_fall"));
		} else { //Springfalle
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d2_r1_3_spring"));
		}
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_3"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_springfalle_3"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_text_replace("", Text("d_se_1_d2_r3_3"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r1_4_fall"));
		} else { //Springfalle
			vngen_text_replace("", Text("d_se_1_d2_r1_4_spring"));
		}
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_fallgrube_4"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d2_r2_springfalle_4"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_text_replace("", Text("d_se_1_d2_r3_4"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d2_r1_5"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d2_r2_fallgrube_5"));
		} else { //Springfalle
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d2_r2_springfalle_5"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d2_r3_5"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_6"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_6"));
		} else { //Springfalle
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			
			vngen_text_replace("", Text("d_se_1_d2_r2_springfalle_6"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r3_fallgrube_6"));
		} else { //Springfalle
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d2_r3_springfalle_6"));
		}
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_1_d2_r1_7"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_7"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d2_r2_springfalle_7"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d2_r3_fallgrube_7"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_text_replace("", Text("d_se_1_d2_r1_8"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_8"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_springfalle_8"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_04, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_9"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_fallgrube_9"));
		} else { //Springfalle
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d2_r2_springfalle_9"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_10"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d2_r2_fallgrube_10"));
		} else { //Springfalle
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d2_r2_springfalle_10"));
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_small_animal_01, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_11"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("d_se_1_d2_r2_fallgrube_11"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d2_r1_12"));
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_12"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_13"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_14"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	}
	//Entkommen
	if(global.d_se_1_d2 = 2){
		if(global.d_se_1_d1 = 1){ //Fallgrube
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d2_r2_fallgrube_15"));
		} else { //Springfalle
			vngen_do_continue();
		}
	}
	//Warten
	if(global.d_se_1_d2 = 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	} else{
		vngen_text_replace("", Text("d_se_1_uebergang_ohne_hilfe_0"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	} else{
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_uebergang_ohne_hilfe_1"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	} else{
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_wut, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_text_replace("Suzan", Text("d_se_1_uebergang_ohne_hilfe_2"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	} else{
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_1_uebergang_ohne_hilfe_3"));
	}
}

if (vngen_event()) {
	//Hilfe
	if(global.d_se_1_d2 = 1){
		vngen_do_continue();
	} else{
		vngen_text_replace("", Text("d_se_1_uebergang_ohne_hilfe_4"));
	}
}

if (vngen_event()) {
	room_goto(Dschungel_SE_1b); 
	vngen_do_continue(); 
}

//End VNgen script
vngen_event_reset_target();