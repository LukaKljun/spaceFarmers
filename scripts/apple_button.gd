extends TextureButton

#signal button_pressed

signal applePressed()

func _on_texture_button_pressed() -> void:
	print("pressed")
	
	emit_signal("applePressed", "yes?")
	GameManager.apple_score += 1
	
	ApplesHandler.delete(self)
	#ApplesHandler.spawn()
	
	#emit_signal("button_pressed")
	#connect("pressed")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#connect("pressed", self, "_on_texture_button_pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
