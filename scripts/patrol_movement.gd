class_name PatrolMovement
extends Node

@export var left_bounds: float = -10
@export var right_bounds: float = 10
@export var mover: Node3D
@export var movement: Movement

func set_direction(direction: float) -> void:
	movement.direction = direction

func _process(_delta: float) -> void:
	if mover.position.x < left_bounds and movement.direction < 0:
		movement.direction = -movement.direction
	elif mover.position.x > right_bounds and movement.direction > 0:
		movement.direction = -movement.direction
