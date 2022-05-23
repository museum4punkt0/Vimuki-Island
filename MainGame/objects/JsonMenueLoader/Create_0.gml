if(file_exists(working_directory + "menue_language.json")){
	var json = ""; 
	
	var file = file_text_open_read(working_directory + "menue_language.json"); 
	
	while(file_text_eof(file) == false){
		json += file_text_readln(file); 	
	}
	
	file_text_close(file); 
	
	global.menueTexts = json_decode(json); 
}