extends Node2D

var alive = true
var enemy_name = "Knight"
var hp = 40
var shield = 15
var attack_points = 2
@onready var player = $"../Player"
 
func _process(delta):
	$TextureProgressBar.value = hp
	$TextureProgressBar2.value = shield

func block():
	pass

func attack():
	if(player.shield > 0):
		player.shield -= attack_points
		if (player.shield<0):
			player.hp += player.shield
			player.shield = 0
	else: player.hp -= attack_points
