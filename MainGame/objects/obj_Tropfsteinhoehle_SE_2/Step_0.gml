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
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext_back(Text("t_se_2_bear"), spr_empty, 250, 50, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_text_create("", Text("t_se_2_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
   vngen_text_replace("", Text("t_se_2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("t_se_2_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("Chad", Text("t_se_2_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("t_se_2_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
   vngen_text_replace("", Text("t_se_2_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
   vngen_text_replace("Chad", Text("t_se_2_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("t_se_2_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y);
   vngen_text_replace("", Text("t_se_2_13"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_0")) {
		vngen_option_create_transformed("opt_hoehle",	Text("t_se_2_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_draussen",	Text("t_se_2_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("hoehle_0", true)) {
      case "opt_hoehle":	global.t_se_2_d1 = 1; setSuzanValue(1); setOwnValue(-1); break;
      case "opt_draussen":	global.t_se_2_d1 = 2; setChadValue(1); setOwnValue(1); break;
   }	
}

//_____________________________Hoehle_______________________
if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("t_se_2_d1_r1_0"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_text_replace("", Text("t_se_2_d1_r1_1"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_text_replace("", Text("t_se_2_d1_r1_2"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
		vngen_text_replace("Chad", Text("t_se_2_d1_r1_3"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
		vngen_text_replace("Suzan", Text("t_se_2_d1_r1_4"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_d1_r1_5"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		vngen_text_replace("", Text("t_se_2_d1_r1_6"));
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
		if(global.t_se_2_d1 == 1){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_textbox_destroy();
			vngen_text_destroy();

		  if (vngen_option("hoehle_1")) {
				vngen_option_create_transformed("opt_rein",	Text("t_se_2_d1_r1_d2_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
				vngen_option_create_transformed("opt_rufe",	Text("t_se_2_d1_r1_d2_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		  }
   
		   switch (vngen_get_option("hoehle_1", true)) {
		      case "opt_rein":	global.t_se_2_d2 = 1; break;
		      case "opt_rufe":	global.t_se_2_d2 = 2; break;
		   }	
		}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d2 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_d1_r1_d2_r1_0"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
			vngen_text_create("Chad", Text("t_se_2_d1_r1_d2_r2_0"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r1_1"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_genervt, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_d1_r1_d2_r2_1"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_schlafend_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r1_2"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
			vngen_text_replace("Chad", Text("t_se_2_d1_r1_d2_r2_2"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r1_3"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_3"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
			vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r1_4"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_d1_r1_d2_r2_4"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r1_5"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_5"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend, scale_y ); 
			vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_d1_r1_d2_r1_6"));
		}
		if(global.t_se_2_d2 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_6"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_nuede_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_7"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d2 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_8"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 1){
		if(global.t_se_2_d2 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d2 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_d1_r1_d2_r2_9"));
		}
	}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

//_____________________________Raus_______________________
if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("t_se_2_d1_r2_0"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_text_replace("", Text("t_se_2_d1_r2_1"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_text_replace("", Text("t_se_2_d1_r2_2"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_2_d1_r2_3"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_2_d1_r2_4"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_d1_r2_5"));
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
		if(global.t_se_2_d1 == 2){
			vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_empty, scale_y ); 
			vngen_textbox_destroy();
			vngen_text_destroy();

		  if (vngen_option("hoehle_2")) {
				vngen_option_create_transformed("opt_bach",	" ",-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_bach, spr_icon_bach_active, spr_icon_bach_active);
				vngen_option_create_transformed("opt_baum"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_bienenstock, spr_icon_bienenstock_active, spr_icon_bienenstock_active);
		  }
   
		   switch (vngen_get_option("hoehle_2", true)) {
		      case "opt_bach":	global.t_se_2_d3 = 1; break;
		      case "opt_baum":	global.t_se_2_d3 = 2; break;
		   }	
		}
	if(global.t_se_2_d1 == 2){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d3 == 1){
			vngen_text_create("", Text("t_se_2_d1_r2_d3_r1_0"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_nuede_grey, scale_y ); 
			vngen_text_create("", Text("t_se_2_d1_r2_d3_r2_0"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_nuede_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r1_1"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_1"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r1_2"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_2"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend, scale_y ); 
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
			vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_d1_r2_d3_r1_3"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_besorgt, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("t_se_2_d1_r2_d3_r2_3"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r1_4"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_d1_r2_d3_r2_4"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r1_5"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_5"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r1_6"));
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_6"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_7"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_8"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d1 == 2){
		if(global.t_se_2_d3 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d3 == 2){
			vngen_text_replace("", Text("t_se_2_d1_r2_d3_r2_9"));
		}
	}
	if(global.t_se_2_d1 == 1){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		global.aggro = true; 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_aggro_0"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_text_replace("", Text("t_se_2_sad_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_text_replace("", Text("t_se_2_aggro_1"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_text_replace("", Text("t_se_2_sad_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_text_replace("", Text("t_se_2_aggro_2"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_2_sad_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_text_replace("", Text("t_se_2_aggro_3"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_2_sad_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_2_aggro_4"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_text_replace("", Text("t_se_2_sad_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("t_se_2_aggro_5"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_text_replace("", Text("t_se_2_sad_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d2 == 1 || global.t_se_2_d3 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_aggro_6"));
	}
	if(global.t_se_2_d2 == 2 || global.t_se_2_d3 == 2){
		vngen_text_replace("", Text("t_se_2_sad_6"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
	vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
	vngen_text_replace("Suzan", Text("t_se_2_help_0"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
	vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
	vngen_text_replace("", Text("t_se_2_help_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("t_se_2_bear"),	spr_empty, scale_y ); 
	vngen_textbox_destroy();
	vngen_text_destroy();

	if (vngen_option("hoehle_3")) {
	vngen_option_create_transformed("opt_Schlafanzug",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_schlafanzug, spr_icon_schlafanzug_aktive, spr_icon_schlafanzug_aktive);
	vngen_option_create_transformed("opt_Bett"," ",				 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_bett, spr_icon_bett_active, spr_icon_bett_active);
	vngen_option_create_transformed("opt_Nachtlicht", " ",		-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_leuchtobjekt, spr_icon_leuchtobjekt_active, spr_icon_leuchtobjekt_active);
	}
   
	switch (vngen_get_option("hoehle_3", true)) {
		case "opt_Schlafanzug":	global.t_se_2_d4 = 1; break;
		case "opt_Bett":		global.t_se_2_d4 = 2; break;
		case "opt_Nachtlicht":	global.t_se_2_d4 = 3; break;
	}	
}

if (vngen_event()) {
	if(global.t_se_2_d4 = 1){
		room_goto(Tropfsteinhoehle_SE_2_Schlafanzug);
	}
	if(global.t_se_2_d4 = 2){
		room_goto(Tropfsteinhoehle_SE_2_Bett);
	}
	if(global.t_se_2_d4 = 3){
		room_goto(Tropfsteinhoehle_SE_2_Licht);
	}
}

//End VNgen script
vngen_event_reset_target();