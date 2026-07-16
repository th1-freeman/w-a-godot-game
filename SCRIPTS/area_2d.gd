extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Enemy"):
		body.can_move = false
		

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Enemy"):
		body.can_move = true
