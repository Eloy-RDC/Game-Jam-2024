extends Node2D

var alive = true
var hp = 40
var shield = 0
var nextturn_shield = 0
var player_turn = 0

func _process(_delta):
	$TextureProgressBar.value = hp
	$TextureProgressBar2.value = shield

func are_nextturn_shield():
	if nextturn_shield > 0:
		shield += nextturn_shield
		nextturn_shield = 0


func take(damage):
	if shield > 0:
		shield -= damage
		if shield < 0:
			hp += shield
			shield = 0
	else:
		hp -= damage
	if hp <= 0:
		alive = false
	print("--- Player ---")
	print("Health : %s" % hp)
	print("Shield : %s" % shield)
