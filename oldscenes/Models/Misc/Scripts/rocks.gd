extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ground = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_rocks()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#unc _process(delta):
	#Mistro.process_movement($rock,delta)
	#pass

func generate_rocks():
	var num_of_rocks = int(rand_range(1,5))
	while get_child_count() < num_of_rocks:
		var rock_instance = $rock.duplicate()
		var rotate_rock = int(rand_range(1,3))
		var scale_rock = int(rand_range(1,3))
		var offset_rock = int(rand_range(1,3))
		
		var rs = rand_range(-5.2,2.2)
		
		var RockRotation = Vector3(0,1,0)
		
		var RockScale = Vector3(rs,rs,rs)
		var RockOffset = Vector3(0,0,0)
		
		match rotate_rock:
			1:
				#RockRotation = Vector3(1,1,0)
				RockScale = Vector3(rs,rs * 0.5,rs)
			2:
				#RockRotation = Vector3(0,0,1)
				RockScale = Vector3(rs,rs * 0.8,rs)
			3:
				RockRotation = Vector3(0,1,0)
				
		match offset_rock:
			1:
				RockOffset = Vector3(0,self.translation.y,rand_range(-3,3))
			2:
				RockOffset = Vector3(rand_range(-3,3),self.translation.y,rand_range(-3,3))
			3:
				RockOffset = Vector3(rand_range(-3,3),self.translation.y,0)
				
		
		rock_instance.scale_object_local(RockScale)
		rock_instance.rotate(RockRotation,10)
		rock_instance.translate(RockOffset)
		
		add_child(rock_instance)
		pass
	
