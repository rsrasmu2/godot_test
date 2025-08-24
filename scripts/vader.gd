extends Area3D

func take_damage(amount: int) -> void:
	$Health.value -= amount

func _on_health_died() -> void:
	queue_free()
