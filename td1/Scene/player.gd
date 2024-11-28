extends CharacterBody2D

var speed : float = 300
var sprite : AnimatedSprite2D

var facing : String

func _ready() -> void:
	sprite = get_node("@AnimatedSprite2D@24891")

func _process(delta: float) -> void:
	var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = dir * speed

	if velocity.x > 0:
		sprite.play("walk_right")
		facing = "right"
	elif velocity.x < 0:
		sprite.play("walk_left")
		facing = "left"
		
	if velocity.y < 0:
		sprite.play("walk_up")
		facing = "up"
	elif velocity.y > 0:
		sprite.play("walk_down")
		facing = "down"
		
	if velocity == Vector2(0,0):
		match facing:
			"left":
				sprite.play("idle_left")
			"right":
				sprite.play("idle_right")
			"up":
				sprite.play("idle_up")
			"down":
				sprite.play("idle_down")
	
	move_and_slide()
	
