extends Control

const root :String = "/root/Main";
var work_dir :String;

var menu_items = {
	"Base_Actions":root+"/Main_Menu_Items/Base_Actions",
	"Settings":root+"/Main_Menu_Items/Settings",
	"About":root+"/Main_Menu_Items/About"
}
var menu_buttons = {
	"Base_Actions":root+"/Main_Menu/mm_base_actions",
	"Settings":root+"/Main_Menu/mm_settings",
	"About":root+"/Main_Menu/mm_about"
}

func on_ready():
	work_dir = $"..".work_dir;

func _on_mm_base_actions_pressed():
	change_menu("Base_Actions");

func _on_mm_settings_pressed():
	change_menu("Settings");

func _on_mm_about_pressed():
	change_menu("About");

func change_menu(show_menu:String):
	for chi_item in menu_items:
		get_node(menu_items[chi_item]).visible = false;
		get_node(menu_buttons[chi_item]).pressed = false;
	get_node(menu_items[show_menu]).visible = true;
	get_node(menu_buttons[show_menu]).pressed = true;
	

