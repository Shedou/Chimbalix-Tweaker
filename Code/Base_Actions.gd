extends Control
const root :String = "/root/Main";

var code :int;
var output :Array = [];
var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;

func _on_clear_thumbcache_pressed():
	code = OS.execute("terminal", ["-e", work_dir+"/Scripts/clear-thumb-cache.sh"], false, output, false, false);

func _on_restart_xfcepanel_pressed():
	code = OS.execute("terminal", ["-e", work_dir+"/Scripts/restart-xfce4-panel.sh"], false, output, false, false);

func _on_restart_thunar_pressed():
	code = OS.execute("terminal", ["-e", work_dir+"/Scripts/restart-thunar.sh"], false, output, false, false);

func _on_drop_caches_pressed():
	code = OS.execute("terminal", ["-e", "pkexec "+work_dir+"/Scripts/drop-caches.sh 1"], false, output, false, false);

func _on_drop_caches_all_pressed():
	code = OS.execute("terminal", ["-e", "pkexec "+work_dir+"/Scripts/drop-caches.sh 3"], false, output, false, false);

func _on_clean_xsession_pressed():
	code = OS.execute("terminal", ["-e", work_dir+"/Scripts/clean-x-errors-log.sh"], false, output, false, false);
