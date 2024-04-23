extends Control

const root :String = "/root/Main";

var menu_items = {
	"Base_Actions":root+"/Main_Menu_Items/Base_Actions",
	"About":root+"/Main_Menu_Items/About"
}
var menu_buttons = {
	"Base_Actions":root+"/Main_Menu/mm_base_actions",
	"About":root+"/Main_Menu/mm_about"
}

func _ready():
	pass

func _on_mm_base_actions_pressed():
	change_menu("Base_Actions");

func _on_mm_about_pressed():
	change_menu("About");

func change_menu(show_menu:String):
	for chi_item in menu_items:
		get_node(menu_items[chi_item]).visible = false;
		get_node(menu_buttons[chi_item]).pressed = false;
	get_node(menu_items[show_menu]).visible = true;
	get_node(menu_buttons[show_menu]).pressed = true;

func _on_4_pressed():
	$"%Window_Message".show("ATTENTION!", "VERY IMPORTANT MESSAGE!");
	
