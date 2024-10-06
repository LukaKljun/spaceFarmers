extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene()

func _on_cliff_body_entered(body):
	print("on cliff body enterd pred ifom", body)
	if body.has_method("player"):
		Spremenljivke.transition_scene = true
		print("okej a dela?")

func _on_cliff_body_exited(body):
	if body.has_method("player"):
		Spremenljivke.transition_scene = false
	
func change_scene():
	if Spremenljivke.transition_scene == true:
		if Spremenljivke.current_scene == "world":
			get_tree().change_scene_to_file("res://scenes/apple.tscn")
			Spremenljivke.finish_changescenes()
				
