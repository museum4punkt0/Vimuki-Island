codeChecker_1.sprite_index = spr_checker_neutral; 
codeChecker_2.sprite_index = spr_checker_neutral; 
codeChecker_3.sprite_index = spr_checker_neutral; 
codeChecker_4.sprite_index = spr_checker_neutral; 
codeChecker_5.sprite_index = spr_checker_neutral; 

global.item1 = getItem(global.tempcode, 1); 
global.item2 = getItem(global.tempcode, 2); 
global.item3 = getItem(global.tempcode, 3); 
global.item4 = getItem(global.tempcode, 4); 
global.item5 = getItem(global.tempcode, 5); 
global.item6 = getItem(global.tempcode, 6); 
global.item7 = getItem(global.tempcode, 7); 

ds_list_add(global.inventar, global.item1);
ds_list_add(global.inventar, global.item2);
ds_list_add(global.inventar, global.item3);
ds_list_add(global.inventar, global.item4);
ds_list_add(global.inventar, global.item5);
ds_list_add(global.inventar, global.item6);
ds_list_add(global.inventar, global.item7);

global.hasCode = true; 

var index = 0; 
for(index = 0; index < ds_list_size(global.inventar); index++) {  
    var item = global.inventar[| index];
    
    switch (item){
		case "Erdnussbutter": 
			global.erdnussbutter = true; 
			break; 
		case "Seil": 
			global.seil = true;
			break; 
		case "Anurasbuch": 
			global.rich = true; 
			global.anurasbuch = true; 
			global.hasSponsor = true; 
			global.investorName= " Dr. Rich Wealth "
			break; 
		case "Fischernetz": 
			global.scholle = true; 
			global.fischernetz = true; 
			global.hasSponsor = true; 
			global.investorName= " Leutnant Scholle "
			break; 
		case "Fliegenklatsche": 
			global.fliegenklatsche = true; 
			break; 
		case "Kompass": 
			global.kompass = true; 
			break; 
		case "Mueckenspray": 
			global.mueckenspray = true; 
			break; 
		case "Multitool": 
			global.multitool = true; 
			global.crowd = true; 
			global.hasSponsor = true; 
			global.investorName= " Mrs. Crowd & Mr. Funding "
			break; 
		case "Outdoorjacke": 
			global.outdoorjacke = true; 
			global.rush = true; 
			global.hasSponsor = true; 
			global.investorName= " Ravina Rush "
			break; 
		case "Regenjacke": 
			global.regenjacke = true; 
			break; 
		case "Sonnenbrille": 
			global.sonnenbrille = true; 
			break; 
	}
}

room_goto(vi_start); 