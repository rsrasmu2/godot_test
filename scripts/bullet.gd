class_name Bullet
extends Area3D

func init(direction) -> void:
	$StaticVelocity.direction = direction


func _on_area_entered(area: Area3D) -> void:
	$CollisionDamage.on_collide(area)
