class_name Movement
extends Node

@export var to_move: Node3D
@export var max_speed: float = 10
@export var acceleration: float = 4.0

var direction: float = 0
var velocity: float = 0

func _process(delta: float) -> void:
	var target_velocity = max_speed * direction
	velocity = lerp(velocity, max_speed * direction, delta * acceleration)
	to_move.position.x += velocity * delta
