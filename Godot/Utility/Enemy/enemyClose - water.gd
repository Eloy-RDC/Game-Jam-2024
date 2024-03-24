extends Node2D

var alive = true
var enemy_name = "Knight"
var hp = 20
var shield = 10
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


func action():
	match rng.randi_range(0, 7):
		0: block()
		1: attack()
		2: attack()
		3: attack()
		4: attack()
		5: attack()
		6: attack()
		7: attack()
