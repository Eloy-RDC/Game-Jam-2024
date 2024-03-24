extends Node2D

var cardname = "Case shield"
var type = "defense"
var shield = 7
var target = "player"
@onready var player = $"../../Player"

func use():
	player.shield += shield
	#print("You feel stronger")
	print("Shield + %d" % shield)
