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
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Martin", spr_empty, 710, 0, scale_y);
	vngen_text_create("", Text("d_se_2_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y);
   vngen_text_replace("", Text("d_se_2_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
   vngen_text_replace("Chad", Text("d_se_2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y);
   vngen_text_replace("Martin", Text("d_se_2_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y);
   vngen_text_replace("", Text("d_se_2_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_13"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_14"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_15"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
   vngen_text_replace("Chad", Text("d_se_2_17"));
}

if (vngen_event()) {
   vngen_text_replace("Chad", Text("d_se_2_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",spr_suzan_fragend_nachdenklich, scale_y); 
   vngen_text_replace("Suzan", Text("d_se_2_19"));
}

if (vngen_event()) {
   vngen_text_replace("Suzan", Text("d_se_2_20"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("martin_help_0")) {
		vngen_option_create_transformed("opt_Kitzeln",		Text("d_se_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Schokolade",	Text("d_se_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Dazulegen",	Text("d_se_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("martin_help_0", true)) {
      case "opt_Kitzeln":		global.d_se_2_d1a = 1; break;
      case "opt_Schokolade":	global.d_se_2_d1a = 2; break;
      case "opt_Dazulegen":		global.d_se_2_d1a = 3; break;
   }	
}


if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d1_r1_0"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_d1_r2_0"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_d1_r1_1"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_text_replace("", Text("d_se_2_d1_r2_1"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_text_replace("", Text("d_se_2_d1_r1_2"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_text_replace("", Text("d_se_2_d1_r2_2"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_text_replace("", Text("d_se_2_d1_r1_3"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_text_replace("", Text("d_se_2_d1_r2_3"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_text_replace("", Text("d_se_2_d1_r1_4"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r2_4"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d1_r1_5"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d1_r2_5"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_d1_r1_6"));
	}
	if(global.d_se_2_d1a == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r2_6"));
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_9"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_10"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_11"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_12"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_13"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_14"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_15"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_16"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_17"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a == 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 2){
		vngen_do_continue();
	}
	if(global.d_se_2_d1a == 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_18"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("martin_help_1")) {
		   if(global.d_se_2_d1a != 1){
			vngen_option_create_transformed("opt_Kitzeln",		Text("d_se_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		   }
		   if(global.d_se_2_d1a != 2){
			vngen_option_create_transformed("opt_Schokolade",	Text("d_se_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		   }
			vngen_option_create_transformed("opt_Dazulegen",	Text("d_se_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	  }
   
	   switch (vngen_get_option("martin_help_1", true)) {
	      case "opt_Kitzeln":		global.d_se_2_d1b = 1; break;
	      case "opt_Schokolade":	global.d_se_2_d1b = 2; break;
	      case "opt_Dazulegen":		global.d_se_2_d1b = 3; break;
	   }	
	}
}

if (vngen_event()) {
	
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_textbox_create(spr_textbox_Insel); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_d1_r1_0"));
	}
	if(global.d_se_2_d1b == 2){
		vngen_textbox_create(spr_textbox_Insel); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_d1_r2_0"));
	}
	if(global.d_se_2_d1b == 3){
		vngen_textbox_create(spr_textbox_Insel); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_d1_r3_0"));
	}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_2_d1_r1_1"));
		}
		if(global.d_se_2_d1b == 2){
			vngen_text_replace("", Text("d_se_2_d1_r2_1"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("", Text("d_se_2_d1_r3_1"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_text_replace("", Text("d_se_2_d1_r1_2"));
		}
		if(global.d_se_2_d1b == 2){
			vngen_text_replace("", Text("d_se_2_d1_r2_2"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("", Text("d_se_2_d1_r3_2"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_text_replace("", Text("d_se_2_d1_r1_3"));
		}
		if(global.d_se_2_d1b == 2){
			vngen_text_replace("", Text("d_se_2_d1_r2_3"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("", Text("d_se_2_d1_r3_3"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_text_replace("", Text("d_se_2_d1_r1_4"));
		}
		if(global.d_se_2_d1b == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("d_se_2_d1_r2_4"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("", Text("d_se_2_d1_r3_4"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_2_d1_r1_5"));
		}
		if(global.d_se_2_d1b == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_2_d1_r2_5"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_5"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("d_se_2_d1_r1_6"));
		}
		if(global.d_se_2_d1b == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("", Text("d_se_2_d1_r2_6"));
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_6"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_7"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("d_se_2_d1_r3_8"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_9"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_2_d1_r3_10"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("Suzan", Text("d_se_2_d1_r3_11"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_replace("", Text("d_se_2_d1_r3_12"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_13"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
			vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
			vngen_text_replace("Suzan", Text("d_se_2_d1_r3_14"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_text_replace("Suzan", Text("d_se_2_d1_r3_15"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_replace("", Text("d_se_2_d1_r3_16"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
			vngen_text_replace("Martin", Text("d_se_2_d1_r3_17"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3){
		if(global.d_se_2_d1b == 1){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 2){
			vngen_do_continue();
		}
		if(global.d_se_2_d1b == 3){
			vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
			vngen_text_replace("", Text("d_se_2_d1_r3_18"));
		}
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

		if (vngen_option("martin_help_2")) {
			vngen_option_create_transformed("opt_Dazulegen",	Text("d_se_2_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*50, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
 
		switch (vngen_get_option("martin_help_2", true)) {
		    case "opt_Dazulegen":	global.d_se_2_d1c = 3; break;
		}	
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("d_se_2_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("", Text("d_se_2_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_9"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_10"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_11"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_12"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_13"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_14"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_text_replace("Suzan", Text("d_se_2_d1_r3_15"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_16"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_d1_r3_17"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d1a != 3 && global.d_se_2_d1b != 3){
		vngen_char_change_sprite("Martin", spr_martin_traurig_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_d1_r3_18"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("martin_help_3")) {
		vngen_option_create_transformed("opt_versuchen",	Text("d_se_2_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_eindruecke",	Text("d_se_2_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	}
   
	switch (vngen_get_option("martin_help_3", true)) {
	    case "opt_versuchen":	global.d_se_2_d2 = 1; break;
	    case "opt_eindruecke":	global.d_se_2_d2 = 2; break;
	}	
}

if (vngen_event()) {
	if(global.d_se_2_d2 == 1){
		room_goto(Dschungel_SE_2_WeiterVersuchen);
	} else {
		room_goto(Dschungel_SE_2_Eindruecke);
	}
}
//End VNgen script
vngen_event_reset_target();