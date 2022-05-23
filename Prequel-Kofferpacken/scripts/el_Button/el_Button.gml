/// @function	Button(string:name, real:x, real:y)
function Button(_name, _x, _y) : GUIElement() constructor {
	
	// passed-in vars
	name		= _name;
	x			= _x;
	y			= _y;
	
	/// @function	click()
	static click = function() {
		set_focus();
		show_debug_message("You clicked the button named `" + string(name) + "`!");
	}
	
	/// @function	draw()
	static draw = function() {
		draw_rectangle(x, y, x + width, y + height, true);
		draw_text(x + (width*0.5) - (string_width(name) * 0.5), y + (height * 0.5), name);
	}
	
}