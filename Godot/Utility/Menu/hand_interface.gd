extends Control

@onready var lib = get_node("../../Library").get_children()
@onready var inventory = [0, 1, 2, 3, 4, 5]
@onready var deck = [0, 1, 2, 3, 4, 5]
@onready var hand = []
@onready var handCards = []
@onready var buttons = [$HandCard1, $HandCard2, $HandCard0]
@onready var enemyClose = $"../../enemyClose"
@onready var enemyMiddle = $"../../enemyMiddle"
@onready var enemyFar = $"../../enemyFar"
@onready var player = $"../../Player"
@onready var medieval = $"../../"


signal card_used(card)


func _ready():
	deck.shuffle()
	for i in range(3):
		handCards.append(lib[deck[i]])
		buttons[i].texture_normal = handCards[i].get_node("Sprite2D").texture


func deal_deck():
	deck.shuffle()
	for i in range(3):
		handCards[i] = lib[deck[i]]
		buttons[i].texture_normal = handCards[i].get_node("Sprite2D").texture


func _input(_event):
	if $HandCard0.is_pressed():
		print(handCards[0])
		card_used.emit(handCards[0])

	elif $HandCard1.is_pressed():
		print(handCards[1])
		card_used.emit(handCards[1])

	elif $HandCard2.is_pressed():
		print(handCards[2])
		card_used.emit(handCards[2])



func toggle_visibility(state):
	if state:
		show()
	else:
		hide()
