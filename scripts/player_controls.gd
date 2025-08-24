class_name PlayerControls
extends Node

@export var movement: Movement
@export var shoot: Shoot

func _process(_delta: float) -> void:
	var direction = 0
	
	if Input.is_action_pressed("Left"):
		direction -= 1
	if Input.is_action_pressed("Right"):
		direction += 1
		
	if Input.is_action_just_pressed("Fire"):
		shoot.start_shoot()
	elif Input.is_action_just_released("Fire"):
		shoot.end_shoot()

	movement.direction = direction
