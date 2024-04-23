extends Control
const root :String = "/root/Main";

var code :int;
var output :Array = [];
var exe_path :String;

func _ready():
	exe_path = get_node(root).exe_path;
	$"current_exe_path".text = exe_path;

