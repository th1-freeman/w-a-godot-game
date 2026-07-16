extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	var direction := Vector2(Input.get_axis("RIGHT", "LEFT"), Input.get_axis("UP", "DOWN"))
	if direction:
		velocity = direction*SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
