function Text(key){
	var text = "";
	var searchedValue = ds_map_find_value(global.multilangual, key);
	var quote = ds_map_find_value(searchedValue, global.currentLang);
	text = quote;
	return text; 
}

function isMatchingCode(key){
	var codeText = ""; 
	if(is_undefined(ds_map_find_value(global.allCombos, key))){
		return false; 
	} else {
		return true; 
	}
}

function getItem(key, number){
	var searchedValue = ds_map_find_value(global.allCombos, key);
	var item = ds_map_find_value(searchedValue,"Item" + string(number));
	if(!is_undefined(item)){
		return item; 
	}
}

function getMenueText(key){
	var text = "";
	var searchedValue = ds_map_find_value(global.menueTexts, key);
	var quote = ds_map_find_value(searchedValue, global.currentLang);
	text = quote;
	return text; 
}