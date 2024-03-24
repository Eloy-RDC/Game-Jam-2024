extends Node2D

var alive = true

var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8

func _process(_delta):
	$TextureProgressBar.value = hp


func attack():
	print("{name} attacked".format([["name", enemy_name]]))


func take(damage) -> bool:
	if shield > 0:
		shield -= damage
		if shield < 0:
			hp += damage
			shield = 0
	else:
		hp -= damage
	if hp <= 0:
		alive = false
	return alive
