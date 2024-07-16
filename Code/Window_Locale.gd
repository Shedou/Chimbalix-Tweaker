extends Control
const root : String = "/root/Main";

var work_dir : String = "";
var directory : Directory = Directory.new();

# Локализация
var locale_config : ConfigFile = ConfigFile.new();
export var locale_folder_name : String = "Locale";
export var locale_fonts_folder_name : String = "Fonts";
var locale_folder : String;
var locale_fonts_folder : String = locale_folder+"/"+locale_fonts_folder_name;


func on_ready():
	# Первоначальная подготовка переменных
	#work_dir = get_node(root).work_dir;
	work_dir = $"..".work_dir;
	locale_folder = work_dir+"/"+locale_folder_name;
	locale_fonts_folder = locale_folder+"/"+locale_fonts_folder_name;
	


func load_locale(locale_name):
	if directory.dir_exists(locale_folder) == true:
		pass
	else: print("Locale Folder not found...");

func save_locale(locale_name):
	var error = 0;
	if directory.dir_exists(locale_folder) == false:
		if directory.make_dir(locale_folder) == OK:
			$"%base_actions_hint2".text = "good";
		else:
			$"%base_actions_hint2".text = "bad";
			error = 1;
	else: $"%base_actions_hint2".text = "dir already present";
	
	if directory.dir_exists(locale_fonts_folder) == false:
		if directory.make_dir(locale_fonts_folder) == OK:
			$"%base_actions_hint2".text = "good2";
		else:
			$"%base_actions_hint2".text = "bad2";
			error = 1;
	else: $"%base_actions_hint2".text = "dir already present2";
	
	if error == 0:
		pass
	else:
		$"%base_actions_hint2".text = "Localization not saved, no rights to write files?";

func change_font(value):
	var theme = preload("res://Menu_Theme.tres");
	var font = DynamicFont.new()
	font.font_data = load("res://Fonts/Noto_Sans/NotoSans-Bold.ttf");
	font.size = 20;
	theme.set_default_font(font)
