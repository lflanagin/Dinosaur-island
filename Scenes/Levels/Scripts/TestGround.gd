extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var total_rocks = int(4080)
export var total_trees = int(10000)

# Called when the node enters the scene tree for the first time.
func _ready():
	if rocks($Ground) == 1:
		$GIProbe.bake()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func rocks(area):
	var rock = load("res://Scenes/Models/Misc/rock1.tscn")
	while area.get_child_count() < total_rocks:
		var random_location_x = rand_range(-500,500)
		var random_location_z =  rand_range(-500,500)
		var therock = rock.instance()
		therock.translate(Vector3(random_location_x,0,random_location_z))
		$Ground.add_child(therock)
	return 1

func trees(area):
	var rock = load("res://Scenes/Models/Misc/tree1.tscn")
	while area.get_child_count() < total_trees:
		var random_location_x = rand_range(-500,500)
		var random_location_z =  rand_range(-500,500)
		var therock = rock.instance()
		therock.translate(Vector3(random_location_x,0,random_location_z))
		$Ground.add_child(therock)
	return 1
