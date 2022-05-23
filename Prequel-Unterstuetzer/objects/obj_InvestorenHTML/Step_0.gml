/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

//Perform events and actions
if (vngen_event()) {
   //Create scene elements
   vngen_scene_create_ext(spr_splashscreen_2);
   vngen_textbox_create(spr_textbox_Sponsor);
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}

if (vngen_event()) {
   vngen_text_create("", Text("inv_0"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("inv_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("inv_2"));
}

if(vngen_event()){
	vngen_char_create_ext("Leutnant Scholle",	spr_empty, 580, 0, scale_y);
	vngen_char_create_ext("Dr. Rich Wealth",	spr_empty,580, 0, scale_y);
	vngen_char_create_ext("Mrs. Crowd", spr_empty, 300, 0, scale_y);
	vngen_char_create_ext("Mr. Funding", spr_empty,600, 0, scale_y);
	vngen_char_create_ext("Ravina Rush", spr_empty, 580, 0, scale_y);
	vngen_char_create_ext("Alle", spr_empty, 0, (camera_get_view_height(view_camera[0]))*0.1, scale_x);
	vngen_scene_replace("bg", spr_bg_galerie_empty,0.3);
	vngen_text_replace("", Text("inv_3"));
}

if(vngen_event()){
	vngen_text_replace("",Text("inv_4"));
}

//Entscheidung Kleider_____________________________________________________________________________________________________

if(vngen_event()){
	vngen_text_replace("",Text("inv_q1"));
}

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();

	 //Create options
   if (vngen_option("choice_Kleider")) {
	vngen_option_create_transformed("opt_schlicht",	Text("inv_q1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_aufwand",	Text("inv_q1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_atelier",	Text("inv_q1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
	vngen_option_create_transformed("opt_unfall",	Text("inv_q1_o4"), 0, -(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
   }
   
   //Perform option results
   switch (vngen_get_option("choice_Kleider", true)) {
      case "opt_schlicht":  global.rich += 1; global.crowd +=1; break;
      case "opt_aufwand":	global.scholle -= 2; global.rush +=2; global.rich -= 1; break;
      case "opt_atelier":	global.scholle += 1; global.rush -= 1; global.crowd += 1; break;
      case "opt_unfall":	global.rush +=3; global.rich -= 2; global.crowd -=2; break;
   } 
}

//Erster Eindruck ______________________________________________________________

if (vngen_event()) {
	//vngen_scene_replace("bg",spr_bg_sponsoren_wie_es_aussehen_soll_Position, 0.3);
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_text_create("", Text("inv_q2"));
}	
	
if(vngen_event()){	
	vngen_char_change_sprite("Alle", spr_sponsoren_ganz_grey_cut, scale_x);
	vngen_textbox_destroy();
	vngen_text_destroy();
	
   if (vngen_option("choice_Status")) {
	vngen_option_create_transformed("opt_selbstsicher",	Text("inv_q2_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*35, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_nervoes",		Text("inv_q2_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*15, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
   }
   
    switch (vngen_get_option("choice_Status", true)) {
      case "opt_selbstsicher":  global.rush +=1;  global.rich += 1;  global.crowd +=1; global.selbstsicher = 1;  break;
      case "opt_nervoes":		global.scholle += 1;  global.rush -=1;  global.rich -= 1;  global.crowd +=1; global.selbstsicher = 2; break;
   }
}

//Result_Selbstsicher_________________________________________________________

if (vngen_event()) {
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_char_change_sprite("Alle", spr_sponsoren_ganz_cut, scale_x);
	if(global.selbstsicher == 1){
	vngen_text_create("", Text("inv_q2_r1"));
	}
	
	if(global.selbstsicher == 2) {
		vngen_text_create("", Text("inv_q2_r2"));
	}
}

//Frage 1_____________________________________________________________________

if(vngen_event()){
	vngen_scene_replace("bg", spr_bg_galerie_empty, 0.3);
	vngen_char_change_sprite("Alle", spr_empty, scale_y); 
	
}


if(vngen_event()){
	vngen_char_change_sprite("Leutnant Scholle", spr_scholle_idle, scale_y);
	vngen_text_replace("Leutnant Scholle", Text("inv_q3"));
}


if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_char_change_sprite("Leutnant Scholle", spr_empty, scale_y);

	//Create options
   if(vngen_option("choice_1")) {
	vngen_option_create_transformed("opt_organisiert", Text("inv_q3_o1"),0,	-(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_bauch", Text("inv_q3_o2"),0,		-(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_ziele",  Text("inv_q3_o3"),0,		-(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
	vngen_option_create_transformed("opt_neues",  Text("inv_q3_o4"),0,		-(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
   }

	switch (vngen_get_option("choice_1", true)) {
	      case "opt_organisiert":	global.rich += 1; global.crowd +=1; global.rush +=2; global.scholle +=1; break;
	      case "opt_bauch":			global.scholle += 3; global.rush -=2; global.crowd += 1; break;
	      case "opt_ziele":			global.rich += 3; global.rush += 1; global.crowd += 1; break;
	      case "opt_neues":			global.rush +=1; global.scholle -= 1; global.crowd +=2; break;
	}
}

//Frage 2__________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_text_create("Dr. Rich Wealth",  Text("inv_q4"));
}	

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_char_change_sprite("Dr. Rich Wealth", spr_empty, scale_y);
	 //Create options
   if (vngen_option("choice_2")) {
	vngen_option_create_transformed("opt_ich", Text("inv_q4_o1"),	0,		-(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_welt", Text("inv_q4_o2"),	0,		-(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_kultur", Text("inv_q4_o3"),0,		-(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
	vngen_option_create_transformed("opt_inspiration",  Text("inv_q4_o4"),0,-(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
   }

	switch (vngen_get_option("choice_2", true)) {
	      case "opt_ich":			global.rich -= 2; global.crowd -=1; global.rush +=2; global.scholle -=2; break;
	      case "opt_welt":			global.scholle += 2; global.crowd -= 1; break;
	      case "opt_kultur":		global.rich += 1; global.crowd += 1; break;
	      case "opt_inspiration":	global.rush +=1; global.crowd +=2; break;
	}
}

//Frage 3____________________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_idle, scale_y);
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_text_create("Mrs. Crowd", Text("inv_q5"));
}	

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_char_change_sprite("Mrs. Crowd", spr_empty, scale_y);

	 //Create options
   if (vngen_option("choice_3")) {
	vngen_option_create_transformed("opt_video", Text("inv_q5_o1"),	0,		-(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_grob", Text("inv_q5_o2"),	0,		-(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
    vngen_option_create_transformed("opt_monate",  Text("inv_q5_o3"),0,		-(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
	vngen_option_create_transformed("opt_probleme",  Text("inv_q5_o4"),0,	-(camera_get_view_height(view_camera[0])/100)*20, -4, 0.7, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
   }

	switch (vngen_get_option("choice_3", true)) {
	      case "opt_video":		global.rich -= 2; global.crowd -=2; global.rush -=1; global.scholle +=1; break;
	      case "opt_grob":		global.scholle += 1; global.rich -=1; global.crowd -= 1; break;
	      case "opt_monate":	global.rush += 1; global.crowd += 1; break;
	      case "opt_probleme":	global.scholle +=1; global.rich +=3; break;
	}
}

//Frage 4__________________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Mr. Funding", spr_mr_funding_idle, scale_y);
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_text_create("Mr. Funding",  Text("inv_q6"));
}	

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_char_change_sprite("Mr. Funding", spr_empty, scale_y);

	 //Create options
   if (vngen_option("choice_4")) {
	vngen_option_create_transformed("opt_kraft",	" ",	-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -1, 0.1, fnt_standard_normal, spr_icon_staerke, spr_icon_staerke_hover, spr_icon_staerke_hover);
    vngen_option_create_transformed("opt_verstand",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*70, -2, 0.3, fnt_standard_normal, spr_icon_wissen, spr_icon_wissen_hover, spr_icon_wissen_hover);
    vngen_option_create_transformed("opt_beides", " ",		-(camera_get_view_width(view_camera[0])*0), -(camera_get_view_height(view_camera[0])/100)*30, -3, 0.5, fnt_standard_normal, spr_icon_wissen_und_staerke, spr_icon_wissen_und_staerke_hover, spr_icon_wissen_und_staerke_hover);
   }

	switch (vngen_get_option("choice_4", true)) {
	      case "opt_kraft":		global.crowd +=1; global.scholle +=1; break;
	      case "opt_verstand":	global.rush += 1; global.crowd += 1; break;
	      case "opt_beides":	global.rush += 1; global.rich += 3; break;
	}
}

//Frage 5 ________________________________________________________________________

if (vngen_event()) {
	vngen_char_change_sprite("Ravina Rush", spr_ravina_idle, scale_y);
	vngen_textbox_create(spr_textbox_Sponsor);
	vngen_text_create("Ravina Rush", Text("inv_q7"));
}	

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_char_change_sprite("Ravina Rush", spr_empty, scale_y);

	 //Create options
   if (vngen_option("choice_5")) {
	vngen_option_create_transformed("opt_rush",	" ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_standard_normal, spr_icon_ravina, spr_icon_ravina_hover, spr_icon_ravina_hover);
    vngen_option_create_transformed("opt_scholle",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_standard_normal, spr_icon_scholle, spr_icon_scholle_hover, spr_icon_scholle_hover);
    vngen_option_create_transformed("opt_wealthy", " ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_standard_normal, spr_icon_rich, spr_icon_rich_hover, spr_icon_rich_hover);
	vngen_option_create_transformed("opt_crowdfunding",	" ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_standard_normal, spr_icon_crowdfunding, spr_icon_crowdfunding_hover, spr_icon_crowdfunding_hover);
   }

	switch (vngen_get_option("choice_5", true)) {
	      case "opt_rush":			global.rush -=2; global.wahl = 1; break;
	      case "opt_scholle":		global.scholle += 3; global.wahl = 2; break;
	      case "opt_wealthy":		global.wahl = 3; break;
	      case "opt_crowdfunding":	global.crowd +=3; global.wahl =4; break;
	}
}


if (vngen_event()) {
		
		if(global.wahl == 1){
			vngen_char_change_sprite("Ravina Rush", spr_ravina_genervt, scale_y);
			vngen_audio_play_sound("test", sfx_char_ravina_wtf, 1, 0, false, false);
			vngen_textbox_create(spr_textbox_Sponsor);
			vngen_text_create("Ravina Rush",Text("inv_q7_r1"));
		}
		
		if(global.wahl == 2){
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y);
			vngen_audio_play_sound("test", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_textbox_create(spr_textbox_Sponsor);
			vngen_text_create("Leutnant Scholle", Text("inv_q7_r2"));
		}
		
		if(global.wahl == 3){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);
			vngen_audio_play_sound("test", sfx_char_richwealth_standard, 1, 0, false, false);
			vngen_textbox_create(spr_textbox_Sponsor);
			vngen_text_create("Dr. Rich Wealth", Text("inv_q7_r3_q1"));
		}
		
		if(global.wahl == 4){
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y);
			vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y);
			vngen_textbox_create(spr_textbox_Sponsor);
			vngen_audio_play_sound("test", sfx_char_crowdfunding_male, 1, 0, false, false);
			vngen_text_create("Mr. Funding", Text("inv_q7_r4_1"));
		}	
}


if(vngen_event()){
	if(global.wahl = 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle_grey, scale_y);	
		vngen_textbox_destroy();
		vngen_text_destroy();
	
		if (vngen_option("choice_6")) {
		vngen_option_create_transformed("opt_niedagewesen",		Text("inv_q7_r3_q1_o1"), 0, -(camera_get_view_height(view_camera[0])/100)*80, -1, 0.1, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
		vngen_option_create_transformed("opt_kunst",			Text("inv_q7_r3_q1_o2"), 0, -(camera_get_view_height(view_camera[0])/100)*60, -2, 0.3, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
		vngen_option_create_transformed("opt_geschichten",		Text("inv_q7_r3_q1_o3"), 0, -(camera_get_view_height(view_camera[0])/100)*40, -3, 0.5, fnt_standard_option, spr_option_main, spr_option_select, spr_option_select);
		}

		switch (vngen_get_option("choice_6", true)) {
				case "opt_niedagewesen":	global.richValue = 1;  break;
				case "opt_kunst":			global.rich -= 1; global.richValue = 2; break;
				case "opt_geschichten":		global.rich += 5; global.richValue = 3; break;
		}
	} else {
		vngen_do_continue();
	}	
}


if (vngen_event()) {
	if(global.wahl = 4){
	vngen_text_replace("Mrs. Crowd", Text("inv_q7_r4_2"));
	vngen_audio_play_sound("test", sfx_char_crowdfunding_female, 1, 0, false, false);
	}
}


//Rich
if (vngen_event()) {
	if(global.richValue == 1){
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);	
		vngen_text_create("Dr. Rich Wealth", Text("inv_q7_r3_q1_r1_1"));
	}
	
	if(global.richValue == 2){
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);	
		vngen_text_create("Dr. Rich Wealth", Text("inv_q7_r3_q1_r2_1"));
	}
	
	if(global.richValue == 3){
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);	
		vngen_audio_play_sound("test", sfx_char_richwealth_standard, 1, 0, false, false);
		vngen_text_create("Dr. Rich Wealth",  Text("inv_q7_r3_q1_r3_1"));
	}
}

//Rich2
if(vngen_event()){
	if(global.richValue == 1){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_idle, scale_y);	
		vngen_text_replace("", Text("inv_q7_r3_q1_r1_2"));
	}
	
	if(global.richValue == 2){
		vngen_text_replace("Dr. Rich Wealth", Text("inv_q7_r3_q1_r2_2"));
	}
	
	if(global.richValue == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y);	
		vngen_text_replace("", Text("inv_q7_r3_q1_r3_2"));
	}
}

if(vngen_event()){
	if(global.wahl == 1){
		vngen_char_change_sprite("Ravina Rush", spr_empty, scale_y);
	}
	if(global.wahl == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_empty, scale_y);
	}
	if(global.wahl == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_empty, scale_y);
	}
	if(global.wahl == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_empty, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_empty, scale_y);
	}
	vngen_text_replace("", Text("inv_6"));
}

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	 //Create options
   if (vngen_option("choice_investoren")) {
	   
		if(global.rush >= 5){
			vngen_option_create_transformed("opt_InvestorRush",	" ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -1, 0.1, fnt_standard_normal, spr_icon_ravina, spr_icon_ravina_hover, spr_icon_ravina_hover);
		}
	
		if(global.scholle >= 5){
			 vngen_option_create_transformed("opt_InvestorScholle",	" ",	 (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*75, -2, 0.3, fnt_standard_normal, spr_icon_scholle, spr_icon_scholle_hover, spr_icon_scholle_hover);
		}	
	
		if(global.rich >= 6){
			vngen_option_create_transformed("opt_InvestorRich", " ",		-(camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -3, 0.5, fnt_standard_normal, spr_icon_rich, spr_icon_rich_hover, spr_icon_rich_hover);
		}
			vngen_option_create_transformed("opt_InvestorCrowdfunding",	" ", (camera_get_view_width(view_camera[0])*0.15), -(camera_get_view_height(view_camera[0])/100)*25, -4, 0.7, fnt_standard_normal, spr_icon_crowdfunding, spr_icon_crowdfunding_hover, spr_icon_crowdfunding_hover);
		
		switch (vngen_get_option("choice_investoren", true)) {
		      case "opt_InvestorRush": global.investorSelected = 1; break;
		      case "opt_InvestorScholle": global.investorSelected = 2; break;
		      case "opt_InvestorRich": global.investorSelected = 3; break;
		      case "opt_InvestorCrowdfunding": global.investorSelected = 4; break;
		}
	}
}

//Investoren________________________________________________________________________

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden, scale_y);
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_audio_play_sound("test", sfx_char_ravina_ohyeah, 1, 0, false, false);
		vngen_text_create("Ravina Rush", Text("inv_rush_1"));
	}
	
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y);
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_audio_play_sound("test", sfx_char_scholle_standard, 1, 0, false, false);
		vngen_text_create("Scholle", Text("inv_scholle_1"));
	}
	
	if(global.investorSelected == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y);
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_audio_play_sound("test", sfx_char_richwealth_standard, 1, 0, false, false);
		vngen_text_create("Dr. Rich Wealth", Text("inv_wealth_1"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y);
		vngen_audio_play_sound("test", sfx_char_crowdfunding_together, 1, 0, false, false);
		vngen_textbox_create(spr_textbox_Sponsor);
		vngen_text_create("Mrs. Crowd", Text("inv_crowd_1"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_text_replace("Ravina Rush", Text("inv_rush_2"));
	}
	
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("inv_scholle_2"));
	}
	
	if(global.investorSelected == 3){
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_2"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y);
		vngen_text_replace("Mr. Funding", Text("inv_crowd_2"));
	}
}


if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_text_replace("Ravina Rush", Text("inv_rush_3"));
	}
	
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y);	
		vngen_text_replace("Leutnant Scholle", Text("inv_scholle_3"));
	}
	
	if(global.investorSelected == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y);	
		vngen_text_replace("", Text("inv_wealth_3"));
	}
	
	if(global.investorSelected == 4){
		vngen_text_replace("Mr. Funding", Text("inv_crowd_3"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_text_replace("Ravina Rush", Text("inv_rush_4"));
	}
	//Netz wird uebergeben
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich_grey, scale_y);	
		vngen_char_modify_pos("Leutnant Scholle", 850, 0, -1, 1, 0 , 1.5, ease_bezier);
		vngen_char_create_ext("Netz", spr_item_fischernetz_glow, 200,100, scale_prop_x_y);
		vngen_text_replace("", Text("inv_scholle_4"));
	}
	
	if(global.investorSelected == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y);
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_4"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y);
		vngen_text_replace("Mrs. Crowd", Text("inv_crowd_4"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_text_replace("Ravina Rush", Text("inv_rush_5"));
	}
	
	
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y);	
		vngen_text_replace("Leutnant Scholle", Text("inv_scholle_5"));
	}
	
	if(global.investorSelected == 3){
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_5"));
	}
	
	if(global.investorSelected == 4){
		vngen_text_replace("Mrs. Crowd", Text("inv_crowd_5"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_text_replace("Ravina Rush", Text("inv_rush_6"));
	}
	
	if(global.investorSelected == 2){
		vngen_char_change_sprite("Leutnant Scholle", spr_empty, scale_y);
		vngen_char_change_sprite("Netz", spr_empty, scale_y);
		vngen_do_continue();
	}
	
	//Buch wird uebergeben
	if(global.investorSelected == 3){
		vngen_char_create_ext("Buch", spr_item_anurabuch_glow, 300,100, scale_prop_x_y);
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("inv_wealth_6"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y);
		vngen_text_replace("Mr. Funding", Text("inv_crowd_6"));
	}
}

if (vngen_event()) {
	//Jacke wird uebergeben
	if(global.investorSelected == 1){
		vngen_char_create_ext("Jacke", spr_item_outdoorjacke_glow, 1000,100, scale_prop_x_y);
		vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden_grey, scale_y);	
		vngen_char_modify_pos("Ravina Rush", 300, 0, -1, 1, 0 , 1.5, ease_bezier);
		vngen_text_replace("",Text("inv_rush_7"));
	}
	
	if(global.investorSelected == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y);
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_7"));
	}
	
	//Tool wird uebergeben
	if(global.investorSelected == 4){
		vngen_char_modify_pos("Mrs. Crowd", 100, 0, -1, 1, 0 , 1.5, ease_bezier);
		vngen_char_modify_pos("Mr. Funding", 1000, 0, -1, 1, 0 , 1.5, ease_bezier);
		vngen_char_create_ext("Multitool", spr_item_multitool_glow, 685,100, scale_prop_x_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y);
		vngen_text_replace("", Text("inv_crowd_7"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden, scale_y);	
		vngen_text_replace("Ravina Rush", Text("inv_rush_8"));
	}
	
	if(global.investorSelected == 3){
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_8"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y);
		vngen_text_replace("Mr. Funding", Text("inv_crowd_8"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 1){
		vngen_char_change_sprite("Ravina Rush", spr_empty, scale_y);
		vngen_char_change_sprite("Jacke", spr_empty, scale_y);
		vngen_do_continue();
	}
	
	if(global.investorSelected == 3){
		vngen_text_replace("Dr. Rich Wealth", Text("inv_wealth_9"));
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y);
		vngen_text_replace("Mrs. Crowd", Text("inv_crowd_9"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 3){
		vngen_char_change_sprite("Dr. Rich Wealth", spr_empty, scale_y);
		vngen_char_change_sprite("Buch", spr_empty, scale_y);
		vngen_do_continue();
	}
	
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y);
		vngen_text_replace("Mr. Funding", Text("inv_crowd_10"));
	}
}

if (vngen_event()) {
	if(global.investorSelected == 4){
		vngen_char_change_sprite("Mrs. Crowd", spr_empty, scale_y);
		vngen_char_change_sprite("Mr. Funding", spr_empty, scale_y);
		vngen_char_change_sprite("Multitool", spr_empty, scale_y);
		vngen_do_continue();
	}
}

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();	
}



//Ticket
if(vngen_event()){
	global.finished = true; 
	if(global.investorSelected == 1){
		vngen_scene_replace("bg", spr_bg_s_ticket_rush, 0);
	}
	
	if(global.investorSelected == 2){
		vngen_scene_replace("bg", spr_bg_s_ticket_scholle,0);
	}
	
	if(global.investorSelected == 3){
		vngen_scene_replace("bg", spr_bg_s_ticket_rich, 0);
	}
	
	if(global.investorSelected == 4){
		vngen_scene_replace("bg", spr_bg_s_ticket_crowdfunding, 0);
	}
	vngen_do_continue();
}

if(vngen_event()){
	vngen_textbox_create_special("tb", spr_textbox_sponsor_no_name,  camera_get_view_width(view_camera[0])*0.5, camera_get_view_height(view_camera[0])*0.16, 0, trans_wipe_up, 0.75);
	vngen_text_create_special("txt", "",Text("inv_7"), camera_get_view_width(view_camera[0])*0.12, camera_get_view_height(view_camera[0])*0.08, 0, camera_get_view_width(view_camera[0])*0.8, fnt_standard_normal, c_black, trans_wipe_up, 0.75);
}	


if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_do_continue();
}

//End VNgen script
vngen_event_reset_target();