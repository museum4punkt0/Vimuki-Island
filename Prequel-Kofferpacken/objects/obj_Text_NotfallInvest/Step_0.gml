/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

//Perform events and actions
if (vngen_event()) {
	
	if(global.investorSelected == 1){
		vngen_scene_create_ext( spr_bg_s_ticket_rush);
	}
	
	if(global.investorSelected == 2){
		vngen_scene_create_ext(spr_bg_s_ticket_scholle);
	}
	
	if(global.investorSelected == 3){
		vngen_scene_create_ext(spr_bg_s_ticket_rich);
	}
	
	if(global.investorSelected == 4 || global.investorSelected == 0){
		vngen_scene_create_ext(spr_bg_s_ticket_crowdfunding);
	}
	
   //Create scene elements
    vngen_textbox_create_special("tb", spr_textbox_sponsor_no_name,  camera_get_view_width(view_camera[0])*0.5, camera_get_view_height(view_camera[0])*0.12, 0, trans_wipe_up, 0.75);
	 
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}

if (vngen_event()) {
	vngen_text_create_special("txt", "",Text("notfall_0"), camera_get_view_width(view_camera[0])*0.12, camera_get_view_height(view_camera[0])*0.05, 0, camera_get_view_width(view_camera[0])*0.8, fnt_standard_normal, c_black, trans_wipe_up, 0.75);
}

if(vngen_event()){
	
	if(global.investorSelected == 1){
		vngen_text_replace("", Text("notfall_rush"));
	}
	
	if(global.investorSelected == 2){
		vngen_text_replace("", Text("notfall_scholle"));
	}
	
	if(global.investorSelected == 3){
		vngen_text_replace("", Text("notfall_rich"));
	}
	
	if(global.investorSelected == 4){
		vngen_text_replace("", Text("notfall_crowd"));
	}
	
	if(global.investorSelected == 0){
		vngen_text_replace("", Text("notfall_none"));
	}
}

if (vngen_event()) {
   vngen_text_replace("", Text("notfall_1"));
}

if(vngen_event()){
	vngen_textbox_destroy();
	vngen_text_destroy();
	vngen_do_continue();
}

//End VNgen script
vngen_event_reset_target();