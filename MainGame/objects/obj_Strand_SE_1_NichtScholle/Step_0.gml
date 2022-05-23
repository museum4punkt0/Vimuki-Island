/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_s_Unterwasser);
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
	vngen_char_create_ext("Chad", spr_empty, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_besorgt_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Mitte", spr_empty, 600, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_text_create("", Text("s_se_1_ns_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_ns_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_ns_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("s_se_1_ns_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_ns_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("s_se_1_ns_5"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_nope, 1, 0, false, false);
   vngen_text_replace("Chad", Text("s_se_1_ns_6"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
   vngen_text_replace("", Text("s_se_1_ns_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_ns_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("", Text("s_se_1_ns_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_ns_10"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_ns_11"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_ns_12"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("s_se_1_ns_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
   vngen_text_replace("Chad", Text("s_se_1_ns_14"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
   vngen_text_replace("Suzan", Text("s_se_1_ns_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
   vngen_text_replace("Chad", Text("s_se_1_ns_16"));
}

if (vngen_event()) {
	
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
   vngen_text_replace("", Text("s_se_1_ns_17"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("strand_ns_0")) {
		vngen_option_create_transformed("opt_rufen",	Text("s_se_1_ns_d1_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_schloss",	Text("s_se_1_ns_d1_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_tot",		Text("s_se_1_ns_d1_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
  }
   
   switch (vngen_get_option("strand_ns_0", true)) {
      case "opt_rufen":		global.s_se_1_ns_d1 = 1; global.s_se_1_ns_gut = true;  break;
      case "opt_schloss":	global.s_se_1_ns_d1 = 2; break;
      case "opt_tot":		global.s_se_1_ns_d1 = 3; break;
   }	
}


if (vngen_event()) {
	
	vngen_textbox_create(spr_textbox_Insel);
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("Chad", Text("s_se_1_ns_d1_r1_0"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("", Text("s_se_1_ns_d1_r2_0"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_text_create("", Text("s_se_1_ns_d1_r3_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_meerwache_fragend_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_1"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_ok, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_r2_1"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_2"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_d1_r2_2"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_meerwache_fragend_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_3"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_3"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_meerwache_wuetend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_meerjungmann, 1, 0, false, false);
		vngen_text_replace("Wache", Text("s_se_1_ns_d1_r1_4"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_4"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_meerwache_wuetend_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_4"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_meerwache_wuetend_grey, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_r1_5"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_d1_r2_5"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_r3_5"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_6"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_6"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_6"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_7"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Mitte", spr_meerwache_wuetend_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_7"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_7"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_8"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_8"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_text_replace("", Text("s_se_1_ns_d1_r3_8"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_9"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_text_replace("", Text("s_se_1_ns_d1_r2_9"));
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Mitte", spr_meerwache_wuetend, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_meerjungmann, 1, 0, false, false);
		vngen_text_replace("Wache", Text("s_se_1_ns_d1_r1_10"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_11"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y ); 
		vngen_char_change_sprite("Mitte", spr_empty, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_12"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_13"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_14"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_audio_play_sound("sound", sfx_char_chad_ok, 1, 0, false, false);
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_r1_15"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_d1_r1_16"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_r1_17"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_18"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_19"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_text_replace("", Text("s_se_1_ns_d1_r1_20"));
	}
	if(global.s_se_1_ns_d1 == 2){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 3){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3 ){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_miss_0"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3 ){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_1_ns_d1_miss_1"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3 ){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_d1_miss_2"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3 ){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_d1_miss_3"));
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3 ){
		vngen_text_replace("", Text("s_se_1_ns_d1_miss_4"));
	}
}


if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y);
		vngen_char_change_sprite("Mitte", spr_empty, scale_y);
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("strand_ns_1")) {
		vngen_option_create_transformed("opt_Links",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_standard_normal, spr_icon_pfeil_links, spr_icon_pfeil_links_active, spr_icon_pfeil_links_active);
		vngen_option_create_transformed("opt_Rechts",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_standard_normal, spr_icon_pfeil_rechts, spr_icon_pfeil_rechts_active, spr_icon_pfeil_rechts_active);
	   }
   
	   switch (vngen_get_option("strand_ns_1", true)) {
	      case "opt_Links":	global.s_se_1_ns_d2 = 1; global.s_se_1_ns_gut = true;  break;
	      case "opt_Rechts":	global.s_se_1_ns_d2 = 2; break;
	   }	
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.s_se_1_ns_d2 == 1){
			vngen_text_create("", Text("s_se_1_ns_d2_r1_0"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_text_create("", Text("s_se_1_ns_d2_r2_0"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_text_replace("", Text("s_se_1_ns_d2_r1_1"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_1_ns_d2_r2_1"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_text_replace("", Text("s_se_1_ns_d2_r1_2"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_1_ns_d2_r2_2"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_1_ns_d2_r1_3"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_3"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
			vngen_text_replace("Suzan", Text("s_se_1_ns_d2_r1_4"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_4"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_ns_d2_r1_5"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
			vngen_text_replace("Suzan", Text("s_se_1_ns_d2_r2_5"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
			vngen_text_replace("Chad", Text("s_se_1_ns_d2_r1_6"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_6"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
			vngen_text_replace("", Text("s_se_1_ns_d2_r1_7"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_7"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_text_replace("", Text("s_se_1_ns_d2_r1_8"));
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_char_change_sprite("Chad", spr_chad_wut_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_wut_grey, scale_y); 
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_8"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_9"));
		}
	}
}

if (vngen_event()) {
	if(global.s_se_1_ns_d1 == 1){
		vngen_do_continue();
	}
	if(global.s_se_1_ns_d1 == 2 || global.s_se_1_ns_d1 == 3){
		if(global.s_se_1_ns_d2 == 1){
			vngen_do_continue();
		}
		if(global.s_se_1_ns_d2 == 2){
			vngen_text_replace("", Text("s_se_1_ns_d2_r2_10"));
		}
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_scene_replace(spr_bg_Strand);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_gut_0"));
	} else {
		vngen_scene_replace(spr_bg_Strand);
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_schlecht_0"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_text_replace("", Text("s_se_1_ns_gut_1"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_1_ns_schlecht_1"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_text_replace("", Text("s_se_1_ns_gut_2"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_text_replace("", Text("s_se_1_ns_schlecht_2"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y ); 
		vngen_text_replace("Chad", Text("s_se_1_ns_gut_3"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("s_se_1_ns_schlecht_3"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("s_se_1_ns_gut_4"));
	} else {
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_schlecht_4"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_text_replace("Chad", Text("s_se_1_ns_gut_5"));
	} else {
		vngen_text_replace("", Text("s_se_1_ns_schlecht_5"));
	}
}

if(vngen_event()){
	if(global.s_se_1_ns_gut){
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_text_replace("", Text("s_se_1_ns_gut_6"));
	} else {
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