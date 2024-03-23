extends Node2D


var cardname = "Mail Trash Talk"
var type = "attack"
var damage = 6
var target = "far"

func use():
	get_tree().root.get_node("Ennemy3").hp -= damage
