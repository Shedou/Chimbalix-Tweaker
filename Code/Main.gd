extends Node2D
# Версия
const version :String = "Chimbalix Tweaker v1.0";

# База
var exe_path :String = OS.get_executable_path().get_base_dir();
var OS_name :Dictionary = {"id":"", "release":"", "codename":"", "full":""};

func _ready():
	Engine.target_fps = 60;
	$Main_Menu/mm_version.text = version;
	$"%Window_Message".show($"%str".base_capt.attention, "The application may damage the operating system! Use with caution!");
	check_OS();
	

# Проверка имени операционной системы и предупреждение, если это не Chimbalix.
func check_OS():
	var temp_code :int;
	var temp_output :Array = [];
	temp_code = OS.execute("bash", [exe_path+"/Scripts/base/OS.sh", "id"], true, temp_output, false, false);
	OS_name.id = str(temp_output[0]); OS_name.id = OS_name.id.replace("\n","");
	temp_code = OS.execute("bash", [exe_path+"/Scripts/base/OS.sh", "release"], true, temp_output, false, false);
	OS_name.release = str(temp_output[0]); OS_name.release = OS_name.release.replace("\n","");
	temp_code = OS.execute("bash", [exe_path+"/Scripts/base/OS.sh", "codename"], true, temp_output, false, false);
	OS_name.codename = str(temp_output[0]); OS_name.codename = OS_name.codename.replace("\n","");
	temp_code = OS.execute("bash", [exe_path+"/Scripts/base/OS.sh", "full"], true, temp_output, false, false);
	OS_name.full = str(temp_output[0]); OS_name.full = OS_name.full.replace("\n","");
	if OS_name.id != "Chimbalix":
		$"%Window_Message".show($"%str".base_capt.attention, $"%str".main_not_designed);
		$"%Window_Message".show("+", $"%str".main_current_os+": "+OS_name.full);
		



func _on_2_pressed():
	$Window_Locale.change_font("fd");


func _on_3_pressed():
	$Window_Locale.save_locale("f");
