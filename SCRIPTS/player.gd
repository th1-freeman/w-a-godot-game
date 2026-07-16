extends CharacterBody2D

const SPEED = 300.0
@export var Angular_Frequency = 0.025

func _physics_process(delta: float) -> void:
	var direction := Vector2(Input.get_axis("RIGHT", "LEFT"), Input.get_axis("UP", "DOWN"))
	if direction:
		velocity = direction*SPEED
	else:
		velocity = Vector2.ZERO
		
	if velocity:
		rotation_degrees = 10*sin(Angular_Frequency*Time.get_ticks_msec())
	else:
		rotation_degrees = 0
	move_and_slide()
