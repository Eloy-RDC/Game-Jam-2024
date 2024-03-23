extends Node2D

var cardname = "Case throw"
var type = "attack"
var damage = 6
var target = "middle"

func use():
	if get_tree().root.get_node("Enemy2").alive:
		get_tree().root.get_node("Enemy2").hp -= damage
	elif get_tree().root.get_node("Enemy1").alive:
		get_tree().root.get_node("Enemy1").hp -= damage
	else: get_tree().root.get_node("Enemy3").hp -= damage
