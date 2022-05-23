function Text(key){
	var text = "";
	var searchedValue = ds_map_find_value(global.multilangual, key);
	var quote = ds_map_find_value(searchedValue, global.currentLang);
	text = quote;
	return text; 
}

function getCode(key){
	var text = "";
	var searchedValue = ds_map_find_value(global.kofferpackenCodes, key);
	var searchedCode = ds_map_find_value(searchedValue, "Code");
	text = searchedCode; 
	return text; 
}