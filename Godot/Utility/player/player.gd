extends Node2D

var alive = true
var hp = 40
var shield = 0
var nextturn_shield = 0
var player_turn = 0

func _process(delta):
	$TextureProgressBar.value = hp
	$TextureProgressBar2.value = shield

func are_nextturn_shield():
	if nextturn_shield > 0:
		shield += nextturn_shield
		nextturn_shield = 0
