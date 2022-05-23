/// @description Perform on-screen navigation

//Scroll or close log when buttons are clicked
switch (vngen_get_log_button()) {
   case "nav_up": vngen_do_log_nav(-1); break;
   case "nav_dn": vngen_do_log_nav(1); break;
   case "nav_close": vngen_do_log_display(); break;
}

//Use touch gestures for scrolling the log
vngen_do_log_nav_touch();