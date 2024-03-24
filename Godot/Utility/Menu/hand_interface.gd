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


signal card_used(id)


func _ready():
	deck.shuffle()
	for i in range(3):
		handCards.append(lib[deck[i]])
		buttons[i].texture_normal = handCards[i].get_node("Sprite2D").texture


func _input(_event):
	if $HandCard0.is_pressed():
		card_used.emit(handCards[0])
		print('card 1 used')
	elif $HandCard1.is_pressed():
		card_used.emit(handCards[1])
		print('card 2 used')
	elif $HandCard2.is_pressed():
		card_used.emit(handCards[2])
		print('card 3 used')


func toggle_visibility(state):
	if state:
		show()
	else:
		hide()
