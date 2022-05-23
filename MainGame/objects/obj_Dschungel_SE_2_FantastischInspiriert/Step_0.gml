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
	vngen_char_create_ext("Martin", spr_martin_gluecklich_grey, 710, 0, scale_y);
	vngen_text_create("", Text("d_se_2_insp_fantastisch_0")); 
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_1"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich, scale_y);
   vngen_text_replace("Martin", Text("d_se_2_insp_fantastisch_2"));
}

if (vngen_event()) {
	vngen_char_change_sprite("Martin", spr_martin_gluecklich_grey, scale_y);
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_3"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_4"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_5"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_6"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_7"));
}

if (vngen_event()) {
   vngen_text_replace("", Text("d_se_2_insp_fantastisch_8"));
}

if (vngen_event()) {
   room_goto(Dschungel_SE_2_Artefakt);
}

//End VNgen script
vngen_event_reset_target();