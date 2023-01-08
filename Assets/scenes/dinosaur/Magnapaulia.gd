extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dir = Vector3.ZERO
var cam_xform
var input_movement_vector
var rotation_helper
var model
const DEACCEL= 16
const MAX_SLOPE_ANGLE = 40
const GRAVITY = -24.8
var vel = Vector3()
const MAX_SPEED = 5
const JUMP_SPEED = 18
const ACCEL = 4.5
var MOUSE_SENSITIVITY = 0.05
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _process(delta):
	Mistro.process_movement(self,delta)
	Mistro.process_input(self,$Camera,delta,model)
