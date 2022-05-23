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
		alarm[6] = 20; 
		global.codeCounter = 0; 
		global.investor = 4;
		global.hasSponsor = true; 
		global.crowd = true; 
		global.investorName= " Mrs. Crowd & Mr. Funding "
	} else if (global.tempcode == global.codeScholle){
		alarm[6] = 20; 
		global.codeCounter = 0; 
		global.investor = 1;
		global.hasSponsor = true;
		global.scholle = true; 
		global.investorName= " Leutnant Scholle "
	} else if (global.tempcode == global.codeRush){
		alarm[6] = 20; 
		global.codeCounter = 0; 
		global.investor = 2;
		global.hasSponsor = true;
		global.rush = true; 
		global.investorName= " Ravina Rush "
	} else if (global.tempcode == global.codeRich){
		alarm[6] = 20; 
		global.codeCounter = 0; 
		global.investor = 3;
		global.hasSponsor = true;
		global.rich = true; 
		global.investorName= " Dr. Rich Wealth "
	} else if(isMatchingCode(global.tempcode)){
		alarm[0] = 20; 
		global.codeCounter = 0; 
	} else {
		alarm[1] = 20; 
		global.codeCounter = 0; 
	}
}