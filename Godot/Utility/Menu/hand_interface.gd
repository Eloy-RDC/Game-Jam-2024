extends Control

@onready var lib = get_node("../../Library").get_children()
@onready var inventory = [0, 1, 2, 3, 4, 5]
@onready var deck = [0, 1, 2, 3, 4, 5]
@onready var hand = []
@onready var handCards = []
@onready var buttons = [$HandCard1, $HandCard2, $HandCard3]
@onready var enemy1 = $"../../enemy1"
@onready var enemy2 = $"../../enemy2"
@onready var enemy3 = $"../../enemy3"
@onready var player = $"../../Player"


func _ready():
	show()
	print(lib)
	deck.shuffle()
	for i in range(3):
		handCards.append(lib[deck[i]])
		buttons[i].texture_normal = handCards[i].get_node("Sprite2D").texture


func _on_hand_card_1_pressed():
	print(enemy1.hp)
	lib[1].use()
	print(enemy1.hp)
	hide()


func _on_hand_card_2_pressed():
	handCards[1].use()
	hide()


func _on_hand_card_3_pressed():
	handCards[2].use()
	hide()
