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
	vngen_char_create_ext("Chad", spr_chad_gluecklich, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Martin", spr_martin_traurig_grey, 710, 0, scale_y);
	vngen_text_create("Chad", Text("d_se_2_d2_r1_0")); 
}

if (vngen_event()) {
	
   vngen_text_replace("Chad", Text("d_se_2_d2_r1_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
   vngen_text_replace("", Text("d_se_2_d2_r1_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_2_d2_r1_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
   vngen_text_replace("Chad", Text("d_se_2_d2_r1_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
	vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
   vngen_text_replace("Martin", Text("d_se_2_d2_r1_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_d2_r1_6"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("martin_insp_0")) {
		vngen_option_create_transformed("opt_ideen",Text("d_se_2_d2_r1_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_perf",	Text("d_se_2_d2_r1_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("martin_insp_0", true)) {
      case "opt_ideen":	global.d_se_2_d3 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
      case "opt_perf":	global.d_se_2_d3 = 2; setSuzanValue(1); setChadValue(1); break;
   }	
}


if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d2_r1_d3_r1_0"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d2_r1_d3_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r1_1"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_text_replace("Chad", Text("d_se_2_d2_r1_d3_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Martin",	spr_idle_martin, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r1_2"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d2_r1_d3_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_idle_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r1_3"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r1_d3_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Martin",	spr_idle_martin, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r1_4"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_text_replace("Chad", Text("d_se_2_d2_r1_d3_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r1_5"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d2_r1_d3_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r1_6"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r1_7"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r2_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r1_8"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r1_9"));
	}
	if(global.d_se_2_d3 == 2){
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.d_se_2_d3 == 1){
		room_goto(Dschungel_SE_2_FantastischInspiriert);
	}
	if(global.d_se_2_d3 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("martin_insp_1")) {
			vngen_option_create_transformed("opt_dran",		Text("d_se_2_d2_r1_d3_r2_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			vngen_option_create_transformed("opt_locker",	Text("d_se_2_d2_r1_d3_r2_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("martin_insp_1", true)) {
	      case "opt_dran":	global.d_se_2_d4 = 1; setSuzanValue(1); setChadValue(1); break;
	      case "opt_locker":	global.d_se_2_d4 = 2; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	   }	
	}
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d4 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d2_r1_d3_r2_d4_r1_0"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Suzan", Text("d_se_2_d2_r1_d3_r2_d4_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Martin",	spr_martin_konzentriert_beim_malen_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_1"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_2"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_konzentriert_beim_malen_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_3"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_4"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_5"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r2_d4_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_6"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d2_r1_d3_r2_d4_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r1_7"));
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin",	spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d2_r1_d3_r2_d4_r2_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d4 == 1){
		room_goto(Dschungel_SE_2_NichtInspiriert);
	}
	if(global.d_se_2_d4 == 2){
		vngen_char_change_sprite("Martin",	spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d2_r1_d3_r2_d4_r2_8"));
	}
}

if (vngen_event()) {
	vngen_text_replace("Chad", Text("d_se_2_d2_r1_d3_r2_d4_r2_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Martin",	spr_martin_idle_grey, scale_y); 
	vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",	spr_martin_konzentriert_beim_malen_grey, scale_y); 
	vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_11"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_12"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin",	spr_martin_gluecklich_grey, scale_y); 
	vngen_text_replace("", Text("d_se_2_d2_r1_d3_r2_d4_r2_14"));
}

if (vngen_event()) {
	room_goto(Dschungel_SE_2_NormalInspiriert);
}

//End VNgen script
vngen_event_reset_target();