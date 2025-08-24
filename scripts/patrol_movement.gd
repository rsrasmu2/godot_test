class_name PatrolMovement
extends Node

@export var left_bounds: float = -12
@export var right_bounds: float = 12
@export var mover: Node3D
@export var movement: Movement

func _process(delta: float) -> void:
	
