/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

switch (vngen_get_button()) {
   case "skip": audio_stop_all();  room_goto(Karte); break;
}

if (vngen_event()) {
	vngen_button_create("skip", "", spr_btn_skip_2, spr_btn_skip_2_hover, spr_btn_skip_2_selected, camera_get_view_width(view_camera[0])*0.9 - sprite_get_width(spr_btn_step), camera_get_view_height(view_camera[0])*0.05, -1, fnt_default, c_white, trans_fade, 0.25, ease_quad);

   vngen_scene_create_ext(bg_vimuki_island);
   vngen_textbox_create(spr_textbox_Insel);
  
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
   vngen_char_create_ext("Chad", spr_chad_idle_grey, 50, 0,scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_idle_grey, 1450, 0,scale_y);
}

if(vngen_event()){
	vngen_text_create("", Text("vi_all_15")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_16")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_17")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_18")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich, scale_y);
	vngen_text_replace("Chad", Text("vi_all_19")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_gluecklich_grey, scale_y);
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich, scale_y);
	vngen_text_replace("Suzan", Text("vi_all_20")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Suzan", spr_suzan_gluecklich_grey, scale_y);
	vngen_text_replace("", Text("vi_all_21")); 	
}

if(vngen_event()){
	vngen_text_replace("", Text("vi_all_22")); 	
}

if(vngen_event()){
	vngen_char_create_ext("Affbert", spr_affbert_idle_grey, 1000, 0,scale_y);
	vngen_text_replace("", Text("vi_all_23")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_gluecklich, scale_y);
	vngen_audio_play_sound("sound", sfx_char_affe_02, 1, 0, false, false);
	vngen_text_replace("Affbert", Text("vi_all_24")); 	
}

if(vngen_event()){
	vngen_text_replace("Affbert", Text("vi_all_25")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle_grey, scale_y);
	vngen_text_replace("", Text("vi_all_26")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_schockiert, scale_y);
	vngen_text_replace("Chad", Text("vi_all_27")); 	
}

if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_chad_idle_grey, scale_y);
	vngen_text_replace("", Text("vi_all_28")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg",spr_bg_camp,0.3);
	vngen_text_replace("", Text("vi_all_29")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_30")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_31")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_32")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle, scale_y);
	vngen_text_replace("Affbert", Text("vi_all_33")); 	
}
if(vngen_event()){
	vngen_text_replace("Affbert", Text("vi_all_34")); 	
}
if(vngen_event()){
	vngen_text_replace("Affbert", Text("vi_all_35")); 	
}
if(vngen_event()){
	vngen_text_replace("Affbert", Text("vi_all_36")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle_grey, scale_y);
	vngen_char_create_ext("Affgathe", spr_aufsicht_affgate_idle, 600, 0,scale_y);
	vngen_audio_play_sound("sound", sfx_char_affe_01, 1, 0, false, false);
	vngen_text_replace("Affgathe", Text("vi_all_37")); 	
}
if(vngen_event()){
	vngen_text_replace("Affgathe", Text("vi_all_38")); 	
}
if(vngen_event()){
	vngen_text_replace("Affgathe", Text("vi_all_39")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle, scale_y);
	vngen_char_change_sprite("Affgathe", spr_aufsicht_affgate_idle_grey, scale_y);
	vngen_text_replace("Affbert", Text("vi_all_40")); 	
}
if(vngen_event()){
	vngen_text_replace("Affbert", Text("vi_all_41")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle_grey, scale_y);
	vngen_char_change_sprite("Affgathe", spr_aufsicht_affgate_idle, scale_y);
	vngen_text_replace("Affgathe", Text("vi_all_42")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affgathe", spr_aufsicht_affgate_idle_grey, scale_y);
	vngen_text_replace("", Text("vi_all_43")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_44")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_45")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_affbert_idle, scale_y);
	vngen_text_replace("Affbert", Text("vi_all_46")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Affbert", spr_empty, scale_y);
	vngen_char_change_sprite("Affgathe", spr_empty, scale_y);
	vngen_text_replace("", Text("vi_all_47")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_48")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_49")); 	
}
if(vngen_event()){
	vngen_text_replace("", Text("vi_all_50")); 	
}
if(vngen_event()){
	vngen_char_change_sprite("Chad", spr_empty, scale_y);
	vngen_char_change_sprite("Suzan", spr_empty, scale_y);
	vngen_char_create_ext("Affley", spr_tutorial_affley, 50, 0,scale_y);
	vngen_audio_play_sound("sound", sfx_char_affe_03, 1, 0, false, false);
	vngen_text_replace("Affley", Text("vi_all_51")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_52")); 	
}
if(vngen_event()){
	vngen_text_replace("Affley", Text("vi_all_53")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro_camp, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_54")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro_strand, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_55")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro_hoehle, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_56")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro_dschungel, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_57")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro_tempel, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_58")); 	
}
if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_59")); 	
}

if(vngen_event()){
	vngen_scene_replace("bg", spr_map_intro, 0, ease_none);
	vngen_text_replace("Affley", Text("vi_all_60")); 	
}


if (vngen_event()) {
	audio_stop_all();
	room_goto(Karte);
	vngen_do_continue(); 
}

//End VNgen script
vngen_event_reset_target();