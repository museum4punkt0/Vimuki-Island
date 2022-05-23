/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_dschungel);
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
	vngen_char_create_ext("Suzan", spr_empty, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Martin", spr_empty, 710, 50, scale_prop_x_y);
	vngen_do_continue()
}


if(vngen_event()){

   if (vngen_option("choice_D_Fragen")) {
		vngen_option_create_transformed("opt_Wer",	Text("d_se_1_d2_r1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Was",	Text("d_se_1_d2_r1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Warum",Text("d_se_1_d2_r1_d3_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("choice_D_Fragen", true)) {
      case "opt_Wer":	global.d_se_1_d3 = 1; break;
      case "opt_Was":	global.d_se_1_d3 = 2; break;
      case "opt_Warum":	global.d_se_1_d3 = 3; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_1_d3 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r1_0"));
	} else if(global.d_se_1_d3 == 2) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r2_0"));	
	} else if(global.d_se_1_d3 == 3) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_1"));
	} else if(global.d_se_1_d3 == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_1"));	
	} else if(global.d_se_1_d3 == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r3_1"));
	}
}
 
 if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r1_2"));
	} else if(global.d_se_1_d3 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_d3_r2_2"));	
	} else if(global.d_se_1_d3 == 3) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_d2_r1_d3_r1_3"));
	} else if(global.d_se_1_d3 == 2) {
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_3"));	
	} else if(global.d_se_1_d3 == 3) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_4"));
	} else if(global.d_se_1_d3 == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_4"));	
	} else if(global.d_se_1_d3 == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_5"));
	} else {
		vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3 == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_6"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin",  spr_empty, scale_y );
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_D_Fragen_B")) {
		if(global.d_se_1_d3 != 1){
			vngen_option_create_transformed("opt_Wer",	Text("d_se_1_d2_r1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
		 if(global.d_se_1_d3 != 2){
			vngen_option_create_transformed("opt_Was",	Text("d_se_1_d2_r1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
		if(global.d_se_1_d3 != 3){
			vngen_option_create_transformed("opt_Warum",Text("d_se_1_d2_r1_d3_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
}
   
   switch (vngen_get_option("choice_D_Fragen_B", true)) {
      case "opt_Wer":	global.d_se_1_d3b = 1; break;
      case "opt_Was":	global.d_se_1_d3b = 2; break;
      case "opt_Warum":	global.d_se_1_d3b = 3; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_1_d3b == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r1_0"));
	} else if(global.d_se_1_d3b == 2) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r2_0"));	
	} else if(global.d_se_1_d3b == 3) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_1"));
	} else if(global.d_se_1_d3b == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_1"));	
	} else if(global.d_se_1_d3b == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r3_1"));
	}
}
 
 if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r1_2"));
	} else if(global.d_se_1_d3b == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_d3_r2_2"));	
	} else if(global.d_se_1_d3b == 3) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_d2_r1_d3_r1_3"));
	} else if(global.d_se_1_d3b == 2) {
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_3"));	
	} else if(global.d_se_1_d3b == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_4"));
	} else if(global.d_se_1_d3b == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_4"));	
	} else if(global.d_se_1_d3b == 3) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_5"));
	} else {
		vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3b == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_6"));
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin",  spr_empty, scale_y );
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_D_Fragen_C")) {
		if(global.d_se_1_d3b != 1 && global.d_se_1_d3 != 1){
			vngen_option_create_transformed("opt_Wer",	Text("d_se_1_d2_r1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
		 if(global.d_se_1_d3b != 2 && global.d_se_1_d3 != 2){
			vngen_option_create_transformed("opt_Was",	Text("d_se_1_d2_r1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
		if(global.d_se_1_d3b != 3 && global.d_se_1_d3 != 3){
			vngen_option_create_transformed("opt_Warum",Text("d_se_1_d2_r1_d3_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
}
   
   switch (vngen_get_option("choice_D_Fragen_C", true)) {
      case "opt_Wer":	global.d_se_1_d3c = 1; break;
      case "opt_Was":	global.d_se_1_d3c = 2; break;
      case "opt_Warum":	global.d_se_1_d3c = 3; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_1_d3c == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r1_0"));
	} else if(global.d_se_1_d3c == 2) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r2_0"));	
	} else if(global.d_se_1_d3c == 3) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_create("Martin", Text("d_se_1_d2_r1_d3_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_1"));
	} else if(global.d_se_1_d3c == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_1"));	
	} else if(global.d_se_1_d3c == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r3_1"));
	}
}
 
 if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d2_r1_d3_r1_2"));
	} else if(global.d_se_1_d3c == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d2_r1_d3_r2_2"));	
	} else if(global.d_se_1_d3c == 3) {
		vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("d_se_1_d2_r1_d3_r1_3"));
	} else if(global.d_se_1_d3c == 2) {
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_3"));	
	} else if(global.d_se_1_d3c == 3) {
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_4"));
	} else if(global.d_se_1_d3c == 2) {
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r2_4"));	
	} else if(global.d_se_1_d3c == 3) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_5"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d3c == 1){
		vngen_text_replace("Martin", Text("d_se_1_d2_r1_d3_r1_6"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_uebergang_mit_hilfe"));
}

if (vngen_event()) {
	if(global.d_se_1_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
		vngen_text_replace("Chad", Text("d_se_1_15_a"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_15_b"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
	vngen_text_replace("", Text("d_se_1_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
	vngen_text_replace("Martin", Text("d_se_1_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
	vngen_text_replace("Chad", Text("d_se_1_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
	vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
	vngen_text_replace("Martin", Text("d_se_1_19"));
}

if (vngen_event()) {
	vngen_text_replace("Martin", Text("d_se_1_20"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	vngen_char_change_sprite("Suzan",spr_suzan_wut, scale_y); 
	vngen_text_replace("Suzan", Text("d_se_1_21"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_text_replace("", Text("d_se_1_22"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_23"));
}
if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_24"));
}
if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_25"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_26"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_genervt_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
	vngen_text_replace("", Text("d_se_1_27"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_text_replace("", Text("d_se_1_28"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
	vngen_text_replace("Martin", Text("d_se_1_29"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
	vngen_text_replace("Suzan", Text("d_se_1_30"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y); 
	vngen_text_replace("", Text("d_se_1_31"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
	vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
	vngen_text_replace("Martin", Text("d_se_1_32"));
}

if (vngen_event()) {
	vngen_text_replace("Martin", Text("d_se_1_33"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
	vngen_text_replace("Chad", Text("d_se_1_34"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
	vngen_text_replace("Martin", Text("d_se_1_35"));
}

if (vngen_event()) {
	vngen_text_replace("Martin", Text("d_se_1_36"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	vngen_text_replace("", Text("d_se_1_37"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_1_38"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin",  spr_empty, scale_y );
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_D_Kaefer_suchen")) {
		vngen_option_create_transformed("opt_Spinnen"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_spinnennetz, spr_icon_spinnennetz_active, spr_icon_spinnennetz_active);
	    vngen_option_create_transformed("opt_Unterholz"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_unterholz, spr_icon_unterholz_active, spr_icon_unterholz_active);
  }
   
   switch (vngen_get_option("choice_D_Kaefer_suchen", true)) {
      case "opt_Spinnen":	global.d_se_1_d4 = 2; break;
      case "opt_Unterholz":	global.d_se_1_d4 = 1; break;
   }	
}

//Im Unterholz________________________________________________________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	if(global.d_se_1_d4 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_se_1_d4_r1_0"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r1_1"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d4_r1_2"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r1_3"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_d4_r1_4"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d4_r1_5"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_text_replace("Martin", Text("d_se_1_d4_r1_6"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_kaefer_idle, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r1_7"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_text_replace("", Text("d_se_1_d4_r1_8"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_text_replace("", Text("d_se_1_d4_r1_9"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_d4_r1_10"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_01, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d4_r1_11"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r1_12"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_text_replace("", Text("d_se_1_d4_r1_13"));
	} else{
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin",  spr_empty, scale_y );
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Kaefer_Fragen_A")) {
			vngen_option_create_transformed("opt_Fragen",	Text("d_se_1_d4_r1_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_Verhandlen",Text("d_se_1_d4_r1_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			if(global.multitool){
				vngen_option_create_transformed("opt_Multitool",Text("d_se_1_d4_r1_d5_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
	  }
   
	   switch (vngen_get_option("choice_Kaefer_Fragen_A", true)) {
	      case "opt_Fragen":		global.d_se_1_d5 = 1; setOwnValue(-1); break;
	      case "opt_Verhandlen":	global.d_se_1_d5 = 2; global.d_se_1_ersatz = 1; setOwnValue(1); break;
	      case "opt_Multitool":		global.d_se_1_d5 = 3; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   }	
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_textbox_create(spr_textbox_Insel);
		if(global.d_se_1_d5 == 1){
			vngen_text_create("", Text("d_se_1_d4_r1_d5_r1_0"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_create("", Text("d_se_1_d4_r1_d5_r2_0"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_create("", Text("d_se_1_d4_r1_d5_r3_0"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r1_1"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_1"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_1"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_2"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r2_2"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_07, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r3_2"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_3"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r2_3"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r3_3"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_4"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r2_4"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r3_4"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_5"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r2_5"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r3_5"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_6"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_6"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r3_6"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r1_7"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_7"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r3_7"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_small_animal_04, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_8"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_8"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_8"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_9"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_04, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_9"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_9"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_10"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_10"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_10"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_11"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_11"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r3_11"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r1_12"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_12"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_12"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_04, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_13"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_13"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_13"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r1_14"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_14"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_14"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_15"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_15"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_kaefer_idle, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_15"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_16"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r2_16"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_16"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_17"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r2_17"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_17"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r1_18"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r1_d5_r2_18"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_18"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_konzentriert_beim_malen_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_19"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_03, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_19"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_19"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_20"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_20"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_20"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_21"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r2_21"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r3_21"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_22"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r2_22"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_22"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_23"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_23"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r3_23"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_24"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_text_replace("Suzan", Text("d_se_1_d4_r1_d5_r2_24"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_25"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r2_25"));	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_26"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_do_continue();	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("Martin", Text("d_se_1_d4_r1_d5_r1_27"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_do_continue();	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_28"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_do_continue();	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_29"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_do_continue();	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 1){
		if(global.d_se_1_d5 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r1_d5_r1_30"));
		} else if(global.d_se_1_d5 == 2) {
			vngen_do_continue();	
		} else if(global.d_se_1_d5 == 3) {
			vngen_do_continue();
		}
	}
}

//Im Spinnennetz________________________________________________________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
	
	if(global.d_se_1_d4 == 2){
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_se_1_d4_r2_0"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_text_replace("", Text("d_se_1_d4_r2_1"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d4_r2_2"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r2_3"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_text_replace("", Text("d_se_1_d4_r2_4"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
		vngen_text_replace("Martin", Text("d_se_1_d4_r2_5"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_d4_r2_6"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Martin",  spr_kaefer_idle, scale_y );
		vngen_text_replace("", Text("d_se_1_d4_r2_7"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_text_replace("Suzan", Text("d_se_1_d4_r2_8"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_d4_r2_9"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
		vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
		vngen_text_replace("Suzan", Text("d_se_1_d4_r2_10"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
		vngen_text_replace("Chad", Text("d_se_1_d4_r2_11"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_ekel_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_1_d4_r2_12"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_text_replace("", Text("d_se_1_d4_r2_13"));
	} else{
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_text_replace("", Text("d_se_1_d4_r2_14"));
	} else{
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin",  spr_empty, scale_y );
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Kaefer_Fragen_B")) {
			vngen_option_create_transformed("opt_motiv",		Text("d_se_1_d4_r2_d6_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_heraus",		Text("d_se_1_d4_r2_d6_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			if(global.multitool){
				vngen_option_create_transformed("opt_Multitool",Text("d_se_1_d4_r2_d6_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			}
	  }
   
	   switch (vngen_get_option("choice_Kaefer_Fragen_B", true)) {
	      case "opt_motiv":			global.d_se_1_d6 = 1; setOwnValue(-1); break;
	      case "opt_heraus":		global.d_se_1_d6 = 2; global.d_se_1_ersatz = 1; setOwnValue(1); break;
	      case "opt_Multitool":		global.d_se_1_d6 = 3;	setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   }	
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_textbox_create(spr_textbox_Insel);
		if(global.d_se_1_d6 == 1){
			vngen_text_create("", Text("d_se_1_d4_r2_d6_r1_0"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_text_create("", Text("d_se_1_d4_r2_d6_r2_0"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_create("", Text("d_se_1_d4_r2_d6_r3_0"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_1"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r2_1"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_1"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r2_d6_r1_2"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r2_2"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_2"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r1_3"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r2_3"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_3"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r2_d6_r1_4"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r2_4"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_4"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_idle_martin, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r1_5"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r2_5"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_5"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r1_6"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r2_6"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_6"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_7"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r2_7"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_7"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_8"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_1_d4_r2_d6_r2_8"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_8"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_9"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r2_9"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_9"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_10"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r2_10"));	
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
			vngen_char_change_sprite("Martin",  spr_kaefer_idle, scale_y );
			vngen_text_replace("Suzan", Text("d_se_1_d4_r2_d6_r3_10"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_11"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Martin",  spr_kaefer_idle, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_11"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_12"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r3_12"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_13"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r3_13"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_14"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r3_14"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_15"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r3_15"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_16"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_17"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r1_18"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
			vngen_text_replace("Martin", Text("d_se_1_d4_r2_d6_r1_19"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_20"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("d_se_1_d4_r2_d6_r1_21"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.d_se_1_d4 == 2){
		if(global.d_se_1_d6 == 1){
			vngen_text_replace("", Text("d_se_1_d4_r2_d6_r1_22"));
		} else if(global.d_se_1_d6 == 2) {
			vngen_do_continue();
		} else if(global.d_se_1_d6 == 3) {
			vngen_do_continue();
		}
	}
}


if(vngen_event()){
	if(global.d_se_1_ersatz == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin",  spr_empty, scale_y );
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_FarbeErsatz")) {
			vngen_option_create_transformed("opt_geheim",		Text("d_se_1_d7_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_material",		Text("d_se_1_d7_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("choice_FarbeErsatz", true)) {
	      case "opt_geheim":	global.d_se_1_d7 = 1; 	break;
	      case "opt_material":	global.d_se_1_d7 = 2; 	break;
	   }	
	}
}

if (vngen_event()) {
	
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_idle_grey, scale_y );
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_se_1_gehfarbe_0"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_traurig, scale_y );
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("Martin", Text("d_se_1_material_0"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_end_good_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_1"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_material_1"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_end_good_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_2"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_material_2"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_end_good_2"));
	}
}


if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_gehfarbe_3"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_material_3"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_1_end_good_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_gehfarbe_4"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_text_replace("", Text("d_se_1_material_4"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_1_end_good_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_5"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_material_5"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_text_replace("", Text("d_se_1_end_good_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_6"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_1_material_6"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_text_replace("", Text("d_se_1_end_good_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_7"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_material_7"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_text_replace("Martin", Text("d_se_1_end_good_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_8"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_text_replace("", Text("d_se_1_material_8"));	
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich_grey, scale_y );
	} else if(global.d_se_1_d7 == 0) {
		vngen_char_change_sprite("Martin",  spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_foto_martin, scale_prop_x_y ); 
		SaveDias(spr_dia_foto_martin_midi);
		vngen_text_replace("", Text("d_se_1_end_good_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_traurig_grey, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("d_se_1_gehfarbe_9"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_text_replace("", Text("d_se_1_material_9"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_10"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_text_replace("", Text("d_se_1_material_10"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_11"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_stolz, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_1_material_11"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_12"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Martin",  spr_martin_stolz_grey, scale_y );
		vngen_text_replace("", Text("d_se_1_material_12"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_1_gehfarbe_13"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_text_replace("", Text("d_se_1_material_13"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_1_gehfarbe_14"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_char_change_sprite("Dia", spr_dia_foto_martin, scale_prop_x_y ); 
		SaveDias(spr_dia_foto_martin_midi);
		vngen_text_replace("", Text("d_se_1_material_14"));	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_15"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_do_continue();	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_text_replace("", Text("d_se_1_gehfarbe_16"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_do_continue();	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Martin",  spr_martin_gluecklich, scale_y );
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_1_gehfarbe_17"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_do_continue();	
	} else if(global.d_se_1_d7 == 0) {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_1_d7 == 1){
		vngen_char_change_sprite("Martin",  spr_empty, scale_y );
		vngen_char_change_sprite("Dia", spr_dia_foto_martin, scale_prop_x_y ); 
		SaveDias(spr_dia_foto_martin_midi);
		vngen_text_replace("Martin", Text("d_se_1_gehfarbe_18"));
	} else if(global.d_se_1_d7 == 2) {
		vngen_do_continue();	
	} else if(global.d_se_1_d7 == 0) {
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