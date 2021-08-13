extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var menuType = "CenterMenu"

signal play()
signal load_game()
signal quit_game()
signal settings()

# Called when the node enters the scene tree for the first time.
func _ready():
	var themenu = load("res://Scenes/UI/Elements/"+str(menuType)+".tscn")
	var menuInstance = themenu.instance()
	menuInstance.connect("quit_game",self,"_on_signal",["quit_game"])
	menuInstance.connect("settings",self,"_on_signal",["settings"])
	menuInstance.connect("load_game",self,"_on_signal",["load_game"])
	menuInstance.connect("play",self,"_on_signal",["play"])
	add_child(menuInstance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_signal(sig):
	emit_signal(sig)
