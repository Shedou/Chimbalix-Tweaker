extends Node


# Стринги

var base : Dictionary = {
	"capt_warning":"WARNING!",
	"capt_attention":"ATTENTION!",
	"wrong":"Something went wrong...",
	"attention":"The application may damage the operating system! Use with caution!",
	"not_designed":"Chimbalix Tweaker is not designed for other Linux distributions!",
	"current_os":"Current OS",
	"work_dir_arg_not_found":"The working directory is not specified in the startup arguments, functionality may be broken!",
	"work_dir_arg_not_found_tip":"Please run the application correctly: chimbalix-tweaker \"/path/to/executable_dir\"",
	};

var Main_Menu_Items : Dictionary = {
	"hint_about_current_work_dir":"The application's working directory"
	};

var Base_Actions : Dictionary = {
	"hint_base_actions_hint":"Tooltip",
	"hint_clear_thumbcache":"Clear the image preview cache located in:\n\"/home/USER_FOLDER/.cache/thumbnails/\".",
	"hint_restart_xfcepanel":"Command \"xfce4-panel -r\".\nUseful when items get stuck in the Start menu.",
	"hint_restart_thunar":"Closes all \"thunar\" processes and starts again with the command:\nnohup thunar --daemon &",
	"text_base_actions_hint":"* - Requires root rights. Hover your mouse over to get a hint.",
	"text_clear_thumbcache":"Clear Thumbnail Cache",
	"text_restart_xfcepanel":"Restart Xfce4 Panel",
	"text_restart_thunar":"Restart Thunar (Explorer)",
	};

