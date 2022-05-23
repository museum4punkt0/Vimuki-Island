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
	vngen_char_create_ext("Chad", spr_chad_besorgt_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Martin", spr_martin_traurig_grey, 710, 0, scale_y);
	vngen_text_create("", Text("d_se_2_insp_nicht_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_nicht_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y);
   vngen_text_replace("Chad", Text("d_se_2_insp_nicht_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
   vngen_text_replace("Suzan", Text("d_se_2_insp_nicht_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
	vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
   vngen_text_replace("Martin", Text("d_se_2_insp_nicht_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_nicht_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_nicht_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_nicht_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_nicht_8"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("martin_nicht")) {
		vngen_option_create_transformed("opt_nicht",Text("d_se_2_insp_nicht_d8_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_aufg",	Text("d_se_2_insp_nicht_d8_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	 }
   
   switch (vngen_get_option("martin_nicht", true)) {
      case "opt_nicht":		global.d_se_2_d8 = 1;	setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
      case "opt_aufg":	global.d_se_2_d8 = 2;		setSuzanValue(1); setChadValue(1); break;
   }	
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d8== 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_insp_nicht_d8_r1_0"));
	}
	if(global.d_se_2_d8 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_insp_nicht_d8_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d8== 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_nicht_d8_r1_1"));
	}
	if(global.d_se_2_d8 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d8== 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_2"));
	}
	if(global.d_se_2_d8 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_2_d8== 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_3"));
	}
	if(global.d_se_2_d8 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.d_se_2_d8== 1){
		if(global.multitool){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Martin", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

		   if (vngen_option("martin_nicht_1")) {
				vngen_option_create_transformed("opt_nichts",	Text("d_se_2_insp_nicht_d8_r1_d9_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
				vngen_option_create_transformed("opt_multitool",Text("d_se_2_insp_nicht_d8_r1_d9_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			 }
   
		   switch (vngen_get_option("martin_nicht_1", true)) {
		      case "opt_nichts":	global.d_se_2_d9 = 1; break;
		      case "opt_multitool":	global.d_se_2_d9 = 2; global.multitoolUsed = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
		   }
		} else {
			global.d_se_2_d9 = 1;
			vngen_textbox_destroy();
			vngen_text_destroy();
			vngen_do_continue(); 
		}
	}
	if(global.d_se_2_d8 == 2){
		if(global.multitool){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite("Martin", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

		   if (vngen_option("martin_nicht_2")) {
				vngen_option_create_transformed("opt_hinwerfen",Text("d_se_2_insp_nicht_d8_r2_d10_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
				vngen_option_create_transformed("opt_multitool",Text("d_se_2_insp_nicht_d8_r2_d10_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
			 }
   
		   switch (vngen_get_option("martin_nicht_2", true)) {
		      case "opt_hinwerfen":	global.d_se_2_d10 = 1; break;
		      case "opt_multitool":	global.d_se_2_d10 = 2; global.multitoolUsed = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
		   }
		} else {
			global.d_se_2_d10 = 1;
			vngen_textbox_destroy();
			vngen_text_destroy();
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_0"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_0"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_insp_nicht_d8_r2_d10_r1_0"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_1"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_1"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_nicht_d8_r2_d10_r1_1"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_nicht_d8_r1_d9_r1_2"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_2"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_nicht_d8_r2_d10_r1_2"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_nicht_d8_r1_d9_r1_3"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_3"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r1_3"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_nicht_d8_r1_d9_r1_4"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_4"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r2_d10_r1_4"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r1_d9_r1_5"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_5"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r1_5"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_nicht_d8_r1_d9_r1_6"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_6"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r1_6"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_7"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_7"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r1_7"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_8"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_8"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_char_change_sprite("Dia", spr_dia_popcorn, scale_prop_x_y ); 
		SaveDias(spr_dia_popcorn_midi);
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r1_8"));
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_nicht_d8_r2_d10_r2_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_char_change_sprite("Dia", spr_dia_bohneneintopf, scale_prop_x_y ); 
		SaveDias( spr_dia_bohneneintopf_midi);
		vngen_text_replace("Chad", Text("d_se_2_insp_nicht_d8_r1_d9_r1_9"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_9"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_9"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_10"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_10"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_10"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_11"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r1_d9_r2_11"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_11"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r1_12"));
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_12"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r2_d10_r2_12"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d9 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r1_d9_r2_13"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_13"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d9 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r1_d9_r2_14"));
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_text_replace("", Text("d_se_2_insp_nicht_d8_r2_d10_r2_14"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d9 == 2){
		room_goto(Dschungel_SE_2_Artefakt);
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_nicht_d8_r2_d10_r2_15"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d9 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d9 == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d10 == 2){
		room_goto(Dschungel_SE_2_Artefakt);
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