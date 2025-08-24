class_name DescentMovement
extends Node

@export var descent_amount: float = 1
@export var descent_timer: float = 7
@export var to_move: Node3D
@export var mover: VerticalMovement

var target_position: float

func _ready() -> void:
	target_position = to_move.position.y
	$Timer.wait_time = descent_timer

func _on_timer_timeout() -> void:
	target_position -= 1
	mover.target_vertical = target_position
