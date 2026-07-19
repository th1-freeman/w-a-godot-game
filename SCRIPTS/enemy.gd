extends CharacterBody2D

var can_move = true
@onready var Player = get_tree().root.get_node("Node2D/Player")
@export var SPEED = 10


func _physics_process(delta: float) -> void:
	if can_move:
		velocity = Vector2(Player.position.x - position.x, Player.position.y - position.y) * 1/SPEED
	else:
		velocity = Vector2.ZERO
	move_and_slide()
