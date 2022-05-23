var codeNumber = 0; 

if(place == 1){
	codeNumber = global.kofferCode div 10000;  
}

if(place == 2){
	codeNumber = (global.kofferCode mod 10000) div 1000;  
}

if(place == 3){
	codeNumber = (global.kofferCode mod 1000) div 100;  
}

if(place == 4){
	codeNumber = (global.kofferCode mod 100) div 10;  
}

if(place == 5){
	codeNumber = global.kofferCode mod 10;  
}

switch(codeNumber){
	case 1:
		sprite_index = spr_icon_code_x; 
		break; 
	case 2:
		sprite_index = spr_icon_code_viereck; 
		break;
	case 3:
		sprite_index = spr_icon_code_dreieck; 
		break;
	case 4:
		sprite_index = spr_icon_code_kreis; 
		break;
	case 5:
		sprite_index = spr_icon_code_kreuz; 
		break;
	case 6:
		sprite_index = spr_icon_code_wellen; 
		break;
	case 7:
		sprite_index = spr_icon_code_punkte; 
		break;
}