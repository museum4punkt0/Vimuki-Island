/// @function	interp(a, b, amount, ease, [bx1, by1, bx2, by2]);
/// @param		{real}			a
/// @param		{real}			b
/// @param		{real}			amount
/// @param		{integer|macro}	ease
/// @param		{real}			[bx1
/// @param		{real}			by1
/// @param		{real}			bx2
/// @param		{real}			by2]
/// @author		Lucas Chasteen <lucas.chasteen@xgasoft.com>
/// @copyright	XGASOFT 2020, All Rights Reserved
function interp() {

	/*
	Returns a value interpolated between the two input values with optional
	easing methods to create a smooth start and/or end to animations. 

	The first input value should equal the original state of the value and 
	the second input the target state of the value. For example, to move an
	object from x = 0 to x = 50, 0 and 50 would be the two input values here.

	The third input value can be thought of as a percentage of completion. 
	Using the same example, an input amount of 0.5 would return x = 25.

	In order to create animations with this script, the interpolation amount
	must be input as a variable which is incremented externally.

	The fourth and final value is an integer specifying the easing method used
	during interpolation. True or false can be used here to specify basic in/out
	interpolation or linear interpolation (i.e. no easing), but in addition to
	these basic modes there are 30 different easing techniques, featured below.
	Easing techniques are ordered from shallowest to deepest curve, with a few
	special techniques added on at the end as well.

	For memorability, it is recommended to use an easing macro from the list
	below in place of an integer value.

	If the bezier ease mode is selected, four more arguments can be supplied to
	act as control points for a custom interpolation curve. These values range
	from 0-1, but Y values can be less or greater to create a rubber-banding
	effect. See https://cubic-bezier.com/ for an interactive visual example.

	argument0 = starting value to interpolate from (real)
	argument1 = target value to interpolate to (real)
	argument2 = amount, or percentage to interpolate between values (real) (variable recommended)
	argument3 = sets the easing method (integer) (see below for available options)
	argument4 = X percentage for left control point of a cubic bezier curve (0-1) (optional, use none for ease)
	argument5 = Y percentage for left control point of a cubic bezier curve (0-1) (optional, use none for ease) 
	argument6 = X percentage for right control point of a cubic bezier curve (0-1) (optional, use none for ease)
	argument7 = Y percentage for right control point of a cubic bezier curve (0-1) (optional, use none for ease)

	Example usage:
	   duration = 5;
	   time += delta_time/1000000;
   
	   x = interp(0, 50, time/duration, ease_quart);
	   y = interp(0, 50, time/duration, ease_bezier, 0.66, -0.33, 0.33, 1.33);
	*/

	//Initialize ease mode macros
#macro ease_none -4
#macro ease_sin 1
#macro ease_sin_in 2
#macro ease_sin_out 3
#macro ease_quad 4
#macro ease_quad_in 5
#macro ease_quad_out 6
#macro ease_cubic 7
#macro ease_cubic_in 8
#macro ease_cubic_out 9
#macro ease_quart 10
#macro ease_quart_in 11
#macro ease_quart_out 12
#macro ease_quint 13
#macro ease_quint_in 14
#macro ease_quint_out 15
#macro ease_expo 16
#macro ease_expo_in 17
#macro ease_expo_out 18
#macro ease_circ 19
#macro ease_circ_in 20
#macro ease_circ_out 21
#macro ease_rubber 22
#macro ease_rubber_in 23
#macro ease_rubber_out 24
#macro ease_elastic 25
#macro ease_elastic_in 26
#macro ease_elastic_out 27
#macro ease_bounce 28
#macro ease_bounce_in 29
#macro ease_bounce_out 30
#macro ease_bezier 31

	//Get value to interpolate
	var val = argument[1] - argument[0];

	//Linear (0)
	if (argument[3] < 1) {
	   return argument[0] + (val*argument[2]);
	}

	//Sine in-out (1)
	if (argument[3] == 1) {
	   return argument[0] + (val*((cos(pi*argument[2]) - 1)*-0.5));
	}

	//Sine in (2)
	if (argument[3] == 2) {
	   return argument[0] + (val*((cos((pi*0.5)*argument[2])*-1) + 1));
	}

	//Sine out (3)
	if (argument[3] == 3) {
	   return argument[0] + (val*(sin((pi*0.5)*argument[2])));
	}

	//Quadratic in-out (4)
	if (argument[3] == 4) {
	   if (argument[2] < 0.5) {
	      return argument[0] + (val*((argument[2]*argument[2])*2));
	   } else {
	      return argument[0] + (val*(((4 - (argument[2]*2))*argument[2]) - 1));
	   }
	}

	//Quadratic in (5)
	if (argument[3] == 5) {
	   return argument[0] + (val*(argument[2]*argument[2]));
	}

	//Quadratic out (6)
	if (argument[3] == 6) {
	   return argument[0] + (val*(argument[2]*(2 - argument[2])));
	}

	//Cubic in-out (7)
	if (argument[3] == 7) {
	   if (argument[2] < 0.5) {
	      return argument[0] + (val*(((4*argument[2])*argument[2])*argument[2]));
	   } else {
	      return argument[0] + (val*((argument[2] - 1)*((2*argument[2]) - 2)*((2*argument[2]) - 2) + 1));
	   }
	}

	//Cubic in (8)
	if (argument[3] == 8) {
	   return argument[0] + (val*((argument[2]*argument[2])*argument[2]));
	}

	//Cubic out (9)
	if (argument[3] == 9) {
	   var amt = argument[2] - 1;
	   return argument[0] + (val*(((amt*amt)*amt) + 1));
	}

	//Quartic in-out (10)
	if (argument[3] == 10) {
	   var amt = argument[2] - 1;
   
	   if (argument[2] < 0.5) {
	      return argument[0] + (val*((((8*argument[2])*argument[2])*argument[2])*argument[2]));
	   } else {
	      return argument[0] + (val*(1 - ((((8*amt)*amt)*amt)*amt)));
	   }
	}

	//Quartic in (11)
	if (argument[3] == 11) {
	   return argument[0] + (val*(((argument[2]*argument[2])*argument[2])*argument[2]));
	}

	//Quartic out (12)
	if (argument[3] == 12) {
	   var amt = argument[2] - 1;
	   return argument[0] + (val*(1 - (((amt*amt)*amt)*amt)));
	}

	//Quintic in-out (13)
	if (argument[3] == 13) {
	   var amt = argument[2] - 1;

	   if (argument[2] < 0.5) {
	      return argument[0] + (val*(((((16*argument[2])*argument[2])*argument[2])*argument[2])*argument[2]));
	   } else {
	      return argument[0] + (val*(1 + (((((16*amt)*amt)*amt)*amt)*amt)));
	   }
	}

	//Quintic in (14)
	if (argument[3] == 14) {
	   return argument[0] + (val*((((argument[2]*argument[2])*argument[2])*argument[2])*argument[2]));
	}

	//Quintic out (15)
	if (argument[3] == 15) {
	   var amt = argument[2] - 1;
	   return argument[0] + (val*(1 + ((((amt*amt)*amt)*amt)*amt)));
	}

	//Exponential in-out (16)
	if (argument[3] == 16) {
	   if (argument[2] == 0) or (argument[2] == 1) {
	      return argument[0] + (val*argument[2]);
	   } else {
	      var amt = argument[2]*2;

	      if (amt < 1) {
	         return argument[0] + (val*(power(2, 10*(amt - 1))*0.5));
	      } else {
	         return argument[0] + (val*(((power(2, -10*(amt - 1))*-1) + 2)*0.5));
	      }
	   }
	}

	//Exponential in (17)
	if (argument[3] == 17) {
	   if (argument[2] == 0) {
	      return argument[0];
	   } else {
	      var amt = argument[2] - 1;
	      return argument[0] + (val*(power(2, 10*(amt))));
	   }
	}

	//Exponential out (18)
	if (argument[3] == 18) {
	   if (argument[2] == 1) {
	      return argument[0] + val;
	   } else {
	      return argument[0] + (val*((power(2, (-10*argument[2]))*-1) + 1));
	   }
	}

	//Circular in-out (19)
	if (argument[3] == 19) {
	   var amt = argument[2]*2;

	   if (amt < 1) {
	      return argument[0] + (val*((sqrt(max(0, 1 - (amt*amt))) - 1)*-0.5));
	   } else {
	      return argument[0] + (val*((sqrt(max(0, 1 - ((amt - 2)*(amt - 2)))) + 1)*0.5));
	   }
	}

	//Circular in (20)
	if (argument[3] == 20) {
	   return argument[0] + (val*((sqrt(max(0, 1 - (argument[2]*argument[2]))) - 1)*-1));
	}

	//Circular out (21)
	if (argument[3] == 21) {
	   var amt = argument[2] - 1;
   
	   return argument[0] + (val*(sqrt(max(0, 1 - (amt*amt)))));
	}

	//Rubber in-out (22)
	if (argument[3] == 22) {
	   var amt = argument[2]*2;
   
	   if (amt < 1) {
	      return argument[0] + (val*(((0.5*amt)*amt)*((2.6*amt) - 1.6)));
	   } else {
	      var amt = amt - 2;
	      return argument[0] + (val*(0.5*(((amt*amt)*((2.6*amt) + 1.6)) + 2)));
	   }
	}

	//Rubber in (23)
	if (argument[3] == 23) {
	    return argument[0] + (val*((argument[2]*argument[2])*((argument[2]*2) - 1)));
	}

	//Rubber out (24)
	if (argument[3] == 24) {
	   var amt = argument[2] - 1;
	   return argument[0] + (val*(((amt*amt)*((amt*2) + 1)) + 1));
	}

	//Elastic in-out (25)
	if (argument[3] == 25) {
	   if (argument[2] == 0) or (argument[2] == 1) {
	      return argument[0] + (val*argument[2]);
	   } else {
	      var amt = (argument[2]*2) - 1;

	      if ((amt + 1) < 1) {
	         return argument[0] + (val*(-0.5*(power(2, 10*amt)*sin(((amt - 0.125)*(2*pi))/0.5))));
	      } else {
	         return argument[0] + (val*(((power(2, -10*amt)*sin((amt - 0.125)*(2*pi)/0.5))*0.5) + 1));
	      }
	   }
	}

	//Elastic in (26)
	if (argument[3] == 26) {
	   if (argument[2] == 0) or (argument[2] == 1) {
	      return argument[0] + (val*argument[2]);
	   } else {
	      var amt = argument[2] - 1;
	      return argument[0] + (val*((power(2, 10*amt)*sin(((amt - 0.125)*(2*pi))/0.5))*-1));
	   }
	}

	//Elastic out (27)
	if (argument[3] == 27) {
	   if (argument[2] == 0) or (argument[2] == 1) {
	      return argument[0] + (val*argument[2]);
	   } else {
	      return argument[0] + (val*((power(2, -10*argument[2])*sin(((argument[2] - 0.125)*(2*pi))/0.5)) + 1));
	   }
	}

	//Bounce in-out (28)
	if (argument[3] == 28) {
	   if (argument[2] < 0.5) {   
	      if ((1 - (argument[2]*2)) < 0.36) {
	         return argument[0] + (val*((1 - ((7.56*(1 - (argument[2]*2)))*(1 - (argument[2]*2))))*0.5));
	      } 
    
	      if ((1 - (argument[2]*2)) < 0.72) {
	         var amt = (1 - (argument[2]*2)) - 0.54;
	         return argument[0] + (val*((1 - (((7.56*amt)*amt) + 0.76))*0.5));
	      } 
    
	      if ((1 - (argument[2]*2)) < 0.91) {
	         var amt = (1 - (argument[2]*2)) - 0.81;
	         return argument[0] + (val*((1 - (((7.56*amt)*amt) + 0.94))*0.5));
	      }
    
	      var amt = (1 - (argument[2]*2)) - 0.96;
	      return argument[0] + (val*((1 - (((7.56*amt)*amt) + 0.99))*0.5));
	   } else {
	      if (((argument[2]*2) - 1) < 0.36) {
	         return argument[0] + (val*((((7.56*((argument[2]*2) - 1))*((argument[2]*2) - 1))*0.5) + 0.5));
	      } 
    
	      if (((argument[2]*2) - 1) < 0.72) {
	         var amt = ((argument[2]*2) - 1) - 0.54;
	         return argument[0] + (val*(((((7.56*amt)*amt) + 0.76)*0.5) + 0.5));
	      } 
    
	      if (((argument[2]*2) - 1) < 0.91) {
	         var amt = ((argument[2]*2) - 1) - 0.81;
	         return argument[0] + (val*(((((7.56*amt)*amt) + 0.94)*0.5) + 0.5));
	      }
    
	      var amt = ((argument[2]*2) - 1) - 0.96;
	      return argument[0] + (val*((((((7.56*amt)*amt) + 0.99)*0.5) + 0.5)));
	   }
	}

	//Bounce in (29)
	if (argument[3] == 29) {
	   if ((1 - argument[2]) < 0.36) {
	      return argument[0] + (val*(1 - ((7.56*(1 - argument[2]))*(1 - argument[2]))));
	   } 
    
	   if ((1 - argument[2]) < 0.72) {
	      var amt = (1 - argument[2]) - 0.54;
	      return argument[0] + (val*(1 - (((7.56*amt)*amt) + 0.76)));
	   } 
    
	   if ((1 - argument[2]) < 0.91) {
	      var amt = (1 - argument[2]) - 0.81;
	      return argument[0] + (val*(1 - (((7.56*amt)*amt) + 0.94)));
	   }
    
	   var amt = (1 - argument[2]) - 0.96;
	   return argument[0] + (val*(1 - (((7.56*amt)*amt) + 0.99)));
	}

	//Bounce out (30)
	if (argument[3] == 30) or (argument[3] > 31) {
	   if (argument[2] < 0.36) {
	      return argument[0] + (val*((7.56*argument[2])*argument[2]));
	   } 
    
	   if (argument[2] < 0.72) {
	      var amt = argument[2] - 0.54;
	      return argument[0] + (val*(((7.56*amt)*amt) + 0.76));
	   } 
    
	   if (argument[2] < 0.91) {
	      var amt = argument[2] - 0.81;
	      return argument[0] + (val*(((7.56*amt)*amt) + 0.94));
	   }
    
	   var amt = argument[2] - 0.96;
	   return argument[0] + (val*(((7.56*amt)*amt) + 0.99));
	}

	//Cubic Bezier (31)
	if (argument[3] == 31) {	
		//Use input control point values, if supplied
		if (argument_count > 4) {
			var bx1 = clamp(argument[4], 0, 1),
				by1 = argument[5],
				bx2 = clamp(argument[6], 0, 1),
				by2 = argument[7];	
		} else {
			//Otherwise default to ease
			var bx1 = 0.25,
				by1 = 0.10,
				bx2 = 0.25,
				by2 = 1.00;
		}
	
		//Get initial input interpolation amount
		var amt = argument[2];
	
		//Calculate control points on bezier curve
		var bx_c = (bx1*3);
		var bx_b = ((bx2 - bx1)*3) - bx_c;
		var bx_a = 1 - bx_c - bx_b;

		var by_c = (by1*3);
		var by_b = ((by2 - by1)*3) - by_c;
		var by_a = 1 - by_c - by_b;
	
		//Perform iterations (Newton's method) to roughly find X for Y
		var xamt, yamt, newton;
		xamt = amt;

		for (newton = 0; newton < 16; newton++) {
		    yamt = (xamt*(bx_c + (xamt*(bx_b + (xamt*bx_a))))) - amt;

		    if (abs(yamt) < 0.001) {
				break;
			}

		    xamt = xamt - (yamt/(bx_c + xamt*((bx_b*2) + ((bx_a*3)*xamt))));
		}

		//Get final interpolation amount (Y) from bezier curve
		amt = xamt*(by_c + (xamt*(by_b + (xamt*by_a))));

	    return argument[0] + (amt*val);
	}


}
