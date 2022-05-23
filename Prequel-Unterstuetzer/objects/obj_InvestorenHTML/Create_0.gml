/// @description Initialize VNgen
vngen_object_init();

//Set custom cursors

vngen_set_cursor(spr_cr_default_large, spr_cr_pointer_large);

//Set lineheight
vngen_set_lineheight(all, vngen_type_text, 1.4);

//Set viewport scaling
vngen_set_scale(0);

//Set typewriter effect speed
vngen_set_speed(22);

//Display warning if texture pages are not large enough for the demo
#region Show warning

//Get operating system
var os = "[Platform]";
#region Get operating system string
switch (os_type) {
	case os_windows: os = "Windows"; break;
	case os_macosx: os = "macOS"; break;
	case os_linux: os = "Ubuntu"; break;
	case os_android: os = "Android"; break;
	case os_ios: os = "iOS"; break;
	case os_tvos: os = "tvOS"; break;
	case os_xboxone: os = "Xbox"; break;
	case os_switch: os = "Switch"; break;
	case os_ps3: 
	case os_ps4: 
	case os_psvita: os = "PlayStation"; break;
	default:
		if (os_browser != browser_not_a_browser) {
			os = "HTML5";
		}
}#endregion
#endregion
