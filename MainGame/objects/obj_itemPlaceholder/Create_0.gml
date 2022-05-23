dist = 0;
dist_apply = dist;
slide_speed = 0.2;

if(global.hasCode){
	itemsprite = getItem(global.tempcode, itemHolder); 
	show_debug_message(itemsprite);

	switch(itemsprite){
	
		case "Erdnussbutter": 
				sprite_index = item_erdnussbutter; 
				global.erdnussbutter = true; 
				break; 
			case "Seil": 
				sprite_index = item_seil; 
				global.seil = true; 
				break; 
			case "Anurasbuch": 
				sprite_index = item_anurabuch; 
				global.anurasbuch= true; 
				break; 
			case "Fischernetz": 
				sprite_index = item_fischernetz; 
				global.fischernetz = true; 
				break; 
			case "Fliegenklatsche": 
				sprite_index = item_fliegenklatsche; 
				global.fliegenklatsche = true; 
				break; 
			case "Kompass": 
				sprite_index = item_kompass; 
				global.kompass = true; 
				break; 
			case "Mueckenspray": 
				sprite_index = item_mueckenspray; 
				global.mueckenspray = true; 
				break; 
			case "Multitool": 
				sprite_index = item_multitool; 
				global.multitool = true; 
				break; 
			case "Outdoorjacke": 
				sprite_index = item_outdoorjacke; 
				global.outdoorjacke = true; 
				break; 
			case "Regenjacke": 
				sprite_index = item_regenjacke; 
				global.regenjacke = true; 
				break; 
			case "Sonnenbrille": 
				sprite_index = item_sonnenbrille; 
				global.sonnenbrille = true; 
				break; 
			case "Musikbox": 
				sprite_index = item_musikbox; 
				global.musikbox = true; 
				break;
	
	}
} else {
	if(itemHolder == 1){
		switch(global.item1){
	
		case "erdnussbutter": 
				sprite_index = item_erdnussbutter; 
				break; 
			case "seil": 
				sprite_index = item_seil; 
				break; 
			case "anurasbuch": 
				sprite_index = item_anurabuch; 
				break; 
			case "fischernetz": 
				sprite_index = item_fischernetz; 
				break; 
			case "fliegenklatsche": 
				sprite_index = item_fliegenklatsche; 
				break; 
			case "kompass": 
				sprite_index = item_kompass; 
				break; 
			case "mueckenspray": 
				sprite_index = item_mueckenspray; 
				break; 
			case "multitool": 
				sprite_index = item_multitool; 
				break; 
			case "outdoorjacke": 
				sprite_index = item_outdoorjacke; 
				break; 
			case "regenjacke": 
				sprite_index = item_regenjacke; 
				break; 
			case "sonnenbrille": 
				sprite_index = item_sonnenbrille; 
				break; 
			case "musikbox": 
				sprite_index = item_musikbox; 
				break; 
		}
	}
	
	if(itemHolder == 2){
		switch(global.item2){
	
		case "erdnussbutter": 
				sprite_index = item_erdnussbutter; 
				break; 
			case "seil": 
				sprite_index = item_seil; 
				break; 
			case "anurasbuch": 
				sprite_index = item_anurabuch; 
				break; 
			case "fischernetz": 
				sprite_index = item_fischernetz; 
				break; 
			case "fliegenklatsche": 
				sprite_index = item_fliegenklatsche; 
				break; 
			case "kompass": 
				sprite_index = item_kompass; 
				break; 
			case "mueckenspray": 
				sprite_index = item_mueckenspray; 
				break; 
			case "multitool": 
				sprite_index = item_multitool; 
				break; 
			case "outdoorjacke": 
				sprite_index = item_outdoorjacke; 
				break; 
			case "regenjacke": 
				sprite_index = item_regenjacke; 
				break; 
			case "sonnenbrille": 
				sprite_index = item_sonnenbrille; 
				break; 
			case "musikbox": 
				sprite_index = item_musikbox; 
				break;
		}
	}
	if(itemHolder == 3){
		switch(global.item3){
	
		case "erdnussbutter": 
				sprite_index = item_erdnussbutter; 
				break; 
			case "seil": 
				sprite_index = item_seil; 
				break; 
			case "anurasbuch": 
				sprite_index = item_anurabuch; 
				break; 
			case "fischernetz": 
				sprite_index = item_fischernetz; 
				break; 
			case "fliegenklatsche": 
				sprite_index = item_fliegenklatsche; 
				break; 
			case "kompass": 
				sprite_index = item_kompass; 
				break; 
			case "mueckenspray": 
				sprite_index = item_mueckenspray; 
				break; 
			case "multitool": 
				sprite_index = item_multitool; 
				break; 
			case "outdoorjacke": 
				sprite_index = item_outdoorjacke; 
				break; 
			case "regenjacke": 
				sprite_index = item_regenjacke; 
				break; 
			case "sonnenbrille": 
				sprite_index = item_sonnenbrille; 
				break; 
			case "musikbox": 
				sprite_index = item_musikbox; 
				break; 
		}
	}
	
	if(itemHolder == 4){
		switch(global.item4){
	
		case "erdnussbutter": 
				sprite_index = item_erdnussbutter; 
				break; 
			case "seil": 
				sprite_index = item_seil; 
				break; 
			case "anurasbuch": 
				sprite_index = item_anurabuch; 
				break; 
			case "fischernetz": 
				sprite_index = item_fischernetz; 
				break; 
			case "fliegenklatsche": 
				sprite_index = item_fliegenklatsche; 
				break; 
			case "kompass": 
				sprite_index = item_kompass; 
				break; 
			case "mueckenspray": 
				sprite_index = item_mueckenspray; 
				break; 
			case "multitool": 
				sprite_index = item_multitool; 
				break; 
			case "outdoorjacke": 
				sprite_index = item_outdoorjacke; 
				break; 
			case "regenjacke": 
				sprite_index = item_regenjacke; 
				break; 
			case "sonnenbrille": 
				sprite_index = item_sonnenbrille; 
				break; 
			case "musikbox": 
				sprite_index = item_musikbox; 
				break; 
		}
	}
}