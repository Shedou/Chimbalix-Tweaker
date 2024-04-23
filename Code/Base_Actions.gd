extends Control
const root :String = "/root/Main";

var code :int;
var output :Array = [];
var exe_path :String;

func _ready():
	exe_path = get_node(root).exe_path;

func _on_clear_thumbcache_pressed():
	code = OS.execute("terminal", ["-e", exe_path+"/Scripts/clear-thumb-cache.sh"], false, output, false, false);

func _on_restart_xfcepanel_pressed():
	code = OS.execute("terminal", ["-e", exe_path+"/Scripts/restart-xfce4-panel.sh"], false, output, false, false);

func _on_restart_thunar_pressed():
	code = OS.execute("terminal", ["-e", exe_path+"/Scripts/restart-thunar.sh"], false, output, false, false);

func _on_drop_caches_pressed():
	code = OS.execute("terminal", ["-e", "pkexec "+exe_path+"/Scripts/drop-caches.sh 1"], false, output, false, false);

func _on_drop_caches_all_pressed():
	code = OS.execute("terminal", ["-e", "pkexec "+exe_path+"/Scripts/drop-caches.sh 3"], false, output, false, false);
