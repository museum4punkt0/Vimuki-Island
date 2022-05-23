//Begin VNgen script
vngen_event_set_target();

//Perform events and actions
if (vngen_event()) {
	//Apply text speed
	vngen_script_execute_ext(vngen_set_speed, 40);
    //Create scene elements
    vngen_scene_create_ext(spr_bg_koffer);
    vngen_textbox_create_special("tb", spr_Textbox_Code,  camera_get_view_width(view_camera[0])*0.5, camera_get_view_height(view_camera[0])*0.5, 0, trans_none, 0.75);
	 vngen_text_create_special("txt", "Chad",string("[font=fnt_standard_bold_huge]" + global.code + "[/font]"), camera_get_view_width(view_camera[0])*0.4, camera_get_view_height(view_camera[0])*0.45, 0, camera_get_view_width(view_camera[0])*0.8, fnt_standard_normal, c_black, trans_none, 0.75);
	vngen_text_modify_style();
}
//End VNgen script
vngen_event_reset_target();