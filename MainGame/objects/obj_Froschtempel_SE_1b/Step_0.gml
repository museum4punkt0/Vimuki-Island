/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Froschtempel_Froschdorf);
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
	vngen_char_create_ext("Mitte", spr_croak_wuetend_grey, 600, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_schockiert_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_schockiert_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_text_create("", Text("f_se_1_b_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("f_se_1_b_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_kwaeka_idle, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
   vngen_text_replace("Kväka", Text("f_se_1_b_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_wuetend, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
   vngen_text_replace("Croak", Text("f_se_1_b_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_wuetend_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_b_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_10"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_fragend, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_1_b_11"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_kwaeka_idle, scale_y ); 
   vngen_text_replace("Kwa-Kwa", Text("f_se_1_b_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_wuetend, scale_y ); 
   vngen_text_replace("Croak", Text("f_se_1_b_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_wuetend_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_b_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_1_b_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_croak_wuetend, scale_y ); 
   vngen_text_replace("Croak", Text("f_se_1_b_16"));
}

if (vngen_event()) {
   vngen_text_replace("Croak", Text("f_se_1_b_17"));
}

if (vngen_event()) {
   vngen_text_replace("Croak", Text("f_se_1_b_18"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_kwaeka_idle, scale_y ); 
   vngen_text_replace("Kwäka", Text("f_se_1_b_19"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_1_b_20"));
}

if (vngen_event()) {
   vngen_text_replace("Hopps", Text("f_se_1_b_21"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_b_22"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("f_se_1_b_23"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle, scale_y ); 
   vngen_text_replace("Hopps", Text("f_se_1_b_24"));
}

if (vngen_event()) {
   vngen_text_replace("Hopps", Text("f_se_1_b_25"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte",spr_hopps_idle_grey, scale_y ); 
   vngen_text_replace("", Text("f_se_1_b_26"));
}


if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("tempel_b_1")) {
		vngen_option_create_transformed("opt_Tanzbattle",	Text("f_se_1_b_d1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Dosenwerfen",	Text("f_se_1_b_d1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Raetsel",		Text("f_se_1_b_d1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("tempel_b_1", true)) {
      case "opt_Tanzbattle":	global.f_se_1_b_d1 = 1; break;
      case "opt_Dosenwerfen":	global.f_se_1_b_d1 = 2; break;
      case "opt_Raetsel":	global.f_se_1_b_d1 = 3; break;
   }	
}


if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_b_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y); 
		vngen_text_create("", Text("f_se_1_b_d1_r1_0"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_croak_wuetend, scale_y); 
		vngen_text_create("Croak", Text("f_se_1_b_d1_r2_0"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y); 
		vngen_text_create("Kwäka", Text("f_se_1_b_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_text_replace("", Text("f_se_1_b_d1_r1_1"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_text_replace("Croak", Text("f_se_1_b_d1_r2_1"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_text_replace("Kwäka", Text("f_se_1_b_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_b_d1_r1_2"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
		vngen_text_replace("Chad", Text("f_se_1_b_d1_r2_2"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y); 
		vngen_text_replace("Chad", Text("f_se_1_b_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_text_replace("", Text("f_se_1_b_d1_r1_3"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_text_replace("Chad", Text("f_se_1_b_d1_r2_3"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_text_replace("Suzan", Text("f_se_1_b_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_text_replace("", Text("f_se_1_b_d1_r1_4"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_b_d1_r2_4"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_b_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_text_replace("", Text("f_se_1_b_d1_r1_5"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_text_replace("", Text("f_se_1_b_d1_r2_5"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y); 
		vngen_text_replace("Kwäka", Text("f_se_1_b_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_text_replace("", Text("f_se_1_b_d1_r1_6"));
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_text_replace("", Text("f_se_1_b_d1_r2_6"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y); 
		vngen_text_replace("", Text("f_se_1_b_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_text_replace("", Text("f_se_1_b_d1_r2_7"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		vngen_do_continue();
	}
	if(global.f_se_1_b_d1 == 2){
		vngen_text_replace("", Text("f_se_1_b_d1_r2_8"));
	}
	if(global.f_se_1_b_d1 == 3){
		vngen_do_continue();
	}
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();
	
	if(global.f_se_1_b_d1 == 1){
		if (vngen_option("tempel_b_2")) {
		vngen_option_create_transformed("opt_Break",	Text("f_se_1_b_d2_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Floss",	Text("f_se_1_b_d2_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
	   switch (vngen_get_option("tempel_b_2", true)) {
	      case "opt_Break":	global.f_se_1_b_d2 = 1; global.f_se_1_b_erfolg = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
	      case "opt_Floss":	global.f_se_1_b_d2 = 2; setSuzanValue(1); setOwnValue(-1);  break;
	   }	
	}
	
	if(global.f_se_1_b_d1 == 2){
		if (vngen_option("tempel_b_3")) {
		vngen_option_create_transformed("opt_Stein",		Text("f_se_1_b_d3_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		vngen_option_create_transformed("opt_Baumstamm",	Text("f_se_1_b_d3_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
		}
   
	   switch (vngen_get_option("tempel_b_3", true)) {
	      case "opt_Stein":		global.f_se_1_b_d3 = 1; global.f_se_1_b_erfolg = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus();  break;
	      case "opt_Baumstamm":	global.f_se_1_b_d3 = 2; setChadValue(1); setOwnValue(1);  break;
	   }	
	}
	
	if(global.f_se_1_b_d1 == 3){
		//RÄSTEL
		vngen_textbox_quiz_create(spr_textbox_raetsel);
		
		//Text 
		vngen_text_quiz_create("", Text("f_se_1_b_raetsel_0") + "\n" + Text("f_se_1_b_raetsel_1") + "\n" + Text("f_se_1_b_raetsel_2") + "\n" + Text("f_se_1_b_raetsel_3") + "\n" + Text("f_se_1_b_raetsel_4") + "\n" + Text("f_se_1_b_raetsel_5") + "\n" + Text("f_se_1_b_raetsel_6"));
		
		if (vngen_option("tempel_b_4")) {
		vngen_option_create_transformed("opt_A"," ",	(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_roboto_standard, spr_icon_frosch_a, spr_icon_frosch_a_active, spr_icon_frosch_a_active);
		vngen_option_create_transformed("opt_B"," ",	(camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*80, -2, 0.3, fnt_roboto_standard, spr_icon_frosch_b, spr_icon_frosch_b_active, spr_icon_frosch_b_active);
		vngen_option_create_transformed("opt_C", " ",	(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_frosch_c, spr_icon_frosch_c_active, spr_icon_frosch_c_active);
		vngen_option_create_transformed("opt_D"," ",	(camera_get_view_width(view_camera[0])*0.35), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_frosch_d, spr_icon_frosch_d_active, spr_icon_frosch_d_active);	
		}
   
	   switch (vngen_get_option("tempel_b_4", true)) {
	      case "opt_C":	global.f_se_1_b_d4 = 3; global.f_se_1_b_erfolg = true; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); vngen_do_continue(); break;
	      case "opt_A":	global.f_se_1_b_d4 = 1; vngen_do_continue(); break;
	      case "opt_B":	global.f_se_1_b_d4 = 2; vngen_do_continue(); break;
	      case "opt_D":	global.f_se_1_b_d4 = 4; vngen_do_continue(); break;
	   }	
	}
}

if (vngen_event()) {
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_do_continue();
}

if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d2_r1_0"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_croak_wuetend_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d2_r2_0"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d3_r1_0"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d3_r2_0"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d4_r1_0"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4 ){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle_grey, scale_y); 
			vngen_text_create("", Text("f_se_1_b_d4_r2_0"));
		}
	}
}


if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_text_replace("", Text("f_se_1_b_d2_r1_1"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_1"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_b_d3_r1_1"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_se_1_b_d3_r2_1"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
			vngen_text_replace("Hopps", Text("f_se_1_b_d4_r1_1"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y); 
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_text_replace("", Text("f_se_1_b_d2_r1_2"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("f_se_1_b_d2_r2_2"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_text_replace("", Text("f_se_1_b_d3_r1_2"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_genervt, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("f_se_1_b_d3_r2_2"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Mitte", spr_kwaeka_idle, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r1_2"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y); 
			vngen_text_replace("Suzan", Text("f_se_1_b_d4_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d2_r1_3"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_b_d2_r2_3"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d3_r1_3"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("Suzan", Text("f_se_1_b_d3_r2_3"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Mitte", spr_ribbit_idle, scale_y); 
			vngen_text_replace("Ribbit", Text("f_se_1_b_d4_r1_3"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
			vngen_text_replace("Chad", Text("f_se_1_b_d4_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_text_replace("", Text("f_se_1_b_d2_r1_4"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_4"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("Hopps", Text("f_se_1_b_d3_r1_4"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("Chad", Text("f_se_1_b_d3_r2_4"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Mitte", spr_guo_idle, scale_y); 
			vngen_text_replace("Guo", Text("f_se_1_b_d4_r1_4"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Mitte", spr_kwakwa_idle, scale_y); 
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_kwaeka_lachend, scale_y); 
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_b_d2_r1_5"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_5"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y);
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Croak", Text("f_se_1_b_d3_r1_5"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_b_d3_r2_5"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			
			vngen_char_change_sprite("Suzan", spr_suzan_nervoes_aengstlich_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d4_r1_5"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
			vngen_text_replace("Ribbäh", Text("f_se_1_b_d2_r1_6"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
			vngen_text_replace("Croak", Text("f_se_1_b_d2_r2_6"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Ribbäh", Text("f_se_1_b_d3_r1_6"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("", Text("f_se_1_b_d3_r2_6"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Mitte", spr_kwaeka_lachend, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r1_6"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_text_replace("Kwäka", Text("f_se_1_b_d4_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y); 
			vngen_text_replace("Eeeh", Text("f_se_1_b_d2_r1_7"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
			vngen_text_replace("Ribbäh", Text("f_se_1_b_d2_r2_7"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_text_replace("", Text("f_se_1_b_d3_r1_7"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("", Text("f_se_1_b_d3_r2_7"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_kwaeka_lachend_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d4_r1_7"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
			vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y); 
			vngen_text_replace("Hopps", Text("f_se_1_b_d4_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y);
			vngen_text_replace("", Text("f_se_1_b_d2_r1_8"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y); 
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_b_d2_r2_8"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_text_replace("", Text("f_se_1_b_d3_r1_8"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_gaecool_idle, scale_y); 
			vngen_text_replace("Gae-cool", Text("f_se_1_b_d3_r2_8"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_text_replace("", Text("f_se_1_b_d4_r1_8"));
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_char_change_sprite("Mitte", spr_hopps_idle_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d4_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y);
			vngen_text_replace("Croak", Text("f_se_1_b_d2_r1_9"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
			vngen_text_replace("Croak", Text("f_se_1_b_d2_r2_9"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_text_replace("", Text("f_se_1_b_d3_r1_9"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_idle, scale_y); 
			vngen_text_replace("Ribbäh", Text("f_se_1_b_d3_r2_9"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_text_replace("", Text("f_se_1_b_d4_r2_9"));
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y);
			vngen_text_replace("Ribbit", Text("f_se_1_b_d2_r1_10"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_guo_lachend, scale_y); 
			vngen_text_replace("Guo", Text("f_se_1_b_d2_r2_10"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_text_replace("", Text("f_se_1_b_d3_r1_10"));
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_idle, scale_y); 
			vngen_text_replace("Croak", Text("f_se_1_b_d3_r2_10"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_char_change_sprite("Mitte", spr_ribbit_lachend_grey, scale_y);
			vngen_text_replace("", Text("f_se_1_b_d2_r1_11"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y); 
			vngen_text_replace("Eeeh", Text("f_se_1_b_d2_r2_11"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_idle_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d3_r2_11"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_text_replace("", Text("f_se_1_b_d2_r1_12"));
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d2_r2_12"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("", Text("f_se_1_b_d3_r2_12"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_13"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbaeh_lachend, scale_y); 
			vngen_text_replace("Ribbäh", Text("f_se_1_b_d3_r2_13"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_14"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_kwakwa_lachend, scale_y); 
			vngen_text_replace("Kwa-Kwa", Text("f_se_1_b_d3_r2_14"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_text_replace("", Text("f_se_1_b_d2_r2_15"));
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_ribbit_lachend, scale_y); 
			vngen_text_replace("Ribbit", Text("f_se_1_b_d3_r2_15"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_lachend, scale_y); 
			vngen_text_replace("Croak", Text("f_se_1_b_d3_r2_16"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_char_change_sprite("Mitte", spr_croak_lachend_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_nervoes_aengstlich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_text_replace("", Text("f_se_1_b_d3_r2_17"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("", Text("f_se_1_b_d3_r2_18"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_d1 == 1){
		if(global.f_se_1_b_d2 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d2 == 2){
			vngen_do_continue();
		}
	}
	if(global.f_se_1_b_d1 == 2){
		if(global.f_se_1_b_d3 == 1){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d3 == 2){
			vngen_text_replace("", Text("f_se_1_b_d3_r2_19"));
		}
	}
	if(global.f_se_1_b_d1 == 3){
		if(global.f_se_1_b_d4 == 3){
			vngen_do_continue();
		}
		if(global.f_se_1_b_d4 == 2 || global.f_se_1_b_d4 == 1 || global.f_se_1_b_d4 == 4){
			vngen_do_continue();
		}
	}
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	if(global.f_se_1_b_erfolg){
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Hopps", Text("f_se_1_b_erfolg_0"));
	} else {
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_02, 1, 0, false, false);
		vngen_text_replace("Hopps", Text("f_se_1_b_misserfolg_0"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_erfolg){
		vngen_char_change_sprite("Mitte", spr_croak_gluecklich_, scale_y); 
		vngen_text_replace("Croak", Text("f_se_1_b_erfolg_1"));
	} else {
		vngen_char_change_sprite("Mitte", spr_croak_gluecklich_, scale_y); 
		vngen_text_replace("Croak", Text("f_se_1_b_misserfolg_1"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_erfolg){
		vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Eeeh", Text("f_se_1_b_erfolg_2"));
	} else {
		vngen_char_change_sprite("Mitte", spr_ehh_lachend, scale_y);
		vngen_audio_play_sound("sound", sfx_char_frosch_03, 1, 0, false, false);
		vngen_text_replace("Eeeh", Text("f_se_1_b_misserfolg_2"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_erfolg){
		vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y);
		vngen_text_replace("", Text("f_se_1_b_erfolg_3"));
	} else {
		vngen_char_change_sprite("Mitte", spr_ehh_lachend_grey, scale_y);
		vngen_text_replace("", Text("f_se_1_b_misserfolg_3"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_erfolg){
		vngen_text_replace("", Text("f_se_1_b_erfolg_4"));
	} else {
		vngen_char_change_sprite("Mitte", spr_hopps_idle, scale_y);
		vngen_text_replace("Hopps", Text("f_se_1_b_misserfolg_4"));
	}
}

if (vngen_event()) {
	if(global.f_se_1_b_erfolg){
		vngen_do_continue();
	} else {
		vngen_char_change_sprite("Mitte", spr_kwaeka_lachend, scale_y);
		vngen_text_replace("Kwäka", Text("f_se_1_b_misserfolg_5"));
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Mitte", spr_croak_lachend_grey, scale_y);
	vngen_text_replace("", Text("f_se_1_b_27"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_b_28"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_b_29"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_b_30"));
}

if (vngen_event()) {
	vngen_text_replace("", Text("f_se_1_b_31"));
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