extends Area3D

signal died

func take_damage(amount: int) -> void:
	$Health.value -= amount

func _on_health_died() -> void:
	emit_signal("died")
	queue_free()


func _on_area_entered(area: Area3D) -> void:
	$CollisionDamage.on_collide(area)
