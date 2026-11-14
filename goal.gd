extends Area2D

@onready var win_label = get_node("../CanvasLayer/WinLabel")

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":
		win_label.visible = true
		get_tree().paused = true	
