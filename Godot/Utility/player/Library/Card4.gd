extends Node2D

var cardname = "Therapy call"
var type = "defense"
var shield = 3
var target = "player"

func use():
	get_tree().root.get_node("Player").shield += shield
	get_tree().root.get_node("Player").nextturn_shield += shield
	
