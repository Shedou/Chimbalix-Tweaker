extends Control
const root :String = "/root/Main";

var code :int;
var output :Array = [];
var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;
	localize();

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

func _on_fix_media_rights_pressed():
	code = OS.execute("terminal", ["-e", work_dir+"/Scripts/fix-media-rights.sh"], false, output, false, false);

func localize():
	$base_actions_hint.hint_tooltip = $"%str".Base_Actions.hint_base_actions_hint;
	$base_actions_hint.text = $"%str".Base_Actions.text_base_actions_hint;
	
	$clear_thumbcache.hint_tooltip = $"%str".Base_Actions.hint_clear_thumbcache;
	$clear_thumbcache.text = $"%str".Base_Actions.text_clear_thumbcache;
	
	$restart_xfcepanel.hint_tooltip = $"%str".Base_Actions.hint_restart_xfcepanel;
	$restart_xfcepanel.text = $"%str".Base_Actions.text_restart_xfcepanel;
	
	$restart_thunar.hint_tooltip = $"%str".Base_Actions.hint_restart_thunar;
	$restart_thunar.text = $"%str".Base_Actions.text_restart_thunar;
	
	$clean_xsession.hint_tooltip = $"%str".Base_Actions.hint_clean_xsession;
	$clean_xsession.text = $"%str".Base_Actions.text_clean_xsession;
	
	$drop_caches.hint_tooltip = $"%str".Base_Actions.hint_drop_caches;
	$drop_caches.text = $"%str".Base_Actions.text_drop_caches;
	
	$drop_caches_all.hint_tooltip = $"%str".Base_Actions.hint_drop_caches_all;
	$drop_caches_all.text = $"%str".Base_Actions.text_drop_caches_all;


