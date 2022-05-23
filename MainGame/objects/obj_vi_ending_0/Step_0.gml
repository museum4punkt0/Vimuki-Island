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
	
	SaveArtefacts();
	
	if(ds_list_size(global.artefakts) == 0){
		ds_list_add(global.artefakts, spr_empty);
		ds_list_add(global.artefakts, spr_empty);
	} else if(ds_list_size(global.artefakts) == 1){
		ds_list_add(global.artefakts, spr_empty);
	}
	
	
	vngen_char_create_ext("Leutnant Scholle", spr_empty, 500, 0, scale_y);
	vngen_char_create_ext("Enya", spr_empty, 900, 0, scale_y);
	vngen_char_create_ext("Ravina Rush", spr_empty, 710, 0, scale_y);
	vngen_char_create_ext("Mrs. Crowd", spr_empty, 500, 0, scale_y);
	vngen_char_create_ext("Mr. Funding", spr_empty, 900, 0, scale_y);
	vngen_char_create_ext("Dr. Rich Wealth", spr_empty, 710, 0, scale_y);
	vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0, scale_y);
	
	vngen_text_create("", Text("vi_ending_0")); 
	
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y ); 
	vngen_audio_play_sound("sound", sfx_char_chad_thinking, 1, 0, false, false);
   vngen_text_replace("Chad", Text("vi_ending_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
	vngen_char_change_sprite("Suzan", spr_suzan_traurig, scale_y); 
   vngen_text_replace("Suzan", Text("vi_ending_3"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_traurig_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_traurig, scale_y ); 
   vngen_text_replace("Chad", Text("vi_ending_4"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_traurig_grey, scale_y ); 
   vngen_text_replace("", Text("vi_ending_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_8"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_9"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y ); 
   vngen_text_replace("", Text("vi_ending_10"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_11"));
}

if (vngen_event()) {
	vngen_scene_replace("bg",bg_vimuki_island,0.3);
   vngen_text_replace("", Text("vi_ending_12"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y ); 
   vngen_text_replace("", Text("vi_ending_13"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y );
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
   vngen_text_replace("", Text("vi_ending_14"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_15"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen, scale_y); 
   vngen_text_replace("Suzan", Text("vi_ending_16"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
   vngen_text_replace("Chad", Text("vi_ending_17"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y );
   vngen_text_replace("", Text("vi_ending_18"));
}

if (vngen_event()) {
	vngen_scene_replace("bg",spr_bg_s_Meer,0.3);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_char_change_sprite("Chad", spr_empty, scale_y );
   vngen_text_replace("", Text("vi_ending_19"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_20"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_21"));
}

if (vngen_event()) {
	vngen_scene_replace("bg",spr_bg_koffer,0.3);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y); 
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y );
   vngen_text_replace("", Text("vi_ending_22"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y );
   vngen_text_replace("", Text("vi_ending_23"));
}
if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_24"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt, scale_y );
	vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
   vngen_text_replace("Chad", Text("vi_ending_25"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_genervt_grey, scale_y );
	vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
   vngen_text_replace("Suzan", Text("vi_ending_26"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
   vngen_text_replace("", Text("vi_ending_27"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y );
   vngen_text_replace("Chad", Text("vi_ending_28"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y); 
   vngen_text_replace("Suzan", Text("vi_ending_29"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y );
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
	vngen_text_replace("", Text("vi_ending_30"));
}

if (vngen_event()) {
	vngen_text_destroy();
	vngen_textbox_destroy();
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	 vngen_scene_create_start(spr_bg_koffer);
  	vngen_textbox_create_start(spr_textbox_Insel);
}

if(vngen_event()){
	vngen_text_create("", Text("vi_ending_31")); 
	
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_32"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_33"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
   vngen_text_replace("", Text("vi_ending_34"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_35"));
}

if (vngen_event()) {
	vngen_scene_replace("bg",spr_bg_Galerie_1,0.3);
   vngen_text_replace("", Text("vi_ending_36"));
}


if (vngen_event()) {
	vngen_char_change_sprite("Chad", spr_empty, scale_y );
	vngen_char_change_sprite("Suzan", spr_empty, scale_y); 
    vngen_scene_replace("bg",spr_bg_galerie,0.3);
    vngen_bild_create_ext("Bild1", global.dias[| 0], 460, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild2", global.dias[| 1], 960, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild3", global.dias[| 2], 1460, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild4", global.dias[| 3], 710, 700, scale_prop_x_y);
    vngen_bild_create_ext("Bild5", global.dias[| 4], 1250, 700, scale_prop_x_y);
    vngen_vitrine_create_ext("Vitrine rechts", global.artefakts[| 0], 1400, 0, scale_prop_x_y);
    vngen_vitrine_create_ext("Vitrine links", global.artefakts[| 1], 0, 0, scale_prop_x_y);
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_ending_37"));
}
	
	
if(vngen_event()){
	if(global.artefakt_dschungel || global.artefakt_hoehle || global.artefakt_love || global.artefakt_strand || global.artefakt_tempel){
		 vngen_text_replace("", Text("vi_ending_art"));
	} else {
		vngen_do_continue(); 	
	}
}

//____________________________________SPONSOREN________________________________________
if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
	if(global.scholle){
		vngen_text_replace("", Text("vi_ending_scholle_0"));
		
	} else if(global.rush) {
		vngen_text_replace("", Text("vi_ending_rush_0"));
		
	} else if(global.crowd) {
		vngen_text_replace("", Text("vi_ending_crowd_0"));
		
	} else if(global.rich) {
		vngen_text_replace("", Text("vi_ending_rich_0"));
		
	} else {
		vngen_text_replace("", Text("vi_ending_alone_0"));
		
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich_grey, scale_y );
			vngen_audio_play_sound("sound", sfx_char_scholle_standard, 1, 0, false, false);
			vngen_char_change_sprite("Enya", spr_enya_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_scholle_item_0"));
		} else {
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich_grey, scale_y );
			vngen_text_replace("", Text("vi_ending_scholle_noitem_0"));
		}
		
	} else if(global.rush) {
		vngen_char_change_sprite("Ravina Rush", spr_ravina_idle_grey, scale_y );
		vngen_text_replace("", Text("vi_ending_rush_1"));
		
	} else if(global.crowd) {
		vngen_text_replace("", Text("vi_ending_crowd_1"));
		
	} else if(global.rich) {
		vngen_text_replace("", Text("vi_ending_rich_1"));
		
	} else {
		vngen_text_replace("", Text("vi_ending_alone_1"));
		
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_text_replace("", Text("vi_ending_scholle_item_1"));
		} else {
			
			vngen_text_replace("", Text("vi_ending_scholle_noitem_1"));
		}
		
	} else if(global.rush) {
		vngen_char_change_sprite("Chad", spr_chad_lachen, scale_y );
		vngen_text_replace("Chad", Text("vi_ending_rush_2"));
		
	} else if(global.crowd) {
		vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y); 
		vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y); 
		vngen_text_replace("", Text("vi_ending_crowd_2"));
		
	} else if(global.rich) {
		vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y); 
		vngen_audio_play_sound("sound", sfx_char_richwealth_standard, 1, 0, false, false);
		vngen_text_replace("", Text("vi_ending_rich_2"));
		
	} else {
		vngen_text_replace("", Text("vi_ending_alone_2"));
		
	}
}


if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_genervt, scale_y); 
		vngen_text_replace("Suzan", Text("vi_ending_rush_3"));
		
	} else if(global.crowd) {
		vngen_do_continue();
		
	} else if(global.rich) {
		vngen_do_continue();
		
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		vngen_char_change_sprite("Chad", spr_chad_verliebt, scale_y );
		vngen_char_change_sprite("Suzan", spr_suzan_genervt_grey, scale_y); 
		vngen_text_replace("Chad", Text("vi_ending_rush_4"));
		
	} else if(global.crowd) {
		vngen_do_continue();
		
	} else if(global.rich) {
		vngen_do_continue();
		
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		vngen_char_change_sprite("Chad", spr_chad_verliebt_grey, scale_y );
		vngen_text_replace("", Text("vi_ending_rush_5"));
		
	} else if(global.crowd) {
		vngen_do_continue();
		
	} else if(global.rich) {
		vngen_do_continue();
		
	} else {
		vngen_do_continue();
	}
}


if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y );
			vngen_char_change_sprite("Enya", spr_enya_verliebt_grey, scale_y); 
			vngen_text_replace("Leutnant Scholle", Text("vi_ending_scholle_item_2"));
			
		} else {
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_gluecklich, scale_y );
			vngen_text_replace("Leutnant Scholle", Text("vi_ending_scholle_noitem_2"));
		}
		
	} else if(global.rush) {
		if(global.jackeused){
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y );
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden, scale_y );
			vngen_audio_play_sound("sound", sfx_char_ravina_ohyeah, 1, 0, false, false);
			vngen_text_replace("Ravina", Text("vi_ending_rush_item_0"));
		} else {
			vngen_char_change_sprite("Chad", spr_chad_besorgt_grey, scale_y );
			vngen_char_change_sprite("Suzan", spr_suzan_besorgt_grey, scale_y); 
			vngen_char_change_sprite("Ravina Rush", spr_ravina_genervt, scale_y );
			vngen_audio_play_sound("sound", sfx_char_ravina_wtf, 1, 0, false, false);
			vngen_text_replace("Ravina", Text("vi_ending_rush_noitem_0"));
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_crowdfunding_female, 1, 0, false, false);
			vngen_text_replace("Mrs. Crowd", Text("vi_ending_crowd_item_0"));
		} else {
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_crowdfunding_female, 1, 0, false, false);
			vngen_text_replace("Mrs. Crowd", Text("vi_ending_crowd_noitem_0"));
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_item_0"));
		} else {
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_0"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_verliebt_grey, scale_y );
			vngen_char_change_sprite("Enya", spr_enya_gluecklich, scale_y); 
			vngen_text_replace("Enya", Text("vi_ending_scholle_item_3"));
		} else {
			vngen_text_replace("Leutnant Scholle", Text("vi_ending_scholle_noitem_3"));
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_text_replace("Ravina Rush", Text("vi_ending_rush_item_1"));
		} else {
			vngen_char_change_sprite("Ravina Rush", spr_ravina_genervt_grey, scale_y );
			vngen_text_replace("", Text("vi_ending_rush_noitem_1"));
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_crowdfunding_male, 1, 0, false, false);
			vngen_text_replace("Mr. Funding", Text("vi_ending_crowd_item_1"));
		} else {
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_crowdfunding_male, 1, 0, false, false);
			vngen_text_replace("Mr. Funding", Text("vi_ending_crowd_noitem_1"));
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_rich_item_1"));
		} else {
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_1"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_char_change_sprite("Leutnant Scholle", spr_scholle_verliebt_grey, scale_y );
			vngen_char_change_sprite("Enya", spr_enya_verliebt_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_scholle_item_4"));
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y );
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_rush_item_2"));
		} else {
			vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden, scale_y );
			vngen_text_replace("Ravina Rush", Text("vi_ending_rush_noitem_2"));
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_crowd_item_2"));
		} else {
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich, scale_y); 
			vngen_char_change_sprite("Mr. Funding", spr_mr_funding_gluecklich_grey, scale_y); 
			vngen_text_replace("Mrs. Crowd", Text("vi_ending_crowd_noitem_2"));
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_item_2"));
		} else {
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_2"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_text_replace("", Text("vi_ending_scholle_item_5"));
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_text_replace("Ravina Rush", Text("vi_ending_rush_noitem_3"));
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Mrs. Crowd", spr_mrs_crowd_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_crowd_noitem_3"));
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_rich_item_3"));
		} else {
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_rich_noitem_3"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Chad", spr_chad_lachen_grey, scale_y );
			vngen_char_change_sprite("Suzan", spr_suzan_lachen_grey, scale_y); 
			vngen_char_change_sprite("Ravina Rush", spr_ravina_zufrieden, scale_y );
			vngen_text_replace("Ravina Rush", Text("vi_ending_rush_noitem_4"));
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_item_4"));
		} else {
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_4"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_item_5"));
		} else {
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich_grey, scale_y); 
			vngen_text_replace("", Text("vi_ending_rich_noitem_5"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich, scale_y); 
			vngen_text_replace("Chad", Text("vi_ending_rich_noitem_6"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Chad", spr_chad_fragend_nachdenklich_grey, scale_y); 
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert, scale_y); 
			vngen_audio_play_sound("sound", sfx_char_suzan_thinking, 1, 0, false, false);
			vngen_text_replace("Suzan", Text("vi_ending_rich_noitem_7"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Suzan", spr_suzan_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_schockiert_grey, scale_y); 
			vngen_char_change_sprite("Dr. Rich Wealth", spr_rich_gluecklich, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_8"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_do_continue();
		} else {
			vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y); 
			vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y); 
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_9"));
		}
	} else {
		vngen_do_continue();
	}
}

if(vngen_event()){
	if(global.scholle){
		if(global.hochzeit){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.rush) {
		if(global.jackeused){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
	} else if(global.crowd) {
		if(global.multitoolUsed){
			vngen_do_continue();
		} else {
			vngen_do_continue();
		}
		
	} else if(global.rich) {
		if(global.anurasbuchUsed){
			vngen_do_continue();
		} else {
			vngen_text_replace("Dr. Rich Wealth", Text("vi_ending_rich_noitem_10"));
		}
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
	room_goto(vi_ending_bau);
}

//End VNgen script
vngen_event_reset_target();