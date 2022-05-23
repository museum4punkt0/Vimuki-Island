itemNumber1 = irandom_range(1,8); 
itemNumber2 = itemNumber1; 
itemNumber3 = itemNumber1; 
sprite_index = spr_btn_mainmenue_select;
while(itemNumber1 == itemNumber2){
	itemNumber2 = irandom_range(1,8); 
}

while(itemNumber3 == itemNumber1 || itemNumber3 == itemNumber2){	
	itemNumber3 = irandom_range(1,8); 	
}

switch (itemNumber1){
	
	case 1: 
	global.item1 = "erdnussbutter"; 
	global.erdnussbutter = true; 
	break; 
	case 2: 
	global.item1 = "fliegenklatsche"; 
	global.fliegenklatsche = true; 
	break; 
	case 3: 
	global.item1 = "kompass"; 
	global.kompass = true; 
	break; 
	case 4: 
	global.item1 = "mueckenspray"; 
	global.mueckenspray = true; 
	break; 
	case 5: 
	global.item1 = "musikbox"; 
	global.musikbox = true; 
	break; 
	case 6: 
	global.item1 = "regenjacke"; 
	global.regenjacke = true; 
	break; 
	case 7: 
	global.item1 = "seil"; 
	global.seil = true; 
	break; 
	case 8: 
	global.item1 = "sonnenbrille"; 
	global.sonnenbrille = true; 
	break; 
	show_debug_message(global.item1);
}

switch (itemNumber2){
	
	case 1: 
	global.item2 = "erdnussbutter"; 
	global.erdnussbutter = true; 
	break; 
	case 2: 
	global.item2 = "fliegenklatsche"; 
	global.fliegenklatsche = true; 
	break; 
	case 3: 
	global.item2 = "kompass"; 
	global.kompass = true; 
	break; 
	case 4: 
	global.item2 = "mueckenspray"; 
	global.mueckenspray = true; 
	break; 
	case 5: 
	global.item2 = "musikbox"; 
	global.musikbox = true; 
	break; 
	case 6: 
	global.item2 = "regenjacke"; 
	global.regenjacke = true; 
	break; 
	case 7: 
	global.item2 = "seil"; 
	global.seil = true; 
	break; 
	case 8: 
	global.item2 = "sonnenbrille"; 
	global.sonnenbrille = true; 
	break; 
	show_debug_message(global.item2);
}

switch (itemNumber3){
	
	case 1: 
	global.item3 = "erdnussbutter"; 
	global.erdnussbutter = true; 
	break; 
	case 2: 
	global.item3 = "fliegenklatsche"; 
	global.fliegenklatsche = true; 
	break; 
	case 3: 
	global.item3 = "kompass"; 
	global.kompass = true; 
	break; 
	case 4: 
	global.item3 = "mueckenspray"; 
	global.mueckenspray = true; 
	break; 
	case 5: 
	global.item3 = "musikbox"; 
	global.musikbox = true; 
	break; 
	case 6: 
	global.item3 = "regenjacke"; 
	global.regenjacke = true; 
	break; 
	case 7: 
	global.item3 = "seil"; 
	global.seil = true; 
	break; 
	case 8: 
	global.item3 = "sonnenbrille"; 
	global.sonnenbrille = true; 
	break; 
	show_debug_message(global.item3);
}

global.item4 = "multitool"; 
global.multitool = true; 

room_goto(vi_start);
//room_goto(Karte);