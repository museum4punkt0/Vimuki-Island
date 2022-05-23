if(global.codeCounter == 1){
	codeChecker_1.sprite_index = spr_checker_green; 
}

if(global.codeCounter == 2){
	codeChecker_2.sprite_index = spr_checker_green; 
}

if(global.codeCounter == 3){
	codeChecker_3.sprite_index = spr_checker_green; 
}

if(global.codeCounter == 4){
	codeChecker_4.sprite_index = spr_checker_green; 
}

if(global.codeCounter == 5){
	codeChecker_5.sprite_index = spr_checker_green; 
	
	if(global.tempcode == global.codeCrowd){
		alarm[0] = 20; 
		global.codeCounter = 0; 
		global.investor = 4;
	} else if (global.tempcode == global.codeScholle){
		alarm[0] = 20; 
		global.codeCounter = 0; 
		global.investor = 1;
	} else if (global.tempcode == global.codeRush){
		alarm[0] = 20; 
		global.codeCounter = 0; 
		global.investor = 2;
	} else if (global.tempcode == global.codeRich){
		alarm[0] = 20; 
		global.codeCounter = 0; 
		global.investor = 3;
	} else {
		alarm[1] = 20; 
		global.codeCounter = 0; 
	}
}