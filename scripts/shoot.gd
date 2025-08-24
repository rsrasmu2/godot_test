class_name Shoot
extends Node

@export var bullet: PackedScene

func try_shoot():
	bullet.instantiate()
