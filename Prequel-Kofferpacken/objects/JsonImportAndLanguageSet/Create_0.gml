/// @description ImportJSON & Language Set
global.multilangual = undefined; 

if(global.language == LANGUAGE.German){
	global.currentLang = "German"; 	
} else if (global.language == LANGUAGE.English){
	global.currentLang = "English"; 
} else if (global.language == LANGUAGE.French){
	global.currentLang = "French"; 
} else if (global.language == LANGUAGE.Spain){
	global.currentLang = "Spain"; 
}

if(file_exists(working_directory + "multilangual.json")){
	var json = ""; 
	
	var file = file_text_open_read(working_directory + "multilangual.json"); 
	
	while(file_text_eof(file) == false){
		json += file_text_readln(file); 	
	}
	
	file_text_close(file); 
	
	global.multilangual = json_decode(json); 
}