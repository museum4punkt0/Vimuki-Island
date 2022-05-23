/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
	vngen_scene_create_start(spr_bg_camp);
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
	if(global.basisIntroPlayed == 0){
		vngen_text_create("", Text("b_intro_0")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_intro_1")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.basisIntroPlayed == 0){
		vngen_text_replace("", Text("b_intro_2")); 	
	} else {	
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	vngen_char_create_ext("Dr. Schale", spr_empty, 700, 0, scale_y);
	vngen_char_create_ext("Dia", spr_empty, 710, 50, scale_prop_x_y);
	vngen_char_create_ext(Text("b_ee_5_name_0"), spr_empty, 650, 0, scale_y);//Ticket
	vngen_char_create_ext(Text("b_ee_5_name_1"), spr_empty, 700, 0, scale_y);//Bommelschwanz
	vngen_char_create_ext(Text("b_ee_5_name_2"), spr_empty, 700, 0, scale_y);//Kurzarm
	vngen_char_create_ext(Text("b_ee_5_name_3"), spr_empty, 700, 0, scale_y);//Eule
	
	if(global.basisIntroPlayed = false){
		vngen_text_replace("", Text("b_ee_5_0"));
	} else {	
		vngen_text_create("", Text("b_ee_5_0")); 
	}
}

if (vngen_event()) {
   global.basisIntroPlayed = 1; 
   vngen_do_continue();
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_1"));
}
if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_2"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_5_3"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y);
   vngen_text_replace("Suzan", Text("b_ee_5_4"));
}
if (vngen_event()) {
   vngen_text_replace("Suzan", Text("b_ee_5_5"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
   vngen_text_replace("", Text("b_ee_5_6"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Dr. Schale", spr_dr_schale_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_affe_01, 1, 0, false, false);
   vngen_text_replace("Dr. Schale", Text("b_ee_5_7"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Dr. Schale", spr_dr_schale_idle_grey, scale_y);
   vngen_text_replace("", Text("b_ee_5_8"));
}
if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_9"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Dr. Schale", spr_dr_schale_idle, scale_y);
   vngen_text_replace("Dr. Schale", Text("b_ee_5_10"));
}
if (vngen_event()) {
   vngen_text_replace("Dr. Schale", Text("b_ee_5_11"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Dr. Schale", spr_dr_schale_idle_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("b_ee_5_12"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Dr. Schale", spr_empty, scale_y);
   vngen_text_replace("", Text("b_ee_5_13"));
}
if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_14"));
}
if (vngen_event()) {
	vngen_scene_replace("bg",spr_bg_s_Meer, 0.3);
   vngen_text_replace("", Text("b_ee_5_15"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_5_16"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("b_ee_5_17"));
}
if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
   vngen_text_replace("", Text("b_ee_5_18"));
}



if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Umsehen_0")) {
	vngen_option_create_transformed("opt_Hafen"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_icon_hafen, spr_icon_hafen_hover, spr_icon_hafen_hover);
    vngen_option_create_transformed("opt_Faehre",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
    vngen_option_create_transformed("opt_Piraten", " ",		-(camera_get_view_width(view_camera[0])*0),		-(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
   }
   
   switch (vngen_get_option("choice_Umsehen_0", true)) {
      case "opt_Hafen":		global.b_ee_5_d1 = 1; break;
      case "opt_Faehre":	global.b_ee_5_d1 = 2; break;
      case "opt_Piraten":	global.b_ee_5_d1 = 3; break;
   } 
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_create("Chad", Text("b_ee_5_d1_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("b_ee_5_d1_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_5_d1_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_1")) {
			vngen_option_create_transformed("opt_Feahre"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
			vngen_option_create_transformed("opt_Piraten",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_1", true)) {
	      case "opt_Feahre":	global.b_ee_5_d1_b = 1; break;
	      case "opt_Piraten":	global.b_ee_5_d1_b = 2; break;
	   } 
	}else
	{
	vngen_do_continue();	
	}
}

//_______Faehre als zweites 

if (vngen_event()) {
	
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_2")) {
			vngen_option_create_transformed("opt_Piraten",	" ",	 (camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_2", true)) {
	      case "opt_Piraten":	global.b_ee_5_d1_c = "Piraten"; break;
	   } 
	}
	else
	{
	vngen_do_continue();	
	}
}

//____Piraten drei

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r3_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r3_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r3_2"));
	}
	else {
		vngen_do_continue();
	}
}

//___________Piraten 2_____

if (vngen_event()) {
	
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r3_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r3_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r3_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_3")) {
			vngen_option_create_transformed("opt_Faehre"," ",		-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_3", true)) {
			case "opt_Faehre":	global.b_ee_5_d1_c = "Faehre"; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

//_______________Faehre drei
if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Faehre" && global.b_ee_5_d1 == 1){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Faehre" && global.b_ee_5_d1 == 1){
		vngen_text_replace("", Text("b_ee_5_d1_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	
	if(global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_4")) {
		vngen_option_create_transformed("opt_Hafen"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_hafen, spr_icon_hafen_hover, spr_icon_hafen_hover);
		vngen_option_create_transformed("opt_Piraten", " ",		 (camera_get_view_width(view_camera[0])*0.15),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_4", true)) {
	      case "opt_Hafen":		global.b_ee_5_d1_b = 1; break;
	      case "opt_Piraten":	global.b_ee_5_d1_b = 2; break;
	   } 
	}else
	{
	vngen_do_continue();	
	}
}

//___________________Hafen zweites 

if (vngen_event()) {
	if(global.b_ee_5_d1_b = 1 && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("Chad", Text("b_ee_5_d1_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b = 1 && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("b_ee_5_d1_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b = 1 && global.b_ee_5_d1 == 2){ 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_5_d1_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b = 1 && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b = 1 && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_5")) {
		vngen_option_create_transformed("opt_Piraten",	" ",	 (camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_5", true)) {
	      case "opt_Piraten":	global.b_ee_5_d1_c = "Piraten"; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

//Piraten drittes_____________________________

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r3_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r3_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Piraten" && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r3_2"));
	}
	else {
		vngen_do_continue();
	}
}

//___________Piraten 2_____

if (vngen_event()) {
	
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r3_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r3_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r3_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_6")) {
		vngen_option_create_transformed("opt_Hafen"," ",		-(camera_get_view_width(view_camera[0])*0 ), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_hafen, spr_icon_hafen_hover, spr_icon_hafen_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_6", true)) {
	      case "opt_Hafen":	global.b_ee_5_d1_c = "Hafen"; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c = "Hafen" && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("Chad", Text("b_ee_5_d1_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c = "Hafen" && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("b_ee_5_d1_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c = "Hafen" && global.b_ee_5_d1 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_5_d1_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c = "Hafen" && global.b_ee_5_d1 == 2){
		vngen_text_replace("", Text("b_ee_5_d1_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}


if (vngen_event()) {
	
	if(global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r3_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r3_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r3_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_7")) {
		vngen_option_create_transformed("opt_Hafen"," ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_hafen, spr_icon_hafen_hover, spr_icon_hafen_hover);
    vngen_option_create_transformed("opt_Faehre",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_7", true)) {
	      case "opt_Hafen":	global.b_ee_5_d1_b = 1; break;
	      case "opt_Faehre":	global.b_ee_5_d1_b = 2; break;
	   } 
	}else
	{
	vngen_do_continue();	
	}
}

//______________________Hafen zwei

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("Chad", Text("b_ee_5_d1_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("b_ee_5_d1_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_5_d1_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.b_ee_5_d1_b == 1 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_8")) {
		vngen_option_create_transformed("opt_Faehre"," ",		-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_8", true)) {
	      case "opt_Faehre":	global.b_ee_5_d1_c = "Faehre"; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

//_______________Faehre drei
if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Faehre" && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Faehre" && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}


//___________________________Faehre zweites

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d1_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_more"));
	}
	else {
		vngen_do_continue();
	}
}
if(vngen_event()){
	if(global.b_ee_5_d1_b == 2 && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Umsehen_9")) {
		vngen_option_create_transformed("opt_Hafen"," ",		-(camera_get_view_width(view_camera[0])*0 ), -(camera_get_view_height(view_camera[0])/100)*50, -1, 0.1, fnt_roboto_standard, spr_icon_hafen, spr_icon_hafen_hover, spr_icon_hafen_hover);
	   }
   
	   switch (vngen_get_option("choice_Umsehen_9", true)) {
	      case "opt_Hafen":	global.b_ee_5_d1_c = "Hafen"; break;
	   } 
	} else {
		vngen_do_continue();
	}
}

//_________________Hafen drei

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Hafen" && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("Chad", Text("b_ee_5_d1_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Hafen" && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_text_replace("Suzan", Text("b_ee_5_d1_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Hafen" && global.b_ee_5_d1 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_text_replace("", Text("b_ee_5_d1_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d1_c == "Hafen" && global.b_ee_5_d1 == 3){
		vngen_text_replace("", Text("b_ee_5_d1_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}



if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_idea, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_5_19"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
   vngen_text_replace("Suzan", Text("b_ee_5_20"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
   vngen_text_replace("Chad", Text("b_ee_5_21"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_text_replace("", Text("b_ee_5_22"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_23"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_rabe, 1, 0, false, false);
   vngen_text_replace(Text("b_ee_5_name_0"), Text("b_ee_5_24"));
}

if (vngen_event()) {
	vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y);
	vngen_text_replace("Chad", Text("b_ee_5_25"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_fragend_nachdenklich, scale_y);
   vngen_text_replace("Suzan", Text("b_ee_5_26"));
}

if(vngen_event()){
	vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Auswahl")) {
	vngen_option_create_transformed("opt_Faehre",	" ",	 (camera_get_view_width(view_camera[0])*0.15 ),	-(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_icon_faehre, spr_icon_faehre_hover, spr_icon_faehre_hover);
    vngen_option_create_transformed("opt_Piratenschiff", " ",		-(camera_get_view_width(view_camera[0])*0.15),		-(camera_get_view_height(view_camera[0])/100)*50, -3, 0.5, fnt_roboto_standard, spr_icon_piraten, spr_icon_piraten_hover, spr_icon_piraten_hover);
   }
   
   switch (vngen_get_option("choice_Auswahl", true)) {
      case "opt_Faehre":		global.b_ee_5_d2 = 1; break;
      case "opt_Piratenschiff":	global.b_ee_5_d2 = 2; break;
   } 
}

//____________________FAEHRE________________________________________

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_textbox_create(spr_textbox_Insel);
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y); 
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle_grey, scale_y);
		vngen_text_create("Suzan", Text("b_ee_5_d2_r1_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_rabe, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_0"), Text("b_ee_5_d2_r1_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r1_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_empty, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r1_3"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace("", Text("b_ee_5_d2_r1_4"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r1_5"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace("", Text("b_ee_5_d2_r1_6"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_1"), Text("b_ee_5_d2_r1_7"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace(Text("b_ee_5_name_1"), Text("b_ee_5_d2_r1_9"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace(Text("b_ee_5_name_1"), Text("b_ee_5_d2_r1_10"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r1_11"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace("", Text("b_ee_5_d2_r1_12"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace("", Text("b_ee_5_d2_r1_13"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_text_replace("", Text("b_ee_5_d2_r1_14"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_5_d2_r1_15"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 1){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y); 
		vngen_text_replace("Chad", Text("b_ee_5_d2_r1_16"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_textbox_create(spr_textbox_Insel);
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y);
		vngen_text_create("Suzan", Text("b_ee_5_d2_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_rabe, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_0"), Text("b_ee_5_d2_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_rabe_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r2_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_0"), spr_empty, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r2_3"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace("", Text("b_ee_5_d2_r2_4"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r2_5"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace("", Text("b_ee_5_d2_r2_6"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle, scale_y);
		vngen_audio_play_sound("sound", sfx_char_dino, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_2"), Text("b_ee_5_d2_r2_7"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace(Text("b_ee_5_name_2"), Text("b_ee_5_d2_r2_9"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace(Text("b_ee_5_name_2"), Text("b_ee_5_d2_r2_10"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle_grey, scale_y);
		vngen_text_replace("", Text("b_ee_5_d2_r2_11"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace("", Text("b_ee_5_d2_r2_12"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_text_replace("", Text("b_ee_5_d2_r2_13"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_5_d2_r2_14"));
	}
	else {
		vngen_do_continue();
	}
}
if (vngen_event()) {
	if(global.b_ee_5_d2 == 2){
		vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_text_replace("Chad", Text("b_ee_5_d2_r2_15"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_empty, scale_y);
	vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_empty, scale_y);
	vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_textbox_destroy();
	vngen_text_destroy();

   if (vngen_option("choice_Sturm")) {
	vngen_option_create_transformed("opt_trotzen",		Text("b_ee_5_d3_o1"),0, -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
    vngen_option_create_transformed("opt_umschiffen",	Text("b_ee_5_d3_o2"),0, -(camera_get_view_height(view_camera[0])/100)*50, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	vngen_option_create_transformed("opt_Hafen",		Text("b_ee_5_d3_o3"),0, -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
   }
   
   switch (vngen_get_option("choice_Sturm", true)) {
      case "opt_trotzen":		global.b_ee_5_d3 = 1; setChadValue(-1);  setOwnValue(1); break;
      case "opt_umschiffen":	global.b_ee_5_d3 = 2; setSuzanValue(-1); setChadValue(-1);  setOwnValueBonus(); break;
      case "opt_Hafen":			global.b_ee_5_d3 = 3; setSuzanValue(1); setOwnValueBonus(); break;
   } 
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_textbox_create(spr_textbox_Insel);
	
	if(global.b_ee_5_d3 == 1){
		vngen_text_create("", Text("b_ee_5_d3_r1_0"));
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_text_create("", Text("b_ee_5_d3_r3_0"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_text_replace("", Text("b_ee_5_d3_r1_1"));
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_text_replace("", Text("b_ee_5_d3_r3_1"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_5_d3_r1_2"));
	}
	else if(global.b_ee_5_d3 == 3){
		
		vngen_text_replace("", Text("b_ee_5_d3_r3_2"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_eule_idle, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_eule, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_3"), Text("b_ee_5_d3_r1_3"));
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
		vngen_text_replace("Suzan", Text("b_ee_5_d3_r3_3"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_eule_idle_grey, scale_y ); 
		vngen_text_replace("", Text("b_ee_5_d3_r1_4"));
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y);
		vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
		vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_eule_idle, scale_y ); 
		vngen_audio_play_sound("sound", sfx_char_eule, 1, 0, false, false);
		vngen_text_replace(Text("b_ee_5_name_3"), Text("b_ee_5_d3_r3_4"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_text_replace("", Text("b_ee_5_d3_r1_5"));
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_text_replace("", Text("b_ee_5_d3_r3_5"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1){
		vngen_do_continue();
	}
	else if(global.b_ee_5_d3 == 3){
		vngen_text_replace("", Text("b_ee_5_d3_r3_6"));
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 1 || global.b_ee_5_d3 == 3 ){
		vngen_text_replace("", Text("b_ee_5_eule_0"));
	}
	else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.b_ee_5_d3 == 1 || global.b_ee_5_d3 == 3 ){
		vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_empty, scale_y);
		vngen_char_change_sprite("Chad", spr_empty, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
		vngen_textbox_destroy();
		vngen_text_destroy();

	   if (vngen_option("choice_Eule")) {
		vngen_option_create_transformed("opt_ueberdenken",		Text("b_ee_5_eule_d4_o1"),0, -(camera_get_view_height(view_camera[0])/100)*60, -1, 0.1, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	    vngen_option_create_transformed("opt_weiter",			Text("b_ee_5_eule_d4_o2"),0, -(camera_get_view_height(view_camera[0])/100)*40, -2, 0.3, fnt_roboto_standard, spr_option_vimuki_main, spr_option_vimuki_hover, spr_option_vimuki_select);
	   }
   
	   switch (vngen_get_option("choice_Eule", true)) {
	      case "opt_ueberdenken":	global.b_ee_5_d4 = 1; setSuzanValue(-1); setChadValue(-1); setOwnValueBonus(); break;
	      case "opt_weiter":		global.b_ee_5_d4 = 2; setSuzanValue(1); setChadValue(1); setOwnValue(1); break;
	   } 
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("b_ee_5_d4_sturm_r1_0"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("b_ee_5_d4_hafen_r1_0"));
		}
		//WEITER
	} else if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("b_ee_5_d4_sturm_r2_0"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_textbox_create(spr_textbox_Insel);
			vngen_text_create("", Text("b_ee_5_d4_hafen_r2_0"));
		}
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_d4_sturm_r1_1"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_d4_hafen_r1_1"));
		}
		//WEITER
	} else if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_d4_sturm_r2_1"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_d4_hafen_r2_1"));
		}
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_d4_sturm_r1_2"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_d4_hafen_r1_2"));
		}
		//WEITER
	} else if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_eule_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_eule, 1, 0, false, false);
			vngen_text_replace(Text("b_ee_5_name_3"), Text("b_ee_5_d4_sturm_r2_2"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_eule_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_eule, 1, 0, false, false);
			vngen_text_replace(Text("b_ee_5_name_3"), Text("b_ee_5_d4_hafen_r2_2"));
		}
	}
}




if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_d4_sturm_r1_3"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_d4_hafen_r1_3"));
		}
		//WEITER
	} else if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_empty, scale_y ); 
			vngen_text_replace("", Text("b_ee_5_d4_sturm_r2_3"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_char_change_sprite(Text("b_ee_5_name_3"), spr_empty, scale_y ); 
			vngen_text_replace("", Text("b_ee_5_d4_hafen_r2_3"));
		}
	}
}


//ENTSCHEIDUNG FRUEHER - UMSCHIFFEN

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
		vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
		
		if(global.b_ee_5_d2 = 1){
			vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle_grey, scale_y ); 
		} else {
			vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle_grey, scale_y ); 
		}
		vngen_textbox_create(spr_textbox_Insel);
		vngen_text_create("", Text("b_ee_5_d3_r2_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_text_replace("", Text("b_ee_5_d3_r2_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_text_replace("", Text("b_ee_5_d3_r2_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_text_replace("", Text("b_ee_5_d3_r2_3"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		//Faehre
		if(global.b_ee_5_d2 = 1){
			vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_small_animal_02, 1, 0, false, false);
			vngen_text_replace(Text("b_ee_5_name_1"), Text("b_ee_5_d3_r2_faehre_4"));
		//Piraten
		} else {
			vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle, scale_y ); 
			vngen_audio_play_sound("sound", sfx_char_dino, 1, 0, false, false);
			vngen_text_replace(Text("b_ee_5_name_2"), Text("b_ee_5_d3_r2_piraten_4"));
		}
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		//Faehre
		if(global.b_ee_5_d2 = 1){
			vngen_text_replace(Text("b_ee_5_name_1"), Text("b_ee_5_d3_r2_faehre_5"));
		//Piraten
		} else {
			vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_captain_trex_idle_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_5_d3_r2_piraten_5"));
		}
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		//Faehre
		if(global.b_ee_5_d2 = 1){
			vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_captain_hase_idle_grey, scale_y ); 
			vngen_text_replace("", Text("b_ee_5_d3_r2_faehre_6"));
		//Piraten
		} else {
			vngen_text_replace("", Text("b_ee_5_d3_r2_piraten_6"));
		}
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		//Faehre
		if(global.b_ee_5_d2 = 1){
			vngen_text_replace("", Text("b_ee_5_d3_r2_faehre_7"));
		//Piraten
		} else {
			vngen_do_continue();
		}
	}
	else {
		vngen_do_continue();
	}
}

//ENDE PERFEKT UMSCHIFFEN

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_empty, scale_y ); 
		vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_empty, scale_y ); 
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("b_ee_5_end_perfekt_0"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_text_replace("", Text("b_ee_5_end_perfekt_1"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		
		vngen_scene_replace("bg",spr_bg_camp, 0.3);
		vngen_text_replace("", Text("b_ee_5_end_perfekt_2"));
	}
	else {
		vngen_do_continue();
	}
}

if (vngen_event()) {
	if(global.b_ee_5_d3 == 2){
		vngen_text_replace("", Text("b_ee_5_end_perfekt_3"));
	}
	else {
		vngen_do_continue();
	}
}

//ENDE GUT UEBERDENKEN
if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_scene_replace("bg",spr_bg_s_Meer_Gewitter, 0.3);
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_0"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_scene_replace("bg",spr_bg_s_Meer_Gewitter, 0.3);
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_0"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_1"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_1"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_2"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_2"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_3"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_3"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_4"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_scene_replace("bg",spr_bg_camp, 0.3);
			vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_empty, scale_y ); 
			vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_empty, scale_y ); 
			
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_4"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_scene_replace("bg",spr_bg_camp, 0.3);
			vngen_char_change_sprite(Text("b_ee_5_name_1"), spr_empty, scale_y ); 
			vngen_char_change_sprite(Text("b_ee_5_name_2"), spr_empty, scale_y ); 
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_5"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_good_hafen_5"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//UEBERDENKEN
	if(global.b_ee_5_d4 = 1){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_good_sturm_6"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();	
	}
}

//ENDE SCHLECHT WEITER
if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_scene_replace("bg",spr_bg_s_Meer_Gewitter, 0.3);
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_0"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_scene_replace("bg",spr_bg_s_Meer_Gewitter, 0.3);
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_0"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_1"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_1"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_2"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_2"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_3"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_3"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_4"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_4"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_5"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_scene_replace("bg",spr_bg_camp, 0.3);
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_5_end_bad_hafen_5"));
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	//WEITER
	if(global.b_ee_5_d4 = 2){
		//Sturm
		if(global.b_ee_5_d3 == 1){
			vngen_scene_replace("bg",spr_bg_camp, 0.3);
			vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
			vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
			vngen_text_replace("", Text("b_ee_5_end_bad_sturm_6"));
		}
		//Hafen
		else if(global.b_ee_5_d3 == 3){
			vngen_do_continue();
		}
	} else {
		vngen_do_continue();	
	}
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
   vngen_text_replace("Chad", Text("b_ee_5_end_more_0"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("b_ee_5_end_more_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_end_more_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("b_ee_5_end_more_3"));
}

if (vngen_event()) {
	//Faehre
	if(global.b_ee_5_d2 = 2){
		vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
		vngen_text_replace("Chad", Text("b_ee_5_end_piraten_more_4"));
	//Piratenschiff
	} else if(global.b_ee_5_d2 = 1){
		vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_suzan_lough, 1, 0, false, false);
		vngen_text_replace("Suzan", Text("b_ee_5_end_faehre_more_4"));
	}
}

if (vngen_event()) {
	//Faehre
	if(global.b_ee_5_d2 = 2){
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y);
		vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
		vngen_text_replace("Chad", Text("b_ee_5_end_piraten_more_5"));
	//Piratenschiff
	} else if(global.b_ee_5_d2 = 1){
		vngen_text_replace("Suzan", Text("b_ee_5_end_faehre_more_5"));
	}
}


if (vngen_event()) {
	//Faehre
	if(global.b_ee_5_d2 = 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
		vngen_text_replace("Chad", Text("b_ee_5_end_piraten_more_6"));
	//Piratenschiff
	} else if(global.b_ee_5_d2 = 1){
		vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_hase, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_hase_midi);
		vngen_text_replace("", Text("b_ee_5_end_faehre_more_6"));
	}
}

if (vngen_event()) {
	//Faehre
	if(global.b_ee_5_d2 = 2){
		vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Dia", spr_dia_rex, scale_prop_x_y ); 
		vngen_audio_play_sound("sound", sfx_foto, 1, 0, false, false);
		SaveDias(spr_dia_rex_midi);
		vngen_text_replace("", Text("b_ee_5_end_piraten_more_7"));
	//Piratenschiff
	} else if(global.b_ee_5_d2 = 1){
		vngen_text_replace("", Text("b_ee_5_end_faehre_more_7"));
	}
}


if (vngen_event()) {
	//Faehre
	if(global.b_ee_5_d2 = 2){
		vngen_text_replace("", Text("b_ee_5_end_piraten_more_8"));
	//Piratenschiff
	} else if(global.b_ee_5_d2 = 1){
		
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