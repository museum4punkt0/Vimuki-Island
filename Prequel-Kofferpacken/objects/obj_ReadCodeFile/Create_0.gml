if(file_exists(working_directory + "KofferpackenCodes.json")){
	var json = ""; 
	
	var file = file_text_open_read(working_directory + "KofferpackenCodes.json"); 
	
	while(file_text_eof(file) == false){
		json += file_text_readln(file); 	
	}
	
	file_text_close(file); 
	
	global.kofferpackenCodes = json_decode(json); 
}