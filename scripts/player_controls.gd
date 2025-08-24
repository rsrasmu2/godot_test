class_name PlayerControls
extends Node

@export var movement: Movement

func _input(event: InputEvent) -> void:
	var direction = 0
	
	if event.is_action_pressed("Left"):
		direction -= 1
	if event.is_action_pressed("Right"):
		direction += 1

	movement.direction = direction
