extends Control
const root :String = "/root/Main";

var work_dir :String;

func on_ready():
	work_dir = $"..".work_dir;

