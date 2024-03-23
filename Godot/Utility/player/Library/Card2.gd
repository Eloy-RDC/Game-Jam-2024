extends Node2D

var cardname = "Tie whip"
var type = "attack"
var damage = 6
var target = "close"

func use():
	get_tree().root.get_node("Ennemy1").hp -= damage
