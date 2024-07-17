extends Control
const root :String = "/root/Main";

var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;
	localize();

func localize():
	$TranslatedBy.hint_tooltip = $"%str".About.hint_TranslatedBy;
	$TranslatedBy.text = $"%str".About.text_TranslatedBy;
