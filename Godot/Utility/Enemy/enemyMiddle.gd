extends Node2D

@onready var player = $"../Player"

var alive = true
var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8

func _process(_delta):
	$TextureProgressBar.value = hp


func attack():
	player.take(attack_points)
	#print("I'am not the corkboard, dammit !")


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
	print("--- %s ---" % enemy_name)
	print("Health : %s" % hp)
	print("Shield : %s" % shield)


func action():
	attack()
