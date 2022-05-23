grabbed = false; 
depth = 0;
isGoodPlace = 0;

if(!isCased && isInKofferArea){
	var collisionList = ds_list_create();
	var numsTilesHitted = instance_place_list(x, y, obj_Placeholder, collisionList, false);

	if ((numsTilesHitted = tiles))
	{
		for (var i = 0; i <numsTilesHitted; ++i;)
	    {
	        if(!collisionList[| i].isFull){
				isGoodPlace +=1; 
			}
	    }
	}


	if(isGoodPlace == tiles){
		isCased = true; 
	
		for (var i = 0; i <numsTilesHitted; ++i;)
	    {
	        collisionList[| i].isFull = true; 	
	    }
	
	} else {
		x = xxOld;
		y = yyOld; 	
		image_angle = image_angleOld;
		isGoodPlace = 0; 
	}
}

if(isInSchrankArea){
	x = xxOld;
	image_angle = image_angleOld;
	y = yyOld; 
}