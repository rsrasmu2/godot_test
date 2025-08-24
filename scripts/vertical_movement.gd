class_name VerticalMovement
extends Node

@export var to_move: Node3D
@export var speed: float = 1.5

@onready var _current_vertical: float = to_move.position.y
@onready var target_vertical: float = to_move.position.y:
	set(value):
		target_vertical = value
		var tween = get_tree().create_tween()
		tween.tween_property(self, "_current_vertical", target_vertical, speed)
		
func _process(_delta: float) -> void:
	to_move.position.y = _current_vertical
