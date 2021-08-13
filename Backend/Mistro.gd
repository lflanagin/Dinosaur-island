extends Node

# Mistro is this projects "global" or game wide function set. 
# Function that go here, can be accessed by all other scripts.
# Use this sparingly as noise between scenes and nodes can make your game run slower.



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func save_game():
	print("saving")
	
func load_game(gamefile):
	print("loading")
	
func list_saved_games():
	print("saved games")
