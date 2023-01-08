#extends  KinematicBody
#movement stats
export var speed := 1
export var jump_force := 10
export var gravity := 10


var _velocity := vector3.ZERO
var _snap_vector := vector3.DOWN
#grabing cam controls
onready var _spring_arm: springarm = $springarm
onready var _model:meshinstance = $tapejarabebe

#physicis and movement
func _physics_process(delta: float) -> void:
	var move_direction := vector3.ZERO
	move_direction.x
