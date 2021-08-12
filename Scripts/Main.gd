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
	add_child(attract.instance())
	add_child(mainMenu.instance())
