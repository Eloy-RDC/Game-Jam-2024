extends Control

@onready var Card1 = %Card1
@onready var Card2 = %Card2
@onready var Card3 = %Card3

@onready var Icon_list = [preload("res://Texture/YellowSquare.png")]

@onready var lib = [get_node("library/Card0")]

var inventory = [lib[0]]

var deck = []

var hand = []

func _ready():
	Card1.visible = true
	Card1.icon = $lib/Card0/Sprite2D


func _on_card_1_pressed():
	pass # Replace with function body.


func _on_card_2_pressed():
	pass # Replace with function body.


func _on_card_3_pressed():
	pass # Replace with function body.
