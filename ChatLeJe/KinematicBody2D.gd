extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var motion = Vector2()
var UP = Vector2(0,-1);
var a=false
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	motion.y+=7
	if Input.is_action_pressed("ui_up") and is_on_floor():
		motion.y=-1200
	motion = move_and_slide(motion,UP)
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
