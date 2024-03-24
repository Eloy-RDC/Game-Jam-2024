extends Node2D

var alive = true

var enemy_name = "Archer"
var hp = 15
var shield = 0
var attack_points = 8

func _process(_delta):
	$TextureProgressBar.value = hp


func attack():
	await get_tree().create_timer(0.3).timeout
	$Sprite2D.play("attack")
	await get_tree().create_timer(0.1).timeout
	%ArrowAnim.play("Arrow")
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
