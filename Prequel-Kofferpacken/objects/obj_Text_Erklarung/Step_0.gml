//Begin VNgen script
vngen_event_set_target();

//Perform events and actions
if (vngen_event()) {
	//Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 50);
   //Create scene elements
   vngen_scene_create_ext(spr_splashscreen_2);
   vngen_textbox_create_special("tb", spr_textbox_sponsor_no_name,  camera_get_view_width(view_camera[0])*0.5, camera_get_view_height(view_camera[0])*0.85, 0, trans_none, 0.75);
   vngen_text_create_special("txt", "", Text("k_erklaerung_0"), camera_get_view_width(view_camera[0])*0.1, camera_get_view_height(view_camera[0]) - 200, 0, camera_get_view_width(view_camera[0])*0.8, fnt_standard_normal, c_black, trans_none, 0.75);
  
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_special("txt", c_black, c_black, c_black, c_black, none, none, 1, 0);
   vngen_label_modify_special("names", c_black, c_black, c_black, c_black, none, none, 1, 0);
}

if(vngen_event()){
	vngen_text_replace("", Text("k_erklaerung_1"));

}

if(vngen_event()){
	vngen_room_goto(Spielauswahl);
}
//End VNgen script
vngen_event_reset_target();