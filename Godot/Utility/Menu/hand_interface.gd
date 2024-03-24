extends Control

@onready var lib = get_node("../../Library").get_children()
@onready var inventory = [0, 1, 2, 3, 4, 5]
@onready var deck = [0, 1, 2, 3, 4, 5]
@onready var hand = []
@onready var handCards = []
@onready var buttons = [$HandCard1, $HandCard2, $HandCard3]
@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"
@onready var medieval = $"../../"

signal card_used


func _ready():
	print(lib)
	deck.shuffle()
	for i in range(3):
		handCards.append(lib[deck[i]])
		buttons[i].texture_normal = handCards[i].get_node("Sprite2D").texture
	medieval.connect("visibility", toggle_visibility)


func _on_hand_card_1_pressed():
	handCards[0].use()
	card_used.emit()
	print(handCards[0])


func _on_hand_card_2_pressed():
	handCards[1].use()
	card_used.emit()
	print(handCards[1])


func _on_hand_card_3_pressed():
	handCards[2].use()
	card_used.emit()
	print(handCards[2])


func toggle_visibility(state):
	if state:
		show()
	else:
		hide()
