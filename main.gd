extends Node2D

var survival_time = 0.0
var game_over = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if game_over:
		return

	survival_time += delta

	var minutes = int(survival_time / 60)
	var seconds = int(survival_time) % 60

	$UI/TimerLabel.text = "TIME: %02d:%02d" % [minutes, seconds]


func _on_goal_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
