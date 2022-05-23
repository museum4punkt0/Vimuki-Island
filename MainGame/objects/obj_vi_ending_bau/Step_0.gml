/// @description Perform VNgen script

//Begin VNgen script
vngen_event_set_target();

if (vngen_event()) {
   vngen_scene_create_start(spr_bg_galerie);
  	
   vngen_label_create();
   vngen_prompt_create();
   
   //Apply style modifications
   vngen_text_modify_style();
   vngen_label_modify_style();

   //Apply text speed
   vngen_script_execute_ext(vngen_set_speed, 70);   
}


if(vngen_event()){
	vngen_char_create_ext("Char", spr_empty, 710, 0, scale_y);
	 vngen_bild_create_ext("Bild1", global.dias[| 0], 460, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild2", global.dias[| 1], 960, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild3", global.dias[| 2], 1460, 250, scale_prop_x_y);
    vngen_bild_create_ext("Bild4", global.dias[| 3], 710, 700, scale_prop_x_y);
    vngen_bild_create_ext("Bild5", global.dias[| 4], 1250, 700, scale_prop_x_y);
    vngen_vitrine_create_ext("Vitrine rechts", global.artefakts[| 0], 1400, 0, scale_prop_x_y);
    vngen_vitrine_create_ext("Vitrine links", global.artefakts[| 1], 0, 0, scale_prop_x_y);
	
	
	if(global.ownValue < 4){ 
		vngen_crowd_create_ext("Crowd", spr_bg_s_besucher_wenig, 0, 0, scale_stretch_x_y);
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_crowd_create_ext("Crowd", spr_bg_s_besucher_mittel, 0, 0, scale_stretch_x_y);
	} else {
		vngen_crowd_create_ext("Crowd", spr_bg_s_besucher_viel, 0, 0, scale_stretch_x_y);
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_textbox_create_start(spr_textbox_Insel);
		vngen_text_create("", Text("vi_end_du_0_0")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_textbox_create_start(spr_textbox_Insel);
		vngen_text_create("", Text("vi_end_du_1_0")); 
	} else {
		vngen_textbox_create_start(spr_textbox_Insel);
		vngen_text_create("", Text("vi_end_du_2_0")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_text_replace("", Text("vi_end_du_0_1")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_1")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_1")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_text_replace("", Text("vi_end_du_0_2")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_2")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_2")); 
	}	
}


if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_text_replace("", Text("vi_end_du_0_3")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_3")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_3")); 
	}	
}


if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_text_replace("", Text("vi_end_du_0_4")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_4")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_4")); 
	}	
}


if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_text_replace("", Text("vi_end_du_0_5")); 
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_5")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_5")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_text_replace("", Text("vi_end_du_1_6")); 
	} else {
		vngen_text_replace("", Text("vi_end_du_2_6")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_du_2_7")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_du_2_8")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_du_2_9")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_du_2_10")); 
	}	
}

if(vngen_event()){
	if(global.ownValue < 4){ 
		vngen_do_continue();
	} else if(global.ownValue >3 && global.ownValue <7){
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_du_2_11")); 
	}	
}

if (vngen_event()) {
	vngen_char_change_sprite("Bild1", spr_empty, scale_y);
	vngen_char_change_sprite("Bild2", spr_empty, scale_y);
	vngen_char_change_sprite("Bild3", spr_empty, scale_y);
	vngen_char_change_sprite("Bild4", spr_empty, scale_y);
	vngen_char_change_sprite("Bild5", spr_empty, scale_y);
	vngen_char_change_sprite("Vitrine rechts", spr_empty, scale_y);
	vngen_char_change_sprite("Vitrine links", spr_empty, scale_y);
	vngen_char_change_sprite("Crowd", spr_empty, scale_y);
	vngen_text_destroy();
	vngen_textbox_destroy();
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	 vngen_scene_create_start(spr_bg_galerie);
  	vngen_textbox_create_start(spr_textbox_Insel);
}

if(vngen_event()){
	vngen_char_change_sprite("Char", spr_suzan_gluecklich, scale_y);
	if(global.suzanValue < 3){ 
		vngen_text_create("", Text("vi_end_su_0_0")); 
	} else {
		vngen_text_create("", Text("vi_end_su_1_0")); 
	}	
}

if(vngen_event()){
	if(global.suzanValue < 3){ 
		vngen_text_replace("", Text("vi_end_su_0_1")); 
	} else {
		vngen_text_replace("", Text("vi_end_su_1_1")); 
	}	
}

if(vngen_event()){
	if(global.suzanValue < 3){ 
		vngen_text_replace("", Text("vi_end_su_0_2")); 
	} else {
		vngen_text_replace("", Text("vi_end_su_1_2")); 
	}	
}

if(vngen_event()){
	if(global.suzanValue < 3){ 
		vngen_text_replace("", Text("vi_end_su_0_3")); 
	} else {
		vngen_text_replace("", Text("vi_end_su_1_3")); 
	}	
}

if(vngen_event()){
	if(global.suzanValue < 3){ 
		vngen_text_replace("", Text("vi_end_su_0_4")); 
	} else {
		vngen_do_continue();
	}	
}

if(vngen_event()){
	vngen_char_change_sprite("Char", spr_chad_gluecklich, scale_y);
	if(global.chadValue < 3){ 
		vngen_text_replace("", Text("vi_end_chad_0_0")); 
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_0")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_text_replace("", Text("vi_end_chad_0_1")); 
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_1")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_text_replace("", Text("vi_end_chad_0_2")); 
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_2")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_text_replace("", Text("vi_end_chad_0_3")); 
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_3")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_text_replace("", Text("vi_end_chad_0_4")); 
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_4")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_5")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_6")); 
	}	
}

if(vngen_event()){
	if(global.chadValue < 3){ 
		vngen_do_continue();
	} else {
		vngen_text_replace("", Text("vi_end_chad_1_7")); 
	}	
}

if (vngen_event()) {
	vngen_text_destroy();
	vngen_textbox_destroy();
	vngen_char_destroy(all);
	vngen_scene_destroy("bg",trans_fade, 2,ease_sin_out);
}

if (vngen_event()) {
	room_goto(vi_ending_final);
}

//End VNgen script
vngen_event_reset_target();