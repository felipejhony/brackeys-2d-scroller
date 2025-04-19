extends Node

var total_moedas = 0
@onready var coin_counter: Control = %CoinCounter

func contar_moeda():
	total_moedas += 1
	coin_counter.update_coins(total_moedas)
	
func _ready():
	for moeda in get_children():
		if moeda.has_signal("moeda_coletada"):
			moeda.connect("moeda_coletada", contar_moeda)
