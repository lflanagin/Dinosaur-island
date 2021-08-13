extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	_on_first_load()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# This loads the first scenes needed to create a game. 
func _on_first_load():
	var attract = load("res://Scenes/Levels/Attract.tscn")
	var mainMenu = load("res://Scenes/UI/MainMenu.tscn")
	var attractInstance = attract.instance()
	var mainMenuInstance = mainMenu.instance()
	mainMenuInstance.menuType = "LeftMenu"
	add_child(attractInstance)
	add_child(mainMenuInstance)
	mainMenuInstance.connect("quit_game",self,"_on_menu_signal",["quit_game"])
	mainMenuInstance.connect("settings",self,"_on_menu_signal",["settings"])
	mainMenuInstance.connect("load_game",self,"_on_menu_signal",["load_game"])
	mainMenuInstance.connect("play",self,"_on_menu_signal",["play"])

func _on_menu_signal(sig):
	match sig:
		"quit_game":
			get_tree().quit()
		"play":
			print(sig)
		"settings":
			print(sig)
		"load_game":
			print(sig)
