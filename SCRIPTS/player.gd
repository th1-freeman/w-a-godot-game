extends CharacterBody2D

const SPEED = 300.0
@export var Angular_Frequency = 0.025
@onready var Sprite = get_node("Tile0085")
@onready var Viewcone = get_node("Area2D")

func _physics_process(delta: float) -> void:
	var direction := Vector2(Input.get_axis("RIGHT", "LEFT"), Input.get_axis("UP", "DOWN"))
	if direction:
		velocity = direction*SPEED
	else:
		velocity = Vector2.ZERO
		
	if velocity:
		Sprite.rotation_degrees = 10*sin(Angular_Frequency*Time.get_ticks_msec())
	else:
		Sprite.rotation_degrees = 0
	
	var collision = move_and_collide(velocity*delta)
	
	if collision:
		if collision.get_collider().is_in_group("Enemy"):
			get_tree().change_scene_to_file("res://ASSETS/menu.tscn")
	
	Viewcone.look_at(get_global_mouse_position())
