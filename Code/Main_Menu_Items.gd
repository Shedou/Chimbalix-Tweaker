extends Control

var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;
	$Base_Actions.on_ready();
	$Settings.on_ready();
	$About.on_ready();


