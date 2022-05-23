/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(bg_vimuki_island);
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
	vngen_char_create_ext("Chad", spr_chad_gluecklich, 50, 0, scale_y);
	vngen_char_create_ext("Suzan", spr_suzan_gluecklich, 1450, 0, scale_y);
	vngen_text_create("", Text("vi_ending_final_0")); 
	
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_final_1"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_final_2"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_final_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("vi_ending_final_4"));
}

if (vngen_event()) {
	vngen_text_destroy();
	vngen_textbox_destroy();
	audio_stop_all();
	vngen_char_destroy(all);
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	room_goto(vi_abspann);
}

//End VNgen script
vngen_event_reset_target();