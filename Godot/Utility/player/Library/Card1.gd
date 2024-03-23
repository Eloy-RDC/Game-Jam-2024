extends Node2D

var cardname = "Case throw"
var type = "attack"
var damage = 6
var target = "middle"

func use():
	get_tree().root.get_node("Ennemy2").hp -= damage
