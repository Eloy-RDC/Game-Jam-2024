extends Node2D

var alive = true

var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8

func _process(delta):
	$TextureProgressBar.value = hp
