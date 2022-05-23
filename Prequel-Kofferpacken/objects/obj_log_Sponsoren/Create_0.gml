/// @description Initialize the backlog
vngen_log_init(50);

//Create on-screen navigation buttons
vngen_log_button_create_transformed("nav_up",    "", spr_up_main, spr_up_main_hover, spr_up_main_select, display_get_gui_width() - 16, display_get_gui_height()*0.5,  0, fnt_default, c_white, 0, 0, 1.1, c_white, 0, 0, 1.1, c_white, 0.1, ease_quad);
vngen_log_button_create_transformed("nav_dn",    "", spr_dn_main, spr_dn_main_hover, spr_dn_main_select, display_get_gui_width() - 16, display_get_gui_height()*0.5,  0, fnt_default, c_white, 0, 0, 1.1, c_white, 0, 0, 1.1, c_white, 0.1, ease_quad);
vngen_log_button_create_transformed("nav_close", "", spr_dn_main, spr_dn_main_hover, spr_dn_main_select, display_get_gui_width() - 16, display_get_gui_height() - 64, 0, fnt_default, c_white, 0, 0, 1.1, c_white, 0, 0, 1.1, c_white, 0.1, ease_quad);