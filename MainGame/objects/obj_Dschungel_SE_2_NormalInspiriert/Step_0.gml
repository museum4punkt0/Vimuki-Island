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
	vngen_char_create_ext("Chad", spr_chad_gluecklich_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext("Martin", spr_martin_idle_grey, 710, 0, scale_y);
	vngen_text_create("", Text("d_se_2_insp_normal_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
   vngen_text_replace("Martin", Text("d_se_2_insp_normal_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_insp_normal_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_7"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
   vngen_text_replace("Martin", Text("d_se_2_insp_normal_8"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("d_se_2_insp_normal_9"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_normal_10"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Martin", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("martin_norm")) {
		vngen_option_create_transformed("opt_farbe",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_roboto_standard, spr_icon_farbe, spr_icon_farbe_active, spr_icon_farbe_active);
		vngen_option_create_transformed("opt_colage",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_roboto_standard, spr_icon_collage, spr_icon_collage_active, spr_icon_collage_active);
		if(global.multitool){
			vngen_option_create_transformed("opt_multitool"," ", (camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_roboto_standard, spr_icon_multitool, spr_icon_multitool_active, spr_icon_multitool_active);
		}
  }
   
   switch (vngen_get_option("martin_norm", true)) {
      case "opt_farbe":		global.d_se_2_d7 = 1; break;
      case "opt_colage":		global.d_se_2_d7 = 2; break;
      case "opt_multitool":		global.d_se_2_d7 = 3; global.multitoolUsed = true;  break;
   }	
}

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Insel);
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_create("Suzan", Text("d_se_2_insp_normal_d7_r1_0"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_create("Chad", Text("d_se_2_insp_normal_d7_r2_0"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_create("", Text("d_se_2_insp_normal_d7_r3_0"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r1_1"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r2_1"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r3_1"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r1_2"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r2_2"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_normal_d7_r3_2"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_normal_d7_r1_3"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_normal_d7_r2_3"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r3_3"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r1_4"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r2_4"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r3_4"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r1_5"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_5"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r3_5"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r1_6"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_6"));
	}
	if(global.d_se_2_d7 == 3){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r3_6"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Martin", spr_martin_konzentriert_beim_malen_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r1_7"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_7"));
	}
	if(global.d_se_2_d7 == 3){
		room_goto(Dschungel_SE_2_Artefakt);
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r1_8"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Martin", spr_martin_konzentriert_beim_malen_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_8"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_normal_d7_r1_9"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_9"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_martin_stolz, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r1_10"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
		vngen_text_replace("Suzan", Text("d_se_2_insp_normal_d7_r2_10"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_char_change_sprite("Dia", spr_dia_bild_von_martin_fuer_alle_farbe, scale_prop_x_y ); 
		SaveDias(spr_dia_bild_von_martin_fuer_alle_farbe_midi);
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r1_11"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r2_11"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Martin", spr_martin_stolz, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r1_12"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Martin", spr_martin_stolz, scale_y); 
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r2_12"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_char_change_sprite("Martin", spr_martin_stolz_grey, scale_y); 
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r1_13"));
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_char_change_sprite("Martin", spr_martin_stolz_grey, scale_y); 
		vngen_text_replace("Chad", Text("d_se_2_insp_normal_d7_r2_13"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d7 == 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y ); 
		vngen_char_change_sprite("Martin", spr_empty, scale_y); 
		vngen_char_change_sprite("Dia", spr_dia_bild_von_martin_fuer_alle_collage, scale_prop_x_y ); 
		SaveDias(spr_dia_bild_von_martin_fuer_alle_collage_midi);
		vngen_text_replace("Martin", Text("d_se_2_insp_normal_d7_r2_14"));
	}
}

if (vngen_event()) {
	if(global.d_se_2_d7== 1){
		vngen_do_continue();
	}
	if(global.d_se_2_d7 == 2){
		vngen_text_replace("", Text("d_se_2_insp_normal_d7_r2_15"));
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