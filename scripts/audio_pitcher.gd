extends AudioStreamPlayer

@export var min_pitch: float = 0.7
@export var max_pitch: float = 1.3

func play_random() -> void:
	pitch_scale = randf_range(min_pitch, max_pitch)
	play()
