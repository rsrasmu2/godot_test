class_name Player
extends Area3D

signal died

func take_damage(amount: int):
	$Health.value -= amount


func _on_health_died() -> void:
	emit_signal("died")
	queue_free()
