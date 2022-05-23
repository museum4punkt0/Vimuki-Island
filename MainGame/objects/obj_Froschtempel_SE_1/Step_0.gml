/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_froschtempel);
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
	if(global.tempelIntroPlayed = 0){
		
		vngen_text_create("", Text("f_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_0_b")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext(Text("f_se_1_frosch"), spr_empty, 650, 0, scale_y);
	vngen_char_create_ext("Croak", spr_empty, 650, 0, scale_y);
	if(global.tempelIntroPlayed = 0){
		vngen_text_replace("", Text("f_se_1_0"));
	} else {	
		vngen_text_create("", Text("f_se_1_0")); 
	}
}

if (vngen_event()) {
   global.tempelIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich, scale_y );
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("f_se_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y); 
	vngen_char_change_sprite("Chad",spr_chad_fragend_nachdenklich_grey, scale_y );
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("f_se_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("f_se_1_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_7"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_1")) {
		vngen_option_create_transformed("opt_Schlamm"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_dreck_schlamm, spr_icon_dreck_schlamm_active, spr_icon_dreck_schlamm_active);
	    vngen_option_create_transformed("opt_Gebuesch",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_gebuesch_, spr_icon_gebuesch_active, spr_icon_gebuesch_active);
	    vngen_option_create_transformed("opt_Felsen", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_felsen, spr_icon_felsen_active, spr_icon_felsen_active);
  }
   
   switch (vngen_get_option("tempel_1", true)) {
      case "opt_Schlamm":	global.f_se_1_d1a = 2; break;
      case "opt_Gebuesch":	global.f_se_1_d1a = 1; break;
      case "opt_Felsen":	global.f_se_1_d1a = 3; break;
   }	
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_d1a == 1){
		vngen_text_create("", Text("f_se_1_d1_r1_0"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_text_create("", Text("f_se_1_d1_r2_0"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_text_create("", Text("f_se_1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r1_1"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_1"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_2"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_2"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_3"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_3"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r1_4"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_4"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_5"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r2_5"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_6"));
	}
	if(global.f_se_1_d1a == 2){
		vngen_text_replace("", Text("f_se_1_d1_r2_6"));
	}
	if(global.f_se_1_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1a == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_d1a == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_7"));
	}
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_2")) {
	   if(global.f_se_1_d1a != 2){
			vngen_option_create_transformed("opt_Schlamm"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_dreck_schlamm, spr_icon_dreck_schlamm_active, spr_icon_dreck_schlamm_active);
	   }
	   if(global.f_se_1_d1a != 1){
			vngen_option_create_transformed("opt_Gebuesch",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_gebuesch_, spr_icon_gebuesch_active, spr_icon_gebuesch_active);
	   }	
	   if(global.f_se_1_d1a != 3){
			vngen_option_create_transformed("opt_Felsen", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_felsen, spr_icon_felsen_active, spr_icon_felsen_active);
	   }
  }
  
   
   switch (vngen_get_option("tempel_2", true)) {
      case "opt_Schlamm":	global.f_se_1_d1b = 2; break;
      case "opt_Gebuesch":	global.f_se_1_d1b = 1; break;
      case "opt_Felsen":	global.f_se_1_d1b = 3; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_d1b == 1){
		vngen_text_create("", Text("f_se_1_d1_r1_0"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_text_create("", Text("f_se_1_d1_r2_0"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_text_create("", Text("f_se_1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r1_1"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_1"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_2"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_2"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_3"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_3"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r1_4"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_4"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_5"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r2_5"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_6"));
	}
	if(global.f_se_1_d1b == 2){
		vngen_text_replace("", Text("f_se_1_d1_r2_6"));
	}
	if(global.f_se_1_d1b == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1b == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_d1b == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d1b == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_7"));
	}
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_3")) {
	   if(!(global.f_se_1_d1a == 2 || global.f_se_1_d1b == 2)){
			vngen_option_create_transformed("opt_Schlamm"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_dreck_schlamm, spr_icon_dreck_schlamm_active, spr_icon_dreck_schlamm_active);
	   }
	   if(!(global.f_se_1_d1a == 1 || global.f_se_1_d1b == 1)){
			vngen_option_create_transformed("opt_Gebuesch",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_gebuesch_, spr_icon_gebuesch_active, spr_icon_gebuesch_active);
	   }	
	   if(!(global.f_se_1_d1a == 3 || global.f_se_1_d1b == 3)){
			vngen_option_create_transformed("opt_Felsen", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_felsen, spr_icon_felsen_active, spr_icon_felsen_active);
	   }
  }
 
   switch (vngen_get_option("tempel_3", true)) {
      case "opt_Schlamm":	global.f_se_1_d1c = 2; break;
      case "opt_Gebuesch":	global.f_se_1_d1c = 1; break;
      case "opt_Felsen":	global.f_se_1_d1c = 3; break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_d1c == 1){
		vngen_text_create("", Text("f_se_1_d1_r1_0"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_text_create("", Text("f_se_1_d1_r2_0"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_text_create("", Text("f_se_1_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_d1_r1_1"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_1"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_2"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_2"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_3"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r2_3"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r1_4"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r2_4"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_text_replace("", Text("f_se_1_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r1_5"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d1_r2_5"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_text_replace("", Text("f_se_1_d1_r1_6"));
	}
	if(global.f_se_1_d1c == 2){
		vngen_text_replace("", Text("f_se_1_d1_r2_6"));
	}
	if(global.f_se_1_d1c == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d1c == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_d1c == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d1c == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d1_r3_7"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
   vngen_text_replace("Chad", Text("f_se_1_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
   vngen_text_replace("Suzan", Text("f_se_1_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
	vngen_char_change_sprite("Dia", spr_dia_frosch_in_falle, scale_prop_x_y ); 
	SaveDias(spr_dia_frosch_in_falle_midi);
   vngen_text_replace("", Text("f_se_1_14"));
}

if (vngen_event()) {
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Dia", spr_empty, scale_prop_x_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_16"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_17"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_18"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_19"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_21"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_4")) {
		vngen_option_create_transformed("opt_Ast",		Text("f_se_1_d2_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Bummer",	Text("f_se_1_d2_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Termiten",	Text("f_se_1_d2_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Lupe",		Text("f_se_1_d2_o4"), 0, -(camera_get_view_height(view_camera[0])/100)*20, -5, 0.7, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("tempel_4", true)) {
      case "opt_Ast":		global.f_se_1_d2 = 1; break;
      case "opt_Bummer":	global.f_se_1_d2 = 2; break;
      case "opt_Termiten":	global.f_se_1_d2 = 3; break;
      case "opt_Lupe":		global.f_se_1_d2 = 4; break;
   }	
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("Chad", Text("f_se_1_d2_r1_0"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_d2_r2_0"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_d2_r3_0"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_d2_r4_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_1_d2_r1_1"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_text_replace("", Text("f_se_1_d2_r2_1"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_text_replace("", Text("f_se_1_d2_r3_1"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_text_replace("", Text("f_se_1_d2_r4_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_1_d2_r1_2"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_d2_r2_2"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_text_replace("", Text("f_se_1_d2_r3_2"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_text_replace("", Text("f_se_1_d2_r4_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d2_r1_3"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_text_replace("Chad", Text("f_se_1_d2_r2_3"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_d2_r3_3"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_d2_r4_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_text_replace("", Text("f_se_1_d2_r1_4"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d2_r2_4"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d2_r3_4"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_d2_r4_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_text_replace("", Text("f_se_1_d2_r1_5"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_text_replace("", Text("f_se_1_d2_r2_5"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d2_r3_5"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_d2_r4_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_text_replace("", Text("f_se_1_d2_r1_6"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d2_r2_6"));
	}
	if(global.f_se_1_d2 == 3){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d2_r3_6"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_d2_r4_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_text_replace("", Text("f_se_1_d2_r1_7"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 3){
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("", Text("f_se_1_d2_r3_7"));
	}
	if(global.f_se_1_d2 == 4){
		vngen_text_replace("", Text("f_se_1_d2_r4_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_text_replace("", Text("f_se_1_d2_r1_8"));
	}
	if(global.f_se_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 3){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 4){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_d2_r4_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 2){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 3){
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 4){
		vngen_text_replace("", Text("f_se_1_d2_r4_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d2 == 1){
		global.f_se_1_freund = true; 
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 2){
		global.f_se_1_freund = true; 
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 3){
		global.f_se_1_freund = false; 
		vngen_do_continue();
	}
	if(global.f_se_1_d2 == 4){
		global.f_se_1_freund = false; 
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("", Text("f_se_1_d2_r4_10"));
	}
}

//____________________________________FREUND___________
if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_freund_0"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_gluecklich_, scale_y );
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_freund_1"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_freund_2"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_empty, scale_y ); 
		vngen_char_change_sprite("Croak",spr_croak_gluecklich_, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Croak", Text("f_se_1_freund_3"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite("Croak",spr_croak_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_freund_4"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite("Croak",spr_croak_wuetend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace("Croak", Text("f_se_1_freund_5"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite("Croak",spr_croak_gluecklich_, scale_y ); 
		vngen_text_replace("Croak", Text("f_se_1_freund_6"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		vngen_char_change_sprite("Croak",spr_croak_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_freund_7"));
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_freund){
		room_goto(Froschtempel_SE_1a);
	} else {
		vngen_do_continue();
	}
}

//_____________FEIND____________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
	vngen_text_replace("Chad", Text("f_se_1_feind_0"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
	vngen_text_replace("Suzan", Text("f_se_1_feind_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_text_replace("Chad", Text("f_se_1_feind_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
	vngen_text_replace("Suzan", Text("f_se_1_feind_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
	vngen_text_replace("", Text("f_se_1_feind_4"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_feind_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y );
	vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
	vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
	vngen_text_replace("Suzan", Text("f_se_1_feind_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
	vngen_text_replace("", Text("f_se_1_feind_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
	vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
	vngen_text_replace("Chad", Text("f_se_1_feind_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
	vngen_text_replace("Suzan", Text("f_se_1_feind_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_text_replace("", Text("f_se_1_feind_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
	vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
	vngen_text_replace("", Text("f_se_1_feind_15"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_feind_16"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_feind_17"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_feind_18"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_empty, scale_y ); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_freind")) {
		vngen_option_create_transformed("opt_Bio",		Text("f_se_1_feind_d3_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Pflanze",	Text("f_se_1_feind_d3_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("tempel_freind", true)) {
      case "opt_Bio":		global.f_se_1_d3 = 1; setChadValue(1); setOwnValue(1) break;
      case "opt_Pflanze":	global.f_se_1_d3 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
   }	
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
	vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_d3 == 1){
		vngen_text_create("", Text("f_se_1_feind_d3_r1_0"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_text_create("", Text("f_se_1_feind_d3_r2_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_1"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_2"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("f_se_1_feind_d3_r2_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_3"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_text_replace("Suzan", Text("f_se_1_feind_d3_r2_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_feind_d3_r1_4"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r1_5"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_feind_d3_r1_6"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_feind_d3_r2_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_7"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_7"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_8"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y );
		vngen_audio_play_sound("sound", sfx_char_frosch_01, 1, 0, false, false);
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r2_8"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_feind_d3_r1_9"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_9"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r1_10"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_lachend, scale_y ); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r2_10"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("Chad", Text("f_se_1_feind_d3_r1_11"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_lachend_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_feind_d3_r2_11"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend, scale_y ); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r1_12"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_lachend, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r2_12"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r1_13"));
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_lachend_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("f_se_1_feind_d3_r2_13"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 1){
		room_goto(Froschtempel_SE_1b);
	}
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_croak_lachend, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace(Text("f_se_1_frosch"), Text("f_se_1_feind_d3_r2_14"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite(Text("f_se_1_frosch"),spr_empty, scale_y ); 
		vngen_char_change_sprite("Croak",spr_croak_lachend, scale_y ); 
		vngen_text_replace("Croak", Text("f_se_1_feind_d3_r2_15"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Croak",spr_croak_lachend_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_16"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_17"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_18"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Croak",spr_croak_lachend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Croak", Text("f_se_1_feind_d3_r2_19"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		vngen_char_change_sprite("Croak",spr_croak_lachend_grey, scale_y ); 
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_feind_d3_r2_20"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_d3 == 2){
		room_goto(Froschtempel_SE_1a);
	}
}

//End VNgen script
vngen_event_reset_target();