//Render a form
var form = html_form(undefined, "registration-form");
html_h3(form, "header", "Log in")
html_field(form, "email", "email", "Emailaddress", true, "", "test@example.com");
html_field(form, "password", "password", "Password", true);
html_submit(form, "submit", "Login", !form_is_loading, form_is_loading ? "loading" : "");
if html_element_interaction(form)
html_submit_login(form)
