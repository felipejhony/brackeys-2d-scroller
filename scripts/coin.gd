extends Area2D

signal moeda_coletada
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	emit_signal("moeda_coletada")
	animation_player.play("pickup")
