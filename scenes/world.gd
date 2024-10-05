extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()


func _on_cliff_body_entered(body):
	if body.has_method("player"):
		spremenljivke.transition_scene = true
		print("okej a dela?")

func _on_cliff_body_exited(body):
	if body.has_method("player"):
		spremenljivke.transition_scene = false
	
func change_scene():
	if spremenljivke.transition_scene == true:
		if spremenljivke.current_scene == "world":
			get_tree().change_scene_to_file("res://scenes/task_apples.tscn")
			spremenljivke.finish_changescenes()
				
