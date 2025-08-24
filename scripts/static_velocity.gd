class_name StaticVelocity
extends Node

@export var to_move: Node3D
@export var speed: float = 50

var direction: float = 0

func _process(delta: float) -> void:
	to_move.position.y += speed * direction * delta
