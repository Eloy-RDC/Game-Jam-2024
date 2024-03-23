extends Control



@onready var Card1 = %Card1
@onready var Card2 = %Card2
@onready var Card3 = %Card3


@onready var Cards = [Card1, Card2, Card3]
@onready var Icon_list = [
	preload("res://Texture/YellowSquare.png"),
	preload("res://Texture/YellowSquare.png"),
	preload("res://Texture/YellowSquare.png")
]

func _ready():
	for i in Cards.size():
		Cards[i].visible = true
		Cards[i].icon = Icon_list[i]


func _on_card_1_pressed():
	print("Card1 pressed")


func _on_card_2_pressed():
	print("Card2 pressed")


func _on_card_3_pressed():
	print("Card3 pressed")
