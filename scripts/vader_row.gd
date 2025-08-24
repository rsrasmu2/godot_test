extends Node3D

@export var direction: float = -1

signal died

func _ready() -> void:
	$PatrolMovement.set_direction(direction)
	for vader in $Vaders.get_children():
		vader.connect("died", _on_died)


func _on_died() -> void:
	if $Vaders.get_child_count() == 1:
		emit_signal("died")
