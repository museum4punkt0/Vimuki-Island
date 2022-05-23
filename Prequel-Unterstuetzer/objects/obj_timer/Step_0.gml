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
			if(!global.finished && seconds < 1 ){
				counting = false; 
				global.language = LANGUAGE.German;
				depth = 0;
				room_goto(NotfallInvest);
			}
        }
    }
}


