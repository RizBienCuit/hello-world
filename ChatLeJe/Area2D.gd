extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var scene
var mousse
var papa
func _ready():
	scene=find_parent("Node2D")
	if scene!=null:
		print(scene.name)
	mousse=get_node("/root/Node2D/sol/Mousse")
	if mousse!=null:
		print(mousse.name)
	papa=find_parent("Joueur")
	if papa!=null:
		print(papa.name)
	pass # Replace with function body.
func _physics_process(delta):
	if overlaps_area(mousse):
		papa.motion=papa.motion*0.85
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
