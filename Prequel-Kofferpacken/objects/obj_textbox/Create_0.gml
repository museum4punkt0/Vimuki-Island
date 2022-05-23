message = "";
limit = 7;
cursor = "I";
delay = 20;
waitAMoment = 20;
alarm[0] = delay;

function Unlock(){
	global.isUnlocked = true; 
	instance_destroy(); 
}