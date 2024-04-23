extends Control
const root :String = "/root/Main";

var code :int;
var output :Array = [];
var exe_path :String;

func _ready():
	exe_path = get_node(root).exe_path;

func show(title:String="Default Title", message:String="Default Message"):
	if visible == false:
		visible = true;
		$wm_title.text = title;
		$wm_message.text = message;
	else:
		$wm_message.text += "\n"+message;
		if title != "+": $wm_title.text = title;
	

func _on_wm_close_pressed():
	self.visible = false;

# Сохранение информации в файл
func _on_wm_save_pressed():
	var file :File = File.new(); var dir :Directory = Directory.new();

	var date :String = str(Time.get_date_string_from_system());
	var time :String = str(Time.get_time_string_from_system()); time = time.replace(":","-");

	var save_path :String = exe_path + "/Saved_Info";
	var full_path = str(save_path, "/", date, " - ", time, ".txt", " - ", $wm_title.text);
	if not dir.dir_exists(save_path):
		dir.make_dir(save_path);

	if not dir.file_exists(full_path):
		var error_code :int = file.open(full_path, file.WRITE)
		if error_code == 0:
			file.store_string($wm_message.text); file.close(); $wm_message.text += "\nInformation saved in file: " + full_path;
		else: $wm_message.text += "\n"+$"%str".base.wrong+" (error: "+str(error_code)+")"
	else: $wm_message.text += "\nThe file already exists, please don't press the save button too quickly...\n " + full_path;
