class_name Movement
extends Node

@export var to_move: Node3D
@export var max_speed: float = 10
@export var acceleration: float = 36
@export var stop_force: float = 48

var direction: float = 0
var velocity: float = 0

func _process(delta: float) -> void:
	if direction == 0 and abs(velocity) > 0:
		velocity = max(abs(velocity) - stop_force * delta, 0) * sign(velocity)
	else:
		velocity = clamp(velocity + acceleration * delta * direction, -max_speed, max_speed)
	to_move.position.x += velocity * delta
