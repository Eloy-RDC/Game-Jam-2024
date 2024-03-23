extends Node2D

var cardname = "Case shield"
var type = "defense"
var shield = 7
var target = "player"

func use():
	get_tree().root.get_node("Player").shield += shield
