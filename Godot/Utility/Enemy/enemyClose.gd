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


func attack():
	$Sprite2D.play("attack")
	%ImpactAnim.play("impact")
	if(player.shield > 0):
		player.shield -= attack_points
		if (player.shield<0):
			player.hp += player.shield
			player.shield = 0
	else: player.hp -= attack_points


func take(damage) -> bool:
	if blocking:
		return alive
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


func action():
	match rng.randi_range(0, 1):
		0: block()
		1: attack()
