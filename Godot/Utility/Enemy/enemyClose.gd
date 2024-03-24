extends Node2D

var alive = true
var enemy_name = "Knight"
var hp = 40
var shield = 15
var attack_points = 2
@onready var player = $"../Player"
var rng = RandomNumberGenerator.new()
var blocking = false
 
func _process(_delta):
	$TextureProgressBar.value = hp
	$TextureProgressBar2.value = shield

func block():
	blocking = true
	#print("Stop hidding behind that shield !")


func attack():
	player.take(attack_points)
	#print("Hey ! My new suit !")


func take(damage):
	if not  blocking:
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
	match rng.randi_range(0, 1):
		0: block()
		1: attack()
