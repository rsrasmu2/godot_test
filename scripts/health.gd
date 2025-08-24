class_name Health
extends Node

signal health_changed(new_health)
signal died

@export var value: int = 3:
	set(v):
		var new_value = max(v, 0)
		if value != new_value:
			value = new_value
			emit_signal(health_changed.get_name(), new_value)
			if value == 0:
				emit_signal(died.get_name())
