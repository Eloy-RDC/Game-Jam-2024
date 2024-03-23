extends Node2D

var cardname = "Therapy call"
var type = "defense"
var shield = 3
var target = "player"
@onready var player = $"../../Player"

func use():
	player.shield += shield
	player.nextturn_shield += shield
