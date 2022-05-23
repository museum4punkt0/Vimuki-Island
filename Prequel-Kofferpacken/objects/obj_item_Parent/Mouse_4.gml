depth = -1; 
grabbed = true; 


xx = x-mouse_x;
yy = y-mouse_y;

if(isCased){
	isCased = false; 
	var collisionList = ds_list_create();
	var numsTilesHitted = instance_place_list(x, y, obj_Placeholder, collisionList, false);

	if ((numsTilesHitted = tiles))
	{
		for (var i = 0; i <numsTilesHitted; ++i;)
	    {
	       collisionList[| i].isFull = false; 	
	    }
	}
}