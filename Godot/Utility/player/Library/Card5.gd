extends Node2D

var cardname = "Mental breakdown"
var type = "attack"
var damage = 1
var target = "all"

func use():
	get_tree().root.get_node("Enemy1").hp -= damage
	get_tree().root.get_node("Enemy2").hp -= damage
	get_tree().root.get_node("Enemy3").hp -= damage
	get_tree().root.get_node("Player").hp -= damage
