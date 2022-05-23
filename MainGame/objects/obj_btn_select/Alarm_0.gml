if(obj_tropfsteinhoehle_area.isSelected){	
	audio_stop_all();
	sprite_index = spr_btn_visit_selected; 
	if(global.day == 3){
		//Starte Storyevent
		global.isTropfsteinhoehleStoryActive = true; 
		room_goto(Tropfsteinhoehle_SE_1);
	
	} else if (global.day == 4 && global.isTropfsteinhoehleStoryActive){
		//Setze Storyevent fort
		room_goto(Tropfsteinhoehle_SE_2);
	
	} else {
		//Starte Einzelevent
		currentEvent = irandom_range(1,4);
		while(ds_list_find_index(global.used_event_list_Tropfsteinhoehle, currentEvent) != -1){
			currentEvent = irandom_range(1,4);
		} 
	
		ds_list_add(global.used_event_list_Tropfsteinhoehle, currentEvent); 
		roomname = "Tropfsteinhoehle_EE_" + string(currentEvent);
		roomnumber = asset_get_index(roomname);
		room_goto(roomnumber);
	}	
} else if(obj_basis_area.isSelected){
		audio_stop_all();
		sprite_index = spr_btn_visit_selected; 
		//Starte Einzelevent
		currentEvent = irandom_range(1,5);
		while(ds_list_find_index(global.used_event_list_Basis, currentEvent) != -1){
			currentEvent = irandom_range(1,5);
		} 

		ds_list_add(global.used_event_list_Basis, currentEvent); 
		roomname = "Basis_EE_" + string(currentEvent);
		roomnumber = asset_get_index(roomname);
		
		room_goto(roomnumber);
	
} else if(obj_dschungel_area.isSelected){
	audio_stop_all();
	sprite_index = spr_btn_visit_selected; 
	if(global.day == 1){
		//Starte Storyevent
		global.isDschungelStoryActive = true; 
		room_goto(Dschungel_SE_1);
		
	
	} else if (global.day == 2 && global.isDschungelStoryActive){
		//Setze Storyevent fort
		room_goto(Dschungel_SE_2);
	
	} else {
		//Starte Einzelevent
		currentEvent = irandom_range(1,4);
		while(ds_list_find_index(global.used_event_list_Dschungel, currentEvent) != -1){
			currentEvent = irandom_range(1,4);
		} 
		ds_list_add(global.used_event_list_Dschungel, currentEvent); 

		roomname = "Dschungel_EE_" + string(currentEvent);
		roomnumber = asset_get_index(roomname);
		room_goto(roomnumber);
	}
	
} else if(obj_froschtempel_area.isSelected){
	audio_stop_all();
	sprite_index = spr_btn_visit_selected; 
	if(global.day == 2){
		//Starte Storyevent
		global.isFroschtempelStoryActive = true; 
		room_goto(Froschtempel_SE_1);
	
	} else if (global.day == 3 && global.isFroschtempelStoryActive){
		//Setze Storyevent fort
		room_goto(Froschtempel_SE_2);
	
	} else {
		//Starte Einzelevent
		currentEvent = irandom_range(1,4);
		while(ds_list_find_index(global.used_event_list_Froschtempel, currentEvent) != -1){
			currentEvent = irandom_range(1,4);
		} 
	
		ds_list_add(global.used_event_list_Froschtempel, currentEvent); 
		roomname = "Froschtempel_EE_" + string(currentEvent);
		roomnumber = asset_get_index(roomname);
		room_goto(roomnumber);
	}
} else if(obj_strand_area.isSelected){	
	audio_stop_all();
	sprite_index = spr_btn_visit_selected; 
	if(global.day == 4){
		//Starte Storyevent
		global.isStrandStoryActive = true; 
		room_goto(Strand_SE_1);
	
	} else if (global.day == 5 && global.isStrandStoryActive){
		//Setze Storyevent fort
		if(global.scholle){
			room_goto(Strand_SE_2);
		} else {
			room_goto(Strand_SE_3);
		}
	
	} else {
		//Starte Einzelevent
		currentEvent = irandom_range(1,4);
		while(ds_list_find_index(global.used_event_list_Strand, currentEvent) != -1){
			currentEvent = irandom_range(1,4);
		} 
	
		ds_list_add(global.used_event_list_Strand, currentEvent); 
	
		roomname = "Strand_EE_" + string(currentEvent);
		roomnumber = asset_get_index(roomname);
		room_goto(roomnumber);
	}
}