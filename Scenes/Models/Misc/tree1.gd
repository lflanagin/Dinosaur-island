extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ground = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_trees()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#unc _process(delta):
	#Mistro.process_movement($rock,delta)
	#pass

func generate_trees():
	var num_of_trees = int(rand_range(1,5))
	while get_child_count() < num_of_trees:
		var tree_instance = $tree.duplicate()
		var rotate_tree = int(rand_range(1,3))
		var scale_tree = int(rand_range(1,3))
		var offset_tree = int(rand_range(1,3))
		
		var rs = rand_range(-5.2,2.2)
		
		var treeRotation = Vector3(0,1,0)
		
		var treeScale = Vector3(rs,rs,rs)
		var treeOffset = Vector3(0,0,0)
		
		match rotate_tree:
			1:
				#RockRotation = Vector3(1,1,0)
				treeScale = Vector3(rs,rs * 0.5,rs)
			2:
				#RockRotation = Vector3(0,0,1)
				treeScale = Vector3(rs,rs * 0.8,rs)
			3:
				treeRotation = Vector3(0,1,0)
				
		match offset_tree:
			1:
				treeOffset = Vector3(0,self.translation.y,rand_range(-3,3))
			2:
				treeOffset = Vector3(rand_range(-3,3),self.translation.y,rand_range(-3,3))
			3:
				treeOffset = Vector3(rand_range(-3,3),self.translation.y,0)
				
		
		tree_instance.scale_object_local(treeScale)
		tree_instance.rotate(treeRotation,10)
		tree_instance.translate(treeOffset)
		
		add_child(tree_instance)
		pass
	
