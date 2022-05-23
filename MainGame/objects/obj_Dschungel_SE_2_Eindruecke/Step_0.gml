/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_dschungel);
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
	vngen_char_create_ext("Suzan", spr_suzan_fragend_nachdenklich, 1450, 0, scale_y);
	vngen_char_create_ext("Martin", spr_martin_traurig_grey, 710, 0, scale_y);
	vngen_text_create("Suzan", Text("d_se_2_d2_r2_0")); 
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Martin",spr_martin_traurig, scale_y); 
   vngen_text_replace("Martin", Text("d_se_2_d2_r2_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich, scale_y); 
	vngen_char_change_sprite("Martin",spr_martin_traurig_grey, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_2_d2_r2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_d2_r2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",spr_martin_traurig, scale_y); 
   vngen_text_replace("Martin", Text("d_se_2_d2_r2_4"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("martin_insp_ein_0")) {
		vngen_option_create_transformed("opt_natur",Text("d_se_2_d2_r2_d5_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_fern",	Text("d_se_2_d2_r2_d5_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("martin_insp_ein_0", true)) {
      case "opt_natur":	global.d_se_2_d5 = 1; setOwnValue(-1); break;
      case "opt_fern":	global.d_se_2_d5 = 2; setOwnValue(1); break;
   }	
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_create("Suzan", Text("d_se_2_d2_r2_d5_r1_0"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d2_r2_d5_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_1"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_2"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r2_d5_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_3"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_4"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_5"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_6"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r2_d5_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r1_7"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r2_d5_r1_8"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r1_9"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r1_10"));
	}
	if(global.d_se_2_d5 == 2){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	if(global.d_se_2_d5 == 1){
		room_goto(Dschungel_SE_2_FantastischInspiriert);
	}
	if(global.d_se_2_d5 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("martin_insp_ein_1")) {
			vngen_option_create_transformed("opt_cart",		Text("d_se_2_d2_r2_d5_r2_d6_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_wissen",	Text("d_se_2_d2_r2_d5_r2_d6_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("martin_insp_ein_1", true)) {
	      case "opt_cart":		global.d_se_2_d6 = 1;	setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	      case "opt_wissen":	global.d_se_2_d6 = 2;	setSuzanValue(1); setChadValue(1); break;
	   }	
	}
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_d2_r2_d5_r2_d6_r1_0"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Suzan", Text("d_se_2_d2_r2_d5_r2_d6_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r1_1"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r1_2"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r1_3"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_schockiert, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r2_d5_r2_d6_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r1_4"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r2_d6_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r2_d5_r2_d6_r1_5"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r2_d5_r2_d6_r1_6"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r1_7"));
	}
	if(global.d_se_2_d6 == 2){
		vngen_text_replace("", Text("d_se_2_d2_r2_d5_r2_d6_r2_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d6 == 1){
		room_goto(Dschungel_SE_2_NormalInspiriert);
	}
	if(global.d_se_2_d6 == 2){
		room_goto(Dschungel_SE_2_NichtInspiriert);
	}
}

//End VNgen script
vngen_event_reset_target();