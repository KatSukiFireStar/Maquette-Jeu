extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Menu"):
		visible = not visible
		get_tree().paused = not get_tree().paused
	

func _on_button_pressed() -> void:
	visible = false
	get_tree().paused = false


func _on_button2_pressed() -> void:
	get_tree().quit()
