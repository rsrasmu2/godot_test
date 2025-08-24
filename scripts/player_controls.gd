class_name PlayerControls
extends Node

@export var movement: Movement

func _process(_delta: float) -> void:
	var direction = 0
	
	if Input.is_action_pressed("Left"):
		direction -= 1
	if Input.is_action_pressed("Right"):
		direction += 1

	movement.direction = direction
