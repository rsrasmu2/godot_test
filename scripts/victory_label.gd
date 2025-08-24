extends Control

@export var vader_rows: Node3D

func _ready() -> void:
	for row in vader_rows.get_children():
		row.connect("died", _on_row_died)
		

func _on_player_died() -> void:
	$VictoryLabel.text = "You lose! D:"
	var tween = get_tree().create_tween()
	tween.tween_property(self, "scale", Vector2(4.0, 4.0), 0.3)
	tween.tween_property(self, "scale", Vector2(2.5, 2.5), 1.5)

func _on_row_died() -> void:
	if get_tree().get_nodes_in_group("Vaders").size() == 1:
		$VictoryLabel.text = "You win!!! :D"
		var tween = get_tree().create_tween()
		tween.tween_property(self, "scale", Vector2(4.0, 4.0), 0.3)
		tween.tween_property(self, "scale", Vector2(2.5, 2.5), 1.5)
