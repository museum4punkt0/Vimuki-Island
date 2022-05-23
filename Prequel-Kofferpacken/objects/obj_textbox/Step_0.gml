if (string_length(keyboard_string)<limit) {
	
 message = string_upper(keyboard_string);
} else {
 keyboard_string = message;
}

if(message = "11A44A" ){
	obj_icon_koffer.sprite_index = spr_spielauswahl_koffer;
	global.investor = 1; 
	Unlock(); 
}

if(message = "S1569Y" ){
	obj_icon_koffer.sprite_index = spr_spielauswahl_koffer;
	global.investor = 2; 
	Unlock(); 
}

if(message = "1121RT" ){
	obj_icon_koffer.sprite_index = spr_spielauswahl_koffer;
	global.investor = 3; 
	Unlock(); 
}

if(message = "195P16" ){
	obj_icon_koffer.sprite_index = spr_spielauswahl_koffer;
	global.investor = 4; 
	Unlock(); 
}