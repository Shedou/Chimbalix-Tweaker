extends Control
const root :String = "/root/Main";

var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;
	$"current_work_dir".text = work_dir;
	
	$current_work_dir.hint_tooltip = $"%str".Main_Menu_Items.hint_about_current_work_dir;

