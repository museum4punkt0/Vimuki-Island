//Begin VNgen script
vngen_event_set_target();

//Perform events and actions
if (vngen_event()) {
	//Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);
   //Create scene elements
   vngen_scene_create_ext(spr_bg_koffer);
   vngen_textbox_create_special("tb", spr_textbox_full,  camera_get_view_width(view_camera[0])*0.5, camera_get_view_height(view_camera[0]), 0, trans_none, 0.75);
   vngen_label_create_special("names", auto, camera_get_view_width(view_camera[0])*0.18,camera_get_view_height(view_camera[0]) - 350, 0, camera_get_view_width(view_camera[0])*0.5, fnt_label_normal, c_orange, trans_none, 0.8);
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_special("txt", c_black, c_black, c_black, c_black, none, none, 1, 0);
   vngen_label_modify_special("names", c_black, c_black, c_black, c_black, none, none, 1, 0);
}

if(vngen_event()){
	 vngen_text_create_special("txt", "", Text("k_opening_0"), camera_get_view_width(view_camera[0])*0.15, camera_get_view_height(view_camera[0]) - 230, 0, camera_get_view_width(view_camera[0])*0.7, fnt_standard_normal, c_black, trans_none, 0.75);
}	

if (vngen_event()) {
	vngen_char_create_ext("Chad", spr_chad_gluecklich,300, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_gluecklich_grey, 900,0, scale_y);
	vngen_audio_play_sound("voice", sfx_char_chad_cool, 1, 0, false, false);
	vngen_text_replace("Chad",Text("k_opening_1"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_audio_play_sound("voice2", sfx_char_suzan_standard, 1, 0, false, false);
	vngen_text_replace("Suzan", Text("k_opening_2"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_text_replace("Chad", Text("k_opening_3"));
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_text_replace("Suzan", Text("k_opening_4"));
}

if(vngen_event()){
	vngen_room_goto(Kofferpacken);
}
//End VNgen script
vngen_event_reset_target();