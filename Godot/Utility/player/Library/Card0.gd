extends Node2D


var cardname = "Mail Trash Talk"
var type = "attack"
var damage = 6
var target = "far"

func use():
	if get_tree().root.get_node("Enemy3").alive:
		get_tree().root.get_node("Enemy3").hp -= damage
	elif get_tree().root.get_node("Enemy2").alive:
		get_tree().root.get_node("Enemy2").hp -= damage
	else: get_tree().root.get_node("Enemy1").hp -= damage
