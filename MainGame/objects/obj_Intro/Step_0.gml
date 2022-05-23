/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

switch (vngen_get_button()) {
   case "skip": audio_stop_all(); 
	room_goto(Karte); 
   break;
}

if(vngen_event()){
	audio_play_sound(vimuki_main_intro_music_and_atmo, 1, true); 
	vngen_do_continue();
}

if (vngen_event()) {
	 vngen_scene_create_start(bg_vimuki_island);
	vngen_button_create("skip", "", spr_btn_skip_2, spr_btn_skip_2_hover, spr_btn_skip_2_selected, camera_get_view_width(view_camera[0])*0.9 - sprite_get_width(spr_btn_step), camera_get_view_height(view_camera[0])*0.05, -1, fnt_default, c_white, trans_fade, 0.25, ease_quad);
	vngen_textbox_create_start(spr_textbox_Insel);
	show_debug_message("Textbox gebaut!");
	vngen_label_create();
	vngen_prompt_create();
   
   //Apply style modifications
	vngen_text_modify_style();
	vngen_label_modify_style();

   //Apply text speed
	vngen_script_execute_ext(vngen_set_speed, 70);   
	vngen_char_create_ext("Chad", spr_empty, 50, 0,scale_y);
	vngen_char_create_ext("Suzan", spr_empty, 1450, 0,scale_y);
	show_debug_message("Texte gebaut!");
}

if(vngen_event()){
	if(global.hasSponsor){
		vngen_text_create("", Text("vi_spon_0") + global.investorName +  Text("vi_spon_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//SCHOLLE ALS SPONSOR

if(vngen_event()){
	if(global.scholle){
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("vi_wo_scholle_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_wo_scholle_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_wo_scholle_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_wo_scholle_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_wo_scholle_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}


//RUSH ALS SPONSOR

if(vngen_event()){
	if(global.rush){
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("vi_wo_rush_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_wo_rush_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_wo_rush_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_wo_rush_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//CROWDFUNDING ALS SPONSOR
if(vngen_event()){
	if(global.crowd){
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("vi_wo_crowd_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_wo_crowd_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_wo_crowd_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_wo_crowd_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//RICH ALS SPONSOR

if(vngen_event()){
	if(global.rich){
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("vi_wo_rich_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_wo_rich_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_wo_rich_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_wo_rich_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_wo_rich_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_wo_rich_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.hasSponsor){
		vngen_text_replace("", Text("vi_spon_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}
//ALLEINE_____________________________________________________
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_create("", Text("vi_alone_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_scene_replace("bg",spr_bg_s_Meer_Sonne, 0.3);
		vngen_text_replace("", Text("vi_alone_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_8")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_9")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_10")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_11")); 	
	} else {
		vngen_do_continue(); 	
	}
}
if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_alone_12")); 	
	} else {
		vngen_do_continue(); 	
	}
}
//___________________________________BEIDE________________________________
if(vngen_event()){
	vngen_text_replace("", Text("vi_task_0")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_task_1")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_task_2")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_task_3")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_task_4")); 	
}

//_______SCHOLLE________

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("vi_way_scholle_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_8")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.scholle){
		vngen_text_replace("", Text("vi_way_scholle_9")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//_______RUSH________

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("vi_way_rush_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rush){
		vngen_text_replace("", Text("vi_way_rush_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//_______CROWD________

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("vi_way_crowd_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_8")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.crowd){
		vngen_text_replace("", Text("vi_way_crowd_9")); 	
	} else {
		vngen_do_continue(); 	
	}
}


//_______RICH________

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("vi_way_rich_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(global.rich){
		vngen_text_replace("", Text("vi_way_rich_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}


//_______ALONE________

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_0")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_1")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_2")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_3")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_4")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey,scale_y);
		vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
		vngen_text_replace("", Text("vi_way_alone_5")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_6")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_7")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_8")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_9")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_10")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_11")); 	
	} else {
		vngen_do_continue(); 	
	}
}

if(vngen_event()){
	if(!global.hasSponsor){
		vngen_text_replace("", Text("vi_way_alone_12")); 	
	} else {
		vngen_do_continue(); 	
	}
}

//_____________________ALLE______________________________

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_0")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_cool, 1, 0, false, false);
	vngen_text_replace("", Text("vi_all_1")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_2")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_3")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
	vngen_text_replace("", Text("vi_all_4")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_5")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_text_replace("", Text("vi_all_6")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_7")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen_grey, scale_y);
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher, scale_y);
	vngen_text_replace("Chad", Text("vi_all_8")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_grinsend_selbstsicher_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_selbstsicher_grinsen, scale_y);
	vngen_text_replace("Suzan", Text("vi_all_9")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
	vngen_text_replace("", Text("vi_all_10")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_suzan_idle, scale_y);
	vngen_audio_play_sound("sound", sfx_char_suzan_standard, 1, 0, false, false);
	vngen_text_replace("Suzan", Text("vi_all_11")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_ekel, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_idle_grey, scale_y);
	vngen_audio_play_sound("sound", sfx_char_chad_disgusted, 1, 0, false, false);
	vngen_text_replace("Chad", Text("vi_all_12")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_text_replace("", Text("vi_all_13")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_14")); 	
}

if (vngen_event()) {
	room_goto(vi_start_1);
	vngen_do_continue(); 
}

//End VNgen script
vngen_event_reset_target();