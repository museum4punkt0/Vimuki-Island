// // Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function setOwnValueBonus() 
{
	if(global.ownValue > 5){
		global.ownValue -= 1; 	
	} else if(global.ownValue <5){
		global.ownValue += 1; 
	} else{
		global.ownValue = 5; 	
	}
}

function setOwnValue(value){
	if(value > 0 && global.ownValue < 10){
		global.ownValue += 1; 	
	} else if (value < 0 && global.ownValue >0){
		global.ownValue -= 1; 	
	}
 }

function setSuzanValue(value){
	if(value > 0 && global.suzanValue < 10){
		global.suzanValue += 1; 	
	} else if (value < 0 && global.suzanValue >0){
		global.suzanValue -= 1; 	
	}
}

function setChadValue(value){
	if(value > 0 && global.chadValue < 10){
		global.chadValue += 1; 	
	} else if (value < 0 && global.chadValue >0){
		global.chadValue -= 1; 	
	}
}