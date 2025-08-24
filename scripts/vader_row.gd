extends Node3D

@export var direction: float = -1

func _ready() -> void:
	$PatrolMovement.direction = direction
