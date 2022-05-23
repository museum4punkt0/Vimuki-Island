
global.allCombos = undefined; 

if(file_exists(working_directory + "allCombos.json")){
	var json = ""; 
	
	var file = file_text_open_read(working_directory + "allCombos.json"); 
	
	while(file_text_eof(file) == false){
		json += file_text_readln(file); 	
	}
	
	file_text_close(file); 
	
	global.allCombos = json_decode(json); 
}