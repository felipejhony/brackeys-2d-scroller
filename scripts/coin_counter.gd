extends Control

@onready var label: Label = $Label

func update_coins(coins: int):
	label.text = "Coins: " + str(coins)
