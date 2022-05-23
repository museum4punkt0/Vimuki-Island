/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_Hoehle);
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
	if(global.hoehleIntroPlayed = 0){
		vngen_text_create("", Text("t_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	if(global.hoehleIntroPlayed = 0){
		vngen_text_replace("", Text("t_se_1_0"));
	} else {	
		vngen_text_create("", Text("t_se_1_0")); 
	}
}

if (vngen_event()) {
   global.hoehleIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
   vngen_text_replace("", Text("t_se_1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
   vngen_text_replace("Chad", Text("t_se_1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y ); 
   vngen_text_replace("Suzan", Text("t_se_1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("t_se_1_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
   vngen_text_replace("", Text("t_se_1_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_1_8"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_0")) {
		vngen_option_create_transformed("opt_schmal",	Text("t_se_1_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		 vngen_option_create_transformed("opt_breit",	Text("t_se_1_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("hoehle_0", true)) {
      case "opt_schmal":	global.t_se_1_d1 = 1; break;
      case "opt_breit":		global.t_se_1_d1 = 2; break;
   }	
}


if (vngen_event()) {
	if(global.t_se_1_d1 == 1){
		room_goto(Tropfsteinhoehle_SE_1_Schmall);
	}
	if(global.t_se_1_d1 == 2){
		room_goto(Tropfsteinhoehle_SE_1_Breit);
	}
}

//End VNgen script
vngen_event_reset_target();