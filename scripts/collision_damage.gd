class_name CollisionDamage
extends Node

@export var damage: int = 1

func on_collide(area: Area3D) -> void:
	if area.has_method("take_damage"):
		area.take_damage(damage)
		owner.queue_free()
