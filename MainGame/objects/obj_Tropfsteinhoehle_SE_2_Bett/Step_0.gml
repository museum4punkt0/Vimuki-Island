/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_ext(spr_bg_Hoehle);
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
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	
	if(!global.aggro){
		vngen_char_create_ext_back(Text("t_se_2_bear"), spr_saebelzahnbaer_nuede_grey, 250,50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	} else {
		vngen_char_create_ext(Text("t_se_2_bear"), spr_saebelzahnbaer_wuetend_grey, 250, 50, scale_y);
		vngen_text_create("", "");	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(!global.aggro){
		vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_0"));	
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(!global.aggro){
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		 vngen_text_replace("Suzan", Text("t_se_2_help_d4_r2_1"));
	} else {
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
		vngen_text_replace("Suzan", Text("t_se_2_help_d4_r2_1"));	
	}
  
}

if (vngen_event()) {
   vngen_text_replace("Suzan", Text("t_se_2_help_d4_r2_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("t_se_2_help_d4_r2_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_help_d4_r2_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("t_se_2_help_d4_r2_5"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite(Text("t_se_2_bear"), spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("hoehle_6")) {
		vngen_option_create_transformed("opt_Baum",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_ast, spr_icon_ast_active, spr_icon_ast_active);
		vngen_option_create_transformed("opt_Stein"," ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_steine, spr_icon_steine_active, spr_icon_steine_active);
		vngen_option_create_transformed("opt_Dreck", " ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_dreck_schlamm, spr_icon_dreck_schlamm_active, spr_icon_dreck_schlamm_active);
		if(global.outdoorjacke){
			vngen_option_create_transformed("opt_Jacke"," ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_roboto_standard, spr_icon_ravinas_jacke, spr_icon_ravinas_jacke_active, spr_icon_ravinas_jacke_active);	
		}
   }
   
   switch (vngen_get_option("hoehle_6", true)) {
      case "opt_Baum":	global.t_se_2_d6 = 1; break;
      case "opt_Stein":	global.t_se_2_d6 = 2; break;
      case "opt_Dreck":	global.t_se_2_d6 = 3; break;
      case "opt_Jacke":	global.t_se_2_d6 = 4; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); global.jackeused = true;  break;
   }	
}

if (vngen_event()) {
	if(global.aggro){//_____________________AGGRO_________________________
		
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_saebelzahnbaer_wuetend_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r2_d6_r1_0"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			
			vngen_text_create("Chad", Text("t_se_2_help_aggro_d4_r2_d6_r2_0"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r2_d6_r3_0"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_aggro_d4_r2_d6_r4_0"));
		}
	} else {//______________________________SAD_____________________________
		
		vngen_char_change_sprite(Text("t_se_2_bear"), spr_saebelzahnbaer_nuede_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_sad_d4_r2_d6_r1_0"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("Chad", Text("t_se_2_help_sad_d4_r2_d6_r2_0"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_sad_d4_r2_d6_r3_0"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_create("", Text("t_se_2_help_sad_d4_r2_d6_r4_0"));
		}
		
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_1"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r2_d6_r2_1"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_1"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_1"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_1"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_fragend_nachdenklich_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_sad_d4_r2_d6_r2_1"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_1"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_1"));
		}
	}
}


if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_2"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_2"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_2"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y );
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_2"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_2"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_2"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_2"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_2"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_3"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r2_d6_r2_3"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_3"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_genervt, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r2_d6_r4_3"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_3"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_3"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_3"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_genervt, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_fragend_nachdenklich_grey, scale_y); 
			vngen_text_replace("Chad", Text("t_se_2_help_sad_d4_r2_d6_r4_3"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_4"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_4"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_4"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_genervt_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_4"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_sad_d4_r2_d6_r1_4"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_4"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_4"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_genervt_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_4"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r2_d6_r1_5"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
			vngen_text_replace("Chad", Text("t_se_2_help_aggro_d4_r2_d6_r2_5"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_5"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_5"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_5"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_selbstsicher_grinsen, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_sad_d4_r2_d6_r2_5"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_5"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_5"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_6"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_6"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_6"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_6"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_6"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_6"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r3_6"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_6"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_selbstsicher_grinsen, scale_y); 
			vngen_text_replace("Suzan", Text("t_se_2_help_aggro_d4_r2_d6_r1_7"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_7"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r3_7"));
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_7"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_7"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_lachen, scale_y ); 
			vngen_text_replace("Chad", Text("t_se_2_help_sad_d4_r2_d6_r2_7"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_7"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Suzan",	spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_8"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_8"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_8"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_8"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_8"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_8"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_9"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_9"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_9"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_9"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_9"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_char_change_sprite("Chad",	spr_chad_grinsend_selbstsicher_grey, scale_y ); 
			vngen_char_change_sprite("Suzan",	spr_suzan_selbstsicher_grinsen_grey, scale_y); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_9"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_10"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r2_10"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r4_10"));
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_10"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_10"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_10"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_11"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r1_11"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r2_11"));
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_11"));
		}
	}
}

if (vngen_event()) {
	if(global.aggro){
		if(global.t_se_2_d6 == 1){
			vngen_text_replace("", Text("t_se_2_help_aggro_d4_r2_d6_r1_12"));
		}
		if(global.t_se_2_d6 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_do_continue();
		}
	} else {
		if(global.t_se_2_d6 == 1){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 2){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 3){
			vngen_do_continue();
		}
		if(global.t_se_2_d6 == 4){
			vngen_text_replace("", Text("t_se_2_help_sad_d4_r2_d6_r4_12"));
		}
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		if(global.aggro){
			global.bear = "good";
		} else {
			global.bear = "best";
		}
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_stein_0"));
	}
	if(global.t_se_2_d6 == 1){
		global.bear = "ok";
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_0"));
	}
	if(global.t_se_2_d6 == 3){
		global.bear = "bad";
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_0"));
	}
	if(global.t_se_2_d6 == 4){
		global.bear = "best";
		
		vngen_text_replace("", Text("t_se_2_help_d4_r2_luft_0"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_stein_1"));
	}
	if(global.t_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_1"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_1"));
	}
	if(global.t_se_2_d6 == 4){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_luft_1"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt, scale_y ); 
		vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_help_d4_r2_stein_2"));
	}
	if(global.t_se_2_d6 == 1){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_2"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 

		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_2"));
	}
	if(global.t_se_2_d6 == 4){
		
		vngen_text_replace("", Text("t_se_2_help_d4_r2_luft_2"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_stein_3"));
	}
	if(global.t_se_2_d6 == 1){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_3"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_3"));
	}
	if(global.t_se_2_d6 == 4){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt, scale_y ); 
		vngen_text_replace(Text("t_se_2_bear"), Text("t_se_2_help_d4_r2_luft_3"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_stein_4"));
	}
	if(global.t_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_4"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_4"));
	}
	if(global.t_se_2_d6 == 4){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_erstaunt_grey, scale_y ); 
		vngen_text_replace("", Text("t_se_2_help_d4_r2_luft_4"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_do_continue();
	}
	if(global.t_se_2_d6 == 1){
		vngen_char_change_sprite("Chad",	spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan",	spr_suzan_schockiert_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_baer, 1, 0, false, false);
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_5"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_5"));
	}
	if(global.t_se_2_d6 == 4){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_luft_5"));
	}
}

if (vngen_event()) {
	if(global.t_se_2_d6 == 2){
		vngen_do_continue();
	}
	if(global.t_se_2_d6 == 1){
		vngen_text_replace("", Text("t_se_2_help_d4_r2_holz_6"));
	}
	if(global.t_se_2_d6 == 3){
		vngen_char_change_sprite(Text("t_se_2_bear"),	spr_saebelzahnbaer_wuetend_grey, scale_y ); 

		vngen_text_replace("", Text("t_se_2_help_d4_r2_dreck_6"));
	}
	if(global.t_se_2_d6 == 4){
		vngen_do_continue();
	}
}

if (vngen_event()) {
	room_goto(Tropfsteinhoehle_SE_2_Enden);
}
//End VNgen script
vngen_event_reset_target();