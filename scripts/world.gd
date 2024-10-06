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
			print("laods appleeee")
			print(Spremenljivke.transition_scene)
			get_tree().change_scene_to_file("res://scenes/sortiranje.tscn")
			Spremenljivke.spawnApple = true
			#Spremenljivke.transition_scene = true
			Spremenljivke.finish_changescenes()
			#Spremenljivke.transition_scene = false
				
