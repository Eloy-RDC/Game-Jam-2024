extends Node2D

var cardname = "Mental breakdown"
var type = "attack"
var damage = 1
var target = "all"

func use():
	get_tree().root.get_node("Ennemy1").hp -= damage
	get_tree().root.get_node("Ennemy2").hp -= damage
	get_tree().root.get_node("Ennemy3").hp -= damage
	get_tree().root.get_node("Player").hp -= damage
