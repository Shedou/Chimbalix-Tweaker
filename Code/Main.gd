extends Node2D
# Версия
const version :String = "Chimbalix Tweaker v1.0";

# База
var OS_name :Dictionary = {"id":"", "release":"", "codename":"", "full":""};

var args :Array = [];
var work_dir :String;
var user_data;


func _ready():
	Engine.target_fps = 60;
	args = OS.get_cmdline_args();
	user_data = OS.get_user_data_dir();
	
	if (args != []): work_dir = args[0];
	else:
		work_dir = "WARNING";
		$"%Window_Message".show($"%str".base.capt_warning, $"%str".base.work_dir_arg_not_found);
		$"%Window_Message".show("+", $"%str".base.work_dir_arg_not_found_tip);
	
	$Main_Menu/mm_version.text = version;
	$"%Window_Message".show($"%str".base.capt_attention, $"%str".base.attention);
	
	work_dir_set();
	
	check_OS();

func work_dir_set():
	$Main_Menu.on_ready();
	$Main_Menu_Items.on_ready();
	$Window_Locale.on_ready();
	$Window_Message.on_ready();

# Проверка имени операционной системы и предупреждение, если это не Chimbalix.
func check_OS():
	var temp_code :int;
	var temp_output :Array = [];
	
	if work_dir != "WARNING":
		temp_code = OS.execute("bash", [work_dir+"/Scripts/base/OS.sh", "id"], true, temp_output, false, false);
		OS_name.id = str(temp_output[0]); OS_name.id = OS_name.id.replace("\n","");
		
		temp_code = OS.execute("bash", [work_dir+"/Scripts/base/OS.sh", "release"], true, temp_output, false, false);
		OS_name.release = str(temp_output[0]); OS_name.release = OS_name.release.replace("\n","");
		
		temp_code = OS.execute("bash", [work_dir+"/Scripts/base/OS.sh", "codename"], true, temp_output, false, false);
		OS_name.codename = str(temp_output[0]); OS_name.codename = OS_name.codename.replace("\n","");
		
		temp_code = OS.execute("bash", [work_dir+"/Scripts/base/OS.sh", "full"], true, temp_output, false, false);
		OS_name.full = str(temp_output[0]); OS_name.full = OS_name.full.replace("\n","");
	else:
		temp_code = OS.execute("uname", ["-sr"], true, temp_output, false, false);
		OS_name.full = str(temp_output[0]); OS_name.full = OS_name.full.replace("\n","");
	
	if OS_name.id != "Chimbalix":
		$"%Window_Message".show($"%str".base.capt_attention, $"%str".base.not_designed);
		$"%Window_Message".show("+", $"%str".base.current_os+":  "+OS_name.full);
		



func _on_2_pressed():
	$Window_Locale.change_font("fd");


func _on_3_pressed():
	$Window_Locale.save_locale("f");
