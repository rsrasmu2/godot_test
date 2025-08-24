class_name Shoot
extends Node

const bullet_scene = preload("res://scenes/bullet.tscn")

@export var direction: float = 1
@export var cooldown: float = 0.3
@export var spawn_point: Node3D

func _ready() -> void:
	$Timer.wait_time = cooldown

func start_shoot() -> void:
	fire()
	$Timer.start()
	
func end_shoot() -> void:
	$Timer.stop()

func _on_timer_timeout() -> void:
	fire()

func fire() -> void:
	var bullet = bullet_scene.instantiate()
	bullet.position = spawn_point.global_position
	bullet.rotation = spawn_point.global_rotation
	bullet.init(direction)
	get_tree().get_nodes_in_group("Bullets")[0].add_child(bullet)
