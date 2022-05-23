if(counting){
    var passed = 0;
 
    _timer_value += delta_time;
 
    passed = _timer_value/1000000;

    if(passed >= interval){
        passed = floor(passed/interval);
        _timer_value = _timer_value%(1000000*interval);

        while(passed > 0){
           seconds -= 1; 
            passed -= interval;
			if(seconds < 1 ){
				counting = false; 
				global.language = LANGUAGE.German;
				depth = 0;
				var itemNameList = ds_list_create();
					var tempItemName = "";
					var tempLetter = ""; 

				if(global.gameLevel == 1 || global.gameLevel == 0){
					if(!global.finished){
						room_goto(NotfallInvest);
					}
				} else if(global.gameLevel == 2){
					if(global.investor = 1){
						global.code = global.code + "C"; 
					}
					if(global.investor = 2){
						global.code = global.code + "D"; 
					}
					if(global.investor = 3){
						global.code = global.code + "A"; 
					}
					if(global.investor = 4){
						global.code = global.code + "B"; 
					}

					for (var i = 0; i <  ds_list_size(global.collectedItemsList); ++i;)
					{
						tempItemName = global.collectedItemsList[| i].itemName;
						ds_list_add(itemNameList, tempItemName);
					}

					if (ds_list_find_index(itemNameList, "Erdnussbutter") != -1){
						global.code = global.code + "E";
					}

					if (ds_list_find_index(itemNameList, "Sonnenbrille") != -1){
						global.code = global.code + "F";
					}

					if (ds_list_find_index(itemNameList, "Kompass") != -1){
						global.code = global.code + "G";
					}

					if (ds_list_find_index(itemNameList, "Mueckenspray") != -1){
						global.code = global.code + "H";
					}

					if (ds_list_find_index(itemNameList, "Musikbox") != -1){
						global.code = global.code + "I";
					}

					if (ds_list_find_index(itemNameList, "Seil") != -1){
						global.code = global.code + "J";
					}

					if (ds_list_find_index(itemNameList, "Regenjacke") != -1){
						global.code = global.code + "K";
					}

					if (ds_list_find_index(itemNameList, "Fliegenklatsche") != -1){
						global.code = global.code + "L";
					}

					show_debug_message(global.code);
					
					if(string_length(global.code) <= 1){
						show_debug_message("Code < 1");
						
						if(global.investor = 1){
							global.kofferCode = global.codeScholle;
						}
						if(global.investor = 2){
							global.kofferCode = global.codeRush;
						}
						if(global.investor = 3){
							global.kofferCode = global.codeRich;
						}
						if(global.investor = 4){
							global.kofferCode = global.codeCrowd;
						}
						
						room_goto(NachgespraechKoffer);
						
					} else {
						
						while(string_length(global.code) < 7){
							global.code = global.code + "Z"; 
						}

						global.kofferCode =  getCode(global.code); 

						room_goto(NachgespraechKoffer);
					}
				}
			}
        }
    }
}
